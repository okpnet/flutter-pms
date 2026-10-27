# 0030 実施ログ(新規5画面のモレ・提案評価、GraphQL作成なし)

指示(要件0030):
> 0029を適用。GraphQLを生成せずに、views.mdをモレ、提案の必要性を評価する。

views.mdへ新規追加された5見出し(`order`, `order_detail`, `ship_order`, `purchase`, `purchase_detail`)を
対象に、`schema.graphql`との突き合わせ評価を行った。**本ログの範囲ではGraphQL作成・build_runnerの
実行は行っていない。** 要件0029のとおり、発見した提案・モレはdocsだけでなくviews.md本文へ直接反映した。

併せて、前回ログ([0024_0028_0025_all_screens_generation_log.md](0024_0028_0025_all_screens_generation_log.md))
3-1節で指摘した`task`「工程グループ数」が、views.md側で取り消し線により撤回されたことを確認した(対応済み)。

## 1. 物理型の対応

| 見出し2 | 物理型 |
|---|---|
| `order` | `TransOrder` |
| `order_detail` | `TransOrderDetail` |
| `ship_order` | `TransShipOrder`(明細は`TransShippingOrderDetail`) |
| `purchase` | `TransPurchase` |
| `purchase_detail` | `TransPurchaseDetail` |

いずれも`schema.graphql`に実在することを確認した。

## 2. モレ(IDの出力漏れ・views.mdへ直接追加済み)

`schema.graphql`を確認したところ、`order`・`ship_order`・`purchase`の顧客/発注先/担当者関連の参照は、
いずれもライブの`mstr_stakeholder`/`mstr_stakeholder_contact`への直接参照フィールドが存在せず、
**履歴テーブル(`history_mstr_stakeholder`/`history_mstr_stakeholder_contact`)経由の複合キー
(履歴id + 本体id)でのみ解決できる**設計だった(`historyMstrStakeholderByCustomerHistoryIdAndMstrStakholderId`等)。
これに対し、以下のモレがあった。

| 見出し2 | 箇所 | 内容 |
|---|---|---|
| `order` | read | 「顧客id」のみで「顧客履歴id」(`customerHistoryId`)が無かった → 追加した |
| `order` | read | 「顧客窓口id」のみで「顧客窓口履歴id」(`contactHistoryId`)が無かった → 追加した |
| `ship_order` | read | 「出荷先顧客」関連にid列が一切無かった(名前/読み/略称のみ) → 「出荷先顧客履歴id」
  「出荷先顧客id」を追加した |
| `purchase` | read | 「発注先履歴id」のみで「発注先id」(`mstrStakeholderId`、NOT NULL列)が無かった → 追加した |

（`purchase`の「発注先窓口履歴id」「発注先窓口id」、`order_detail`の「品目履歴id」「品目id」、
`purchase_detail`の「品目履歴id」「品目id」はいずれも当初から両方存在しており、モレなし。）

## 3. 誤記(履歴テーブル経由であることの明記漏れ・views.mdへ直接修正済み)

2節のとおり複合キーが履歴テーブル経由であるにもかかわらず、以下は「〜マスタ」(ライブテーブル)の
表記になっていたため、「〜履歴マスタ」に修正した。

| 見出し2 | 修正箇所 |
|---|---|
| `order` | read「顧客コード/顧客名/顧客読み/顧客略称/顧客担当者コード/顧客事業所名〜顧客担当者略称」、
  edit「顧客」「顧客窓口」 |
| `ship_order` | read「顧客コード/顧客名/顧客読み/顧客略称/顧客担当者コード/顧客事業所名〜顧客担当者略称」
  (いずれも「受注の」を冠する記述) |
| `purchase` | read「発注先担当者名/読み/略称」(「発注先名」側は既に「利害関係者履歴マスタ」で正しかった) |

併せて、edit側の各オブジェクト参照(「顧客」「顧客窓口」「利害関係者履歴」「発注先」「発注先担当者」)に
「(履歴id・idの両方を指定)」という注記を追加し、複合キーであることを明示した。

## 4. 提案(views.mdへ`### 提案への指示`として記録、いずれも未採択)

| 見出し2 | 内容 |
|---|---|
| `order` | 顧客/顧客窓口が履歴テーブル参照であるため、新規受注登録時の履歴スナップショット行の
  用意方法(都度新規作成/既存履歴行の選択)について設計判断が必要。 |
| `purchase_detail` | `TransPurchaseDetail`にはschema.graphql上「資材計画ID」(`transResorcePlanId`、
  任意)列が存在するが、views.mdに記述が無い。「在庫発注」フラグとの関連が想定されるが、本画面の
  対象に含めるか確認が必要。 |

## 5. 結論

- モレ4件・誤記3箇所をviews.md本文へ直接反映した(要件0025の原則「参照列はidを含むオブジェクトへ
  変換できなければならない」に基づく客観的修正のため、提案ではなく直接修正として扱った)。
- 提案2件を`### 提案への指示`として追加した(いずれも設計判断が必要なため「未採択(ユーザー判断待ち)」)。
- `order_detail`は当初からモレ・誤記なし。
- 前回ログで指摘した`task`「工程グループ数」の誤適用は、views.md側で取り消し線により対応済みを確認した。
- 本ログの指示どおり、GraphQL作成・build_runner実行は行っていない。次のアクションはユーザーの判断を仰ぐ。
