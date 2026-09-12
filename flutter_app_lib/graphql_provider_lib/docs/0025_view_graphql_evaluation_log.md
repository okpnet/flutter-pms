# 0025 実施ログ(views.mdの評価のみ・GraphQL作成なし)

指示(要件0025):
> [画面仕様](../source/views.md)のGraphQLを作成するための評価を実施。この段階ではGraphQLは作成しない。
> GraphQLへの変換できないエラーは変換できない理由をログへ記録し、readがeditに変換(クエリ→Map→ミューテーション)
> にするために必要な、すべての参照をもつ列をschema.graphqlと比較しIDの出力を含んでいない場合はIDへの参照を
> 追加し、追加ログにモレとして修正した内容を記録する。原則として、editが含む参照列は、各テーブルのidを含む
> オブジェクトへ変換できなければならない。これらの"##"に対して、変換にかかる提案が有る場合は、その"##"と
> 提案内容を記録する。ただし、エラーとしては扱わない。提案を適用するときは"##"へ"###提案への指示"として
> 指示を追加する。これらは変更として扱う。提案に対して採択しないときは何も記載しない。評価後、エラーが
> 無い状態になったときにGraphQLを作成し、GraphQLからモデル生成を実行する。変更を含んでいる"##"を評価、
> 生成の対象とする。

指示どおり、**本ログの範囲ではGraphQLファイルの新規作成・build_runnerの実行は行っていない**。
[lib/graphql/schema.graphql](../lib/graphql/schema.graphql)(2026/09/11更新版)と
[views.md](../source/views.md)を突き合わせた評価結果のみを記録する。

## 1. 評価範囲

views.mdの見出し2(`##`)は現在17件。うち8件は要件0019・0021等で既にGraphQL・モデル生成済み。
9件(customer/customer_contact/supplier/supplier_contact/shipping_kind/item_kind/manufacture/
item_actual_size/item)は要件0022・0023時点で「概要確認のみ・未生成」だったもので、今回が列単位の
初回評価にあたる。

## 2. 既存8画面:「呼称セット」「住所情報」のオブジェクト化は文言整理のみと判定(要件0020によりスキップ)

views.mdは今回、edit項目の書式を「会社名/読み/略称を個別列挙」から「呼称セット(オブジェクト)」、
「郵便番号/住所1/住所2/建物/電話番号/FAX番号を個別列挙」から「住所情報(オブジェクト)」へ簡略化した
(git diffで確認)。これは[共通名前仕様](../CLAUDE.md#共通名前仕様)がもともと定義している
「shared_appellationsは1対1、平坦化・構造化する」という仕様の表現を短縮しただけであり、実装済み
GraphQLの入出力自体に変更を要求するものではないことを、既存ファイルを直接確認して判定した。

| 見出し2 | 物理型 | 確認結果 |
|---|---|---|
| info_company | `InfoCompany` | edit済みmutationが既にname/pronunciation(shared_dictionary)・info_addressの全項目を入れ子取得/更新している |
| info_office | `InfoOffice` | 同上(name/pronunciation/略称 + info_address) |
| info_department | `InfoDepartment` | 同上 |
| info_staff | `InfoStaff` | 同上(name/pronunciation/nickname)。要件0021以降の修正で既に「呼称セット」単位の構成になっている |
| info_position(`info_postion`) | `InfoPosition` | 同上 |
| org_res_equipment | `MstrEquipment` | mstr_item経由でname/pronunciation/nicknameを既に取得/更新済み |
| org_res_equipment_kind | `MstrEquipmentKind` | 同上 |
| org_res_location | `MstrLocation` | 同上(name/pronunciation/略称 + info_address) |

→ 上記8画面は「変更を含んでいる"##"」に該当するが、生成物へ影響する差分が無いため要件0020
「実行しても結果が変わらないと判断できる場合はスキップ」に基づき、今回は再評価・再生成の対象外とした。

## 3. 新規9画面の物理型

| 見出し2 | 物理型 |
|---|---|
| customer | `MstrStakeholder`(`is_customer = true`で絞り込む想定) |
| supplier | `MstrStakeholder`(`is_supplier = true`で絞り込む想定) |
| customer_contact | `MstrStakeholderContact` |
| supplier_contact | `MstrStakeholderContact`(customer_contactと同一物理テーブル) |
| shipping_kind | `MstrShippingKind` |
| item_kind | `MstrItemKind` |
| manufacture | `MstrManufacturer` |
| item_actual_size | `MstrItemActualSize` |
| item | `MstrItem`(関連: `MstrItemKind`・`MstrManufacturer`・`MstrItemProvision`→`InfoProvision`・`MstrItemActualSize`→`MstrItemSizeKind`・`SharedUnit`) |

## 4. エラー(変換不可・生成対象から除外)

### 4-1. `## customer` / `## supplier` edit:「親場所マスタ」

views.mdの記述:
```
1.  親場所マスタ
    1.  場所体系マスタが対象
    1.  カレントIDと親のIDのみを対象
```
`MstrStakeholder`型を`schema.graphql`で確認したところ、保持する参照は
`sharedAppellationsId`・`infoAddressId`・`mstrShippingKindId`のみで、親子階層を持つ列や
`MstrStakeholderTree`のような階層型は存在しない(customer/supplier以外の型一覧を
`grep '^type .*Stakeholder'`で確認済み。階層型が存在するのは`org_res_location`が使う
`MstrLocationTree`のみ)。この項目は`org_res_location`のeditセクションからの流用が誤って
残ったものと判断する。

**判定:** 変換不可能なエラー。views.mdの当該記述を削除するか、意図(顧客・仕入先グループの階層化など)
を明確にした上で対応する列をスキーマ側に追加しない限りGraphQL化できない。ユーザーの判断が必要なため、
本ログに記録するのみで views.md 本文は書き換えていない。

**影響:** `customer`・`supplier`の2見出しは今回のGraphQL生成対象から除外する。

### 4-2. `## item_actual_size` edit:「呼称セット」

views.mdの記述(旧):
```
1.  呼称セット
    1.  呼称セットのオブジェクト
```
`MstrItemActualSize`型を確認したところ、保持する列は`mstrItemId`・`mstrItemSizeKindId`・
`sizeValue`・`detail`・`revision`・`remarks`・`updateAt`・`updateUserId`・`updateUserHistoryId`・
`remove`のみで、`sharedAppellationsId`列(呼称セットへの参照)自体が存在しない。読み取り側で
表示する「大きさ区分名/読み/略称」は`mstrItemSizeKindByMstrItemSizeKindId`(区分マスタ、参照専用)
経由であり、`mstr_item_actual_size`自身が呼称を持つ設計にはなっていない。`manufacture`
セクションからの流用が誤って残ったものと判断する(このセクションには他にも4-2節と4節末尾の
誤記が複数残っていた。3節参照)。

**判定:** 変換不可能なエラー。「呼称セット」項目を削除するか、大きさ区分マスタ側の呼称セットを
参照専用として扱う設計であることを明確化するまでGraphQL化できない。views.md本文は書き換えず、
本ログに記録するのみ。

**影響:** `item_actual_size`は今回のGraphQL生成対象から除外する。

## 5. モレ(IDの出力漏れ・修正済み)

### 5-1. `## item_actual_size` edit:「大きさ区分コード」にIDが無い

`read`で表示する「大きさ区分コード」は`MstrItemSizeKind.code`(参照専用・表示用)だが、
`edit`では同じ「大きさ区分コード」しか列挙されておらず、対象を特定するための実体参照列
`mstrItemSizeKindId`(大きさ区分id)が欠落していた。要件0025「editが含む参照列は各テーブルの
idを含むオブジェクトへ変換できなければならない」に基づき、views.mdのeditセクションへ
「大きさ区分id」を追加した([views.md#item_actual_size](../source/views.md)、
`### edit`直下)。

## 6. ドキュメントの誤記修正(エラー・モレ以外、生成物に影響しない体裁上の修正)

以下は列の対応関係そのものには影響しないが(「更新日」「更新者名」は常に自テーブル自身の
`update_at`・更新者履歴を指すため)、他見出しからの読み間違いを防ぐため修正した。

| 見出し2 | 箇所 | 修正前 | 修正後 |
|---|---|---|---|
| manufacture | read「更新日」の説明 | 品目区分マスタの更新日 | 製造元マスタの更新日 |
| item_actual_size | read「更新日」の説明 | 品目区分マスタの更新日 | 大きさマスタの更新日 |
| item_actual_size | read「更新者名」の説明 | 製造元マスタが参照する… | 大きさマスタが参照する… |
| item_actual_size | edit「備考/更新者id/更新者履歴id/削除」の対象 | 製造元マスタを対象 | 大きさマスタを対象(4か所) |

## 7. 提案(`### 提案への指示`として views.md へ追加・採択したもの)

| 見出し2 | 提案内容 | 採否 |
|---|---|---|
| customer | `mstr_stakeholder.is_customer`/`is_supplier`列で顧客/仕入先を判別する設計(要件0022ログで既に懸念事項として記録済み)。customer/supplierの取り違えを防ぐため、`isCustomer: true`を固定条件に含める指示を追加。 | 採択 |
| supplier | 同上、`isSupplier: true`を固定条件に含める指示を追加。 | 採択 |
| customer_contact | editに「Eメールアドレス」が無く、同一物理テーブルを使うsupplier_contactのeditには存在する不整合を発見。read・supplier_contactのeditと揃えて追加する指示を追加。 | 採択 |

## 8. その他の気付き(エラー・モレには該当しないが記録)

1.  **`MstrStakeholderContact.mstrShippingKindId`が必須列(NOT NULL)だが、customer_contact/
    supplier_contactのread・editどちらにも存在しない。** 更新(update)のみであれば
    Patch型は任意入力のため問題にならないが、この画面が新規登録も兼ねる場合はDB側で
    デフォルト値/トリガーが無い限り登録に失敗する可能性がある。views.mdには追加していない
    (業務的にどの配送区分をデフォルトにすべきか不明なため)。次回、登録要否とあわせて
    要確認。
2.  **`MstrStakeholderContact`の「メール」列は物理名が`privatePhone`。** schema.graphql上の
    コメントは「メール」だが、GraphQLフィールド名は`private_phone`由来の`privatePhone`になって
    いる(命名の食い違い)。値としては「Eメールアドレス」に正しく対応するため動作上の問題は
    無いが、実装時にコメントを付す(命名由来の注意書き)ことを推奨する。
3.  **1対多の参照(`customer`/`supplier`の「提供」、`item`の「品目提供」)は、要件0025の
    「参照列はidを含むオブジェクトへ変換できなければならない」を満たすため、実装時に
    ジョインテーブル自身のid(`mstrStakeholderProvisionId`/`mstrItemProvisionId`)と
    参照先id(`infoProvisionId`)の両方を取得するGraphQLにすること。**views.mdの「提供情報の
    参照」という記述自体はIDでの参照を前提にしていると解釈できるため、モレとしては扱わず、
    実装時の注意点として記録する。

## 9. 結論・生成対象の判定

| 見出し2 | 評価結果 | 今回の生成 |
|---|---|---|
| info_company, info_office, info_department, info_staff, info_position, org_res_equipment, org_res_equipment_kind, org_res_location(既存8画面) | 差分は文言整理のみ、生成物への影響なし | 対象外(要件0020によりスキップ) |
| customer | エラーあり(4-1) | 見送り |
| supplier | エラーあり(4-1) | 見送り |
| customer_contact | エラーなし(モレなし。7節の提案を採択) | **生成対象** |
| supplier_contact | エラーなし | **生成対象** |
| shipping_kind | エラーなし | **生成対象** |
| item_kind | エラーなし | **生成対象** |
| manufacture | エラーなし(6節の誤記修正のみ) | **生成対象** |
| item_actual_size | エラーあり(4-2) | 見送り |
| item | エラーなし | **生成対象** |

要件0025冒頭の指示どおり、本ログの実施ではGraphQLファイルの作成・build_runnerの実行は行っていない。
上記「生成対象」6見出し(customer_contact, supplier_contact, shipping_kind, item_kind, manufacture,
item)は評価上エラーが無い状態のため、次の指示でGraphQL作成・build_runner実行に進められる。
customer・supplier・item_actual_sizeの3見出しは4節のエラーの解消方針(views.md該当箇所の削除 or
仕様明確化)についてユーザーの判断を仰いだ上で再評価する。
