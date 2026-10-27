# 個別実装の画面 ログ（会社・事業所・部署・職員・承認・資源）

YAML(`packages/model_providers/*_model/gql/`) と DB(`06_cteate_test.sql` の列コメント)に合わせた内容。
サンプル値は `data.extra.js`、画面側の変更は `app.js`。項目の一覧は `node tools/gen-bespoke.js <Page名>` で確認できる。

## 反映した内容（ラベルは DB コメントに合わせた）

| 画面 | YAML ページ / テーブル | 追加・変更した項目 |
|---|---|---|
| 会社 | CompanyPage / info_company | 会社名の読み・略称・ホームページ・備考を追加 |
| 提供 | ProvisionPage / info_provision | 提供コードを追加、「説明」→「詳細」 |
| 事業所 | OfficePage / info_office | 事業所コード・読みを追加、「事業所名」→「事業所名称」 |
| 部署(組織) | DepartmentPage / info_department | 組織コード・読み・事業所を追加、「部署名」→「組織名称」 |
| 役職(役割) | PositionPage / info_position | 読み・順位を追加、「役職名」→「役割名称」、「説明」→「備考」 |
| 職員(担当者) | StaffPage / info_staff | 「社員番号」→「担当者コード」、「氏名」→「名前」、読み・性別・電話・緊急電話・備考を追加 |
| 担当者の力量 | StaffCapabilityPage / mstr_staff_capability | 「習熟度」→「値（習熟度）」 |
| 担当者の資格 | StaffHeldLicensePage / mstr_staff_license | 「取得日」→「適用開始」、「有効期限」→「適用終了」、「登録番号」を削除 |
| 承認パターン | ApprovalOperationPage / mstr_approval_pattern | 「パターン名」→「パターン名称」、読みを追加、「説明」→「備考」 |
| 力量 | CapabilityPage / mstr_capability | 力量コード・読み・詳細・基準・最大・最小・刻みを追加 |
| 資格 | LicensePage / mstr_license | 資格コード・読み・詳細・公的/顧客/内部を追加、「発行元」を削除 |
| 場所 | LocationPage / mstr_location | 場所コード・管理コード・読み・使用を追加、「場所名」→「場所名称」、「説明」→「備考」 |
| 設備分類 | EquipmentCategoryPage / mstr_equipment_kind | 分類コード・読み・適用開始/終了を追加、「分類名」→「分類名称」 |
| 設備 | EquipmentPage / mstr_equipment | 管理コード・表示コードを追加、「分類」→「設備分類」、「設置場所」→「場所」 |
| 点検整備区分 | InspectionKindPage / mstr_inspection_kind | 区分コード・読みを追加、「区分名」→「区分名称」 |
| 点検整備 | InspectionItemPage / mstr_inspection | 点検コード・読み・標準起算日・標準間隔・外部点検整備を追加、「項目名」→「点検名称」 |
| 点検整備運用 | InspectionOperationPage / mstr_inspection_operation | 運用コード・運用名称を追加 |
| 点検整備運用明細 | InspectionEquipentPage / mstr_inspection_operation_task | 「順序」→「順」、起算日・間隔を追加 |
| 点検整備予定 | InspectSchPage / trans_inspect_sch | 管理コード・予定名称を追加 |
| 点検整備予定明細 | InspectSchDetailPage / trans_inspect_sch_detail | 「予定日」→「開始予定日」、終了予定日を追加 |

## 不明な箇所・DB にない項目（既存のまま残してスキップ）

- 会社: 「代表者の役職」は DB に列がない。所在地は `info_address` の複数列（住所1・住所2・建物・電話・FAX）だが、1 つの欄のまま。
- 事業所/部署: 「種別」「在籍人数」は DB の列ではない（種別は区分の値、人数は集計）。住所は `info_address` の複数列を 1 欄で扱っている。
- 部署区分(`info_department_kind_value`): 区分詳細は未追加。
- 割当(`info_assign`): 有効・優先順位・事業所・部署は未追加（役職の割当は担当者のみ）。
- 職員: 「所属事業所」「区分（社員/パート/派遣）」「部署」は `info_staff` にない（割当や別テーブル由来）。
- 承認範囲(`mstr_approval_scope_pattern`): DB は「アクセスパス承認情報」への参照だけで、段階・役職・対象組織・配下を含むかは DB にない。承認できる人(種別・有効期間)も対応する YAML ページが見つからない。
- 力量/資格の保持: 力量の「値」は数値、停止の有無は DB にあるが、画面は段階(見習い…)のまま。資格の停止/取り消しは未追加。
- 点検整備: 「対象部位」「判定基準」、算式の「算式名・単位・基準値」、運用の「周期」、予定の「予定月」「状態」は DB にない。点検実績(`inspRec`)は対応する YAML が無いので触っていない。
- 設備: 「設備名」は品目(`mstr_item`)の名称、「設置日」「状態」は DB にない。
- 場所: 「種別」は DB にない。
- 読み・略称は `names` の pick（name/pronunciation/nickname）に基づく。略称は事業所・部署などでは未追加（読みのみ）。
- ID 列、更新者、削除フラグは表示しない（更新者・更新日は従来どおり編集不可の欄で表示）。
