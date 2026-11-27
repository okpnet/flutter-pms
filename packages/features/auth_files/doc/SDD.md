# auth_files ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

auth_files: 認証(PocketBase のログイン・登録申請・コード入力・管理者操作)と共有ファイルのアップロード/ダウンロードの画面。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/auth_files` |
| Dart ファイル(生成物を除く) | 23 |
| `lib/src` の分け方 | `i18n(1)`、`pages(9)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AuthFilesModule` | クラス | 認証(ログイン・登録申請・再設定・コード入力・管理者操作)と共有ファイルの画面をアプリへ組み込むための口。 | `lib/src/auth_files_module.dart` |
| `AuthFilesPaths` | クラス | auth_files のパス。文字列はこのファイルだけに書く。 | `lib/src/auth_files_paths.dart` |
| `AuthMode` | 列挙型 | 認証の方式。 | `lib/src/auth_mode.dart` |
| `authModeProvider` | Riverpod プロバイダ | 認証の方式。アプリが、認証サーバーに接続しているかに応じて上書きする。 | `lib/src/auth_mode.dart` |
| `PickedFile` | クラス | 利用者が選んだファイル。 | `lib/src/file_gateway.dart` |
| `IFilePickerGateway` | インターフェイス | ファイルの選択(アップロード元)。実体はアプリが差し込む(Strategy)。 | `lib/src/file_gateway.dart` |
| `IFileSaverGateway` | インターフェイス | ファイルの保存(ダウンロード先)。実体はアプリが差し込む(Strategy)。 | `lib/src/file_gateway.dart` |
| `UnsupportedFileGateway` | クラス | 使えないことを表す実体。使うと [UnsupportedError] を投げ、画面が文言にする。 | `lib/src/file_gateway.dart` |
| `filePickerGatewayProvider` | Riverpod プロバイダ | ファイルの選択。既定は OS のダイアログ。アプリ・テストは上書きできる。 | `lib/src/file_gateway.dart` |
| `fileSaverGatewayProvider` | Riverpod プロバイダ | ファイルの保存。既定は OS の「名前を付けて保存」ダイアログ。アプリ・テストは上書きできる。 | `lib/src/file_gateway.dart` |
| `AuthFilesStrings` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `authFilesStringsProvider` | 定数・その他 |  | `lib/src/i18n/strings_provider.dart` |
| `FileTooLargeException` | クラス | 選んだファイルが、扱える大きさを超えているとき。サーバーの上限(100MB)に合わせている。 | `lib/src/platform_file_gateway.dart` |
| `PickedSource` | 型の別名 | 選ばれたファイル(`file_picker` の `PlatformFile` を、テストで差し替えられる形にしたもの)。 | `lib/src/platform_file_gateway.dart` |
| `PlatformFilePicker` | クラス | OS のファイル選択ダイアログ(`file_picker`)で、アップロードするファイルを1つ選ぶ。 | `lib/src/platform_file_gateway.dart` |
| `PlatformFileSaver` | クラス | OS の「名前を付けて保存」ダイアログ(`file_picker`)で、ダウンロードしたファイルを保存する。 | `lib/src/platform_file_gateway.dart` |
| `SecureTokenStore` | クラス | ログイン情報(PocketBase のトークンとユーザー)を、OS の安全な保管庫に保存する [ITokenStore]。 | `lib/src/secure_token_store.dart` |
| `tokenStoreProvider` | Riverpod プロバイダ | ログイン情報の保存先。既定は [SecureTokenStore]。アプリは `PbConnection.open` に同じものを渡し、 | `lib/src/secure_token_store.dart` |
| `authFilesSignOut` | 関数 | ログアウト。PocketBase のセッション(メモリ上のトークンと GraphQL 用の JWT)と、保管庫のログイン情報を | `lib/src/sign_out.dart` |
| `signOutProvider` | Riverpod プロバイダ | ログアウトの実体。ログアウト画面が、確認のあとに1回呼ぶ。既定は [authFilesSignOut]。 | `lib/src/sign_out.dart` |
| `LoginDestination` | クラス | ログイン画面へ(ユーザーIDまたはEメール + パスワード)。 | `lib/src/auth_files_destinations.dart` |
| `LogoutDestination` | クラス | ログアウト画面へ。ユーザーメニューの「ログアウト」から開くと、確認 → ログアウト → 完了(5秒後にログイン画面へ)。 | `lib/src/auth_files_destinations.dart` |
| `SignupDestination` | クラス | 新規登録(申請)へ。 | `lib/src/auth_files_destinations.dart` |
| `PasswordResetRequestDestination` | クラス | パスワードを忘れたとき(再設定の依頼)へ。 | `lib/src/auth_files_destinations.dart` |
| `AcceptCodeDestination` | クラス | 認証コードの入力へ(有効化・パスワード再設定の共通)。 | `lib/src/auth_files_destinations.dart` |
| `NewPasswordDestination` | クラス | 新しいパスワードの入力へ(認証コードの入力のあと)。コードが無いときは認証コードの入力へ戻される。 | `lib/src/auth_files_destinations.dart` |
| `SharedFilesDestination` | クラス | 共有ファイル(一覧・アップロード・ダウンロード)へ。 | `lib/src/auth_files_destinations.dart` |
| `AdminSignupsDestination` | クラス | 管理者: アカウント管理(登録申請の一覧。アカウントの作成・却下)へ。 | `lib/src/auth_files_destinations.dart` |
| `AdminResetsDestination` | クラス | 管理者: パスワード再設定の依頼の一覧(コードの発行)へ。 | `lib/src/auth_files_destinations.dart` |
| `AdminCreateUserDestination` | クラス | 管理者: ユーザーの作成(PocketBase のユーザー + 有効化コードの発行)へ。 | `lib/src/auth_files_destinations.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `SecureTokenStore` | Strategy(`ITokenStore` の保管庫による実装) | `lib/src/secure_token_store.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `loadux_lib`、`app_shell`、`feature_shared`、`baton_lib`、`app_core`、`backstage`、`page_mediator_extension`、`pbapi`、`logger_provider`
- テスト用: `theme_lib`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)、`organization`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`file_picker`、`flutter_secure_storage`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面案との対応**: 画面案は `tools/open-design/index.html`(`#/login`・`#/register`・`#/forgot`・`#/forgot/code`・`#/forgot/reset`、実装は `app.js` の「account: register / forgot password」)。見た目と項目は画面案に合わせ、遷移の流れは `t…
- **画面と遷移**: ログイン前の画面はマルチメインフレームの枠の外、共有ファイルと管理者の画面は枠の中。表示する文字列はすべて slang(日本語・English)。
- **構成**: | 種別 | ファイル | 内容 |
- **実装の指針**: アプリが差し込むもの: `pbConnectionProvider`(`PbConnection.open`。保存先には `SecureTokenStore` を渡し、同じものを `tokenStoreProvider` にも差し込む)、`app_core` の `signOutProvider`(`authFilesSignOut` を呼ぶ関数)と `si…
- **裏設定の手作業(ツール)**: 裏設定の入口(ID とパスワード)は、ログイン画面でこの機能の通常のログインより先に判定する(`backstage`)。その条件のハッシュと設定ファイルの暗号化は `tools/` のコマンドラインのツールで作る。
- **裏設定のキー一覧**: `tools/config_generator` で暗号化する設定ファイル(`backstage_config.json`)のキー。値のないキーだけの見本は `doc/backstage_config.json.example`。指定する項目だけ書く(`null`・空文字・型違いは「指定なし」)。定義は `packages/features/backstag…
- **未対応**: Html 画面案(`tools/open-design`)に、共有ファイルと管理者(新規登録の管理・再設定依頼の管理)の画面は無い。追加するときは画面案を先に更新する。

## 7. エラー処理・ログ

- ログは `loggerProvider`(Riverpod)から受け、このライブラリが発生元のエラーだけを残す。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/admin_create_user_test.dart`(4)、`test/auth_files_module_split_test.dart`(4)、`test/auth_files_test.dart`(23)、`test/logout_test.dart`(10)、`test/secure_token_and_files_test.dart`(11)、`test/server_failure_test.dart`(4)、`test/tab_order_test.dart`(1)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
