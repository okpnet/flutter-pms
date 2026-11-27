# organization ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

organization: `packages/features/CLAUDE.md` の「organization」(単位・会社・事業所・部門部署・作業者・承認)を実装する機能プロジェクト。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。 画面の参照元は `tools/gql_yaml2graphql/doc/page.md`、列は `source/views/{system,company}`、モデルは `lib/src/graphql` のクラスとする。

- 層: features(1 機能 = 1 パッケージの画面・ルート・ハンドラ)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/features/organization` |
| Dart ファイル(生成物を除く) | 30 |
| `lib/src` の分け方 | `approval_defaults(1)`、`approval_steps(1)`、`dashboard(1)`、`entities(3)`、`graphql(11)`、`i18n(1)`、`page(7)` |
| 多言語(slang) | あり |
| example(単体で画面を確認するアプリ) | あり |
| 使い方・画面イメージ(`doc/contents`) | 1 件 |

## 3. 公開面と主要な型

### 3.1 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `organizationRepositories` | 関数 | 組織の実体の取得元(GraphQL 版。読み取り専用)。アプリが [GraphQLClient] を渡して組み立て、 | `lib/src/graphql/organization_repositories.dart` |
| `staffHistoryLookup` | 定数・その他 |  | `lib/src/graphql/staff_history_lookup.dart` |
| `OrganizationModule` | クラス | 会社情報をアプリへ組み込むための口。 | `lib/src/organization_module.dart` |
| `UserDisplay` | クラス | ログインユーザーの表示用の情報(氏名・所属の部署名)。 | `lib/src/graphql/user_display_lookup.dart` |
| `userDisplayLookup` | 定数・その他 |  | `lib/src/graphql/user_display_lookup.dart` |
| `ApprovalPatternChoice` | クラス | 承認パターンの選択肢 1 件(`mstr_approval_pattern`。名称は画面の言語)。 | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `ApprovalDefaults` | クラス | 対象ごとの標準の承認パターンの ID(null は承認不要)。 | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `IApprovalDefaultsGateway` | インターフェイス | 標準の承認パターンの取得元。アプリが GraphQL 版(`GraphqlApprovalDefaultsGateway`)に差し替える(Strategy)。 | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `InMemoryApprovalDefaultsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `approvalDefaultsGatewayProvider` | Riverpod プロバイダ |  | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `approvalDefaultKinds` | 定数・その他 |  | `lib/src/approval_defaults/approval_defaults_gateway.dart` |
| `GraphqlApprovalDefaultsGateway` | クラス | 標準の承認パターンの GraphQL 版の取得元。モデルは `organization_model` の `ApprovalDefaultsPage`・`ApprovalDefaultsPageEdit` | `lib/src/graphql/graphql_approval_defaults_gateway.dart` |
| `ApprovalStep` | クラス | 承認の段 1 件(承認パターン明細 + 承認。部署・役職・順位)。 | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `ApprovalStepOption` | クラス | 部署・役職の選択肢 1 件。 | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `IApprovalStepsGateway` | インターフェイス | 承認の段の取得元。アプリが GraphQL 版(`GraphqlApprovalStepsGateway`)に差し替える(Strategy)。 | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `renumberSteps` | 関数 | 並びの順に、順位を 1 から振り直した段(変わらない段はそのまま)。 | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `InMemoryApprovalStepsGateway` | クラス | メモリ上の取得元(既定・example・テスト用)。 | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `approvalStepsGatewayProvider` | Riverpod プロバイダ |  | `lib/src/approval_steps/approval_steps_gateway.dart` |
| `GraphqlApprovalStepsGateway` | クラス | 承認の段の GraphQL 版の取得元。モデルは `organization_model` の `ApprovalStepPage`(段 = 承認パターン明細 + 承認)・ | `lib/src/graphql/graphql_approval_steps_gateway.dart` |
| `StaffCountMetricSource` | クラス | 従業員数(部署 × 役割のビューを合計)。内訳は配属数。 | `lib/src/dashboard/staff_count_metric_source.dart` |
| `staffCountMetricSource` | 関数 | アプリが`metricSourcesProvider`へ差し込む、従業員数の元。 | `lib/src/dashboard/staff_count_metric_source.dart` |
| `ApprovalDefaultsDestination` | クラス | 標準の承認パターンの画面へ(会社情報の「承認」から開く。対象ごとに、登録が申請になる承認パターンを選ぶ)。 | `lib/src/page/approval_defaults_destination.dart` |
| `ApprovalStepsDestination` | クラス | 承認の段の画面へ(承認パターンの台帳の行の操作「承認の段」から開く)。 | `lib/src/page/approval_steps_destination.dart` |
| `OrganizationPaths` | 抽象クラス |  | `lib/organization_paths.dart` |

## 4. デザインパターン

| 型 | パターン(コメントの記述) | 定義 |
|---|---|---|
| `ApprovalPatternRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/approval_pattern_repository.dart` |
| `AccessPathApprovalRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/approval_scope_repositories.dart` |
| `ApprovalScopeRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/approval_scope_repositories.dart` |
| `GraphqlApprovalDefaultsGateway` | Adapter(生成された読み込みの結果と、画面の [ApprovalDefaults] を変換する) | `lib/src/graphql/graphql_approval_defaults_gateway.dart` |
| `GraphqlApprovalStepsGateway` | Adapter(生成された読み込みの結果と、画面の [ApprovalStep] を変換する) | `lib/src/graphql/graphql_approval_steps_gateway.dart` |
|  | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/organization_repositories.dart` |
| `SiteRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/site_repository.dart` |
|  | Adapter(生成された読み込みの結果を、履歴の ID の文字列にする) | `lib/src/graphql/staff_history_lookup.dart` |
| `StaffIconRepository` | Adapter(生成された読み込み・登録の型と、画面の [EntityRecord] を変換する) | `lib/src/graphql/staff_icon_repository.dart` |
| `StaffRepository` | Adapter(生成された読み込みの結果と、画面の [EntityRecord] を変換する) | `lib/src/graphql/staff_repository.dart` |
|  | Adapter(生成された読み込みの結果を、表示用の値にする) | `lib/src/graphql/user_display_lookup.dart` |
| `CompanyHomePage` | Facade(複数の実体の取得元を、1 つの概要の画面にまとめる) | `lib/src/page/company_home_page.dart` |

## 5. 依存関係

- 依存先(ワークスペース内): `localized_values`、`view_responsiveness`、`feature_shared`、`access_control`、`baton_lib`、`dashboard_container`、`data_strategist`、`organization_model`、`pms_graphql`、`entity_screens`、`app_shell`、`loadux_lib`、`flgtable_lib`、`auth_files`
- テスト用: `data_test_harness`、`logger_provider`、`theme_lib`
- 利用元: `pms_app`(アプリ)、`access_control/example`(example)、`production_process/example`(example)、`quality/example`(example)、`quality_common/example`(example)、`resource/example`(example)、`work_record/example`(example)
- 外部パッケージ: `flutter_riverpod`、`go_router`、`slang`、`gql`、`graphql`

## 6. 設計上の決定(`CLAUDE.md` より)

- **実体の画面(生成)**: 台帳(テーブル/ツリー)と編集の画面は、`tools/entity_gen/gen.js` が `tools/open-design` の画面定義から生成する(定義・サンプル・表示名・モジュール・テスト)。
- **会社情報の概要の画面**: `/e/company`(メニューの「会社情報」。メニューには、この 1 項目だけを出す)は、表ではなく、概要の画面(`lib/src/page/company_home_page.dart` の `CompanyHomePage`。`OrganizationModule.customListPage`)。会社の情報(DB の列: 名称・読み・略称・代表者名…
- **承認の範囲**: 承認の範囲(`approvalscope`。承認パターンの子の台帳。DB の `mstr_approval_scope_pattern`)は、**承認パターンを、どのアクセスパスの承認に使うか**の対応(アクセスパスの承認 + 備考)。画面案の段階・承認する役職・対象の組織・配下を含むか、は DB に列が無いため持たない(DB を優先)。参照先の「アクセスパ…
- **作業者・アクセス権(Issue 20261123_0001)**: **作業者(`staff`。DB の `info_staff`)は書き込みできる**(`lib/src/graphql/staff_repository.dart` の `StaffRepository`。モデルは `staff.yaml` の `StaffLedgerPageEdit`・`StaffLedgerPageCreate`)。名称・読みは共通関数…
- **承認パターンの台帳と承認の段(GraphQL 版。Issue 20261122_0001)**: 承認パターン(`approvalpattern`。DB の `mstr_approval_pattern`)の台帳は、`ApprovalPatternRepository`(`lib/src/graphql/approval_pattern_repository.dart`。`organizationRepositories` が組み込む)で読み書きする。名…
- **標準の承認パターン**: `/organization/approval-defaults`(`ApprovalDefaultsPage`。契約 `organization_api.dart` の `ApprovalDefaultsDestination`。会社情報の概要の「承認」の「標準の承認パターン」から開く)。登録が申請になる対象(文書・受注・発注・非計上発注・出荷オーダー・異…
- **example と多言語**: ビジュアルテスト用に`example`(Windows 向け)を持つ。`flutter run -d windows`で起動し、`lib/main.dart`の`entries`に遷移先を足す(`packages/features/CLAUDE.md`の「機能プロジェクト共通」)。
- **取得元(GraphQL 版。読み取り専用)**: `lib/src/graphql/organization_repositories.dart` の `organizationRepositories(GraphQLClient)` が、職員(`staff`)・事業所(`site`)・部署(`department`。ツリー)の取得元を作る。アプリ(`pms_app` の `graphql_override…
- **データ・デザイン**: データの取得は`riverpod`をとおして`packages/foundation/data_strategist`を使用する。
- **mock_up との対応**: 配置は `legacy/fultter_main/mock_up/lib/contents` を参考にする(コードの流用はしない)。
- **構成**: レスポンシブは view_responsiveness(モバイル/タブレット/PC)、色・サイズは theme_lib を使う。
- **画面一覧(ルート接頭辞 `/organization`)**: | 区分 | 画面[ページID] | 構造 | ルート |
- **明細の操作**: 追加=既存子の割り当て(新規作成は子の情報へ遷移)、削除=解除または論理削除、順の変更(`sequence`)。削除方式と順は `page.md` の明細タグに従う。順を変更・追加・削除したら同じ親の `sequence` を1からの連番に振り直す。
- **画面イメージ**: `doc/contents/organization_screens.html`(PC/タブレット/モバイルの切り替え付き)。実装はこのHTMLを基に `issue/` へ追加・変更をまとめてから行う。
- **契約の公開**: 他の機能・アプリに公開する遷移先・命令の型は、別パッケージ `organization_api` を作らず、`lib/organization_api.dart`(契約だけのバレル)から公開する。実装の入口 `lib/organization.dart` は `OrganizationModule` だけを公開し、アプリだけが読み込む。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/approval_defaults_server_test.dart`(2)、`test/approval_defaults_test.dart`(7)、`test/approval_pattern_graphql_test.dart`(9)、`test/approval_pattern_server_test.dart`(2)、`test/approval_scope_graphql_test.dart`(8)、`test/approval_steps_test.dart`(11)、`test/company_home_test.dart`(4)、`test/organization_connection_test.dart`(3)、`test/organization_entities_test.dart`(4)、`test/site_test.dart`(2)、`test/staff_count_connection_test.dart`(6)、`test/staff_count_metric_source_test.dart`(2)、`test/staff_history_lookup_test.dart`(3)、`test/staff_icon_test.dart`(1)、`test/staff_repository_test.dart`(6)、`test/staff_user_action_test.dart`(2)、`test/user_display_lookup_test.dart`(5)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
