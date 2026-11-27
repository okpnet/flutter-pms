# quality ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

quality: 品質管理 機能の実装(画面・ルート・ハンドラ)。アプリだけがこのパッケージに依存する。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/quality` |
| Dart ファイル(生成物を除く) | 29 |
| `lib/src` の分け方 | `audit_notice(1)`、`audit_plan(1)`、`audit_run(2)`、`complaint_register(1)`、`entities(3)`、`graphql(8)`、`i18n(1)`、`page(9)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `qualityRepositories` | 関数 | 品質管理の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/quality_repositories.dart` |
| `QualityModule` | クラス | 品質管理をアプリへ組み込むための口。 | `lib/src/quality_module.dart` |
| `AuditAssignment` | クラス | 自分に割り当てられた監査実施詳細 1 件(監査の計画の 1 行。チーム・予定・実績)。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `AuditComplaintRef` | クラス | 項目にひもづく異常 1 件。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `AuditItem` | クラス | 監査実施詳細項目 1 件(基準 = 監査標準項目、事実 = 値・所見)。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `IAuditRunGateway` | インターフェイス | 監査を実施する側の取得元。アプリが GraphQL 版に差し替える(Strategy)。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `InMemoryAuditRunGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `auditRunGatewayProvider` | Riverpod プロバイダ | 既定の取得元は、メモリ上のサンプル(アプリは GraphQL 版に差し替える)。サンプルにも、予定・実施中・終了の監査を持たせる | `lib/src/audit_run/audit_run_gateway.dart` |
| `sampleAuditRunGateway` | 関数 | サンプルの監査(予定・実施中・終了)を持つメモリ上の取得元。アプリは、接続先が無いとき、空の取得元ではなくこれを使う。 | `lib/src/audit_run/audit_run_gateway.dart` |
| `GraphqlAuditRunGateway` | クラス | 監査を実施する側の GraphQL 版の取得元(モデルは `quality_model` の `AuditDetailPage`・`AuditItemPage` ほか。Issue 20261122_0001)。 | `lib/src/graphql/graphql_audit_run_gateway.dart` |
| `AuditNotice` | クラス | 監査の通知 1 件(自分のチームの、予定日が近い・過ぎた監査実施詳細)。 | `lib/src/audit_notice/audit_notice_source.dart` |
| `IAuditNoticeSource` | インターフェイス | 監査の通知の取得元。アプリが GraphQL 版(`GraphqlAuditNoticeSource`)に差し替える(Strategy)。 | `lib/src/audit_notice/audit_notice_source.dart` |
| `InMemoryAuditNoticeSource` | クラス | メモリ上の取得元(既定・テスト用)。 | `lib/src/audit_notice/audit_notice_source.dart` |
| `auditNoticeSourceProvider` | Riverpod プロバイダ |  | `lib/src/audit_notice/audit_notice_source.dart` |
| `auditNoticesProvider` | Riverpod プロバイダ | 監査の通知(ダッシュボードを開くたびに取り直す)。失敗は、通知を出さない(ダッシュボードを止めない)。 | `lib/src/audit_notice/audit_notice_source.dart` |
| `GraphqlAuditNoticeSource` | クラス | 監査の通知の GraphQL 版の取得元。DB の関数 `audit_notice(p_days_before)`(STABLE。PostGraphile では query。JWT の担当者がチームの監査員で、 | `lib/src/graphql/graphql_audit_notice_source.dart` |
| `AuditNoticeBanner` | クラス | ダッシュボードの「監査の予定が N 件あります」の通知。チームの担当者への、予定日をもとにした通知 | `lib/src/page/audit_notice_banner.dart` |
| `AuditPlanOption` | クラス | 選択肢 1 件(監査標準・担当者)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `AuditPlanLine` | クラス | 監査の計画の 1 行 = チーム 1 つ + 監査員 + 監査実施詳細 1 件(予定)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `AuditPlanInput` | クラス | 監査の計画の入力。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `AuditPlanError` | 列挙型 | 入力の誤りの種類(画面が表示時に文字へ変換する)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `validateAuditPlan` | 関数 | 入力を検査する(取得元とは別に、画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `AuditPlanException` | クラス | 入力が正しくないときの例外(取得元が投げる。[errors] は検査の結果)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `IAuditPlanGateway` | インターフェイス | 監査の計画の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `InMemoryAuditPlanGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `auditPlanGatewayProvider` | Riverpod プロバイダ | 既定の取得元は、メモリ上のサンプル(アプリは GraphQL 版に差し替える)。サンプルにも選択肢を持たせる | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `sampleAuditPlanGateway` | 関数 | サンプルの選択肢を持つメモリ上の取得元。アプリは、接続先が無いとき、空の取得元ではなくこれを使う | `lib/src/audit_plan/audit_plan_gateway.dart` |
| `GraphqlAuditPlanGateway` | クラス | 監査の計画の登録の GraphQL 版の取得元(モデルは `quality_model` の `AuditPlanStdOptionPage`・`AuditPlanStaffOptionPage`。Issue 20261123_0001)。 | `lib/src/graphql/graphql_audit_plan_gateway.dart` |
| `ComplaintTarget` | 列挙型 | 異常の対象(画面で選ぶ。DB には持たない)。どれを選ぶかで、DB の関数 `complaint_register` に渡す対象の ID の引数が決まる(コード値では分岐しない)。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `ComplaintRegisterInput` | クラス | 異常の登録の入力。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `ComplaintRegisterError` | 列挙型 | 入力の誤りの種類(画面が表示時に文字へ変換する)。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `validateComplaintRegister` | 関数 | 入力を検査する(画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。DB の関数と同じ規則(数量はロットで必須・0 より大きい)。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `ComplaintRegisterException` | クラス | 入力が正しくないときの例外。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `IComplaintRegisterGateway` | インターフェイス | 異常の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `InMemoryComplaintRegisterGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `complaintRegisterGatewayProvider` | Riverpod プロバイダ |  | `lib/src/complaint_register/complaint_register_gateway.dart` |
| `GraphqlComplaintRegisterGateway` | クラス | 異常の登録の GraphQL 版の取得元(Issue 20261123_0001 C-1)。 | `lib/src/graphql/graphql_complaint_register_gateway.dart` |
| `MyAuditsDestination` | クラス | 自分の監査(自分のチームに割り当てられた監査実施詳細の一覧)へ。 | `lib/src/page/audit_run_destination.dart` |
| `AuditRunDestination` | クラス | 監査の実施(項目と異常の 2 画面)へ。[detailId] は監査実施詳細の ID。 | `lib/src/page/audit_run_destination.dart` |
| `AuditPlanDestination` | クラス | 監査計画の登録の画面へ。 | `lib/src/page/audit_plan_destination.dart` |
| `ComplaintRegisterDestination` | クラス | 異常の登録の画面へ。受注・受入・顧客などの行の操作から、対象を決めて開ける。 | `lib/src/page/complaint_register_destination.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `AuditStdRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/audit_std_repository.dart` |
| `ComplaintFileRepository` | Adapter(生成された読み込みの型と、画面の [EntityRecord] を変換する) | `lib/src/graphql/complaint_file_repository.dart` |
| `GraphqlAuditNoticeSource` | Adapter(関数の結果と、画面の [AuditNotice] を変換する) | `lib/src/graphql/graphql_audit_notice_source.dart` |
| `GraphqlAuditPlanGateway` | Adapter(生成された読み込みの結果と、画面の [AuditPlanOption] を変換する) | `lib/src/graphql/graphql_audit_plan_gateway.dart` |
| `GraphqlAuditRunGateway` | Adapter(生成された読み込みの結果と、画面の [AuditAssignment]・[AuditItem] を変換する) | `lib/src/graphql/graphql_audit_run_gateway.dart` |
| `GraphqlComplaintRegisterGateway` | Adapter(画面の [ComplaintRegisterInput] を、DB の関数の引数に変換する) | `lib/src/graphql/graphql_complaint_register_gateway.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/quality_repositories.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`feature_shared`、`entity_screens`、`data_strategist`、`pms_graphql`、`quality_model`、`baton_lib`、`app_shell`、`loadux_lib`
- テスト用: `selection_result`、`data_test_harness`
- 利用元: `pms_app`(アプリ)、`purchasing`(パッケージ)、`quality_common/example`(example)、`sales`(パッケージ)、`shared_master`(パッケージ)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **画面(Html のメニュー)**: 異常報告(すべて/顧客クレーム/工程異常報告/設備異常)
- **参照するモデル**: `packages/model_providers/*_model/gql/` の次を列・フィールドの参照元とし、モデルは `lib/src/graphql` のクラスを使う。
- **実装の指針**: `XxxModule implements FeatureModule` を `lib/src/quality_module.dart` に置き、公開は `lib/quality.dart` のバレルから `QualityModule` だけにする。アプリは `lib/app.dart` の `featureModules` に1行足して組み込む。
- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **監査を実施する側の画面(Issue 20261122_0001)**: 監査標準・計画の台帳(項目を作る側)とは別に、実際に監査する側の画面を持つ。階層は 監査(`trans_audit`。計画の文書)→ 監査実施詳細(`trans_audit_details`)→ 項目(`trans_audit_detail_check_items`)→ 異常(`trans_audit_complaint`)。
- **異常の登録(Issue 20261123_0001 C-1)**: パスは `/quality/complaint-register`(`ComplaintRegisterPage`。メニュー「異常の登録」)。遷移先は契約 `quality_api.dart` の `ComplaintRegisterDestination`(`target`・`targetId`・`targetLabel` の文字だけ。受注・受入・顧客など…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。異常報告のファイル・監査標準は書き込みできる。ほかは読み取り専用)**: `lib/src/graphql/quality_repositories.dart` の `qualityRepositories(GraphQLClient)` が、苦情(`complaint`)・監査(`audit`)・監査基準(`auditstd`)の取得元を作る。アプリ(`pms_app` の `graphql_overrides.dart`)が …

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/audit_judgement_test.dart`(4)、`test/audit_notice_test.dart`(5)、`test/audit_plan_server_test.dart`(2)、`test/audit_plan_test.dart`(10)、`test/audit_run_graphql_test.dart`(6)、`test/audit_run_server_test.dart`(1)、`test/audit_run_test.dart`(8)、`test/audit_std_repository_test.dart`(5)、`test/complaint_file_test.dart`(4)、`test/complaint_ledger_test.dart`(2)、`test/complaint_register_graphql_test.dart`(4)、`test/complaint_register_test.dart`(8)、`test/menu_test.dart`(1)、`test/quality_connection_test.dart`(2)、`test/quality_entities_test.dart`(4)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
