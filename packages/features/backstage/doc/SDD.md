# backstage ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

backstage: アプリケーションの裏設定。システム制作者だけが入れる設定のページと、設定の保存・既定値・優先順位の解決を持つ。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/backstage` |
| Dart ファイル(生成物を除く) | 15 |
| `lib/src` の分け方 | `entry(2)`、`i18n(1)`、`pages(1)`、`settings(4)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `BackstageBoot` | クラス | 起動時に読み込んだ裏設定の材料(アプリが `runApp` の前に作り、Provider へ差し込む)。 | `lib/src/backstage_boot.dart` |
| `BackstageAssetConfig` | クラス | アセットの設定(JSON)。 | `lib/src/backstage_boot.dart` |
| `loadBackstageBoot` | 関数 | 裏設定の材料を読み込む。 | `lib/src/backstage_boot.dart` |
| `backstageBootProvider` | Riverpod プロバイダ | 起動時に読み込んだ材料。アプリが [backstageOverrides] で差し込む(既定は材料なし)。 | `lib/src/backstage_controller.dart` |
| `backstageUnlockProvider` | Riverpod プロバイダ | 入口を通ったか。入口の判定に一致したときだけ true になり、ページを出るとき false に戻す。 | `lib/src/backstage_controller.dart` |
| `BackstageUnlock` | クラス |  | `lib/src/backstage_controller.dart` |
| `BackstageSaveResult` | クラス | 保存の結果。[issues] があるときは保存していない。[storeFailed] は保管庫に書けなかった(例外)。 | `lib/src/backstage_controller.dart` |
| `BackstageController` | クラス | 保管庫の裏設定(画面で編集する値)。保存・初期化を行う。 | `lib/src/backstage_controller.dart` |
| `backstageResolverProvider` | Riverpod プロバイダ | 優先順位の解決(起動時の値 > 保管庫の裏設定 > アセットの既定値)。保存すると更新される。 | `lib/src/backstage_controller.dart` |
| `backstageResolvedValuesProvider` | Riverpod プロバイダ | 他の機能が読む値(`feature_shared` の [backstageValuesProvider] へ差し込む)。 | `lib/src/backstage_controller.dart` |
| `backstageOverrides` | 関数 | アプリが差し込む Provider の上書き。 | `lib/src/backstage_controller.dart` |
| `BackstageModule` | クラス | 裏設定をアプリへ組み込むための口。 | `lib/src/backstage_module.dart` |
| `BackstagePaths` | クラス | 裏設定のパス。文字列はこのファイルだけに書く。 | `lib/src/backstage_paths.dart` |
| `EntryVerifier` | 型の別名 | 判定の計算を実行する関数。既定は別の isolate([compute])。テストは直接呼ぶ。 | `lib/src/entry/entry_gate.dart` |
| `verifyInIsolate` | 関数 | 別の isolate で照合する(反復回数が多く、UI を止めないため)。 | `lib/src/entry/entry_gate.dart` |
| `BackstageEntryGate` | クラス | 裏設定へ入る条件の判定。アセットの設定の [entry](ハッシュ)と照合する。 | `lib/src/entry/entry_gate.dart` |
| `pbkdf2HmacSha256` | 関数 | PBKDF2(HMAC-SHA256)。[length] バイトの鍵を導出する。 | `lib/src/entry/entry_hash.dart` |
| `EntryHash` | クラス | 裏設定へ入る条件(ユーザーIDとパスワード)の、ソルト付きハッシュ。平文は持たない。 | `lib/src/entry/entry_hash.dart` |
| `BackstageStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `backstageStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `BackstagePage` | クラス | 裏設定のページ。システム制作者だけが、入口の判定(ログインページ)を通ったときに開ける。 | `lib/src/pages/backstage_page.dart` |
| `BackstageSource` | 列挙型 | 値の出どころ。 | `lib/src/settings/backstage_resolver.dart` |
| `BackstageLaunch` | クラス | 起動時の値(`--dart-define`)。アプリが `String.fromEnvironment` などで作って渡す。空は「指定なし」。 | `lib/src/settings/backstage_resolver.dart` |
| `BackstageResolver` | クラス | 値の優先順位(高い順): 起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値。 | `lib/src/settings/backstage_resolver.dart` |
| `BackstageSettings` | クラス | 裏設定の項目(保存する値)。null は「指定なし」(次の優先順位の値に従う)。 | `lib/src/settings/backstage_settings.dart` |
| `BackstageField` | 列挙型 | 項目。検証の結果を、どの項目か分けて返すために使う。 | `lib/src/settings/backstage_settings.dart` |
| `BackstageIssueKind` | 列挙型 | 検証の失敗の種類。画面が表示時に文言へ変換する。 | `lib/src/settings/backstage_settings.dart` |
| `BackstageIssue` | クラス |  | `lib/src/settings/backstage_settings.dart` |
| `BackstageUrlRules` | クラス | 接続先 URL の検証。`https` であること。`http` はローカルのネットワークのときだけ。 | `lib/src/settings/backstage_settings.dart` |
| `IBackstageStore` | インターフェイス | 裏設定の保存先(JSON 文字列)。`ITokenStore`(pbapi)と同じ形。実体は差し替えられる(Strategy)。 | `lib/src/settings/backstage_store.dart` |
| `InMemoryBackstageStore` | クラス | メモリ上の保存先(テスト・保管庫を使わないとき)。 | `lib/src/settings/backstage_store.dart` |
| `SecureBackstageStore` | クラス | OS の安全な保管庫(`flutter_secure_storage`)に保存する。平文のファイル・`shared_preferences` は使わない。 | `lib/src/settings/backstage_store.dart` |
| `decryptConfigText` | 関数 | 復号の実体。失敗(パスワード違い・改ざん・形式違い)は null。理由は区別しない。 | `lib/src/settings/encrypted_config.dart` |
| `decryptBackstageSettings` | 関数 | 暗号化した設定を、入口のパスワードで復号して裏設定にする(別の isolate)。 | `lib/src/settings/encrypted_config.dart` |
| `BackstageDestination` | クラス | 裏設定のページへ。入口の判定(`IBackstageEntryGate`)に一致したときだけ、ログインページが使う。 | `lib/src/backstage_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `BackstageEntryGate` | Strategy(`IBackstageEntryGate` の実体) | `lib/src/entry/entry_gate.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `app_shell`、`feature_shared`、`baton_lib`、`app_core`、`logger_provider`
- テスト用: `theme_lib`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`flutter_secure_storage`、`crypto`、`pointycastle`

## 6. 設計上の決定(`CLAUDE.md` より)

- **設計の決定**: **プロジェクトは専用に分ける**(`auth_files` には置かない)。裏設定は認証・共有ファイルと責務が違い、他の機能が読む値(`feature_shared` の `backstageValuesProvider`)の持ち主だから。ログインページ(`auth_files`)は、入口の判定(`IBackstageEntryGate`)と遷移先(`ba…
- **入口の条件の作り方**: ツールは `tools/config_user_generator`(このパッケージの外。使い方は同フォルダの `doc/usage.md`)。手順の詳細は [README.md](README.md)。
- **暗号化した裏設定の適用**: `tools/config_generator` が入口のパスワードで暗号化した `backstage_config.enc.json` を、アプリの exe と同じフォルダに置くと、入口を通ったとき(`BackstageEntryGate.afterMatch`)にそのパスワードで復号し、検証(`BackstageUrlRules`・ログのレベル)を通れば…
- **値の優先順位**: 高い順に、**起動時の `--dart-define` > 保管庫の裏設定 > アセットの既定値**(`BackstageResolver`)。検証に通らない値(不正な URL・知らないログのレベル)は無いものとして次へ進む。起動時の値がある項目は、ページで変更できない(出どころに「起動時の指定」と出る)。
- **ページ**: `BackstageDestination` → `/backstage`。アプリの枠(`ShellRoute`)の外(`maintenance` と同じ作り)。戻る操作(`PopScope`)・`AppBar`・ほかのページへのリンクを持たず、出られるのは「終了」だけ(ログインへ戻る)。入口を通っていない(`backstageUnlockProvider`…
- **保存**: OS の保管庫(`flutter_secure_storage`、`SecureBackstageStore`)に JSON で保存する(平文のファイルは使わない。アプリが削除されるまで続く)。`IBackstageStore` で差し替えられる(テストは `InMemoryBackstageStore`)。開発側の既定値は、アセットの JSON(`defa…
- **アプリへの組み込み**: `loadBackstageBoot`(アセット・保管庫・起動時の値)を `runApp` の前に呼ぶ(接続先・ログのレベルは起動時に使うため)。
- **構成**: | 種別 | ファイル | 内容 |
- **制限・課題**: 入口の判定は、ログインのたびに PBKDF2(反復 100,000 回)を別の isolate で計算する(入口の設定があるときだけ)。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/backstage_test.dart`(37)、`test/encrypted_config_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
