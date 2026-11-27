# plan_change_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

plan_change_model: 「計画変更」機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/plan_change_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`plan_change`(パッケージ)

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
| FR-01 | `PlanChangeSettlementKindPage` | 読み込み | `mstr_settlement_kind` | 精算区分(引き渡しのときの精算の選択肢。delivery = 品物の引き渡しも行う区分) |
| FR-02 | `PlanChangePage` | 読み込み | `v_plan_change` | 表示の文字の列は持たない(列の名前に、チェック・シグナルで出す)。取り消しの記録も、種別の列は無く、値のある列で分かる。 |
| FR-03 | `CancelOpenItemPage` | 読み込み | `v_cancel_open_item` | 種類は 7 つの boolean(ちょうど 1 つ true)、原因は 3 つの boolean。種類の文字は持たない。 |
| FR-04 | `PlanChangeUnreflectedPage` | 読み込み | `v_plan_change_unreflected` | MRP に未反映の計画変更(v_plan_change_unreflected) |
| FR-05 | `PlanChangePageEdit` | 更新 | `trans_plan_change` | 計画変更の取り消し(remove だけを書く。~PageRemove を生成する) |
| FR-06 | `PlanChangeInventoryRequestReleasePageCall` | DB 関数の呼び出し | `inventoryRequestRelease` | 引当予約の解除 |
| FR-07 | `PlanChangeInventoryRequestHoldPageCall` | DB 関数の呼び出し | `inventoryRequestHold` | 引当予約の保管(コンテナへ仮止めで移す) |
| FR-08 | `PlanChangeLotReleasePageCall` | DB 関数の呼び出し | `lotRelease` | 在庫にする(記録だけ) |
| FR-09 | `PlanChangeLotHoldPageCall` | DB 関数の呼び出し | `lotHold` | 押さえる(コンテナへ仮止め) |
| FR-10 | `PlanChangeLotScrapPageCall` | DB 関数の呼び出し | `lotScrap` | 廃棄 |
| FR-11 | `PlanChangeLotDeliverPageCall` | DB 関数の呼び出し | `lotDeliver` | 顧客へ引き渡す |
| FR-12 | `PlanChangeShippingOrderDetailCancelPageCall` | DB 関数の呼び出し | `shippingOrderDetailCancel` | 出荷オーダー明細の取り消し |
| FR-13 | `PlanChangePurchaseDetailCancelPageCall` | DB 関数の呼び出し | `purchaseDetailCancel` | 外注発注明細のキャンセル |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `CancelOpenItemPageFilterSpec` | 抽象クラス |  |
| FA-02 | `PlanChangePageFilterSpec` | 抽象クラス |  |
| FA-03 | `PlanChangeUnreflectedPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/plan_change_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 13 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 13 件。

- `test/operation_call_test.dart`
  - 存在しない引当予約の解除は OPR01
  - 存在しない引当予約の保管は OPR01
  - 存在しないロットを在庫にするは OPR01
  - 存在しない棚への保管は OPR01
- `test/server_read_test.dart`
  - CancelOpenItemPageRead
  - PlanChangePageRead
  - PlanChangeSettlementKindPageRead
  - PlanChangeUnreflectedPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
