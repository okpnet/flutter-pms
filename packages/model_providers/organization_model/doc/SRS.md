# organization_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

organization_model: organization 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/organization_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`organization`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`pms_graphql`

テスト用: `data_test_harness`

依存は上から下への一方向だけ(`apps → features → core → ui / model_providers / infra → foundation`)。逆向き・同じ層どうし(features どうしなど)の依存を持たない。

### 2.3 制約

- 規則は `CLAUDE.md`(ルート・層・パッケージ)に従う。名前は Flutter の慣習、クラス名は意味が通る英語の名詞。
- 生成物(`*.g.dart`・`*.graphql.dart`・`strings*.g.dart` ほか)は手で編集しない。
- GraphQL へ通信する前に、メンテナンス中・セッション切れを確認する(アプリ側。`GraphqlAccessGuard`)。

## 3. 機能要件

このライブラリは、画面ごとの GraphQL の読み込み・登録・更新・関数の呼び出しを、次のとおり提供する(`gql/*.yaml` が定義。型は生成する)。

| ID | 名前 | 種類 | 対象 | 要求 |
|---|---|---|---|---|
| FR-01 | `ApprovalOperationPage` | 読み込み | `mstr_approval_pattern` | 承認オペレーション読み込み |
| FR-02 | `ApprovalOperationPageEdit` | 更新 | `mstr_approval_pattern` | 承認オペレーション書き込み |
| FR-03 | `ApprovalScopePageEdit` | 更新 | `mstr_approval_scope_pattern` | mstr_approval_scope_patternの書き込み |
| FR-04 | `ApprovalDefaultsPage` | 読み込み | `info_app` | NULL は承認不要。DB のトリガー(trg_05_approval_request)が、対象のテーブルの登録で、この列から承認パターンを引く。 |
| FR-05 | `ApprovalDefaultsPageEdit` | 更新 | `info_app` | 更新(渡した列だけが変わる。NULL にするには、キーを残したまま null を送る)。更新者つき |
| FR-06 | `ApprovalPatternOptionPage` | 読み込み | `mstr_approval_pattern` | 選択肢にする承認パターン(名称は言語 ja) |
| FR-07 | `ApprovalDefaultsLanguagePage` | 読み込み | `shared_language_code` | 言語コード(ja の ID を引く) |
| FR-08 | `ApprovalPatternLedgerPage` | 読み込み | `mstr_approval_pattern` | 承認パターンの台帳(名称は言語 languageCode) |
| FR-09 | `ApprovalPatternLedgerPageEdit` | 更新 | `mstr_approval_pattern` | 承認パターンの更新(渡した列だけが変わる。論理削除は ApprovalPatternLedgerPageRemove) |
| FR-10 | `ApprovalPatternLedgerPageCreate` | 登録 | `mstr_approval_pattern` |  |
| FR-11 | `ApprovalPatternAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(言語別の値)を作る・変える |
| FR-12 | `ApprovalStepPage` | 読み込み | `mstr_approval_pattern_detail` |  |
| FR-13 | `ApprovalStepApprovalPageEdit` | 更新 | `mstr_approval` | 承認(段の中身: 部署・役職・順位)の登録・更新。順位の付け替えは、変えた段だけ更新する |
| FR-14 | `ApprovalStepApprovalPageCreate` | 登録 | `mstr_approval` |  |
| FR-15 | `ApprovalStepDetailPageEdit` | 更新 | `mstr_approval_pattern_detail` | 承認パターン明細(パターンと承認のつなぎ)。削除は論理削除(ApprovalStepDetailPageRemove) |
| FR-16 | `ApprovalStepDetailPageCreate` | 登録 | `mstr_approval_pattern_detail` |  |
| FR-17 | `ApprovalStepDepartmentOptionPage` | 読み込み | `info_department` | 段の選択肢(部署・役職。名称は言語 languageCode) |
| FR-18 | `ApprovalStepPositionOptionPage` | 読み込み | `info_position` |  |
| FR-19 | `AccessPathApprovalLedgerPage` | 読み込み | `info_access_path_approval` | アクセスパスの承認(名称・アクセスパス・備考。名称は言語 languageCode) |
| FR-20 | `AccessPathApprovalLedgerPageEdit` | 更新 | `info_access_path_approval` |  |
| FR-21 | `AccessPathApprovalLedgerPageCreate` | 登録 | `info_access_path_approval` |  |
| FR-22 | `ApprovalScopeLedgerPage` | 読み込み | `mstr_approval_scope_pattern` | 承認の範囲(承認パターンごと。アクセスパスの承認 + 備考) |
| FR-23 | `ApprovalScopeLedgerPageEdit` | 更新 | `mstr_approval_scope_pattern` |  |
| FR-24 | `ApprovalScopeLedgerPageCreate` | 登録 | `mstr_approval_scope_pattern` |  |
| FR-25 | `ProvisionPageEdit` | 更新 | `info_provision` | 提供の書き込み　2026/09/29　追加 |
| FR-26 | `CompanyPage` | 読み込み | `info_company` | --- read: 会社情報(info_company) 詳細画面 --- |
| FR-27 | `CompanyPageEdit` | 更新 | `info_company` | requiredWhereは、read for editing側が1件取得する際の必須引数(通常は主キー)。 --- |
| FR-28 | `DepartmentCategoryPageEdit` | 更新 | `info_department_kind_value` | 組織区分編集 |
| FR-29 | `DepartmentPageEdit` | 更新 | `info_department` | 組織編集 |
| FR-30 | `DepartmentTreePageEdit` | 更新 | `info_department_tree` | ツリー行(info_department_tree)を直接更新する。parent_info_department_idがnullのときはトップノード。 |
| FR-31 | `OfficePageEdit` | 更新 | `info_office` | 事業所の更新(平らな列だけ。渡した列だけが変わる。名称(names)の ID は共通関数で、住所(info_address_id)は住所の登録・更新で作る)。論理削除は OfficePageRemove(remove = true) |
| FR-32 | `OfficePageCreate` | 登録 | `info_office` | 事業所の登録(kind: create)。記号(symbol)は DB が採番する |
| FR-33 | `OfficeAddressPageEdit` | 更新 | `info_address` | 事業所の住所の更新・登録(住所は事業所と 1 対 1。住所1・住所2・建物は呼称の ID で、共通関数で作る) |
| FR-34 | `OfficeAddressPageCreate` | 登録 | `info_address` |  |
| FR-35 | `OfficeAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 共通関数(kind: function)。呼称(言語別の値)を作る・変える。名称・住所1・住所2・建物のそれぞれで呼ぶ |
| FR-36 | `PositionPageEdit` | 更新 | `info_position` | 組織の役職名や順位、エスカレーションを定義する |
| FR-37 | `AssignPage` | 読み込み | `info_assign` | 組織の役職名や順位、エスカレーションを担当者に割り当てる責任と権限の付与 |
| FR-38 | `AssignPageEdit` | 更新 | `info_assign` | 組織の役職名や順位、エスカレーションを担当者に割り当てる責任と権限の付与 |
| FR-39 | `StaffPageEdit` | 更新 | `info_staff` | 担当者編集 |
| FR-40 | `StaffCapabilityPage` | 読み込み | `info_staff` | 2026/09/30変更:StaffToCapabilityPage->StaffCapabilityPage |
| FR-41 | `StaffCapabilityPageEdit` | 読み込み |  | 0050: 7-2-3により、共有する本体をStaffCapabilityEditFieldsとし、各ページの編集画面として新設した。 |
| FR-42 | `StaffHeldLicensePage` | 読み込み | `info_staff` | 担当者が持つ資格が該当する |
| FR-43 | `StaffHeldLicensePageEdit` | 読み込み |  | 完全に同一の内容をそのまま参照する。 |
| FR-44 | `StaffHistoryLatestPage` | 読み込み | `history_info_staff` | filter: {infoStaffId: {equalTo: ...}} を渡す)。取得は organization 機能の staffHistoryLookup(アプリが current_user の CurrentUserHolder に渡す) |
| FR-45 | `StaffLedgerPageEdit` | 更新 | `info_staff` | 作業者の更新(渡した列だけが変わる。論理削除は StaffLedgerPageRemove) |
| FR-46 | `StaffLedgerPageCreate` | 登録 | `info_staff` |  |
| FR-47 | `StaffCountPage` | 読み込み | `v_staff_count` | 従業員数(department × 役割)(ダッシュボード用。要件20261027_0001) |
| FR-48 | `StaffIconPageEdit` | 更新 | `info_staff_icon` | 担当者のアイコンの更新・取り消し(備考・名称の付け替え・remove)。ファイルの差し替えは入れ子の登録で行う |
| FR-49 | `StaffIconAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(名称)の登録・更新(p_appellation_id が無ければ新規) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `AccessPathApprovalLedgerPageFilterSpec` | 抽象クラス |  |
| FA-02 | `ApprovalDefaultsLanguagePageFilterSpec` | 抽象クラス |  |
| FA-03 | `ApprovalDefaultsPageFilterSpec` | 抽象クラス |  |
| FA-04 | `ApprovalOperationPageFilterSpec` | 抽象クラス |  |
| FA-05 | `ApprovalOperationPageKeyName` | 抽象クラス |  |
| FA-06 | `ApprovalPatternLedgerPageFilterSpec` | 抽象クラス |  |
| FA-07 | `ApprovalPatternOptionPageFilterSpec` | 抽象クラス |  |
| FA-08 | `ApprovalScopeLedgerPageFilterSpec` | 抽象クラス |  |
| FA-09 | `ApprovalScopePageFilterSpec` | 抽象クラス |  |
| FA-10 | `ApprovalStepDepartmentOptionPageFilterSpec` | 抽象クラス |  |
| FA-11 | `ApprovalStepPageFilterSpec` | 抽象クラス |  |
| FA-12 | `ApprovalStepPositionOptionPageFilterSpec` | 抽象クラス |  |
| FA-13 | `AssignPageFilterSpec` | 抽象クラス |  |
| FA-14 | `AssignPageKeyName` | 抽象クラス |  |
| FA-15 | `CompanyPageFilterSpec` | 抽象クラス |  |
| FA-16 | `CompanyPageKeyName` | 抽象クラス |  |
| FA-17 | `DepartmentCategoryPageFilterSpec` | 抽象クラス |  |
| FA-18 | `DepartmentCategoryPageKeyName` | 抽象クラス |  |
| FA-19 | `DepartmentPageFilterSpec` | 抽象クラス |  |
| FA-20 | `DepartmentPageKeyName` | 抽象クラス |  |
| FA-21 | `OfficePageFilterSpec` | 抽象クラス |  |
| FA-22 | `OfficePageKeyName` | 抽象クラス |  |
| FA-23 | `PositionPageKeyName` | 抽象クラス |  |
| FA-24 | `ProvisionPageFilterSpec` | 抽象クラス |  |
| FA-25 | `ProvisionPageKeyName` | 抽象クラス |  |
| FA-26 | `StaffCapabilityPageFilterSpec` | 抽象クラス |  |
| FA-27 | `StaffCapabilityPageKeyName` | 抽象クラス |  |
| FA-28 | `StaffCountPageFilterSpec` | 抽象クラス |  |
| FA-29 | `StaffHeldLicensePageFilterSpec` | 抽象クラス |  |
| FA-30 | `StaffHeldLicensePageKeyName` | 抽象クラス |  |
| FA-31 | `StaffHistoryLatestPageFilterSpec` | 抽象クラス |  |
| FA-32 | `StaffIconPageFilterSpec` | 抽象クラス |  |
| FA-33 | `StaffPageFilterSpec` | 抽象クラス |  |
| FA-34 | `StaffPageKeyName` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/organization_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 71 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 18 件、テストケース 71 件。

- `test/approval_operation_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$ApprovalOperationPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$ApprovalOperationPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$ApprovalOperationPageRfe <-> Map 往復変換が元と一致する
- `test/assign_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$AssignPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$AssignPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$AssignPageRfe <-> Map 往復変換が元と一致する
- `test/client_provider_server_test.dart`
  - PositionPageRead returns Ok with the totalCount
  - an unknown field returns Err(DeveloperError)
  - a wrong port returns Err(NetworkError)
- `test/company_page_flatten_roundtrip_test.dart`
  - 要件0035: Query$CompanyPageRead <-> Map 往復変換が元と一致する
  - 要件0036: CompanyPageKeyName(value単一エイリアス) + collapseSingleRecordPathsで
  - 要件0035: Mutation$CompanyPageEdit <-> Map 往復変換が元と一致する
  - 要件0035: Query$CompanyPageRfe <-> Map 往復変換が元と一致する
- `test/department_category_page_flatten_roundtrip_test.dart`
  - 要件0035: Query$DepartmentCategoryPageRead <-> Map 往復変換が元と一致する
  - 要件0035: Mutation$DepartmentCategoryPageEdit <-> Map 往復変換が元と一致する
  - 要件0035: Query$DepartmentCategoryPageRfe <-> Map 往復変換が元と一致する
- `test/department_page_flatten_roundtrip_test.dart`
  - 要件0035: Query$DepartmentPageRead <-> Map 往復変換が元と一致する
  - 要件0045: Mutation$DepartmentPageEdit <-> Map 往復変換が元と一致する
  - 要件0045: Query$DepartmentPageRfe <-> Map 往復変換が元と一致する
- `test/department_tree_page_flatten_roundtrip_test.dart`
  - Mutation DepartmentTreePageEdit <-> Map 往復変換が元と一致する
  - Query DepartmentTreePageRfe <-> Map 往復変換が元と一致する
  - 親をnull(トップへ移動)にするには、fromJsonにnullのキーを渡す
- `test/office_filter_search_test.dart`
  - 住所の郵便番号と、事業所名(表示言語の辞書の値)で絞り込む
- `test/office_page_flatten_roundtrip_test.dart`
  - 要件0035: Query$OfficePageRead <-> Map 往復変換が元と一致する
  - 要件0035: Mutation$OfficePageEdit <-> Map 往復変換が元と一致する
  - 要件0035: Query$OfficePageRfe <-> Map 往復変換が元と一致する
- `test/position_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$PositionPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$PositionPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$PositionPageRfe <-> Map 往復変換が元と一致する
- `test/provision_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$ProvisionPageRead <-> Map 往復変換が元と一致する
  - 要件0044: Mutation$ProvisionPageEdit <-> Map 往復変換が元と一致する
  - 要件0044: Query$ProvisionPageRfe <-> Map 往復変換が元と一致する
- `test/rfe_edit_interconversion_test.dart`
  - ${pair.page} RFE <-> Edit 相互変換
- `test/server_read_test.dart`
  - AccessPathApprovalLedgerPageRead
  - ApprovalDefaultsLanguagePageRead
  - ApprovalDefaultsPageRead
  - ApprovalOperationPageRead
  - ApprovalPatternLedgerPageRead
  - ApprovalPatternOptionPageRead
  - ApprovalScopeLedgerPageRead
  - ApprovalScopePageRead
  - ApprovalStepDepartmentOptionPageRead
  - ApprovalStepPageRead
  - ApprovalStepPositionOptionPageRead
  - AssignPageRead
  - CompanyPageRead
  - DepartmentCategoryPageRead
  - DepartmentPageRead
  - OfficePageRead
  - PositionPageRead
  - ProvisionPageRead
  - StaffCapabilityPageRead
  - StaffCountPageRead
  - StaffHeldLicensePageRead
  - StaffHistoryLatestPageRead
  - StaffIconPageRead
  - StaffPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する
- `test/staff_capability_page_edit_flatten_roundtrip_test.dart`
  - 要件0047(要件0045から移設): Mutation$StaffCapabilityPageEdit <-> Map 往復変換が元と一致する
  - 要件0047(要件0045から移設): Query$StaffCapabilityPageRfe <-> Map 往復変換が元と一致する
- `test/staff_capability_page_flatten_roundtrip_test.dart`
  - 要件0044: Query$StaffCapabilityPageRead <-> Map 往復変換が元と一致する
- `test/staff_held_license_page_flatten_roundtrip_test.dart`
  - 要件0045: Query$StaffHeldLicensePageRead <-> Map 往復変換が元と一致する
  - 要件0045: Mutation$StaffHeldLicensePageEdit <-> Map 往復変換が元と一致する
  - 要件0045: Query$StaffHeldLicensePageRfe <-> Map 往復変換が元と一致する
- `test/staff_page_flatten_roundtrip_test.dart`
  - 要件0035: Query$StaffPageRead <-> Map 往復変換が元と一致する
  - 要件0035: Mutation$StaffPageEdit <-> Map 往復変換が元と一致する
  - 要件0035: Query$StaffPageRfe <-> Map 往復変換が元と一致する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
