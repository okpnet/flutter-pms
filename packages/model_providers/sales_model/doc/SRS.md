# sales_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

sales_model: sales 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/sales_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`sales`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

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
| FR-01 | `OrderDetailBalancePage` | 読み込み | `v_order_detail_balance` | 停止中は open_quantity が 0。全部キャンセルは cancel_closed で判定する(数量・キャンセル数量を自前で計算しない)。 |
| FR-02 | `OrderDetailSettlementPage` | 読み込み | `trans_order_detail_settlement` | 受注明細精算(trans_order_detail_settlement。精算1件 = 請求書1行。読み取り。登録は DB の関数ができてから) |
| FR-03 | `OrderDetailSettlementPageEdit` | 更新 | `trans_order_detail_settlement` | 受注明細精算の取り消し(remove だけを書く。~PageRemove を生成する) |
| FR-04 | `OrderDetailCancelPageCall` | DB 関数の呼び出し | `orderDetailCancel` | 受注明細のキャンセル(一部・全部)。キャンセル数量を加算し、計画変更を記録する。p_quantity は 0 より大きく、残以下 |
| FR-05 | `OrderDetailSetStopPageCall` | DB 関数の呼び出し | `orderDetailSetStop` | 受注明細の停止・再開(p_stop)。MRP は停止中を凍結する。全部キャンセル済みは停止できない |
| FR-06 | `OrderDetailChangePageCall` | DB 関数の呼び出し | `orderDetailChange` | 受注明細の納期・数量の変更。MRP が見る完了期限は p_new_deadline(出荷納期だけを変えても MRP には反映されない)。数量はキャンセル数量と出荷済みの合計以上 |
| FR-07 | `OrderDetailSettlePageCall` | DB 関数の呼び出し | `orderDetailSettle` | 受注明細の精算(精算1件 = 請求書1行)。精算区分が引き渡す(delivery)なら、続けて品物の引き渡し(LotDeliverPageCall)を呼ぶ |
| FR-08 | `CustomerPage` | 読み込み |  | 顧客 |
| FR-09 | `CustomerPageEdit` | 更新 |  | 顧客の書き込み(0055追加: page.mdの顧客情報) |
| FR-10 | `OrderPageEdit` | 更新 | `trans_order` | trans_orderの書き込み |
| FR-11 | `OrderDetailPageEdit` | 更新 | `trans_order_detail` | trans_order_detailの書き込み |
| FR-12 | `OrderPageCreate` | 登録 | `trans_order` | trans_orderの登録(ID・symbol はトリガーが採番する) |
| FR-13 | `OrderDetailPageCreate` | 登録 | `trans_order_detail` | trans_order_detailの登録(キャンセル数量・停止は既定値。操作の DB 関数で変える) |
| FR-14 | `SalesRecordPage` | 読み込み | `v_sales_record` | 売り上げ実績(customer × item × 納期 × 出荷済み)(ダッシュボード用。要件20261027_0001) |
| FR-15 | `ShippingDeliveryCompliancePage` | 読み込み | `v_shipping_delivery_compliance` | 出荷納期遵守状況(ダッシュボード用。要件20261027_0001) |
| FR-16 | `ShippingOrderPageEdit` | 更新 | `trans_shipping_order` | trans_shipping_orderの書き込み |
| FR-17 | `ShippingOrderDetailPageEdit` | 更新 | `trans_shipping_order_detail` | trans_shipping_order_detailの書き込み |
| FR-18 | `ShippingOrderDetailRecordPageEdit` | 更新 | `trans_shipping_order_detail_record` | trans_shipping_order_detail_recordの書き込み |
| FR-19 | `ShippingOrderPageCreate` | 登録 | `trans_shipping_order` | trans_shipping_orderの登録(ID・symbol はトリガーが採番する) |
| FR-20 | `ShippingOrderDetailPageCreate` | 登録 | `trans_shipping_order_detail` | trans_shipping_order_detailの登録 |
| FR-21 | `ShippingOrderStatusPage` | 読み込み | `v_shipping_order_status` | 出荷予定受注実績状況(ダッシュボード用。要件20261027_0001) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `CustomerPageFilterSpec` | 抽象クラス |  |
| FA-02 | `OrderDetailBalancePageFilterSpec` | 抽象クラス |  |
| FA-03 | `OrderDetailPageFilterSpec` | 抽象クラス |  |
| FA-04 | `OrderDetailSettlementPageFilterSpec` | 抽象クラス |  |
| FA-05 | `OrderPageFilterSpec` | 抽象クラス |  |
| FA-06 | `SalesRecordPageFilterSpec` | 抽象クラス |  |
| FA-07 | `ShippingDeliveryCompliancePageFilterSpec` | 抽象クラス |  |
| FA-08 | `ShippingOrderDetailPageFilterSpec` | 抽象クラス |  |
| FA-09 | `ShippingOrderDetailRecordPageFilterSpec` | 抽象クラス |  |
| FA-10 | `ShippingOrderPageFilterSpec` | 抽象クラス |  |
| FA-11 | `ShippingOrderStatusPageFilterSpec` | 抽象クラス |  |
| FA-12 | `ShippingTodayPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/sales_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 24 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 4 件、テストケース 24 件。

- `test/customer_model_test.dart`
  - 顧客の読み取りモデルは空の応答を読み、JSON に戻せる
  - 検索条件の対応表で平坦なMapを顧客のFilterに展開できる
- `test/operation_call_test.dart`
  - 存在しない受注明細のキャンセルは OPR01
  - 存在しない受注明細の停止は OPR01
  - 存在しない受注明細の変更は OPR01
  - 数量・期限が無い受注明細の変更は OPR02
  - 存在しない受注明細の精算は OPR01
- `test/server_read_test.dart`
  - CustomerPageRead
  - OrderDetailBalancePageRead
  - OrderDetailPageRead
  - OrderDetailSettlementPageRead
  - OrderPageRead
  - SalesRecordPageRead
  - ShippingDeliveryCompliancePageRead
  - ShippingOrderDetailPageRead
  - ShippingOrderDetailRecordPageRead
  - ShippingOrderPageRead
  - ShippingOrderStatusPageRead
  - ShippingTodayPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
