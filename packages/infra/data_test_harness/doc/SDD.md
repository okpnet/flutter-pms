# data_test_harness ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

data_test_harness: テスト専用。GraphQLのテスト接続先・取得元の代役を一か所にまとめる。dev_dependenciesにだけ書く。

- 層: infra(通信・認証・ログ・テストの道具)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/infra/data_test_harness` |
| Dart ファイル(生成物を除く) | 8 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `RecordedRequest` | クラス | 受け取った要求の記録。 | `lib/src/faulty_graphql_server.dart` |
| `FaultKind` | 列挙型 | 応答の振る舞い。 | `lib/src/faulty_graphql_server.dart` |
| `FaultyGraphqlServer` | クラス | 通信の異常を再現する、ローカルのGraphQLサーバーの代役(テスト専用)。 | `lib/src/faulty_graphql_server.dart` |
| `RecordedFind` | クラス | [RecordingDataRepository]が受け取った`find`1回分の呼び出し。 | `lib/src/recording_data_repository.dart` |
| `RecordingDataRepository` | クラス | 呼び出しを記録し、決めておいた結果を返す取得元(Test Double: Spy + Stub)。 | `lib/src/recording_data_repository.dart` |
| `ReplayLink` | クラス | 記録した(または手で決めた)応答を返す GraphQL の通信の層。サーバーにも DB にも接続しない。 | `lib/src/replay_graphql.dart` |
| `RecordingLink` | クラス | 実サーバーの応答を JSON として記録する通信の層(別の Link を包む)。 | `lib/src/replay_graphql.dart` |
| `ReplayGraphql` | クラス | [ReplayLink] を使う [GraphQLClientProvider] を作る。 | `lib/src/replay_graphql.dart` |
| `serverTest` | 関数 | 検証用GraphQLサーバーを必要とするテストを登録する。 | `lib/src/server_test.dart` |
| `TestServer` | クラス | 検証用GraphQLサーバー(PostGraphile)への接続。テストの接続先はここだけが持つ。 | `lib/src/test_server.dart` |
| `TestToken` | クラス | 検証用サーバーを使うテストの、GraphQL 用の JWT(PocketBase が発行する短期のトークン)を用意する。 | `lib/src/test_token.dart` |
| `TestTokenException` | クラス | JWT を取得できなかった(資格情報の誤り・PocketBase に接続できない、など)。 | `lib/src/test_token.dart` |
| `endedInTimeout` | 関数 | [run]がタイムアウトで終わったか。 | `lib/src/timeout_outcome.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `FaultyGraphqlServer` | Test Double(Fake)。 | `lib/src/faulty_graphql_server.dart` |
| `ReplayLink` | Proxy(サーバーの代理として、決めた応答を返す)。 | `lib/src/replay_graphql.dart` |
| `RecordingLink` | Decorator(通信を変えずに、記録の機能を足す)。 | `lib/src/replay_graphql.dart` |
| `TestServer` | Factory Method([connect])。既定の候補での接続の確認は1回だけ行い、 | `lib/src/test_server.dart` |
| `TestToken` | Proxy(トークンの取得と使い回しを、呼び出し側から隠す)。 | `lib/src/test_token.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `data_strategist`、`pms_graphql`
- 利用元: `announcement`(パッケージ・テスト用)、`barcode_entry`(パッケージ・テスト用)、`cost`(パッケージ・テスト用)、`dashboard_container`(パッケージ・テスト用)、`document_settings`(パッケージ・テスト用)、`item`(パッケージ・テスト用)、`manual`(パッケージ・テスト用)、`organization`(パッケージ・テスト用)、`plan_change`(パッケージ・テスト用)、`production_plan`(パッケージ・テスト用)、`production_process`(パッケージ・テスト用)、`purchasing`(パッケージ・テスト用)、`quality`(パッケージ・テスト用)、`quality_common`(パッケージ・テスト用)、`quality_document`(パッケージ・テスト用)、`resource`(パッケージ・テスト用)、`sales`(パッケージ・テスト用)、`shared_master`(パッケージ・テスト用)、`system`(パッケージ・テスト用)、`work_record`(パッケージ・テスト用)、`jwt_verification_test`(パッケージ・テスト用)、`access_control_model`(パッケージ・テスト用)、`announcement_model`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ・テスト用)、`cost_model`(パッケージ・テスト用)、`document_approval_model`(パッケージ・テスト用)、`item_model`(パッケージ・テスト用)、`manual_model`(パッケージ・テスト用)、`organization_model`(パッケージ・テスト用)、`plan_change_model`(パッケージ・テスト用)、`production_plan_model`(パッケージ・テスト用)、`purchasing_model`(パッケージ・テスト用)、`quality_document_model`(パッケージ・テスト用)、`quality_model`(パッケージ・テスト用)、`resource_model`(パッケージ・テスト用)、`return_model`(パッケージ・テスト用)、`sales_model`(パッケージ・テスト用)、`shared_master_model`(パッケージ・テスト用)、`supply_model`(パッケージ・テスト用)、`system_model`(パッケージ・テスト用)、`work_record_model`(パッケージ・テスト用)
- 外部パッケージ: `flutter_test`、`crypto`、`gql`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **このライブラリについて**: `data_test_harness`は、テスト専用のライブラリです。データの取得元([IDataRepository](../../foundation/data_strategist/lib/src/data_repository.dart))とGraphQL(`pms_graphql`)をつなぐテストの道具を、一か所にまとめます。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/data_test_harness_test.dart`(7)、`test/dev_only_dependency_test.dart`(1)、`test/faulty_graphql_server_test.dart`(8)、`test/recorded_fixtures_test.dart`(1)、`test/replay_graphql_test.dart`(7)、`test/test_token_self_signed_test.dart`(1)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
