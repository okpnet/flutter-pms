# 全量スキーマの再取得(DB更新後、2026/10/15)

## 1. 取得(CLAUDE.md 4-1節)
- 接続先: `http://192.168.9.245:5000/graphql`(`192.168.1.100`は接続できず切り替え)。
- 型: 取得14128 / 現行14022。追加221、削除115、変更996。`source/schema.full.graphql`を置き換えた(24,404,595 → 24,548,239バイト)。

## 2. DBの変更(`docker/postgresql/scripts/06_cteate_test.sql`の差分から)
- 説明文の列が、`shared_text`へのFK(`details uuid`、`shared_text_id`)になった。
  - `detail`/`description`/`details`(varchar) → `details`: mstr_license、mstr_capability、mstr_item、mstr_item_tree、mstr_item_actual_size、shared_unit(各historyも同様)。
  - `info_provision`にも`details`(FK→shared_text)が追加された。
- `mstr_equipment_tag.name`(varchar) → `names`(FK→shared_appellations)。
- 外部キーの番号(`..._FKn`)が上記に伴って振り直された。

## 3. 4-2節以降の実行結果(中止)
| 手順 | 結果 |
|---|---|
| view.yaml→GraphQLの生成 | 48ファイル、エラー103件(更新前は68ファイル、エラー68件) |
| 絞り込み(`prune_schema.dart`) | 失敗: `スキーマに入力MstrCapabilityPatch.detailがありません`。`lib/graphql`の既存GraphQLが、削除された列を参照している |
| 検索条件の対応表の生成 | 失敗: `Null check operator`(`gen_filter_spec.dart:103`)。同じ原因 |
| build_runner | 未実行 |
- `lib/graphql/schema.graphql`・`lib/contents/*_filter_spec.dart`・`lib/postgraphile`は変更していない。

## 4. 新たに生じたview.yamlのエラー(DBの変更による)
- 列が無い: `UnitPage(Edit).description`、`LicensePage(Edit)/…license.detail`、`CapabilityPage(Edit)/…capability.detail`(StaffCapability・StaffHeldLicense・CapableStaff・LicenseHolders経由を含む)、`ItemPageEdit.description`、`InspectionItemPageEdit.items.description`、`EquipmentPageEdit.item.description`、`ItemPageEdit.parent.detail`、`ItemSizePageEdit.details - remarks`。
- `stock_quantity`・`lot`・`increment`が`MstrItem`に無い(`ItemPageEdit`・`InspectionItemPageEdit`・`EquipmentPageEdit`)。今回のDB差分には無く、以前から別の変更で削除されていた可能性がある。
- `ItemPageEdit.spec`: `MstrItem`→`MstrSpecMeasurement`の関連が見つからない。
- `LocationPage(Edit).parent.mmstr_location_tree_id`: 誤字(`mmstr`)の疑い。
- 更新前から残るエラー(68件分)は、`TaskResourcePage`・`Inspection*`・`EquipmentPageEdit`等の`from`の欠落など。

## 5. 対応案(ユーザーの判断が必要)
1. 説明文の列は、`shared_text`を指すようになった。view.yamlでは、`FixTextReadFields`/`FixTextEditFields`(`master_common.yaml`)または`FlexibleText*`のどちらで取り込むかを決める必要がある(呼称と違い、言語の扱いも含めて設計の判断になる)。
2. 取り込み方を決めたら、view.yaml→評価→GraphQLの生成→採用(`lib/graphql`へコピー)→絞り込み→対応表→build_runnerの順で再実行する。

## 6. 対応と結果(ユーザーの方針: 説明文は`FixTextReadFields`/`FixTextEditFields`)
### view.yamlの修正
- 説明文の列(`detail`/`description`/`details`)を、`detailTexts`(`using: details`)に置き換えた。Read系(`~Page`・`~ReadFields`)は`<<: *FixTextReadFields`(`as: detailTexts`付き)、Edit系(`~PageEdit`・`~EditFields`)は`<<: *FixTextEditFields`。task.yamlの既存の形に合わせた。
  - system/unit.yaml(UnitPage・UnitPageEdit)、company/company.yaml(ProvisionPage・ProvisionPageEdit・CompanyPageEdit.provisions)、resource/capability.yaml(CapabilityPage・CapabilityPageEdit・CapableStaffPage)、resource/license.yaml(LicensePage・LicensePageEdit・LicenseHoldersPage)、provision/item.yaml(ItemReadFields・ItemEditFields・ItemPage・ItemPageEdit・ItemPageEdit.parent)、provision/item_size.yaml(ItemSizePage・ItemSizePageEdit)。
- `ProvisionPageEdit`に欠けていた`from: info_provision`を追加した。
- `MstrItem`から無くなった`increment`・`lot`・`stock_quantity`を、ItemReadFields・ItemEditFields・ItemPage・ItemPageEdit から削除した。
  - ItemPageに作業中だった`lots`(`mstr_item_lot`)は、`pick`を実在する列(`safety_inventory`・`lot_size`・`batch_size`)にして完成させた。誤字の`ditails`の行は削除した。
  - ItemPageEditには`mstr_item_lot_id`だけを置いた(ロットの内容の編集は別画面の想定)。
- `ItemPageEdit.spec`(`SpecMeasurementPageEdit`)は、`mstr_item`との関連が無くなったため削除した。梱包は`mstr_item_lot → mstr_packing_spec`経由になっており、**再設計が必要**(未対応)。
- `ItemSizePageEdit`の壊れた行(`- details` + `  - remarks`)を直した。`LocationPage(Edit).parent`の`mmstr_location_tree_id`を`mstr_location_tree_id`に直した。

### 生成・採用
- 生成: 77ファイル、エラー27件(DBの変更によるエラーは解消)。残りは、更新前からある`from`の欠落(Equipment・Inspection・TaskResource・ApprovalOperation系)、`TaskResourcePageEdit`のミューテーション名、内向きの1対1の入れ子更新が未対応(`DepartmentPageEdit`・`TaskPageEdit`・`LocationPageEdit`・`ItemPageEdit`の`parent`/`kinds`/`descendants`、要件0051-7)。新しくItemPageEditが加わった。
- 採用(`lib/graphql`へコピー)は、DBの変更で回帰テストが失敗した8画面24ファイルに限った: capability_page、capable_staff_page、license_holders_page、license_page、provision_page、staff_capability_page、staff_held_license_page、unit_page。他の画面は、view.yamlと既存GraphQLの差分の扱いが未決のため、置き換えていない。
- 絞り込み(57ドキュメント → 入力型256、124,869バイト)、検索条件の対応表(19ファイル)、build_runner(58ファイル)を実行した。5000KB超の生成物は無い。
- テスト: `flutter test --no-pub`で155件すべて成功。
