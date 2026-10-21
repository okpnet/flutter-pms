# organization

`packages/features/CLAUDE.md` の「organization」(単位・会社・事業所・部門部署・作業者・承認)を実装する機能プロジェクト。`packages/features/CLAUDE.md` の[規則/仕様]を必ず適用する。
画面の参照元は `packages/infra/graphql_provider_lib/source/page.md`、列は `source/views/{system,company}`、モデルは `lib/postgraphile` のクラスとする。

## 規則/仕様
1.  ディリクトリ/ファイル
    1.  生成結果のレポートは`doc/log`ディリクトリにファイル名`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  同じ年月日、同じ番号に対する追加変更は`年月日_4桁ゼロ埋の番号_add_1からの連番.md`として保存する。
    2.  画面イメージ(HTML)や使い方などは`doc/contents`に保存する。
    3.  最終的にこの`CLAUDE.md`へ統合される追加、変更の指示は`issue`ディリクトリに`年月日_4桁ゼロ埋の番号.md`として保存する。
        1.  つまり`生成結果のレポート`と連動する。
        2.  `CLAUDE.md`への統合も指示に含める。統合時、削除指示が無い限り`issue`ディリクトリ`doc/log`ディリクトリの中を削除しない。`CLAUDE.md`には変更や追加、削除であることについて記録しない(生成時に`issue`ディリクトリ`doc/log`ディリクトリを参照するため)。

## mock_up との対応
配置は `legacy/fultter_main/mock_up/lib/contents` を参考にする(コードの流用はしない)。

1.  ディレクトリ: `lib/<区分>/` に画面ごとのファイルと `route/` を置く。階層は2階層(`lib/xxx/xxx`)を限度とする。
    | 区分 | ディレクトリ | ファイル(接頭辞は構造を表す) |
    |---|---|---|
    | 単位 | `lib/unit/` | `list_unit.dart`, `edit_unit.dart` |
    | 会社 | `lib/company/` | `info_company.dart`(閲覧), `edit_company.dart`, `edit_provision.dart`, `list_position.dart`, `edit_position.dart`, `edit_assign.dart` |
    | 事業所 | `lib/office/` | `list_office.dart`, `edit_office.dart` |
    | 部門・部署 | `lib/department/` | `list_department_category.dart`, `edit_department_category.dart`, `tree_department.dart`, `edit_department.dart`, `edit_department_tree.dart`, `select_department.dart` |
    | 作業者 | `lib/staff/` | `list_staff.dart`, `edit_staff.dart`, `edit_staff_capability.dart`, `edit_staff_license.dart` |
    | 承認 | `lib/approval/` | `list_approval.dart`, `edit_approval.dart`, `edit_approval_scope.dart`, `edit_approval_authority.dart` |
    各区分の `route/` にルート定義(`xxx_router.dart`)、区分の入口に `_xxx.dart` のバレルを置く。
2.  接頭辞: `list_`=台帳・リスト、`tree_`=体系、`edit_`=情報、`info_`=閲覧(構造非該当)、`select_`=選択フレーム。
3.  フレーム: マルチメインフレームは `StatefulNavigationShell` を body に取る(`ControllerContentsFrame` 相当)。シングル/選択は body を直接取る(`UnControlContentsFrame` 相当)。どちらも `PopScope(canPop: false)` で戻る操作を制御し、認証済みのときだけメニューを持つ。読み込み中は `OverlayIndicator` を重ねる。
4.  メニュー: モバイルはハンバーガーで開く Drawer、タブレットはアイコンのみ、PC は常時表示のサイドバー(mock_up は Drawer のみ)。メニュー項目は区分(単位/会社/事業所/部門・部署/作業者/承認)。
5.  新規作成: 台帳・体系の「新規」は FloatingActionButton で行う(ツールバーのボタンにしない)。
6.  レスポンシブ: セルは `ResponsiveCellLayout`(PC/タブレット/モバイルの flex)を使う。入力フォームは3分割(PC 3 / タブレット 3 / モバイル 1)を既定とし、住所や備考など長い項目は広いセルにする。
7.  グリッド: 台帳は一覧(grid_list 相当)、体系はツリー(grid_tree 相当・ドラッグ&ドロップ制御・フィルタ式・集計)を grid_extensions から使う。
8.  mock_up との差異: 役職は mock_up では独立した一覧だが、ここでは `page.md` に従い会社情報の内部(明細)に置く。承認・単位は mock_up に無いので同じ接頭辞規則で新設する。

## 構成
1.  レスポンシブは view_responsiveness(モバイル/タブレット/PC)、色・サイズは theme_lib を使う。
2.  すべてマルチメインフレーム(タイトルバー、サイドバー、メインフレーム)。ただし部署項目[DepartmentReadFields]は選択フレーム。
3.  ラベルは slang(riverpod 注入、日本語主)。列ラベルは `schema.graphql` のコメント。不足分は推論し、仮のものは `doc/log` に残す。
4.  更新者・更新日はイミュータブルで編集不可。削除は論理削除(`remove`)。台帳の既定絞り込みは `remove = false`。
5.  台帳の1行クリックで情報(編集構造)へ遷移する。明細は親の情報ページの部品であり独立ページではない。
6.  baton_lib の `Destination` で遷移し、機能間は `xxx_api` の型だけに依存する。

## 画面一覧(ルート接頭辞 `/organization`)
| 区分 | 画面[ページID] | 構造 | ルート |
|---|---|---|---|
| 単位 | 単位台帳[UnitPage] | テーブル | `/unit` |
| | 単位情報[UnitPageEdit] | 編集 | `/unit/:id` |
| 会社 | 会社閲覧[CompanyPage] | 構造非該当(基本情報+事業所リスト+従業員数+提供項目[ProvisionPage]) | `/company` |
| | 会社情報[CompanyPageEdit] | 編集(提供リスト、提供情報[ProvisionPageEdit]、役職リスト[PositionPage]、役職情報[PositionPageEdit]、役職割当明細[AssignPage]、役職割当情報[AssignPageEdit]を内包) | `/company/edit` |
| 事業所 | 事業所台帳[OfficePage] / 事業所情報[OfficePageEdit] | テーブル / 編集 | `/office`, `/office/:id` |
| 部門・部署 | 部署区分台帳[DepartmentCategoryPage] / 情報[DepartmentCategoryPageEdit] | テーブル / 編集 | `/department/category`, `.../:id` |
| | 部署体系[DepartmentPage] | ツリー(遅延展開) | `/department` |
| | 部署情報[DepartmentPageEdit](部署区分明細[DepartmentKindReadFields]、割当情報[DepartmentKindEditFields]を内包) | 編集 | `/department/:id` |
| | 部署体系情報[DepartmentTreePageEdit] | 編集(親の付け替え D&D) | `/department/tree/:id` |
| | 部署項目[DepartmentReadFields] | 選択フレーム | `/department/select` |
| 作業者 | 作業者台帳[StaffPage] / 情報[StaffPageEdit] | テーブル / 編集 | `/staff`, `/staff/:id` |
| | 作業者力量明細[StaffCapabilityPage] / 情報[StaffCapabilityPageEdit,StaffCapabilityEditFields] | リスト / 編集 | 作業者情報内 |
| | 作業者資格明細[StaffHeldLicensePage] / 情報[StaffHeldLicensePageEdit,StaffLicenseEditFields] | リスト / 編集 | 作業者情報内 |
| 承認 | 承認パターン台帳[ApprovalOperationPage] / 情報[ApprovalOperationPageEdit] | テーブル / 編集 | `/approval`, `/approval/:id` |
| | 承認範囲明細[ApprovalScopePage] / 情報[ApprovalScopePageEdit] | リスト / 編集 | 承認パターン情報内 |
| | 承認者明細[ApprovalReadFields] / 権限情報[ApprovalEditFields] | リスト / 編集 | 承認パターン情報内 |

## 明細の操作
追加=既存子の割り当て(新規作成は子の情報へ遷移)、削除=解除または論理削除、順の変更(`sequence`)。削除方式と順は `page.md` の明細タグに従う。順を変更・追加・削除したら同じ親の `sequence` を1からの連番に振り直す。

## 画面イメージ
`doc/contents/organization_screens.html`(PC/タブレット/モバイルの切り替え付き)。実装はこのHTMLを基に `issue/` へ追加・変更をまとめてから行う。
