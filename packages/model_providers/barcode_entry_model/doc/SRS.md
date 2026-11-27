# barcode_entry_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

barcode_entry_model: barcode_entry 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

`packages/features/barcode_entry`(バーコード実績登録)の GraphQL モデル。ワークスペースの方針は [../CLAUDE.md](../CLAUDE.md) と [../../../CLAUDE.md](../../../CLAUDE.md) を参照。

### 1.2 範囲

- 場所: `packages/model_providers/barcode_entry_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)、`CLAUDE.md`(規則・仕様)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`entry_app`(アプリ)、`barcode_entry`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)

### 2.2 依存先(ワークスペース内)

`work_record_model`、`purchasing_model`、`resource_model`、`quality_model`、`pms_graphql`

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
| FR-01 | `ScanWorkPlanPage` | 読み込み | `trans_work_plan` | 作業指示(工程。trans_work_plan)を symbol で引く。指示数量は作業計画(trans_operations_plan)、品目は資源計画(trans_resource_plan) |
| FR-02 | `ScanWorkRecordPage` | 読み込み | `trans_work_record` | 作業指示ごとの作業実績(完了数量・開始の判定) |
| FR-03 | `ScanContainerPage` | 読み込み | `trans_container` | 棚(trans_container)を symbol で引く |
| FR-04 | `ScanVisiterPage` | 読み込み | `trans_visiter` | 棚にあるビジター(在庫) |
| FR-05 | `ScanPurchaseDetailPage` | 読み込み | `trans_purchase_detail` | 発注明細(購入品)を symbol で引く |
| FR-06 | `ScanPurchaseRecPage` | 読み込み | `trans_purchase_rec` | 発注明細ごとの受入実績(受入済み数量) |
| FR-07 | `ScanItemPage` | 読み込み | `mstr_item` | 品目を symbol または id で引く(名称つき) |
| FR-08 | `ScanEquipmentPage` | 読み込み | `mstr_equipment` | 設備を symbol で引く(名称は品目の名称) |
| FR-09 | `ScanInspectSchPage` | 読み込み | `trans_inspect_sch` | 設備に結び付く点検予定(trans_inspect_sch)。設備の id で引く |
| FR-10 | `ScanInspectSchDetailPage` | 読み込み | `trans_inspect_sch_detail` | 点検予定の明細(trans_inspect_sch_detail)。点検・式・種別の ID を持つ |
| FR-11 | `ScanInspectRecordPage` | 読み込み | `trans_inspect_record` | 点検結果(trans_inspect_record)が既にあるかの確認用。点検予定の明細の id で引く |
| FR-12 | `ScanInspectionPage` | 読み込み | `mstr_inspection` | 点検項目(mstr_inspection)。点検予定の明細の inspection_id で引く(名称つき) |
| FR-13 | `ScanInspectionFormulaPage` | 読み込み | `mstr_inspection_formula` | 点検の式(mstr_inspection_formula)。点検予定の明細の inspection_formula_id で引く |
| FR-14 | `ScanStaffHistoryPage` | 読み込み | `history_info_staff` | 担当者の最新の履歴ID(登録前に読んで送る。revision の最大を選ぶ) |
| FR-15 | `ScanLocationHistoryPage` | 読み込み | `history_mstr_location` | 場所の最新の履歴ID(登録前に読んで送る。revision の最大を選ぶ) |
| FR-16 | `ScanStaffPage` | 読み込み | `info_staff` | 担当者を symbol で引く(担当者のバーコードの読み取り) |
| FR-17 | `ScanContentsPage` | 読み込み | `v_visiter_issuable` | 棚の中身(ロットと品目。棚の保持アイテム・おすすめの根拠に使う)。取り出せるロットのビュー(v_visiter_issuable)から読む |
| FR-18 | `ScanLotItemPage` | 読み込み | `v_visiter_item` | ロットの品目(DB のビュー v_visiter_item)。ロットの ID で絞る(棚の中身・おすすめの品目) |
| FR-19 | `ScanContainerChildPage` | 読み込み | `trans_container_tree` | 棚の入れ子(コンテナ体系 trans_container_tree。親の棚の ID で子の棚を引く。祖先・子孫のすべての組は hrchy_trans_container) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `ScanContainerChildPageFilterSpec` | 抽象クラス |  |
| FA-02 | `ScanContainerPageFilterSpec` | 抽象クラス |  |
| FA-03 | `ScanContentsPageFilterSpec` | 抽象クラス |  |
| FA-04 | `ScanEquipmentPageFilterSpec` | 抽象クラス |  |
| FA-05 | `ScanInspectRecordPageFilterSpec` | 抽象クラス |  |
| FA-06 | `ScanInspectSchDetailPageFilterSpec` | 抽象クラス |  |
| FA-07 | `ScanInspectSchPageFilterSpec` | 抽象クラス |  |
| FA-08 | `ScanInspectionFormulaPageFilterSpec` | 抽象クラス |  |
| FA-09 | `ScanInspectionPageFilterSpec` | 抽象クラス |  |
| FA-10 | `ScanItemPageFilterSpec` | 抽象クラス |  |
| FA-11 | `ScanLocationHistoryPageFilterSpec` | 抽象クラス |  |
| FA-12 | `ScanLotItemPageFilterSpec` | 抽象クラス |  |
| FA-13 | `ScanPurchaseDetailPageFilterSpec` | 抽象クラス |  |
| FA-14 | `ScanPurchaseRecPageFilterSpec` | 抽象クラス |  |
| FA-15 | `ScanStaffHistoryPageFilterSpec` | 抽象クラス |  |
| FA-16 | `ScanStaffPageFilterSpec` | 抽象クラス |  |
| FA-17 | `ScanVisiterPageFilterSpec` | 抽象クラス |  |
| FA-18 | `ScanWorkPlanPageFilterSpec` | 抽象クラス |  |
| FA-19 | `ScanWorkRecordPageFilterSpec` | 抽象クラス |  |
| FA-20 | `ScanClientException` | クラス | 通信・サーバーの異常。 |
| FA-21 | `ScanFoundKind` | 列挙型 | symbol で引いた対象の種類。 |
| FA-22 | `ScanFound` | クラス | symbol で引いた対象(平らな型)。使わない項目は null。 |
| FA-23 | `ScanStaff` | クラス | 担当者(symbol で引いた結果)。 |
| FA-24 | `ScanHeld` | クラス | 棚の保持アイテム(品目ごとの数量)。 |
| FA-25 | `ScanShelfHolding` | クラス | 同じ品目を持つ棚と、その数量(入庫先のおすすめ)。 |
| FA-26 | `ScanClient` | クラス |  |
| FA-27 | `ScanInspection` | クラス | 点検予定の明細(平らな型)。式の引数は JSON のまま持つ。 |
| FA-28 | `ScanVisiter` | クラス | 棚のロット(平らな型)。数量は今の数量(入庫 + 出庫 + 棚卸し)。 |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/barcode_entry_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 40 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 40 件。

- `test/scan_client_test.dart`
  - 作業指示を symbol で引ける
  - 棚・発注明細・品目・設備を symbol で引ける
  - 設備の未実施の点検は、実施済みを除く最も古い予定の明細
  - 隔離棚の保留のロットは取り出せず、元の棚の使えるロットは取り出せる
  - 登録の無い symbol は null
  - 作業の開始は、コンテナを渡して関数を 1 回呼ぶ(実績の登録と払出は DB が 1 つの処理で行う)
  - 作業の終了は、作業実績・合格・不合格・差の理由を 1 回の関数で渡す
  - 受入検品は、発注明細を渡して同じ関数を呼ぶ。差の理由は渡さない
  - 関数が失敗したら、errcode を持つ例外にする(1 つの処理なので、途中の登録は残らない)
  - 入庫の登録は、担当者・場所の最新の履歴IDを読んで送る
  - 異常の登録は、表題・詳細 → 異常 → 異常入出庫ビジター の順に登録する
  - 点検結果は、予定の明細・結果・結果の値を送る
  - 払出は、DB の関数を1回だけ呼ぶ(行と受払実績はDBが作る)
  - 隔離は、移動先の棚と仮止めを渡して関数を1回だけ呼ぶ
  - 棚卸しは、数えた数を渡す。差が無ければ null
  - 関数のエラーは、errcode を持つ例外にする
- `test/server_read_test.dart`
  - ScanContainerChildPageRead
  - ScanContainerPageRead
  - ScanContentsPageRead
  - ScanEquipmentPageRead
  - ScanInspectRecordPageRead
  - ScanInspectSchDetailPageRead
  - ScanInspectSchPageRead
  - ScanInspectionFormulaPageRead
  - ScanInspectionPageRead
  - ScanItemPageRead
  - ScanLocationHistoryPageRead
  - ScanLotItemPageRead
  - ScanPurchaseDetailPageRead
  - ScanPurchaseRecPageRead
  - ScanStaffHistoryPageRead
  - ScanStaffPageRead
  - ScanVisiterPageRead
  - ScanWorkPlanPageRead
  - ScanWorkRecordPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
