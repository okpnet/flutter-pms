# 要件0055 実施ログ(page.mdとviewsの評価・追加・修正、2026/10/16)

要件0055: `page.md`と`views`、`schema.graphql`と関連を学習し、傾向から`page.md`と`views`の追加・レビュー・評価を行う。
完了条件: `page.md`の項目が矛盾なく埋まり、`schema.graphql`(全量スキーマ)に相違が無いこと。DBの変更が必要な項目、成立させたい項目は、このログに残してスキップする(完了条件に含めない)。

## 1. 結果

| 項目 | 結果 |
|---|---|
| `page.md`の参照(`[ノード名]`)が、viewsに存在する | 満たした |
| viewsのトップノード(~Page・~PageEdit・~ReadFields・~EditFields)が、すべて`page.md`から参照されている | 満たした(未参照0件) |
| サフィックス(台帳・体系・項目・明細=read、情報・登録=edit)と、参照先のkindが一致する | 満たした |
| 参照の無い項目は、`<!--DB要-->`の項目(配下を含む)に限る | 満たした(スキップは3節) |
| viewsからGraphQLを生成したときのスキーマとの不整合 | 0件(共通定義~ReadFields/~EditFieldsの検証を含む。275ファイル) |
| テスト | 177件通過。整合は`test/page_views_consistency_test.dart`で固定した |

## 2. 実施内容

### 2-1. 4章(スキーマ取得とモデル生成)

- 全量スキーマを再取得した(型14264、追加116・削除108・変更780)。DB側で`info_department_kind`が部署と区分値の紐付け(1対多)に変わっていた。
- `source/views/company/department.yaml`を追従した: `DepartmentKindReadFields.kinds`の`using`を`info_department_kind_value_id`へ、`DepartmentPage.kinds`を`toMany`へ、`DepartmentKindEditFields.kinds`を`editable: false`の参照へ、編集側の子の名前を`departmentKinds`へ統一した。
- 生成したGraphQL(既存の画面分)を`lib/graphql`へ採用し、絞り込み(入力型384)→対応表(34ファイル)→build_runner→テストを実行した。5000KBを超えた`task_resource_page`のedit・rfeを`.gitignore`・`analysis_options.yaml`・`.vscode/settings.json`に追加した。
- テストの用データを追従した: `department_page`(区分が紐付けの1対多)、`operation_page`(`FixTextReadFields`が`char_count`/`lead_text`を取得)、`spec_measurement_page`(単位がja/en)。

### 2-2. viewsの修正(スキーマとの不整合)

| ファイル | 内容 |
|---|---|
| quality/document.yaml | `Identifier`→`identifier`、`DocumnetPage`→`DocumentPage`、名称の列を`titles`に、承認パターンの参照を`trans_approval_pattern`(新設の`TransApprovalPatternReadFields`)に、重複した`labels`・`title`・`update_at`・`remarks`を整理した。`DocumentTreePageEdit`(親の付け替え)を追加した |
| common/transaction_common.yaml | `FlexibleTextEditFields`の`from`(`trans_label_value`→`trans_text_value`)と列名(`ttrans_text_value_id`→`trans_text_value_id`)を修正した。`TransApprovalPatternReadFields`を追加した |
| provision/item.yaml | `HsCodeReadEditFields`の`requiredWhere`を`mstr_item_hcdcs_id`に修正した(`mstr_manufacturer_id`は誤り) |
| resource/maintenance.yaml | `InspectionFormulaEditFields`の`requiredWhere`を`mstr_inspection_formula_id`に修正した |
| sales/stakeholder.yaml | `ContactReadFields`・`ContactEditFields`の呼称の列を実在の列(`office_names`・`department_names`・`contact_person_names`)に修正した。editの引数名が衝突しないよう、3つの呼称の`name`を一意にした。`ContactEditFields`の`requiredWhere`を`mstr_stakeholder_contact_id`にした |
| sales/customer.yaml、purchase/supplier.yaml | `defaultWhere`の`valuer: true;`(キー名の誤記と、末尾の`;`)を`value: true`に修正した。`CustomerPageEdit`・`SupplierPageEdit`を追加した |

### 2-3. viewsの追加(page.mdの項目で、スキーマに対応するテーブルがあるもの)

雛形ツール`tool/scaffold_view.dart`で出力し、レビューして取り込んだ。生成したGraphQLは、スキーマとの不整合0件。
`lib/graphql`(絞り込み・モデル生成の対象)へは採用していない(画面を使う段階で採用する。5-8節)。

| 分野 | ファイル | 追加したページ(~Pageと~PageEdit) |
|---|---|---|
| 会社情報 | company/approval.yaml | ApprovalScope(承認範囲) |
| 資源 | resource/maintenance.yaml | InspectSch・InspectSchDetail・InspectRecord・InspectImpFile(点検整備の予定・実績・結果ファイル) |
| 提供 | provision/item_operation.yaml | ItemOperation・ItemOperationTask(品目工程計画) |
| 営業 | sales/order.yaml | Order・OrderDetail(受注) |
| 購買 | purchase/purchase.yaml、purchase/unrecognized.yaml | Purchase・PurchaseDetail・PurchaseRec(発注・受入)、Unrecognized・UnrecognizedDetail(非計上発注) |
| 生産計画 | production/plan.yaml | ResourcePlan・OperationsPlan・WorkPlan・ProductRez・PurchaseRez |
| 作業実績 | work/work_record.yaml | Container(+ContainerTreePageEdit)・Certificate・PurchaseCertification・WorkRecord・WorkRecordCertificate・InventoryRequest・InventoryApply |
| 品質管理 | quality/corrective.yaml | Disposal・RecurrencePrevention・ObserverDisposal・ObserverPreventive |
| 品質管理 | quality/risk.yaml | Risk・Prevention・PreventionDetail・OrderRisk・OrderDetailRisk・TaskRisk |
| 品質管理 | quality/audit.yaml | AuditStd・AuditStdCheckitem・Audit・AuditTeam・AuditMember・Auditor |
| 品質管理 | quality/complaint.yaml | Complaint・ComplaintOrder・ComplaintProcess・ComplaintEquipment・ComplaintReceive・ComplaintStakeholder・ComplaintFile |
| 品質管理 | quality/report.yaml、quality/document.yaml | Report、DocumentContent(+DocumentContentTreePageEdit) |

### 2-4. page.mdの修正

- 誤記: `[X]`→`ApprovalScope*`、`TaskPag`→`TaskPage`、`OperationPageEdit:`、`DocumnetPage`→`DocumentPage`、`CompanyPage,`の余分なカンマ。
- サフィックスと種類の矛盾: 共通定義の読み込み側は「項目」(更新者項目・ラベル項目・テキスト項目)に改めた。`統計情報[CompanyPage]`は`会社台帳`に改めた。`工程明細台帳`は`工程運用台帳`(OperationPage)へ。`未然防止処置上納`は、「上納」が定義に無いため`未然防止処置登録`へ。`役職明細`は、`info_assign`を表す`役職割当明細`と重複するため削除した。
- 未参照だったviews(24ノード)を、該当する位置に追加した。
- 定義: 「項目」が共通定義の読み込み側も指すこと、`[ノード名]`・`取込:`・`<!--DB要: ...-->`の記法、命名の対応(サフィックス↔kind・ページID・雛形の出力)を追記した。

### 2-5. 生成ツールの拡張(tool/view_graphql)

- `defaultWhere`の`remove`以外の固定条件(例: `is_customer = true`)を、フィルタに反映する(演算子 `=` `!=` `>` `>=` `<` `<=`)。`value`の無い条件・不明な列はエラー。
  これまで無視されていた(`CustomerPage`・`SupplierPage`の絞り込みが効いていなかった)。
- 共通定義(~ReadFields・~EditFields)も、スキーマとの整合を検証する(出力は捨ててエラーだけ残す)。ページから使われない共通定義の不整合が、これまで検出されなかった。
  ~EditFieldsに`requiredWhere`が無いときは、主キー(パーティション等で単独の更新ミューテーションが無いときは複合キー)で検証する。
- 雛形ツール`tool/scaffold_view.dart`を追加した。

## 3. スキップした項目(DBの変更・要件の確定が必要)

| page.mdの項目 | 理由 | 必要な対応 |
|---|---|---|
| 会社の統計情報(集計の表示) | 集計のビュー・テーブルがスキーマに無い | 集計用のビュー(例: v_company_summary)の追加と、表示項目の決定 |

### 3-1. スキップから対応へ変更した項目

| 項目 | 内容 |
|---|---|
| 非計上発注 | 「非計上」はDBの列ではなく、ユーザーが選択する(ユーザー確認)。対応するテーブルは`trans_unrecognized`と`trans_unrecognized_detail`。`UnrecognizedPage`・`UnrecognizedDetailPage`と、それぞれの~PageEditを`source/views/purchase/unrecognized.yaml`に追加した |

### 3-2. 保留(一時停止)

| 項目 | 状態 |
|---|---|
| 会社の統計情報(集計のビューが無い) | 確認のため一時停止。集計の内容(件数・金額等)と、集計用のビューの要否が決まるまで、viewsは未定義のまま(page.mdに`<!--DB要-->`) |

## 4. 推定した対応(要確認。スキーマ上は成立)

| 項目 | 対応 | 理由 |
|---|---|---|
| 投入登録 | `InventoryApplyPageEdit`(trans_inventory_apply) | 払出の実施を表すテーブル。他の候補は`trans_convey`(搬送) |
| 引当実績登録 | `InventoryRequestPageEdit`(trans_inventory_request) | 引当(予約からの払出要求)を表すテーブル |
| クレーム登録(発注明細の下) | `ComplaintPageEdit`(異常報告と共有) | 発注に紐づくクレームの専用テーブルが無い |
| 設備点検運用明細(設備情報の下) | `InspectionOperationPage`(保全の運用台帳と共有) | `mstr_inspection_operation.mstr_equipment_id`で設備に紐づく |
| 点検実績明細(設備)と点検整備実施明細(保全) | `InspectRecordPage`(共有) | どちらも`trans_inspect_record` |
| 処置再発監視 | `ObserverPreventive*`と`ObserverDisposal*`の2つ | 処置と再発防止のそれぞれに監視のテーブルがある |
| 品目工程計画 | `ItemOperation*`(台帳)・`ItemOperationTask*`(明細) | `mstr_item_operation`と`mstr_item_operation_task` |

## 5. 雛形から追加したページの状態(今後の見直し)

雛形ツールの規則: スカラー列は列のまま、呼称・テキスト・ラベルは共通定義の取り込み、`mstr_`・`info_`・`shared_unit`・`trans_approval_pattern`への外部キーは、取り込める読み込み定義があれば参照(editは`editable: false`)、それ以外は列のまま。
次の点は、画面を使う段階で見直す。

- `*_history_id`と`*_id`の対(例: `stakeholder_history_id`と`stakeholder_id`)は、どちらも列のまま。履歴IDをDB側で採番するなら、editから外す。
- `trans_*`への外部キーは、循環を避けるため参照にしていない(親の列のまま)。必要なら、読み込み定義を作って取り込む。
- 明細の削除方式(〔解除〕〔論理削除〕)と順(`sequence`)のタグ、親の絞り込み(`requiredWhere`)は、親のあるページにだけ指定した(明細の位置は`page.md`のとおり)。
- `trans_inspect_sch`の`titles`等はラベル・テキスト(`FlexibleLabelReadFields`等)を取り込んでいる。

## 6. 見つかったviewsの不具合(修正済み)

2節のとおり。既存のGraphQLに出ていなかったもの(ページから使われない共通定義の不整合、`defaultWhere`の誤記)は、生成ツールの拡張で検出できるようになった。
