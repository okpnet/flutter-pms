# work_record_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

work_record_model: work_record 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/work_record_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`work_record`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)

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
| FR-01 | `MrpVisiterItemPage` | 読み込み | `v_mrp_visiter_item` | MRPが見る棚ビジターの品目(v_mrp_visiter_item。1行は棚ビジター) |
| FR-02 | `VisiterOwnerPage` | 読み込み | `trans_visiter_owner` | 読み取り専用。DB のトリガー(13)だけが書く。create / update / delete の mutation は使わない(YAML に書かない)。 |
| FR-03 | `ExternalPropertyPage` | 読み込み | `v_external_property` | 社外の所有物の一覧(v_external_property。顧客・発注先。ISO 9001 8.5.3) |
| FR-04 | `VisiterOwnerRebuildPageCall` | DB 関数の呼び出し | `visiterOwnerRebuild` | 画面は未作成。単一の画面・サブ画面・子の台帳のどれにするかは、issue/202611.md#20261118_0001 の「所有者の決め直しの画面の検討」。 |
| FR-05 | `RegisterWorkRecordStartPageCall` | DB 関数の呼び出し | `workRecordStart` | 作業の開始(work_record_start)。実績(実施中。終了は NULL)を登録し、ロットから払い出す。戻り値は登録した作業実績 |
| FR-06 | `RegisterInspectionPageCall` | DB 関数の呼び出し | `inspectionRegister` | 作業の終了 と 受入検品(inspection_register)。作業実績または発注明細のどちらか 1 つを渡す |
| FR-07 | `RegisterPlanPage` | 読み込み | `trans_operations_plan` | 生産計画(工程計画)。品目・注文・顧客つき |
| FR-08 | `RegisterWorkPlanPage` | 読み込み | `trans_work_plan` | 工程計画明細(作業指示)。工程名と、登録の判定(残り・実施中・登録できるか。DB のビュー v_register_target)つき |
| FR-09 | `RegisterWorkRecordPage` | 読み込み | `trans_work_record` | 作業実績(回ごとの記録)。担当者の名称と、取り出した数量(払出の - の行)・不適合の数量(工程異常)・払出元のコンテナつき |
| FR-10 | `RegisterRecordVisiterPage` | 読み込み | `trans_work_record_visiter` | 作業実績につないだロット(払出の - の行 = 取り出し。入庫の + の行 = 完了品) |
| FR-11 | `RegisterRecordComplaintPage` | 読み込み | `trans_complaint_work` | 作業実績の不適合の数量(工程異常) |
| FR-12 | `RegisterLotPage` | 読み込み | `v_visiter_issuable` | 取り出せるロット(DB のビュー v_visiter_issuable。取り出せるか・取り出せない理由は列)。品目・コンテナの名称つき |
| FR-13 | `RegisterContainerPage` | 読み込み | `trans_container` | コンテナ(払出先の選択肢) |
| FR-14 | `RegisterStaffPage` | 読み込み | `info_staff` | 担当者(開始の担当者の選択肢) |
| FR-15 | `RegisterLotItemPage` | 読み込み | `v_visiter_item` | ロットの品目(DB のビュー v_visiter_item)。ロットの ID で絞る |
| FR-16 | `RegisterItemPage` | 読み込み | `mstr_item` | 品目の名称(生産計画の品目の表示) |
| FR-17 | `RegisterStakeholderPage` | 読み込み | `mstr_stakeholder` | 利害関係者(顧客)の名称(生産計画の顧客の表示) |
| FR-18 | `ShelfInventoryStatusPage` | 読み込み | `v_shelf_inventory_status` | 棚在庫状況(棚ビジター)(ダッシュボード用。要件20261027_0001。1行はロット。quantity は今の数量) |
| FR-19 | `VisiterPageEdit` | 更新 | `trans_visiter` | trans_visiterの書き込み |
| FR-20 | `ConveyPageEdit` | 更新 | `trans_convey` | trans_conveyの書き込み |
| FR-21 | `WorkRecordPickPage` | 読み込み | `trans_work_record` | 作業実績の選択(trans_work_record) |
| FR-22 | `LotPickPage` | 読み込み | `trans_visiter` | ロットの選択(trans_visiter。数量が正で、調整でない行 = ロットは、画面側の絞り込みで指定する) |
| FR-23 | `VisiterIssuablePage` | 読み込み | `v_visiter_issuable` | 払出候補(v_visiter_issuable。1行はロット)。issuable: true で絞る |
| FR-24 | `VisiterHoldWithoutComplaintPage` | 読み込み | `v_visiter_hold_without_complaint` | 仮止めなのに異常が無いロット(v_visiter_hold_without_complaint)。異常の登録を促す |
| FR-25 | `VisiterLedgerIssuePage` | 読み込み | `v_visiter_ledger_issue` | 帳簿の不備(v_visiter_ledger_issue。1行は行の不備) |
| FR-26 | `VisiterOriginCheckPage` | 読み込み | `v_visiter_origin_check` | 伝票数量と入庫の行の合計の不一致(v_visiter_origin_check。1行は受入実績・作業実績) |
| FR-27 | `VisiterIssuePageCall` | DB 関数の呼び出し | `visiterIssue` | 払出・出荷・製造への材料投入(visiter_issue)。戻り値は作った-の行 |
| FR-28 | `VisiterMovePageCall` | DB 関数の呼び出し | `visiterMove` | 移動・分割・隔離(visiter_move)。p_hold で移動先を仮止め。戻り値は移動先の在庫 |
| FR-29 | `VisiterAdjustPageCall` | DB 関数の呼び出し | `visiterAdjust` | 棚卸し(visiter_adjust)。数えた数に合わせる調整行を作る。差が無ければ戻り値は null |
| FR-30 | `ContainerPageEdit` | 更新 | `trans_container` | trans_containerの書き込み |
| FR-31 | `CertificatePageEdit` | 更新 | `trans_certificate` | trans_certificateの書き込み |
| FR-32 | `PurchaseCertificationPageEdit` | 更新 | `trans_purchase_certification` | trans_purchase_certificationの書き込み |
| FR-33 | `WorkRecordPageEdit` | 更新 | `trans_work_record` | trans_work_recordの書き込み |
| FR-34 | `WorkRecordCertificatePageEdit` | 更新 | `trans_work_record_certificate` | trans_work_record_certificateの書き込み |
| FR-35 | `InventoryRequestPageEdit` | 更新 | `trans_inventory_request` | trans_inventory_requestの書き込み |
| FR-36 | `InventoryApplyPageEdit` | 更新 | `trans_inventory_apply` | trans_inventory_applyの書き込み |
| FR-37 | `ContainerTreePageEdit` | 更新 | `trans_container_tree` | コンテナ体系の書き込み(親の付け替え。要件0054案A) |
| FR-38 | `WorkRecordPageCreate` | 登録 | `trans_work_record` | trans_work_recordの登録(作業実績) |
| FR-39 | `WorkRecordVisiterPageCreate` | 登録 | `trans_work_record_visiter` | trans_work_record_visiterの登録(作業実績と棚ビジターの結び付き) |
| FR-40 | `VisiterPageCreate` | 登録 | `trans_visiter` | trans_visiterの登録(棚ビジター) |
| FR-41 | `ConveyPageCreate` | 登録 | `trans_convey` | trans_conveyの登録(出来事だけ。数量は棚ビジターが持つ) |
| FR-42 | `ComplaintWorkPageCreate` | 登録 | `trans_complaint_work` | trans_complaint_workの登録(作業異常) |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `CertificatePageFilterSpec` | 抽象クラス |  |
| FA-02 | `ContainerPageFilterSpec` | 抽象クラス |  |
| FA-03 | `ConveyPageFilterSpec` | 抽象クラス |  |
| FA-04 | `ExternalPropertyPageFilterSpec` | 抽象クラス |  |
| FA-05 | `InventoryApplyPageFilterSpec` | 抽象クラス |  |
| FA-06 | `InventoryRequestPageFilterSpec` | 抽象クラス |  |
| FA-07 | `LotPickPageFilterSpec` | 抽象クラス |  |
| FA-08 | `MrpVisiterItemPageFilterSpec` | 抽象クラス |  |
| FA-09 | `PurchaseCertificationPageFilterSpec` | 抽象クラス |  |
| FA-10 | `RegisterContainerPageFilterSpec` | 抽象クラス |  |
| FA-11 | `RegisterItemPageFilterSpec` | 抽象クラス |  |
| FA-12 | `RegisterLotItemPageFilterSpec` | 抽象クラス |  |
| FA-13 | `RegisterLotPageFilterSpec` | 抽象クラス |  |
| FA-14 | `RegisterPlanPageFilterSpec` | 抽象クラス |  |
| FA-15 | `RegisterRecordComplaintPageFilterSpec` | 抽象クラス |  |
| FA-16 | `RegisterRecordVisiterPageFilterSpec` | 抽象クラス |  |
| FA-17 | `RegisterStaffPageFilterSpec` | 抽象クラス |  |
| FA-18 | `RegisterStakeholderPageFilterSpec` | 抽象クラス |  |
| FA-19 | `RegisterWorkPlanPageFilterSpec` | 抽象クラス |  |
| FA-20 | `RegisterWorkRecordPageFilterSpec` | 抽象クラス |  |
| FA-21 | `ShelfInventoryStatusPageFilterSpec` | 抽象クラス |  |
| FA-22 | `VisiterHoldWithoutComplaintPageFilterSpec` | 抽象クラス |  |
| FA-23 | `VisiterIssuablePageFilterSpec` | 抽象クラス |  |
| FA-24 | `VisiterLedgerIssuePageFilterSpec` | 抽象クラス |  |
| FA-25 | `VisiterOriginCheckPageFilterSpec` | 抽象クラス |  |
| FA-26 | `VisiterOwnerPageFilterSpec` | 抽象クラス |  |
| FA-27 | `VisiterPageFilterSpec` | 抽象クラス |  |
| FA-28 | `WorkRecordCertificatePageFilterSpec` | 抽象クラス |  |
| FA-29 | `WorkRecordPageFilterSpec` | 抽象クラス |  |
| FA-30 | `WorkRecordPickPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/work_record_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 33 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 33 件。

- `test/server_read_test.dart`
  - CertificatePageRead
  - ContainerPageRead
  - ConveyPageRead
  - ExternalPropertyPageRead
  - InventoryApplyPageRead
  - InventoryRequestPageRead
  - MrpVisiterItemPageRead
  - PurchaseCertificationPageRead
  - RegisterContainerPageRead
  - RegisterItemPageRead
  - RegisterLotItemPageRead
  - RegisterLotPageRead
  - RegisterPlanPageRead
  - RegisterRecordComplaintPageRead
  - RegisterRecordVisiterPageRead
  - RegisterStaffPageRead
  - RegisterStakeholderPageRead
  - RegisterWorkPlanPageRead
  - RegisterWorkRecordPageRead
  - ShelfInventoryStatusPageRead
  - VisiterHoldWithoutComplaintPageRead
  - VisiterIssuablePageRead
  - VisiterLedgerIssuePageRead
  - VisiterOriginCheckPageRead
  - VisiterOwnerPageRead
  - VisiterPageRead
  - WorkRecordCertificatePageRead
  - WorkRecordPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
