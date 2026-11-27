# plan_change_model ソフトウェア設計記述(SDD)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. 概要

plan_change_model: 「計画変更」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

- 層: model_providers(機能ごとの GraphQL モデル)
- 要求は `doc/SRS.md`(同じフォルダ)に書く。システム全体の設計は、ルートの `doc/SDD.md`。

## 2. 構成

| 項目 | 内容 |
|---|---|
| 場所 | `packages/model_providers/plan_change_model` |
| Dart ファイル(生成物を除く) | 4 |
| `lib/src` の分け方 | `contents(3)`、`graphql(0)` |
| 多言語(slang) | なし |
| example(単体で画面を確認するアプリ) | なし |
| 使い方・画面イメージ(`doc/contents`) | なし |

## 3. 公開面と主要な型

### 3.1 モデル(`gql/*.yaml` が入口。型は graphql_codegen が生成する)

| 名前 | 種類 | 対象(テーブル・ビュー・関数) | 定義 |
|---|---|---|---|
| `PlanChangeSettlementKindPage` | 読み込み | `mstr_settlement_kind` | `gql/plan_change.yaml` |
| `PlanChangePage` | 読み込み | `v_plan_change` | `gql/plan_change.yaml` |
| `CancelOpenItemPage` | 読み込み | `v_cancel_open_item` | `gql/plan_change.yaml` |
| `PlanChangeUnreflectedPage` | 読み込み | `v_plan_change_unreflected` | `gql/plan_change.yaml` |
| `PlanChangePageEdit` | 更新 | `trans_plan_change` | `gql/plan_change.yaml` |
| `PlanChangeInventoryRequestReleasePageCall` | DB 関数の呼び出し | `inventoryRequestRelease` | `gql/plan_change.yaml` |
| `PlanChangeInventoryRequestHoldPageCall` | DB 関数の呼び出し | `inventoryRequestHold` | `gql/plan_change.yaml` |
| `PlanChangeLotReleasePageCall` | DB 関数の呼び出し | `lotRelease` | `gql/plan_change.yaml` |
| `PlanChangeLotHoldPageCall` | DB 関数の呼び出し | `lotHold` | `gql/plan_change.yaml` |
| `PlanChangeLotScrapPageCall` | DB 関数の呼び出し | `lotScrap` | `gql/plan_change.yaml` |
| `PlanChangeLotDeliverPageCall` | DB 関数の呼び出し | `lotDeliver` | `gql/plan_change.yaml` |
| `PlanChangeShippingOrderDetailCancelPageCall` | DB 関数の呼び出し | `shippingOrderDetailCancel` | `gql/plan_change.yaml` |
| `PlanChangePurchaseDetailCancelPageCall` | DB 関数の呼び出し | `purchaseDetailCancel` | `gql/plan_change.yaml` |

生成の流れ: `gql/*.yaml` → `.graphql`(`tools/gql_yaml2graphql`)→ 画面用 `schema.graphql`(`tools/gql_schema_pruner`)→ `*.graphql.dart`(build_runner)。生成物の型は、対応する機能の外へ出さない。

### 3.2 手書きの公開面

| 名前 | 種類 | 責務 | 定義 |
|---|---|---|---|
| `CancelOpenItemPageFilterSpec` | 抽象クラス |  | `lib/src/contents/cancel_open_item_page_filter_spec.dart` |
| `PlanChangePageFilterSpec` | 抽象クラス |  | `lib/src/contents/plan_change_page_filter_spec.dart` |
| `PlanChangeUnreflectedPageFilterSpec` | 抽象クラス |  | `lib/src/contents/plan_change_unreflected_page_filter_spec.dart` |

## 4. デザインパターン

ソースのコメントに明記したパターンは無い。

## 5. 依存関係

- 依存先(ワークスペース内): `pms_graphql`
- テスト用: `data_test_harness`
- 利用元: `plan_change`(パッケージ)
- 外部パッケージ: `graphql`、`gql`

## 6. 設計上の決定(`CLAUDE.md` より)

パッケージの `CLAUDE.md` に、個別の決定は書かれていない(ルート・層の `CLAUDE.md` に従う)。

## 7. エラー処理・ログ

- このライブラリは、ログを直接出さない(エラーは例外・結果の型で呼び出し側へ返す)。
- エラーは、文字列ではなく種類(列挙型・例外の型)で持ち、画面が表示するときに文字にする。

## 8. テスト方針

テストファイル: `test/operation_call_test.dart`(4)、`test/server_read_test.dart`(9)

データの取得元は `IDataRepository`(`data_strategist`)で受け、テストは `data_test_harness`(`dev_dependencies` だけ)の代役を使う。サーバーを使うテストは `serverTest`(接続できなければ中止)で、サーバーのデータは変えない。

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
