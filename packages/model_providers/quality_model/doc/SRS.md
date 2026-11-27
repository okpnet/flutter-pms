# quality_model ソフトウェア要求仕様(SRS)

> このファイルは `tools/doc_gen`(`dart run tools/doc_gen/bin/doc_gen.dart`)が、ソース・pubspec・CLAUDE.md・テストから生成した。手で足す内容は、末尾の「補足(手書き)」の枠の中に書く(再生成しても残る)。

## 1. はじめに

### 1.1 目的

quality_model: quality 機能の GraphQL モデル(gql/*.yaml から生成。手で編集しない)。

### 1.2 範囲

- 場所: `packages/model_providers/quality_model`(model_providers(機能ごとの GraphQL モデル))
- 種類: Flutter パッケージ
- 参照: ワークスペースのルート `CLAUDE.md`(アーキテクチャ・規則)、`doc/SRS.md`(システム全体)、このライブラリの `doc/SDD.md`(設計)。

## 2. 全体説明

### 2.1 利用元(このライブラリを使うもの)

`quality`(パッケージ)、`quality_common`(パッケージ)、`jwt_verification_test`(パッケージ・テスト用)、`barcode_entry_model`(パッケージ)

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
| FR-01 | `AuditStdPageEdit` | 更新 | `mstr_audit_std` | mstr_audit_stdの書き込み |
| FR-02 | `AuditStdCheckitemPageEdit` | 更新 | `mstr_audit_std_checkitem` | mstr_audit_std_checkitemの書き込み |
| FR-03 | `AuditPageEdit` | 更新 | `trans_audit` | trans_auditの書き込み |
| FR-04 | `AuditTeamPageEdit` | 更新 | `trans_audit_team` | trans_audit_teamの書き込み |
| FR-05 | `AuditMemberPageEdit` | 更新 | `trans_audit_member` | trans_audit_memberの書き込み |
| FR-06 | `AuditorPageEdit` | 更新 | `trans_auditor` | trans_auditorの書き込み |
| FR-07 | `AuditDetailPage` | 読み込み | `trans_audit_details` | 監査実施詳細(予定日時・チーム・実績。名称は言語 languageCode) |
| FR-08 | `AuditDetailPageEdit` | 更新 | `trans_audit_details` | 監査実施詳細の更新(実施日・終了日時・結論。渡した列だけが変わる)。論理削除は AuditDetailPageRemove |
| FR-09 | `AuditDetailPageCreate` | 登録 | `trans_audit_details` |  |
| FR-10 | `AuditItemPage` | 読み込み | `trans_audit_detail_check_items` | 監査実施詳細項目(基準 = 監査標準項目の履歴、事実 = 式に対する値・所見、つないだ異常) |
| FR-11 | `AuditItemPageEdit` | 更新 | `trans_audit_detail_check_items` | 監査実施詳細項目の更新(値・所見。渡した列だけが変わる) |
| FR-12 | `AuditItemPageCreate` | 登録 | `trans_audit_detail_check_items` |  |
| FR-13 | `AuditComplaintLinkPageCreate` | 登録 | `trans_audit_complaint` | 監査の異常(項目と異常のつなぎ。取り消しは AuditComplaintLinkPageRemove) |
| FR-14 | `AuditComplaintLinkPageEdit` | 更新 | `trans_audit_complaint` |  |
| FR-15 | `AuditTextSavePageCall` | DB 関数の呼び出し | `transTextSave` | 共通関数(kind: function)。文章(所見・結論)を、言語別の値で作る・変える |
| FR-16 | `AuditLabelSavePageCall` | DB 関数の呼び出し | `transLabelSave` | ラベル(監査名) |
| FR-17 | `AuditAssignmentPage` | 読み込み | `v_audit_assignment` | 監査の割り当て(1 行 = 監査実施詳細 × チームの監査員)。状態は boolean と文字をビューで 1 か所だけ定義する。画面は staff_id = 自分 で絞る |
| FR-18 | `AuditDetailStartPageCall` | DB 関数の呼び出し | `auditDetailStart` | 実施の開始(実施日を今日にし、項目を用意する) |
| FR-19 | `AuditDetailFinishPageCall` | DB 関数の呼び出し | `auditDetailFinish` | 実施の終了(結論は言語別の値の JSON。未入力の項目があれば止まる。pForce で押し切れる) |
| FR-20 | `AuditComplaintRegisterPageCall` | DB 関数の呼び出し | `auditComplaintRegister` | 異常の登録(題名・内容は言語別の値の JSON。異常とつなぎを 1 回で作る) |
| FR-21 | `AuditPlanStdOptionPage` | 読み込み | `mstr_audit_std` | 監査標準の選択肢(名称は言語 languageCode) |
| FR-22 | `AuditPlanStaffOptionPage` | 読み込み | `info_staff` | 監査員・責任者の選択肢(担当者。名称は言語 languageCode) |
| FR-23 | `AuditNoticePageCall` | DB 関数の呼び出し |  | 監査の通知(DB の STABLE の関数 audit_notice。Query。予定日から導く。行は作らない。ダッシュボード) |
| FR-24 | `AuditStdLedgerPageEdit` | 更新 | `mstr_audit_std` | ---- 監査標準の登録・更新(Issue 20261123_0001。名称・読み・略称は共通関数 shared_appellation_save、詳細は shared_text_save で作る)---- |
| FR-25 | `AuditStdLedgerPageCreate` | 登録 | `mstr_audit_std` |  |
| FR-26 | `AuditStdAppellationSavePageCall` | DB 関数の呼び出し | `sharedAppellationSave` | 呼称(名称・読み・略称。言語別の値)・文章(詳細)を作る・変える |
| FR-27 | `AuditStdTextSavePageCall` | DB 関数の呼び出し | `sharedTextSave` |  |
| FR-28 | `AuditPlanRegisterPageCall` | DB 関数の呼び出し | `auditPlanRegister` | 監査計画の登録(DB の関数 audit_plan_register。監査・チーム・監査員・監査実施詳細・ラベル・文章を 1 トランザクションで登録する) |
| FR-29 | `AuditCheckitemLedgerPage` | 読み込み | `mstr_audit_std_checkitem` | 項目(コード・名称・詳細)+ 判定の式(条件 = 演算子 + 値の JSON。arg_class)。type_class・formula_class は NOT NULL のため、arg_class から導いて書く ---- |
| FR-30 | `AuditCheckitemLedgerPageEdit` | 更新 | `mstr_audit_std_checkitem` |  |
| FR-31 | `AuditCheckitemLedgerPageCreate` | 登録 | `mstr_audit_std_checkitem` |  |
| FR-32 | `ComplaintPageEdit` | 更新 | `trans_complaint` | trans_complaintの書き込み |
| FR-33 | `ComplaintOrderPageEdit` | 更新 | `trans_complaint_order` | trans_complaint_orderの書き込み |
| FR-34 | `ComplaintProcessPageEdit` | 更新 | `trans_complaint_process` | trans_complaint_processの書き込み |
| FR-35 | `ComplaintEquipmentPageEdit` | 更新 | `trans_complaint_equipment` | trans_complaint_equipmentの書き込み |
| FR-36 | `ComplaintReceivePageEdit` | 更新 | `trans_complaint_receive` | trans_complaint_receiveの書き込み |
| FR-37 | `ComplaintStakeholderPageEdit` | 更新 | `trans_complaint_stakeholder` | trans_complaint_stakeholderの書き込み |
| FR-38 | `ComplaintFilePageEdit` | 更新 | `trans_complaint_file` | trans_complaint_fileの書き込み |
| FR-39 | `ComplaintVisiterPageEdit` | 更新 | `trans_complaint_visiter` | trans_complaint_visiterの書き込み(払出許可=解除は release_at と許可担当者を更新する) |
| FR-40 | `ComplaintLabelPageCreate` | 登録 | `trans_label` | trans_labelの登録(異常の表題) |
| FR-41 | `ComplaintLabelValuePageCreate` | 登録 | `trans_label_value` | trans_label_valueの登録(言語ごとの表題) |
| FR-42 | `ComplaintTextPageCreate` | 登録 | `trans_text` | trans_textの登録(異常の詳細) |
| FR-43 | `ComplaintTextValuePageCreate` | 登録 | `trans_text_value` | trans_text_valueの登録(言語ごとの詳細) |
| FR-44 | `ComplaintPageCreate` | 登録 | `trans_complaint` | trans_complaintの登録(異常) |
| FR-45 | `ComplaintVisiterPageCreate` | 登録 | `trans_complaint_visiter` | trans_complaint_visiterの登録(異常と棚ビジターの結び付き) |
| FR-46 | `ComplaintKindPage` | 読み込み | `v_complaint_kind` | 外部の異常(顧客クレーム・利害関係者の苦情)と内部の異常(設備・工程・受入・棚移動)の 2 つの画面は、is_external で分ける |
| FR-47 | `ComplaintRegisterPageCall` | DB 関数の呼び出し | `complaintRegister` | 種類は、対象の ID(設備・工程・受入・ロット・作業実績・受注・利害関係者)のうち 1 つだけを渡すことで決まる |
| FR-48 | `ComplaintEquipmentPageCreate` | 登録 | `trans_complaint_equipment` | 既存の異常へ種類を足す(子の表の登録。1 表の登録のため、ミューテーションで行う) |
| FR-49 | `ComplaintProcessPageCreate` | 登録 | `trans_complaint_process` |  |
| FR-50 | `ComplaintKindPurchaseRecPageCreate` | 登録 | `trans_complaint_purchase_rec` |  |
| FR-51 | `ComplaintKindWorkPageCreate` | 登録 | `trans_complaint_work` |  |
| FR-52 | `ComplaintOrderPageCreate` | 登録 | `trans_complaint_order` |  |
| FR-53 | `ComplaintStakeholderPageCreate` | 登録 | `trans_complaint_stakeholder` |  |
| FR-54 | `ComplaintListPage` | 読み込み | `v_complaint` | 異常の台帳(DB のビュー v_complaint。1 行 = 1 異常。種類は has_* の boolean と kind_names。外部か・クレームかもビューの値) |
| FR-55 | `ComplaintWorkRecordLookupPage` | 読み込み | `trans_work_record` | 異常の登録で、作業実績・ロットを、シンボル(バーコード)から ID に解決する |
| FR-56 | `ComplaintVisiterLookupPage` | 読み込み | `trans_visiter` |  |
| FR-57 | `ComplaintTargetVisiterPage` | 読み込み | `v_complaint_target_visiter` | 異常の対象 × ロット(v_complaint_target_visiter)。linked: false が登録漏れ |
| FR-58 | `ComplaintTargetPage` | 読み込み | `v_complaint_target` | 異常の対象ごとの漏れの件数(v_complaint_target) |
| FR-59 | `ComplaintSupplyPage` | 読み込み | `trans_complaint_supply` | 支給異常(trans_complaint_supply。異常の対象に支給が加わった) |
| FR-60 | `ComplaintSupplyPageCreate` | 登録 | `trans_complaint_supply` | 支給異常の登録(取り消しは remove) |
| FR-61 | `ComplaintSupplyPageEdit` | 更新 | `trans_complaint_supply` | 支給異常の取り消し(remove だけを書く。~PageRemove を生成する) |
| FR-62 | `DisposalPageEdit` | 更新 | `trans_disposal` | trans_disposalの書き込み |
| FR-63 | `RecurrencePreventionPageEdit` | 更新 | `trans_recurrence_prevention` | trans_recurrence_preventionの書き込み |
| FR-64 | `ObserverDisposalPageEdit` | 更新 | `trans_observer_disposal` | trans_observer_disposalの書き込み |
| FR-65 | `ObserverPreventivePageEdit` | 更新 | `trans_observer_preventive` | trans_observer_preventiveの書き込み |
| FR-66 | `ReportPageEdit` | 更新 | `mstr_report` | mstr_reportの書き込み |
| FR-67 | `RiskPageEdit` | 更新 | `trans_risk` | trans_riskの書き込み |
| FR-68 | `PreventionPageEdit` | 更新 | `trans_prevention` | trans_preventionの書き込み |
| FR-69 | `PreventionDetailPageEdit` | 更新 | `trans_prevention_detail` | trans_prevention_detailの書き込み |
| FR-70 | `OrderRiskPageEdit` | 更新 | `trans_order_risk` | trans_order_riskの書き込み |
| FR-71 | `OrderDetailRiskPageEdit` | 更新 | `trans_order_detail_risk` | trans_order_detail_riskの書き込み |
| FR-72 | `TaskRiskPageEdit` | 更新 | `trans_task_risk` | trans_task_riskの書き込み |

手書きの公開面は次のとおり。

| ID | 名前 | 種類 | 要求(ドキュメントコメントより) |
|---|---|---|---|
| FA-01 | `AuditAssignmentPageFilterSpec` | 抽象クラス |  |
| FA-02 | `AuditCheckitemLedgerPageFilterSpec` | 抽象クラス |  |
| FA-03 | `AuditDetailPageFilterSpec` | 抽象クラス |  |
| FA-04 | `AuditItemPageFilterSpec` | 抽象クラス |  |
| FA-05 | `AuditMemberPageFilterSpec` | 抽象クラス |  |
| FA-06 | `AuditPageFilterSpec` | 抽象クラス |  |
| FA-07 | `AuditPlanStaffOptionPageFilterSpec` | 抽象クラス |  |
| FA-08 | `AuditPlanStdOptionPageFilterSpec` | 抽象クラス |  |
| FA-09 | `AuditStdCheckitemPageFilterSpec` | 抽象クラス |  |
| FA-10 | `AuditStdPageFilterSpec` | 抽象クラス |  |
| FA-11 | `AuditTeamPageFilterSpec` | 抽象クラス |  |
| FA-12 | `AuditorPageFilterSpec` | 抽象クラス |  |
| FA-13 | `ComplaintEquipmentPageFilterSpec` | 抽象クラス |  |
| FA-14 | `ComplaintFilePageFilterSpec` | 抽象クラス |  |
| FA-15 | `ComplaintKindPageFilterSpec` | 抽象クラス |  |
| FA-16 | `ComplaintListPageFilterSpec` | 抽象クラス |  |
| FA-17 | `ComplaintOrderPageFilterSpec` | 抽象クラス |  |
| FA-18 | `ComplaintPageFilterSpec` | 抽象クラス |  |
| FA-19 | `ComplaintProcessPageFilterSpec` | 抽象クラス |  |
| FA-20 | `ComplaintReceivePageFilterSpec` | 抽象クラス |  |
| FA-21 | `ComplaintStakeholderPageFilterSpec` | 抽象クラス |  |
| FA-22 | `ComplaintSupplyPageFilterSpec` | 抽象クラス |  |
| FA-23 | `ComplaintTargetPageFilterSpec` | 抽象クラス |  |
| FA-24 | `ComplaintTargetVisiterPageFilterSpec` | 抽象クラス |  |
| FA-25 | `ComplaintVisiterLookupPageFilterSpec` | 抽象クラス |  |
| FA-26 | `ComplaintVisiterPageFilterSpec` | 抽象クラス |  |
| FA-27 | `ComplaintWorkRecordLookupPageFilterSpec` | 抽象クラス |  |
| FA-28 | `DisposalPageFilterSpec` | 抽象クラス |  |
| FA-29 | `ObserverDisposalPageFilterSpec` | 抽象クラス |  |
| FA-30 | `ObserverPreventivePageFilterSpec` | 抽象クラス |  |
| FA-31 | `OrderDetailRiskPageFilterSpec` | 抽象クラス |  |
| FA-32 | `OrderRiskPageFilterSpec` | 抽象クラス |  |
| FA-33 | `PreventionDetailPageFilterSpec` | 抽象クラス |  |
| FA-34 | `PreventionPageFilterSpec` | 抽象クラス |  |
| FA-35 | `RecurrencePreventionPageFilterSpec` | 抽象クラス |  |
| FA-36 | `ReportPageFilterSpec` | 抽象クラス |  |
| FA-37 | `RiskPageFilterSpec` | 抽象クラス |  |
| FA-38 | `TaskRiskPageFilterSpec` | 抽象クラス |  |

## 4. 非機能要件

| ID | 要求 | このライブラリでの状態 |
|---|---|---|
| NFR-01 | ログ: 実行したときの、このライブラリが発生元のエラーだけを残す。ロガーは Riverpod(`loggerProvider`)から受ける | 該当の処理が無い、または呼び出し側が受け持つ |
| NFR-02 | 多言語: 表示する文字列は言語ファイル(slang)に置き、`localeProvider` で選ぶ | 画面の文字列を持たない、または対象外 |
| NFR-03 | バレルファイル: 使う側は 1 行の import で解決できる | `lib/quality_model.dart` ほか |
| NFR-04 | JSON 化: 公開するクラスのインスタンスを、エラー追跡のために JSON にできる(復元の目的では使わない) | 必要な型だけ(各型の `toJson`) |
| NFR-05 | テスト: 通常のテストを持つ。サーバーを使うテストは `--exclude-tags server` で除外できる | 43 件(5 節) |
| NFR-06 | 依存の向き: 上から下への一方向だけ | 2.2 のとおり |
| NFR-07 | 生成物は手で編集しない | 生成の入口(`gql/*.yaml`・`tools/entity_gen`・`dart run slang`)から再生成する |

## 5. 検証(テストが確かめている要求)

テストファイル 2 件、テストケース 43 件。

- `test/server_read_test.dart`
  - AuditAssignmentPageRead
  - AuditCheckitemLedgerPageRead
  - AuditDetailPageRead
  - AuditItemPageRead
  - AuditMemberPageRead
  - AuditPageRead
  - AuditPlanStaffOptionPageRead
  - AuditPlanStdOptionPageRead
  - AuditStdCheckitemPageRead
  - AuditStdPageRead
  - AuditTeamPageRead
  - AuditorPageRead
  - ComplaintEquipmentPageRead
  - ComplaintFilePageRead
  - ComplaintKindPageRead
  - ComplaintListPageRead
  - ComplaintOrderPageRead
  - ComplaintPageRead
  - ComplaintProcessPageRead
  - ComplaintReceivePageRead
  - ComplaintStakeholderPageRead
  - ComplaintSupplyPageRead
  - ComplaintTargetPageRead
  - ComplaintTargetVisiterPageRead
  - ComplaintVisiterLookupPageRead
  - ComplaintVisiterPageRead
  - ComplaintWorkRecordLookupPageRead
  - DisposalPageRead
  - ObserverDisposalPageRead
  - ObserverPreventivePageRead
  - OrderDetailRiskPageRead
  - OrderRiskPageRead
  - PreventionDetailPageRead
  - PreventionPageRead
  - RecurrencePreventionPageRead
  - ReportPageRead
  - RiskPageRead
  - TaskRiskPageRead
  - 遅延が制限時間を超えるとタイムアウトで終わる
  - 応答の途中・前の切断は Err(NetworkError)
  - 認証エラー(401/403)は Err(ServerError) でステータスを持つ
  - 認証ヘッダーが要求に付く
  - 切断のあと、サーバーが戻れば次の問い合わせは成功する

## 補足(手書き)

<!-- manual:begin -->
<!-- manual:end -->
