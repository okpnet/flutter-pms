# backstage

アプリケーションの裏設定。システム制作者(特定の人)だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
指示は `packages/features/issue/20261104_0006.md`。

## 設計の決定
1.  **プロジェクトは専用に分ける**(`auth_files` には置かない)。裏設定は認証・共有ファイルと責務が違い、他の機能が読む値(`feature_shared` の `backstageValuesProvider`)の持ち主だから。ログインページ(`auth_files`)は、入口の判定(`IBackstageEntryGate`)と遷移先(`backstage_api.dart` の `BackstageDestination`)だけを使い、裏設定の実装には依存しない。
1.  **入口は「特定のユーザーIDとパスワード」**(Issue の案1)。ログインページのユーザーIDとパスワードが一致したときだけ、通常のログイン(サーバーへの送信)をせず、裏設定へ進む。長押しの案2は、画面に隠れた操作が増え、テストしにくいので採らなかった。
1.  **条件の値は平文で持たない**。ソルト付きハッシュ(PBKDF2-HMAC-SHA256、既定の反復 100,000 回、32バイト)をアセットの設定に置き、入力と照合する(`crypto` の `Hmac` だけを使い、新しい外部ライブラリは足していない)。一致しないときは通常のログイン失敗と同じ表示になる(入口の存在を示さない)。

## 入口の条件の作り方
ツールは `tools/config_user_generator`(このパッケージの外。使い方は同フォルダの `doc/usage.md`)。手順の詳細は [README.md](README.md)。
```powershell
cd tools/config_user_generator
dart run bin/config_user_generator.dart   # ユーザーIDとパスワードを標準入力から読む(履歴に残さない。--help でヘルプ)
```
出力の `{"entry": {...}}` を、アプリのアセット(`apps/pms_app/assets/backstage.json`)に貼る。`entry` が無いときは入口なし(裏設定へ入れない)。IDとパスワードはソース・アセットに書かない。反復回数は `dart run bin/config_user_generator.dart 200000` のように変えられる(照会は別の isolate で行い、画面を止めない)。

## 暗号化した裏設定の適用
`tools/config_generator` が入口のパスワードで暗号化した `backstage_config.enc.json` を、アプリの exe と同じフォルダに置くと、入口を通ったとき(`BackstageEntryGate.afterMatch`)にそのパスワードで復号し、検証(`BackstageUrlRules`・ログのレベル)を通れば保管庫へ保存する(`BackstageController.applyEncryptedConfig`、復号は別の isolate、AES-256-GCM・`pointycastle`)。設定ファイルを作れる人は入口を通れる人に限られる(別のパスフレーズを持たない)。
1.  復号できない(パスワード違い・改ざん・形式違い)・検証に通らないときは標準のまま。通知しない(理由も区別しない)。
1.  保管庫に値があるときは上書きしない(ページで編集した値を守る)。置き換えるときは「保存した値を消す」のあと、もう一度入口を通る。
1.  ファイルの読み込みは `pms_app` の `readEncryptedBackstageConfig`(`BackstageBoot.encryptedConfig`)。
1.  パスワードを共有する運用のリスクは `doc/log/20261106_0001.md` の提案を参照。

## 値の優先順位
高い順に、**起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値**(`BackstageResolver`)。検証に通らない値(不正な URL・知らないログのレベル)は無いものとして次へ進む。起動時の値がある項目は、ページで変更できない(出どころに「起動時の指定」と出る)。

| 項目 | 起動時の値(`--dart-define`) | 反映 |
|---|---|---|
| ユーザー画像の変更可否 `isChangeUserImage` | `IS_CHANGE_USER_IMAGE` | すぐ(`user_profile` が `backstageValuesProvider` を読む) |
| 接続先(GraphQL) | `GRAPHQL_URL` | 再起動 |
| 接続先(PocketBase) | `POCKETBASE_URL` | 再起動 |
| メンテナンスの確認先 | `MAINTENANCE_URL` | 再起動 |
| ログのレベル | `LOG_LEVEL`(`trace`・`debug`・`info`・`warning`・`error`・`fatal`) | 再起動 |
| サイドバーの既定(アイコンだけ) | `SIDEBAR_ICON_ONLY` | 次の起動(ユーザーの設定が優先) |

URL は `https`(ローカルのネットワーク — `localhost`・ループバック・プライベートIP・リンクローカル・`.local`・ドットを含まない名前 — だけ `http` 可)であることを保存の前に検証する。

## ページ
`BackstageDestination` → `/backstage`。アプリの枠(`ShellRoute`)の外(`maintenance` と同じ作り)。戻る操作(`PopScope`)・`AppBar`・ほかのページへのリンクを持たず、出られるのは「終了」だけ(ログインへ戻る)。入口を通っていない(`backstageUnlockProvider` が false)ときは、何も出さずにログインへ戻す(遷移先の型を知っていても開けない)。ボタンは 保存・保存した値を消す・終了。値(接続先など)はログに出さない。

## 保存
OS の保管庫(`flutter_secure_storage`、`SecureBackstageStore`)に JSON で保存する(平文のファイルは使わない。アプリが削除されるまで続く)。`IBackstageStore` で差し替えられる(テストは `InMemoryBackstageStore`)。開発側の既定値は、アセットの JSON(`defaults`)で変える。保管庫に値があるときは保管庫が優先。

## アプリへの組み込み
1.  `loadBackstageBoot`(アセット・保管庫・起動時の値)を `runApp` の前に呼ぶ(接続先・ログのレベルは起動時に使うため)。
1.  `backstageOverrides(boot)` を `ProviderScope` に差し込む(`backstageValuesProvider`・`backstageEntryGateProvider`)。
1.  `BackstageModule` を、枠の外のルート(`standaloneFeatureModules`)に追加し、ログイン前のページとして認証の対象外にする(`authRedirect` の `openPaths`)。
他の機能は裏設定の実装に依存せず、`feature_shared` の `backstageValuesProvider`(型は `BackstageValues`)だけを読む。

## 構成
| 種別 | ファイル | 内容 |
|---|---|---|
| 実装の入口 | `lib/backstage.dart` | アプリだけが読み込む |
| 契約の入口 | `lib/backstage_api.dart` | 遷移先の型(`BackstageDestination`) |
| 設定 | `lib/src/settings/` | `BackstageSettings`(JSON・検証)、`BackstageResolver`(優先順位)、`IBackstageStore` |
| 入口 | `lib/src/entry/` | `EntryHash`(PBKDF2)、`BackstageEntryGate` |
| 材料・差し込み | `lib/src/backstage_boot.dart`、`backstage_controller.dart` | 起動時の材料、保存、`backstageOverrides` |
| ページ | `lib/src/pages/backstage_page.dart` | 裏設定のページ |
| 文字列 | `lib/src/i18n` | slang の Yaml(日本語・English) |
| ツール | `tools/config_user_generator`(入口のハッシュ)、`tools/config_generator`(設定の暗号化) | このパッケージの外 |

## 制限・課題
1.  入口の判定は、ログインのたびに PBKDF2(反復 100,000 回)を別の isolate で計算する(入口の設定があるときだけ)。
1.  入口は PocketBase を使うログイン(`auth_files`)だけ。従来の仮のログインには付けていない。
1.  ハッシュはアセットにあるので、アプリを解析されるとオフラインで総当たりされうる。強いパスワードにし、反復回数を上げる。
## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  生成したライブラリに関する使い方やヘルプなどの使用にかかわるレポートは`doc/contents`の保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。
2.  命名規則
    1.  ファイル名、クラス名など名前付けのルールはFlutterの規則、慣例に従う。
    2.  クラス名はデザインパターンがわかる、または意味が通る英語の名詞とする。ただし、`はい/いいえ`のような`isXxxx`などの`is/as/has`の慣例を優先する。
        1.  `Command`などデザインパターンのみの名前だと誤解や衝突を招くため、機能、動きの名詞化したものと組み合わせる。
    3.  プリフィクスにライブラリ名をつけない(BatonLibXXのような)。
3.  バレルファイルを使用する
    1.  バレルファイルにまとめ、このライブラリを使用する側は1行を読み込むだけで解決できるようにする。ただし、相互に関連が無い独立した機能の場合はバレルファイルを分けて、仕様側が機能に応じて選択できるようにする。ただし、ユーザーの使用体験を優先する。ライブラリ全体の機能が少ない(10以下)ときにインポートするファイルを分ける必要はない。
4.  インスタンスのJSON化
    1.  生成するこのライブラリのインターフェイス、クラスのインスタンスをJSONにコンバートできる。ただし、エラー追跡のためであり、現時点で機能を復元する目的では使用しない。
5.  ログを残す
    1.  ライブラリは実行したときのログを残す。ただし、このライブラリ側のエラーログだけを残し、機能毎のライブラリ側なのかを切り分け可能にするために、適切に選別する。
    2.  ロガーはRiverpodから提供され、アプリケーション全体をとおして同じ仕様のログ出力を行う。
6.  GOFデザインパターン
    1.  クラス名やファイル名にデザインパターンを含めない場合は、コメントに該当するパターン名を追加する。
    2.  必ずしもデザインパターンに割り当てる必要はない。

## テスト
1.  共通の規則は`packages/features/CLAUDE.md`の「テスト」に従う。
2.  保管庫は差し替え(`InMemoryBackstageStore`)、OS の保管庫・サーバーには接続しない。
3.  確認すること: 入口の判定(正しい条件・誤った条件・空・入口の設定なし)、PBKDF2 の既知の値とハッシュの照合、優先順位(起動時の値 > 保管庫 > アセット)、不正な値の扱い、URL の検証、保存と初期化、ページから出られないこと(戻る操作・リンクなし、入口を通っていないと開けない)、ログインページの入口(`auth_files` のテスト)。
4.  `example`(Windows 向けのビジュアルテスト)は、入口を通った状態から始める。起動時の値(`GRAPHQL_URL`・`POCKETBASE_URL`・`MAINTENANCE_URL`・`LOG_LEVEL`)も本番と同じ名前で効く。
