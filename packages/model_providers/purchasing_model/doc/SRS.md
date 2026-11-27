# purchasing_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

purchasing_model: purchasing 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/purchasing_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`purchasing`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)

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
| FR-01 | `PurchaseDetailBalancePage` | 読み込み | `v_purchase_detail_balance` | 発注明細の残(v_purchase_detail_balance)。停止中は open_quantity が 0。全部キャンセルは cancel_closed で判定する。 |
| FR-02 | `PurchaseDetailCancelPageCall` | DB 関数の呼び出し | `purchaseDetailCancel` | 発注明細のキャンセル(一部・全部)。キャンセル数量を加算し、計画変更を記録する |
| FR-03 | `PurchaseDetailSetStopPageCall` | DB 関数の呼び出し | `purchaseDetailSetStop` | 発注明細の停止・再開。全部キャンセル済みは停止できない |
| FR-04 | `PurchaseDetailChangePageCall` | DB 関数の呼び出し | `purchaseDetailChange` | 発注明細の納期(p_new_period)・数量の変更。数量はキャンセル数量と受入済みの合計以上 |
| FR-05 | `ItemSupplierPage` | 読み込み | `mstr_item_supplier` | 名称が必要な画面は、ID で既存の読み込みを引く。 |
| FR-06 | `ItemSupplierPageEdit` | 更新 | `mstr_item_supplier` | 品目の仕入先の書き込み |
| FR-07 | `PurchasePageEdit` | 更新 | `trans_purchase` | trans_purchaseの書き込み |
| FR-08 | `PurchaseDetailPageEdit` | 更新 | `trans_purchase_detail` | trans_purchase_detailの書き込み |
| FR-09 | `PurchaseRecPageEdit` | 更新 | `trans_purchase_rec` | trans_purchase_recの書き込み |
| FR-10 | `PurchaseRecPageCreate` | 登録 | `trans_purchase_rec` | trans_purchase_recの登録(購入品受入) |
| FR-11 | `PurchaseRecVisiterPageCreate` | 登録 | `trans_purchase_rec_visiter` | trans_purchase_rec_visiterの登録(受入と棚ビジターの結び付き) |
| FR-12 | `ComplaintPurchaseRecPageCreate` | 登録 | `trans_complaint_purchase_rec` | trans_complaint_purchase_recの登録(受入異常) |
| FR-13 | `PurchasePageCreate` | 登録 | `trans_purchase` | trans_purchaseの登録(ID・symbol はトリガーが採番する) |
| FR-14 | `PurchaseDetailPageCreate` | 登録 | `trans_purchase_detail` | trans_purchase_detailの登録(キャンセル数量・停止は既定値。操作の DB 関数で変える) |
| FR-15 | `PurchaseAmountPage` | 読み込み | `v_purchase_amount` | 発注金額合計(supplier × item × 納期 × 受入済み)(ダッシュボード用。要件20261027_0001) |
| FR-16 | `PurchaseDeliveryCompliancePage` | 読み込み | `v_purchase_delivery_compliance` | 発注納期遵守状況(ダッシュボード用。要件20261027_0001) |
| FR-17 | `SupplierPage` | 読み込み |  | サプライヤー |
| FR-18 | `SupplierPageEdit` | 更新 |  | サプライヤーの書き込み(0055追加: page.mdの外部供給者情報) |
| FR-19 | `UnrecognizedPageEdit` | 更新 | `trans_unrecognized` | trans_unrecognizedの書き込み |
| FR-20 | `UnrecognizedDetailPageEdit` | 更新 | `trans_unrecognized_detail` | trans_unrecognized_detailの書き込み |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `ItemSupplierPageFilterSpec` | 抽象クラス |  |
| FA-02 | `PurchaseAmountPageFilterSpec` | 抽象クラス |  |
| FA-03 | `PurchaseDeliveryCompliancePageFilterSpec` | 抽象クラス |  |
| FA-04 | `PurchaseDetailBalancePageFilterSpec` | 抽象クラス |  |
| FA-05 | `PurchaseDetailPageFilterSpec` | 抽象クラス |  |
| FA-06 | `PurchasePageFilterSpec` | 抽象クラス |  |
| FA-07 | `PurchaseRecPageFilterSpec` | 抽象クラス |  |
| FA-08 | `SupplierPageFilterSpec` | 抽象クラス |  |
| FA-09 | `UnrecognizedDetailPageFilterSpec` | 抽象クラス |  |
| FA-10 | `UnrecognizedPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/purchasing_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 18 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 3 件、テストケース 18 件。

- `test/operation_call_test.dart`
  - 存在しない発注明細のキャンセルは OPR01
  - 存在しない発注明細の停止は OPR01
  - 存在しない発注明細の変更は OPR01
- `test/server_read_test.dart`
  - ItemSupplierPageRead
  - PurchaseAmountPageRead
  - PurchaseDeliveryCompliancePageRead
  - PurchaseDetailBalancePageRead
  - PurchaseDetailPageRead
  - PurchasePageRead
  - PurchaseRecPageRead
  - SupplierPageRead
  - UnrecognizedDetailPageRead
  - UnrecognizedPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
