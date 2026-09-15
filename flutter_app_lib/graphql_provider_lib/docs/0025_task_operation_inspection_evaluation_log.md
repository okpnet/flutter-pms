# 0025 実施ログ(task/operation/equipment_inspection系9画面の評価・GraphQL作成・モデル生成)

指示: 「0025を実行」

[views.md](../source/views.md)に新たに追加された9見出し(task_group, task, operation,
oepration_editer, equipment_inspection_kind, equipment_inspection,
equipment_inspection_operation, equipment_inspection_operation_editor,
equipment_inspection_peration_task)について、要件0025のとおり評価を行い、エラーが無い見出しは
GraphQL作成・build_runnerによるモデル生成まで実施した。既存17見出し(info_company〜item、
customer/customer_contact/supplier/supplier_contact等)はviews.md側の変更が無かったため、
要件0020により今回の評価対象から除外した(見出し一覧を`grep`で確認済み)。

## 1. 物理型の対応

| 見出し2 | 物理型 |
|---|---|
| task_group | `MstrTaskGroup` |
| task | `MstrTask`(関連: `MstrTaskTree`親子体系、`MstrTaskLocation`場所/設備/供給者) |
| operation | `MstrOperation`(read専用画面) |
| oepration_editer | `MstrOperation`(operationと同一物理テーブル、編集用画面) |
| equipment_inspection_kind | `MstrInspectionKind`(要件0026で新規追加されたテーブル) |
| equipment_inspection | `MstrInspection` |
| equipment_inspection_operation | `MstrInspectionOperation`(read専用画面) |
| equipment_inspection_operation_editor | `MstrInspectionOperation`(同上、編集用画面) |
| equipment_inspection_peration_task | `MstrInspectionOperationTask` |

## 2. ドキュメントの誤記修正(エラー・モレ以外)

以下はviews.md本文を直接修正した。

| 見出し2 | 内容 |
|---|---|
| task | 「工程グループ略称/読み」「場所略称/読み」「使用設備略称/読み」「供給者略称/読み」の
  4組(計8箇所)で、略称の項目に「読み」の説明、読みの項目に「略称」の説明が入れ違って
  記載されていた。入れ替えて修正した。 |
| operation | 「略称」「読み」の説明が同様に入れ違っていたため修正した。 |
| equipment_inspection_kind | read側の項目名が「点検設備区分id/コード」となっていたが、
  スキーマのコメント・他箇所はすべて「点検整備区分」であるため統一した。 |
| equipment_inspection | 「外部点検委託先略称/読み」の説明が入れ違っていたため修正した。 |
| equipment_inspection_peration_task | edit「点検整備運用」の説明が「点検整備運輸マスタの
  オブジェクト」(誤字)になっていたため「点検整備運用マスタのオブジェクト」に修正した。 |

## 3. モレ(IDの出力漏れ・修正済み)

| 見出し2 | 内容 |
|---|---|
| equipment_inspection_operation | `MstrInspectionOperation.mstrEquipmentId`が必須列
  (NOT NULL)だが、read側に「設備id」「設備名」が一切無かった。views.mdのreadへ追加した。 |
| equipment_inspection_operation_editor | 同上。read・editの両方へ「設備id/設備名」
  (read)・「設備」(edit、オブジェクト)を追加した。 |

## 4. エラー(変換不可・生成対象から除外)

### 4-1. `## equipment_inspection` read/edit:「工程id」「工程」(`#task`)

`MstrInspection`型を確認したところ、保持する参照列は`sharedAppellationsId`・
`inspectionKind`(→`MstrInspectionKind`)・`externalInspection`(→`MstrStakeholder`)・
`inspectionFormulaId`(→`MstrInspectionFormula`)・`mstrItemId`(→`MstrItem`)のみで、
`MstrTask`への参照列・関連型は一切存在しない。「工程id」「工程(`#task`)」という記述に
対応する実体が無いため、変換不可能なエラーとして記録する。

また、`MstrInspection.inspectionKind`(点検整備区分)は必須列(NOT NULL)だが、views.mdの
`equipment_inspection`見出しには一切登場しない。本来は必須のモレとして追加すべき項目だが、
上記の「工程」エラーと合わせて見出し全体の設計を見直す必要があると判断し、views.md本文への
自動追加は行わず、本ログに記録するに留めた。

**影響:** `equipment_inspection`は今回のGraphQL生成対象から除外する。

### 4-2. `## equipment_inspection_peration_task`:複数の問題

1.  views.mdのファイル末尾がこの見出しの途中(edit「更新者id」まで)で切れており、
    「更新者履歴id」「削除」が存在しない(他の全見出しには存在する)。
2.  editに「外部点検整備id」「委託先コード/名/読み/略称」があるが、これらは
    `MstrInspectionOperationTask`自身の列ではなく、`mstrInspectionId`経由で参照する
    `MstrInspection.externalInspection`(→`MstrStakeholder`)のそのまた先の情報であり、
    2階層先のテーブルを本テーブルの編集画面から直接編集する設計は既存画面に前例が無く、
    意図が不明である(readのみに残しeditには含めない設計の誤記の可能性が高い)。
3.  editに、必須列である`mstrInspectionId`(点検整備ID)自体への参照が無い。

上記3点はいずれも設計の見直しが必要であり、views.md本文の自動修正は行わず、本ログに記録した。

**影響:** `equipment_inspection_peration_task`は今回のGraphQL生成対象から除外する。

## 5. 提案・設計判断(エラーとしては扱わないが記録)

### 5-1. task:「工程場所」(場所/使用設備/供給者)の多重度

`MstrTaskLocation`は`mstrTaskId`に対して1対多(`mstrTaskLocationsByMstrTaskId`、Connection型)
であり、1つの工程が複数の場所・設備・供給者の組み合わせを持ちうる設計になっている。views.mdは
単一値であるかのように記述しているが(「提供」「品目提供」のように配列であることの明記が無い)、
今回は既存の「提供」「品目提供」と同じ方針(配列のまま取得し、editでは読み取り専用とする)で
実装した。単一値に丸める設計を意図していた場合は、views.mdへの明記を推奨する。

### 5-2. task:「親id」の編集は未対応 → 2026/09/15追記: 対応済み

`MstrTaskTree`(工程体系マスタ)経由の「親id」は、先行実装のorg_res_location(「親場所マスタ」)・
info_department(「親組織情報」)でも編集が未実装のまま据え置かれていたことを確認した
(生成済みGraphQLに該当ミューテーションが無い)。当初はreadのみ実装し、editでの「親id」変更は
対象外としていた。

その後、views.mdのtask editが「親id(idのみセットする)」に更新されたため、対応した。
`MstrTask`自体には親を表す列は無いが、`MstrTaskTree`の逆参照入力型
(`mstrTaskTreesToMstrTaskIdUsingMstrTaskId: MstrTaskTreeFk3InverseInput`)に
`updateByMstrTaskTreeId`(既存tree行の特定id+patchによる更新)があり、そのpatch型
(`updateMstrTaskTreeOnMstrTaskTreeForMstrTaskTreeFk3Patch`)に`parentMstrTaskId`が
含まれることを確認した。これを使い、`task_edit.graphql`へ`$mstrTaskTreeId`
(readで取得済みの、このタスク自身を表すtree行のID)・`$parentMstrTaskId`の2変数を追加し、
`parentMstrTaskId`のみを入れ子更新するよう修正した(「idのみセットする」という要求どおり、
tree行の他の列(名称等)は編集しない)。tree行が存在しないタスク(新規登録直後等)は
本ミューテーションでは対応できない(update専用、create/upsertは対象外という既知の制約は
org_res_location等と同様に残る)。`dart run build_runner build`・`dart analyze`・
`flutter test`で確認済み(51件成功)。

### 5-3. operation:「工数」の集計 → 2026/09/15追記: 設計方針を確定

「参照している工程運用課題が参照している工程の標準時間の合計」はGraphQL側にSUM集計の仕組みが
無い(接続しているプラグインはfilterとnested-mutationsのみ)。各工程運用課題が参照する工程の
標準時間を配列のまま取得し、アプリ側で合計する設計とした。

その後、views.mdの該当項目に「getプロパティで実装」という指示が追加された。これは
GraphQL/モデル生成の変更を求めるものではなく、既に取得済みの配列データ(工程運用課題ごとの
`mstrTaskByMstrTaskId.defaultTime`)から合計値を算出するロジックを、ドメインモデル側
(lib/converters、要件どおりまだ未着手)のgetterプロパティとして実装する、という設計方針の
確定と判断した。GraphQLファイル・キー定数ファイルへは、この設計方針をコメントとして反映した。

## 6. 結論・生成対象の判定

| 見出し2 | 評価結果 | 今回の生成 |
|---|---|---|
| task_group | エラーなし | **生成対象** |
| task | エラーなし(5-1・5-2の設計判断あり) | **生成対象** |
| operation | エラーなし(read専用) | **生成対象** |
| oepration_editer | エラーなし | **生成対象** |
| equipment_inspection_kind | エラーなし(3節の用語統一のみ) | **生成対象** |
| equipment_inspection | エラーあり(4-1) | 見送り |
| equipment_inspection_operation | エラーなし(モレ修正済み、read専用) | **生成対象** |
| equipment_inspection_operation_editor | エラーなし(モレ修正済み) | **生成対象** |
| equipment_inspection_peration_task | エラーあり(4-2) | 見送り |

7見出しでGraphQL作成・build_runner実行・キー定数化・往復変換テストまで実施した(結果は
[docs/0025_task_operation_inspection_generation_log.md](0025_task_operation_inspection_generation_log.md)
を参照)。`equipment_inspection`・`equipment_inspection_peration_task`の2見出しは、
4節のエラーの解消方針(「工程」参照の意図確認、editフィールドの見直し、ファイル末尾の補完)に
ついてユーザーの判断を仰いだ上で再評価する。
