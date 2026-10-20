# 要件0052: view.yamlの機能単位の分割(2026/10/15)

## 1. 目的と方針

- view.yamlが約3,700行(トップノード105個)に肥大化し、レビューが困難になったため、機能単位のファイルに分割した。
- 配置は`source/views/`以下。分け方は`source/page.md`の分野(##)・機能(1.)に従う。
- 機能に該当する共通定義(`~ReadFields`・`~EditFields`、例: `TaskReadFields`)は機能のファイルに置いた。複数の機能から使うものだけを`common/`に置いた。
- ファイルをまたぐ共通項目の参照は、読み込み側で全ファイルを依存順に結合してから解析して解決した(案A)。

## 2. 分割の結果

| ファイル | トップノード |
|---|---|
| common/all_common.yaml | UpdateStaffReadFields, AddressReadFields, AddressEditFields, UnitReadFields, LanguageCodeEditFields |
| common/master_common.yaml | AppellationLabelsRead/EditFields, FixLabelRead/EditFields, FixTextRead/EditFields |
| common/transaction_common.yaml | FlexibleLabelRead/EditFields, FlexibleTextRead/EditFields |
| system/unit.yaml | UnitPage, UnitPageEdit |
| company/company.yaml | CompanyPage(Edit), ProvisionPage(Edit) |
| company/position.yaml | PositionPage(Edit), AssignPage(Edit) |
| company/office.yaml | OfficePage(Edit) |
| company/department.yaml | DepartmentCategoryPage(Edit), DepartmentReadFields, DepartmentPage(Edit) |
| company/staff.yaml | StaffPage(Edit), StaffCapabilityPage, StaffCapabilityEditFields, StaffCapabilityPageEdit, StaffHeldLicensePage(Edit), StaffLicenseEditFields |
| company/approval.yaml | ApprovalRead/EditFields, ApprovalDetailRead/EditFields, ApprovalOperationPage(Edit) |
| resource/capability.yaml | CapabilityPage(Edit), CapableStaffPage(Edit) |
| resource/license.yaml | LicensePage(Edit), LicenseHoldersPage(Edit) |
| resource/location.yaml | LocationReadFields, LocationPage(Edit) |
| resource/equipment.yaml | EquipmentCategoryPage(Edit), EquipmentPage(Edit) |
| resource/maintenance.yaml | InspectionKindPage(Edit), InspectionFormulaRead/EditFields, InspectionItemPage(Edit), InspectionOperationPage(Edit), InspectionEquipentPage(Edit) |
| provision/item.yaml | ItemKindReadFields, ItemKindPage(Edit), ItemReadFields, ItemEditFields, ItemPage(Edit), HsCodeReadFields, HsCodeReadEditFields |
| provision/item_size.yaml | ItemSizeKindPage(Edit), ItemSizePage(Edit), SpecMeasurementPage(Edit) |
| provision/manufacture.yaml | ManufacturePage(Edit) |
| provision/task.yaml | TaskReadFields, TaskPage(Edit), TaskResourcePage(Edit), TaskGroupPage(Edit), OperationPage(Edit) |
| sales/shipping_kind.yaml | ShippingKindRead/EditFields |
| sales/stakeholder.yaml | StakeholderRead/EditFields, ContactRead/EditFields |
| sales/customer.yaml | CustomerPage |
| purchase/supplier.yaml | SupplierPage |

- 23ファイル、105ノード。ノードの内容は一切変更していない(直前の列0のコメントはノードに付けて移した)。
- 判断した点:
  - `UnitReadFields`は、page.mdが「全共通」に載せているため`common/all_common.yaml`に置いた。`UnitPage`・`UnitPageEdit`は`system/unit.yaml`。
  - `FixTextRead/EditFields`・`LanguageCodeEditFields`はpage.mdに記載が無い。性質が近い`master_common`・`all_common`に置いた。
  - ノード単位で依存順に並べ替えるため、ファイル間の依存が循環していてもよい(例: `company/staff.yaml`と`resource/capability.yaml`は互いのノードを参照する)。循環するのはノード同士の参照が循環したときだけ。
  - 配送区分・担当者(Stakeholder/Contact)は営業と購買の両方に出てくるため、`sales/`に置いた(`purchase/supplier.yaml`は`SupplierPage`のみ)。
  - page.mdに無いノード、またはノード名がpage.mdと異なるもの(`TaskPag`・`InspectionEquipentPage`等)は、view.yamlの名前のまま移した。名前の訂正は分割とは別に扱う。

## 3. 実装

- `tool/view_graphql/view_sources.dart`(新規): ファイルをトップノードの単位に分け、アンカーの依存先が先になるように並べて連結する。重複・未定義・循環はエラー、解析エラーは元のファイルと行番号で報告する。
- `tool/view_graphql/builder.dart`: 入力を`$package$`に変え、`source/views/**.yaml`を読むようにした。
- `tool/gen_view_graphql.dart`: `--yaml`を`--views <DIR>`(既定`source/views`)に変えた。
- `build.yaml`: `sources`と`build_extensions`を変えた。
- 生成するGraphQLの先頭コメントを`source/view.yaml #<ノード名>`から`source/views/ #<ノード名>`に変えた(正規化で比較から外れる)。
- `test/view_graphql_generator_test.dart`: 結合のテスト(依存順・順序の保持・重複・未定義・循環・エラー位置・source/viewsの読み込み)を追加し、回帰の入力を`source/views`に変えた。

## 4. 確認の結果

| 確認 | 結果 |
|---|---|
| 分割前の`view.yaml`と`source/views`を結合した結果の、全105ノードの`<<`展開後のデータ | 差分0件 |
| 分割前後のCLIの生成物(GraphQL 68ファイル、エラー68件) | 完全に一致 |
| `flutter test --no-pub test/view_graphql_generator_test.dart` | 46件成功(回帰38件を含む) |
| build_runnerのBuilder(`--build-filter source/generated_graphql/**`) | 68ファイルを出力 |

- 生成時のエラー68件は、分割前から同じ(`TaskResourcePage`の`from`の欠落など)。view.yaml側の内容によるもので、分割の影響ではない。この分割では修正していない。

## 5. 注意・環境の制約

- `flutter pub get`・`dart pub get`は、分割の前から失敗する(`build ^4.0.11`が`flutter_test`の`meta 1.18.0`と競合)。テストは`flutter test --no-pub`で実行した。build_runnerは`pubspec.lock`の更新時刻を新しくして実行した。
- builder.dartは`package:glob`を使う。`glob`は`pubspec.yaml`に直接の依存として宣言していない(pubspecが解決できず、検証できないため)。`dart analyze`が`depend_on_referenced_packages`のinfoを出す。pubspecが解決できるようになった時点で、`glob: ^2.1.3`をdev_dependenciesに追加する。
- build_runnerを`--build-filter source/generated_graphql/**`だけで実行すると、`lib/postgraphile`の出力が(フィルタ外のため)削除された。追跡済みの57ファイルは`git checkout -- lib/postgraphile`で戻し、git対象外の`schema.graphql.dart`(3.8MB)は`--build-filter lib/postgraphile/schema.graphql.dart`で再生成した。今後、Builderだけを試すときは、`lib/postgraphile`が削除されることに注意する。
- yaml-language-serverは、別ファイルのアンカーを知らないため、`*名前`に未定義の警告を出す。
- `source/view.yaml`は廃止した(gitの履歴に残る)。コメント・ドキュメントに残る「view.yaml」は、分割した`source/views/`全体を指す通称として使う。
