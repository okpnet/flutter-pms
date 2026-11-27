# pms_graphql ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

pms_graphql: このファイルは、このリポジトリでコードを扱う際に Claude Code (claude.ai/code) へ向けたガイダンスを提供します。

- 層: infra(通信・認証・ログ・テストの道具)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/infra/pms_graphql` |
| Dart ファイル(生成物を除く) | 28 |
| `lib/src` の分け方 | (分けていない、または `lib/src` が無い) |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `AuditUser` | クラス | 更新者(ログイン中の担当者)。登録・更新・論理削除の `update_user_id`・`update_user_history_id` に渡す。 | `lib/src/audit_user.dart` |
| `AuditUserSource` | 型の別名 | 更新者を返す関数。ログインしていない(担当者が分からない)ときは null を返す。 | `lib/src/audit_user.dart` |
| `AuditUserResolver` | クラス | ログイン中の担当者の ID([staffId])から、最新の履歴の ID を引いて [AuditUser] にする。 | `lib/src/audit_user.dart` |
| `FilterStep` | クラス | 検索条件の展開で辿る1つの関連。 | `lib/src/flat_filter_converter.dart` |
| `FlatFilterPath` | クラス | 平坦化キー1つの展開先: 関連の経路([steps])と、その先の列([column])。 | `lib/src/flat_filter_converter.dart` |
| `FlatFilterSpec` | クラス | 1つの画面の対応表。[filterType]は最上位の`<テーブル>Filter`型名。 | `lib/src/flat_filter_converter.dart` |
| `FlatFilterConverter` | クラス | 平坦な検索条件のMapを、入れ子のFilterのMapへ展開する。 | `lib/src/flat_filter_converter.dart` |
| `GraphQLTypeKind` | 列挙型 | PostGraphile(GraphQL)スキーマにおける列の型の種類。 | `lib/src/content_variable.dart` |
| `ContentVariable` | クラス | 平坦化キー名([name])とGraphQLの型([kind])のペア。 | `lib/src/content_variable.dart` |
| `GraphqlFetch` | 型の別名 | 問い合わせ変数を受け取り、GraphQLを実行して結果[R]を返す関数。 | `lib/src/graphql_data_repository.dart` |
| `GraphqlDataRepository` | クラス | GraphQL(PostGraphile)の取得元(Adapter: `IDataRepository`をGraphQLの問い合わせ変数へ適合させる)。 | `lib/src/graphql_data_repository.dart` |
| `SharedFileLink` | クラス | 共有ファイル(`trans_file`)と、それを持つ行(例: つなぎの表 `trans_complaint_file`・担当者のアイコン `info_staff_icon`)を、 | `lib/src/shared_file_link.dart` |
| `fromJsonDatetime` | 関数 | `Datetime`(ISO 8601 の文字列)を [DateTime] にする。 | `lib/scalars.dart` |
| `toJsonDatetime` | 関数 | [DateTime] を `Datetime` の文字列にする。 | `lib/scalars.dart` |
| `fromJsonBigInt` | 関数 | `BigInt`(PostGraphile は文字列で返す)を [BigInt] にする。数値で届いた場合も受け付ける。 | `lib/scalars.dart` |
| `toJsonBigInt` | 関数 | [BigInt] を `BigInt` の文字列にする。 | `lib/scalars.dart` |
| `fromJsonJson` | 関数 | `JSON`(DB の jsonb)を値にする。PostGraphile v4 は JSON を、JSON の文字列として返す(文字列でなく値で届いた場合も受け付ける)。 | `lib/scalars.dart` |
| `toJsonJson` | 関数 | 値を `JSON` として送る。PostGraphile v4 は、JSON の文字列を受け取る(`jsonEncode` できる値: 配列・オブジェクト・文字列・数値)。 | `lib/scalars.dart` |
| `ModelRoundTrip` | 型の別名 | モデルのfromJson→toJsonを行う関数(画面ごとに生成クラスが異なるため呼び出し側が渡す)。 | `lib/testing.dart` |
| `SchemaIndex` | クラス |  | `lib/testing.dart` |
| `namedTypeOf` | 関数 |  | `lib/testing.dart` |
| `typeToString` | 関数 |  | `lib/testing.dart` |
| `DataPath` | 型の別名 | Map上の位置。String=キー、int=リスト添字(`nodes[0]`)。 | `lib/testing.dart` |
| `pathToString` | 関数 |  | `lib/testing.dart` |
| `readPath` | 関数 |  | `lib/testing.dart` |
| `LeafInfo` | クラス | 選択セット上のリーフ(スカラー)1件の情報。 | `lib/testing.dart` |
| `RfeEditPair` | クラス | 1画面分のRFE/Editペア。 | `lib/testing.dart` |
| `Finding` | クラス | 検証結果の1項目。 | `lib/testing.dart` |
| `VariableResolution` | クラス | 引数1件の解決結果。 | `lib/testing.dart` |
| `ConversionReport` | クラス |  | `lib/testing.dart` |
| `RfeEditConversionAnalyzer` | クラス |  | `lib/testing.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `AuditUserResolver` | Proxy(履歴の ID の取得と使い回しを、呼び出し側から隠す) | `lib/src/audit_user.dart` |
| `SharedFileLink` | Template Method(子の型と列の名前だけが違う、同じ手順) | `lib/src/shared_file_link.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `data_strategist`、`logger_provider`
- 利用元: `entry_app`(アプリ)、`pms_app`(アプリ)、`page_mediator_extension`(パッケージ)、`announcement`(パッケージ)、`document_settings`(パッケージ)、`item`(パッケージ)、`manual`(パッケージ)、`organization`(パッケージ)、`plan_change`(パッケージ)、`production_plan`(パッケージ)、`production_process`(パッケージ)、`purchasing`(パッケージ)、`quality`(パッケージ)、`quality_common`(パッケージ)、`quality_document`(パッケージ)、`resource`(パッケージ)、`sales`(パッケージ)、`shared_master`(パッケージ)、`system`(パッケージ)、`work_record`(パッケージ)、`data_test_harness`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`access_control_model`(パッケージ)、`announcement_model`(パッケージ)、`barcode_entry_model`(パッケージ)、`cost_model`(パッケージ)、`document_approval_model`(パッケージ)、`item_model`(パッケージ)、`manual_model`(パッケージ)、`organization_model`(パッケージ)、`plan_change_model`(パッケージ)、`production_plan_model`(パッケージ)、`purchasing_model`(パッケージ)、`quality_document_model`(パッケージ)、`quality_model`(パッケージ)、`resource_model`(パッケージ)、`return_model`(パッケージ)、`sales_model`(パッケージ)、`shared_master_model`(パッケージ)、`supply_model`(パッケージ)、`system_model`(パッケージ)、`work_record_model`(パッケージ)
- 外部パッケージ: `graphql`、`http`、`gql`、`collection`

## 6. 設計上の決定(`CLAUDE.md` より)

- **このパッケージについて**: `gqlib` は `graphql` をラップし、型付き・Result方式のクライアントとして
- **コマンド**: このディレクトリ (`flutter_pub_lib/gqlib`) から実行します。
- **アーキテクチャ**: 公開APIの全体は `lib/gqlib.dart` で定義されており、5つのサブライブラリを re-export しています。
- **コメント**: 日本語でまとめる

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/audit_user_test.dart`(4)、`test/exceptions/graphql_provider_exception_test.dart`(6)、`test/exceptions/graphql_timeout_exception_test.dart`(4)、`test/extends/dupricate_test.dart`(7)、`test/flat_filter_converter_test.dart`(11)、`test/flat_map_test.dart`(4)、`test/graphql_converters/graphql_converter_collection_test.dart`(11)、`test/graphql_data_repository_test.dart`(5)、`test/pms_graphql_test.dart`(7)、`test/providers/client_provider_offline_test.dart`(10)、`test/providers/client_provider_public_api_test.dart`(4)、`test/providers/client_provider_session_test.dart`(12)、`test/results/graphql_prover_result_test.dart`(7)、`test/scalars_test.dart`(2)、`test/shared_file_link_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
