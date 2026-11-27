# item_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

item_model: item 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/item_model` |
| Dart ファイル(生成物を除く) | 17 |
| `lib/src` の分け方 | `contents(16)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `ItemKindPage` | 読み込み | `mstr_item_kind` | `gql/item.yaml` |
| `ItemKindPageEdit` | 更新 | `mstr_item_kind` | `gql/item.yaml` |
| `ItemKindPageCreate` | 登録 | `mstr_item_kind` | `gql/item.yaml` |
| `ItemKindAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | `gql/item.yaml` |
| `ItemPage` | 読み込み | `mstr_item` | `gql/item.yaml` |
| `ItemPageEdit` | 更新 | `mstr_item` | `gql/item.yaml` |
| `ItemTreePageEdit` | 更新 | `mstr_item_tree` | `gql/item.yaml` |
| `ItemOnHandPage` | 読み込み | `v_item_on_hand` | `gql/item_on_hand.yaml` |
| `ItemOperationPageEdit` | 更新 | `mstr_item_operation` | `gql/item_operation.yaml` |
| `ItemOperationTaskPageEdit` | 更新 | `mstr_item_operation_task` | `gql/item_operation.yaml` |
| `ItemSizeKindPageEdit` | 更新 | `mstr_item_size_kind` | `gql/item_size.yaml` |
| `TaskPage` | 読み込み | `mstr_task` | `gql/task.yaml` |
| `TaskPageEdit` | 更新 | `mstr_task` | `gql/task.yaml` |
| `TaskResourcePage` | 読み込み | `mstr_task_location` | `gql/task.yaml` |
| `TaskResourcePageEdit` | 更新 | `mstr_task_location` | `gql/task.yaml` |
| `OperationPage` | 読み込み | `mstr_operation` | `gql/task.yaml` |
| `OperationPageEdit` | 更新 | `mstr_operation` | `gql/task.yaml` |
| `TaskTreePageEdit` | 更新 | `mstr_task_tree` | `gql/task.yaml` |
| `TaskEquipmentAvailablePage` | 読み込み | `mstr_equipment_available` | `gql/task_available.yaml` |
| `TaskEquipmentAvailablePageEdit` | 更新 | `mstr_equipment_available` | `gql/task_available.yaml` |
| `TaskOutsourceAvailablePage` | 読み込み | `mstr_outsource_available` | `gql/task_available.yaml` |
| `TaskOutsourceAvailablePageEdit` | 更新 | `mstr_outsource_available` | `gql/task_available.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `ItemKindPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_kind_page_filter_spec.dart` |
| `ItemKindPageKeyName` | 抽象クラス |  | `lib/src/contents/item_kind_page_keyname.dart` |
| `ItemOnHandPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_on_hand_page_filter_spec.dart` |
| `ItemOperationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_operation_page_filter_spec.dart` |
| `ItemOperationTaskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_operation_task_page_filter_spec.dart` |
| `ItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_page_filter_spec.dart` |
| `ItemSizePageFilterSpec` | 抽象クラス |  | `lib/src/contents/item_size_page_filter_spec.dart` |
| `ManufacturePageFilterSpec` | 抽象クラス |  | `lib/src/contents/manufacture_page_filter_spec.dart` |
| `OperationPageFilterSpec` | 抽象クラス |  | `lib/src/contents/operation_page_filter_spec.dart` |
| `SpecMeasurementPageFilterSpec` | 抽象クラス |  | `lib/src/contents/spec_measurement_page_filter_spec.dart` |
| `SpecMeasurementPageKeyName` | 抽象クラス |  | `lib/src/contents/spec_measurement_page_keyname.dart` |
| `TaskEquipmentAvailablePageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_equipment_available_page_filter_spec.dart` |
| `TaskGroupPageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_group_page_filter_spec.dart` |
| `TaskOutsourceAvailablePageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_outsource_available_page_filter_spec.dart` |
| `TaskPageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_page_filter_spec.dart` |
| `TaskResourcePageFilterSpec` | 抽象クラス |  | `lib/src/contents/task_resource_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `item`(パッケージ)、`production_process`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/filter_spec_roundtrip_test.dart`(0)、`test/item_kind_page_flatten_roundtrip_test.dart`(3)、`test/operation_page_flatten_roundtrip_test.dart`(3)、`test/rfe_edit_interconversion_test.dart`(1)、`test/server_read_test.dart`(20)、`test/spec_measurement_page_flatten_roundtrip_test.dart`(3)、`test/task_tree_page_flatten_roundtrip_test.dart`(3)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
