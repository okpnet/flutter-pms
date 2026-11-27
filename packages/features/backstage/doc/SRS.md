# backstage ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

backstage: アプリケーションの裏設定。システム制作者だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。

アプリケーションの裏設定。システム制作者(特定の人)だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 指示は `packages/features/issue/20261104_0006.md`。

### 1.2 範囲

- 場所: `packages/features/backstage`(features(1 機能 = 1 パッケージの画面・ルート・ハンドラ))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)

### 2.2 依存先(ワークスペース内)

`app_shell`、`feature_shared`、`baton_lib`、`app_core`、`logger_provider`

テスト用: `theme_lib`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、次の公開面(型・関数)を提供する。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FR-01 | `BackstageBoot` | クラス | 起動時に読み込んだ裏設定の材料(アプリが `runApp` の前に作り、Provider へ差し込む)。 |
| FR-02 | `BackstageAssetConfig` | クラス | アセットの設定(JSON)。 |
| FR-03 | `loadBackstageBoot` | 関数 | 裏設定の材料を読み込む。 |
| FR-04 | `backstageBootProvider` | Riverpod プロバイダ | 起動時に読み込んだ材料。アプリが [backstageOverrides] で差し込む(既定は材料なし)。 |
| FR-05 | `backstageUnlockProvider` | Riverpod プロバイダ | 入口を通ったか。入口の判定に一致したときだけ true になり、ページを出るとき false に戻す。 |
| FR-06 | `BackstageUnlock` | クラス |  |
| FR-07 | `BackstageSaveResult` | クラス | 保存の結果。[issues] があるときは保存していない。[storeFailed] は保管庫に書けなかった(例外)。 |
| FR-08 | `BackstageController` | クラス | 保管庫の裏設定(画面で編集する値)。保存・初期化を行う。 |
| FR-09 | `backstageResolverProvider` | Riverpod プロバイダ | 優先順位の解決(起動時の値 > 保管庫の裏設定 > アセットの既定値)。保存すると更新される。 |
| FR-10 | `backstageResolvedValuesProvider` | Riverpod プロバイダ | 他の機能が読む値(`feature_shared` の [backstageValuesProvider] へ差し込む)。 |
| FR-11 | `backstageOverrides` | 関数 | アプリが差し込む Provider の上書き。 |
| FR-12 | `BackstageModule` | クラス | 裏設定をアプリへ組み込むための口。 |
| FR-13 | `BackstagePaths` | クラス | 裏設定のパス。文字列はこのファイルだけに書く。 |
| FR-14 | `EntryVerifier` | 型の別名 | 判定の計算を実行する関数。既定は別の isolate([compute])。テストは直接呼ぶ。 |
| FR-15 | `verifyInIsolate` | 関数 | 別の isolate で照合する(反復回数が多く、UI を止めないため)。 |
| FR-16 | `BackstageEntryGate` | クラス | 裏設定へ入る条件の判定。アセットの設定の [entry](ハッシュ)と照合する。 |
| FR-17 | `pbkdf2HmacSha256` | 関数 | PBKDF2(HMAC-SHA256)。[length] バイトの鍵を導出する。 |
| FR-18 | `EntryHash` | クラス | 裏設定へ入る条件(ユーザーIDとパスワード)の、ソルト付きハッシュ。平文は持たない。 |
| FR-19 | `BackstageStrings` | 定数・その他 |  |
| FR-20 | `backstageStringsProvider` | 定数・その他 |  |
| FR-21 | `BackstagePage` | クラス | 裏設定のページ。システム制作者だけが、入口の判定(ログインページ)を通ったときに開ける。 |
| FR-22 | `BackstageSource` | 列挙型 | 値の出どころ。 |
| FR-23 | `BackstageLaunch` | クラス | 起動時の値(`--dart-define`)。アプリが `String.fromEnvironment` などで作って渡す。空は「指定なし」。 |
| FR-24 | `BackstageResolver` | クラス | 値の優先順位(高い順): 起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値。 |
| FR-25 | `BackstageSettings` | クラス | 裏設定の項目(保存する値)。null は「指定なし」(次の優先順位の値に従う)。 |
| FR-26 | `BackstageField` | 列挙型 | 項目。検証の結果を、どの項目か分けて返すために使う。 |
| FR-27 | `BackstageIssueKind` | 列挙型 | 検証の失敗の種類。画面が表示時に文言へ変換する。 |
| FR-28 | `BackstageIssue` | クラス |  |
| FR-29 | `BackstageUrlRules` | クラス | 接続先 URL の検証。`https` であること。`http` はローカルのネットワークのときだけ。 |
| FR-30 | `IBackstageStore` | インターフェイス | 裏設定の保存先(JSON 文字列)。`ITokenStore`(pbapi)と同じ形。実体は差し替えられる(Strategy)。 |
| FR-31 | `InMemoryBackstageStore` | クラス | メモリ上の保存先(テスト・保管庫を使わないとき)。 |
| FR-32 | `SecureBackstageStore` | クラス | OS の安全な保管庫(`flutter_secure_storage`)に保存する。平文のファイル・`shared_preferences` は使わない。 |
| FR-33 | `decryptConfigText` | 関数 | 復号の実体。失敗(パスワード違い・改ざん・形式違い)は null。理由は区別しない。 |
| FR-34 | `decryptBackstageSettings` | 関数 | 暗号化した設定を、入口のパスワードで復号して裏設定にする(別の isolate)。 |
| FR-35 | `BackstageDestination` | クラス | 裏設定のページへ。入口の判定(`IBackstageEntryGate`)に一致したときだけ、ログインページが使う。 |

### 3.1 仕様の要点(`CLAUDE.md` より)

- **設計の決定**: **プロジェクトは専用に分ける**(`auth_files` には置かない)。裏設定は認証・共有ファイルと責務が違い、他の機能が読む値(`feature_shared` の `backstageValuesProvider`)の持ち主だから。ログインページ(`auth_files`)は、入口の判定(`IBackstageEntryGate`)と遷移先(`ba…
- **入口の条件の作り方**: ツールは `tools/config_user_generator`(このパッケージの外。使い方は同フォルダの `doc/usage.md`)。手順の詳細は [README.md](README.md)。
- **暗号化した裏設定の適用**: `tools/config_generator` が入口のパスワードで暗号化した `backstage_config.enc.json` を、アプリの exe と同じフォルダに置くと、入口を通ったとき(`BackstageEntryGate.afterMatch`)にそのパスワードで復号し、検証(`BackstageUrlRules`・ログのレベル)を通れば…
- **値の優先順位**: 高い順に、**起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値**(`BackstageResolver`)。検証に通らない値(不正な URL・知らないログのレベル)は無いものとして次へ進む。起動時の値がある項目は、ページで変更できない(出どころに「起動時の指定」と出る)。
- **ページ**: `BackstageDestination` → `/backstage`。アプリの枠(`ShellRoute`)の外(`maintenance` と同じ作り)。戻る操作(`PopScope`)・`AppBar`・ほかのページへのリンクを持たず、出られるのは「終了」だけ(ログインへ戻る)。入口を通っていない(`backstageUnlockProvider`…
- **保存**: OS の保管庫(`flutter_secure_storage`、`SecureBackstageStore`)に JSON で保存する(平文のファイルは使わない。アプリが削除されるまで続く)。`IBackstageStore` で差し替えられる(テストは `InMemoryBackstageStore`)。開発側の既定値は、アセットの JSON(`defa…
- **アプリへの組み込み**: `loadBackstageBoot`(アセット・保管庫・起動時の値)を `runApp` の前に呼ぶ(接続先・ログのレベルは起動時に使うため)。
- **構成**: | 種別 | ファイル | 内容 |
- **制限・課題**: 入口の判定は、ログインのたびに PBKDF2(反復 100,000 回)を別の isolate で計算する(入口の設定があるときだけ)。

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | `loggerProvider` を使う |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | `slang.yaml` あり(`lib/src/i18n`) |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/backstage.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 41 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 41 件。

- `test/backstage_test.dart`
  - PBKDF2-HMAC-SHA256 の既知の値(RFC 6070 を SHA-256 にしたテストベクトル)
  - 正しいユーザーIDとパスワードだけが一致する
  - ソルトが違えばハッシュも違う。平文は含まない。ログ・文字列に値を出さない
  - 設定(JSON)の読み込み: 形が違う・不正な値は入口なし
  - アセットの設定: 入口・既定値を読み、読めなければ空
  - 正しい条件: 一致して、入口を開ける
  - 誤った条件: 一致せず、開けない(IDだけ・パスワードだけ違う場合も)
  - 空の入力: 計算せずに一致しない
  - 入口の設定が無いときは、常に一致しない(計算しない)
  - 別の isolate での照合(既定)でも同じ結果になる
  - アプリへの差し込み: 一致したときだけ入口(unlock)が開く
  - https は通る。http はローカルのネットワークだけ
  - 設定の検証は、項目ごとの失敗の種類を返す
  - JSON の往復。型の違う値・空は無いものとして読む。壊れた JSON は null
  - メモリ上の保存先は読み書き・削除できる
  - 起動時の値が最優先、次に保管庫、最後にアセット
  - 保管庫が無ければアセット、どちらも無ければ未指定
  - 不正な値(URL・ログのレベル)は、次の優先順位へ進む
  - 起動時の値(--dart-define)の空文字・未指定は「指定なし」
  - 起動時の材料の読み込み(保管庫・アセット・起動時の値)
  - 検証に通れば保管庫へ JSON で保存し、他の機能が読む値に反映される
  - 検証に通らないときは、保存せず、失敗の種類を返す
  - 空にすると保管庫の値を消す。「保存した値を消す」(reset)も同じ
  - 保管庫に書けないときは storeFailed。画面の値は変えない
  - 起動時の値は、保存しても変わらない(最優先)
  - サイドバーの既定は、ユーザーの設定がなければ裏設定の値
  - 入口を通っていないときは、何も出さずにログインへ戻す
  - 枠の外: 戻る操作・ほかのページへのリンクを持たない。出られるのは「終了」だけ
  - 終了のあと、遷移先の型だけでは開けない(入口を通り直す)
  - 保存: 値を入れて保存すると保管庫に入り、案内を出す
  - 保存: https でない URL は、項目にエラーを出して保存しない
  - 保存: 保管庫に書けないときは、失敗を伝える
  - 起動時の値がある項目は、変更できず「起動時の指定」と出る
  - 「保存した値を消す」で保管庫の値が消え、画面の入力も空になる
  - 遷移先はパスに変換できる(登録漏れ検出)。枠の外のページ
  - JSON のオブジェクトも文字列も読め、読めない要素は捨てる。保存の形に戻せる
  - 各層のテーマは、すべて取り込む(アセット → 保管庫 → 起動時)
- `test/encrypted_config_test.dart`
  - 入口のパスワードで復号できる。違うパスワードは null(標準)
  - 保管庫が空なら、復号した値を保存する
  - パスワードが違えば何も変えない
  - 保管庫に値があれば上書きしない

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
