# 0022・0023 実施ログ(生成行為なし・概要チェックのみ)

指示: 「0022-0023を実行。生成行為をしない。schema.graphql編集中のため、ファイル概要のみチェック。」
に従い、GraphQL/モデルの生成やbuild_runner実行は行わず、[画面仕様](../source/views.md)・
[lib/graphql/schema.graphql](../lib/graphql/schema.graphql)の状態確認のみを行った。

## 要件0023(docs/06_cteate_test.sqlの削除)

- `docs/06_cteate_test.sql`はディスク上から削除済みであることを確認した(`git status`でも`D`表示)。
- 現行の生成パイプライン(GraphQL作成・build_runner)は既に
  [lib/graphql/schema.graphql](../lib/graphql/schema.graphql)を直接参照する構成(要件0008以降)
  になっており、同ファイルへの依存は残っていない。
- [docs/0007_view_graphql_log.md](0007_view_graphql_log.md)・
  [docs/0012_build_runner_log.md](0012_build_runner_log.md)・
  [docs/0003_risk_assessment.md](0003_risk_assessment.md)内の参照は、当時実際に参照していた
  事実の記録(過去ログ)のため、要件0004の趣旨(生成物・記録の保存)に鑑み修正せず残した。
- 以降、コード生成作業で本ファイルの参照が必要になった場合は要件0023のとおり生成処理を停止し、
  本ログに追記する(現時点ではそのような事象は発生していない)。

## 要件0022([画面仕様](../source/views.md)のネスト化・論理名統一)

### 概要チェックの範囲

`lib/graphql/schema.graphql`が編集中(最終更新2026/09/10、`git status`で未コミットの`A`)のため、
指示のとおり列単位の突き合わせは行わず、**画面仕様に登場するテーブル(見出し2)の物理名が
現行スキーマに存在するかどうか**という概要レベルの確認のみ行った。

### 既存8画面(要件0019・0021で作成済み)

views.mdのネスト形式化後も、以下の対応関係(要件0021ログの判定)どおり物理型が現行スキーマに
存在することを確認した。生成物(GraphQL/モデル/テスト)への影響は無いと判断し、要件0020(重複
指示のスキップ)に基づき再生成は行っていない。

| 見出し2 | 物理型(確認済み) |
|---|---|
| info_company | `InfoCompany` |
| info_office | `InfoOffice` |
| info_department | `InfoDepartment` |
| info_staff | `InfoStaff` |
| info_postion | `InfoPosition` |
| org_res_equipment | `MstrEquipment` |
| org_res_equipment_kind | `MstrEquipmentKind` |
| org_res_location | `MstrLocation` |

### 新規4画面(未生成・本ログでは概要確認のみ)

views.mdに新たに追加された以下4画面は、GraphQL・モデルとも未作成。概要レベルでの物理型確認のみ行い、
列単位の検証・GraphQL作成・build_runner実行は「生成行為をしない」指示に従い今回は実施していない。

| 見出し2 | 物理型(概要確認のみ) | 備考 |
|---|---|---|
| customer | `MstrStakeholder` | views.md本文にも「利害関係者id」とあり、supplierと同一物理テーブルを共有すると判断できる。 |
| customer_contact | `MstrStakeholderContact` | 同上、supplier_contactと同一物理テーブルを共有すると判断できる。 |
| supplier | `MstrStakeholder` | customerと同一物理テーブル。 |
| supplier_contact | `MstrStakeholderContact` | customer_contactと同一物理テーブル。 |

⚠ 上記4画面は、customer/supplier・customer_contact/supplier_contactがそれぞれ同一の物理テーブル
(`MstrStakeholder`/`MstrStakeholderContact`)を参照する設計と見られる。実際にGraphQLを作成する
際は、区分(顧客/仕入先を判別する列)によるcondition絞り込みが必要になる可能性が高く、次回の
生成作業(schema.graphql確定後)で個別に調査が必要な項目として記録する。

### 要件0022のスキップ判定について

今回の概要チェックの範囲では、画面仕様に登場した全12画面(見出し2)について、対応する物理型を
現行スキーマ上で特定できた。したがって「テーブルや列の特定ができない場合はログに残したうえで、
テーブルそのものの処理をスキップする」に該当してスキップした画面は無い。

ただし、schema.graphql自体が編集中で今後変わりうるため、この判定はあくまで現時点のスナップショット
に基づく概要確認であり、列単位の詳細確認・GraphQL生成は行っていない。スキーマが確定した時点で、
改めて列単位の検証(必要であれば要件0021と同様の手順)を行うことを推奨する。
