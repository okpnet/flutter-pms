# pbapi ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

pbapi: PocketBaseのJWT認証・セッション・ファイル共有のクライアント。

- 層: infra(通信・認証・ログ・テストの道具)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/infra/pbapi` |
| Dart ファイル(生成物を除く) | 19 |
| `lib/src` の分け方 | `account(1)`、`admin(4)`、`avatar(2)`、`core(4)`、`files(3)`、`session(3)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 2 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AccountService` | クラス | 登録申請・コード入力・パスワードの変更と再設定・プロフィール変更。 | `lib/src/account/account_service.dart` |
| `AvatarService` | クラス | ユーザーのアバター画像(サーバーの `user_avatars`)。サーバーの仕様は README「9. ユーザーアバター」。 | `lib/src/avatar/avatar_service.dart` |
| `UserAvatar` | クラス | ユーザーのアバター画像の識別情報(サーバーの `user_avatars`)。画像の実体は [AvatarService.download] で取る。 | `lib/src/avatar/user_avatar.dart` |
| `AdminService` | クラス | 管理者の操作(申請の承認・却下、先に登録、コードの発行、無効化)。 | `lib/src/admin/admin_service.dart` |
| `CodeKind` | 列挙型 | コードの種類。 | `lib/src/admin/issued_code.dart` |
| `IssuedCode` | クラス | 管理者が発行したコード。本人へ手渡しする(メールで送れたときは [mailed] が true)。 | `lib/src/admin/issued_code.dart` |
| `ResetRequest` | クラス | メールを登録していないユーザーのパスワード再設定の依頼(管理者が本人確認をしてコードを渡す)。 | `lib/src/admin/reset_request.dart` |
| `SignupRequest` | クラス | 登録の申請(管理者が承認する前の本人情報)。 | `lib/src/admin/signup_request.dart` |
| `PbConnection` | クラス | PocketBase への接続(SDK のクライアント・トークンの保存先・ロガー)。各サービスが共有する。 | `lib/src/core/pb_connection.dart` |
| `PbEndpoint` | クラス | PocketBase の接続先。 | `lib/src/core/pb_endpoint.dart` |
| `PbFailureKind` | 列挙型 | 失敗の種類。呼び出し側は [PbException.kind] で処理を分ける。 | `lib/src/core/pb_exception.dart` |
| `PbException` | クラス | このライブラリが投げる例外。SDK の [ClientException](URLにトークンが入りうる)は外へ出さない。 | `lib/src/core/pb_exception.dart` |
| `ITokenStore` | インターフェイス | ログイン情報(トークンとユーザー)の保存先。 | `lib/src/core/token_store.dart` |
| `InMemoryTokenStore` | クラス | メモリにだけ保存する。アプリを閉じるとログアウトになる。テストと既定。 | `lib/src/core/token_store.dart` |
| `PersonalFileService` | クラス | 個人ファイル(設定のアップロード)。本人だけが参照・更新できるファイル。 | `lib/src/files/personal_file_service.dart` |
| `SharedFileService` | クラス | 共有ファイル(`app_files`)のアップロードとダウンロード。 | `lib/src/files/shared_file_service.dart` |
| `fetchRecordFile` | 関数 | レコードのファイル項目([field]。既定は `file`)を、短時間だけ有効なトークンでダウンロードする。 | `lib/src/files/shared_file_service.dart` |
| `StoredFile` | クラス | 保存したファイルの識別情報。アプリのDBには [recordId]([appFileId]・[revision])だけを保存する。 | `lib/src/files/stored_file.dart` |
| `DownloadedFile` | クラス | ダウンロードしたファイル。アプリ側で保存する。 | `lib/src/files/stored_file.dart` |
| `pbConnectionProvider` | Riverpod プロバイダ | PocketBase への接続。アプリが起動時に [PbConnection.open] で開き、上書きする。 | `lib/src/pbapi_providers.dart` |
| `sessionServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `accountServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `adminServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `sharedFileServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `personalFileServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `avatarServiceProvider` | Riverpod プロバイダ |  | `lib/src/pbapi_providers.dart` |
| `AuthSession` | クラス | ログイン中のセッションの情報。 | `lib/src/session/auth_session.dart` |
| `GraphqlToken` | クラス | GraphQL サーバー(PostGraphile)用の短期の JWT。PocketBase のトークンとは別物。 | `lib/src/session/graphql_token.dart` |
| `SessionService` | クラス | ログイン・ログアウトとセッションの確認。 | `lib/src/session/session_service.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `ITokenStore` | Strategy。トークンは秘密情報のため、本番のアプリは OS の安全な保管庫 | `lib/src/core/token_store.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `logger_provider`
- 利用元: `pms_app`(アプリ)、`pms_app_example`(アプリ)、`auth_files`(パッケージ)、`auth_files/example`(example)、`user_profile`(パッケージ)、`user_profile/example`(example)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `flutter_riverpod`、`pocketbase`、`http`

## 6. 設計上の決定(`CLAUDE.md` より)

- **このライブラリについて**: `pbapi`は、PocketBase(テスト環境は`http://192.168.1.103:8090`)の認証・セッション・ファイルのクライアントです。サーバーの仕様は`tools/docker/pocketbase/README.md`を参照します。
- **セキュリティ**: トークンは秘密情報。`AuthSession.toJson`・例外・ログに含めない。保存先`ITokenStore`は本番では`flutter_secure_storage`などの安全な保管庫で実装する(`shared_preferences`の平文は避ける)。GraphQL用のJWTも同じ扱い。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/avatar_test.dart`(8)、`test/pbapi_test.dart`(53)、`test/pocketbase_avatar_test.dart`(5)、`test/pocketbase_integration_test.dart`(8)、`test/pocketbase_server_test.dart`(2)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
