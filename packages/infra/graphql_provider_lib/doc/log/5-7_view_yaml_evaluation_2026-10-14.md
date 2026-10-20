# view.yaml の評価ログ(CLAUDE.md 5-7節、2026/10/14)

生成は行っていない。変更を含むノードだけを評価した(git diff基準)。
全量スキーマは、2026/10/14に再取得したもの(`source/schema.full.graphql`)を使った。
A5のCSV(`database/仕様/a5m2_*.csv`)は古い。例えば`mstr_operation(_task).details`(shared_textへのFK)はCSVに無いが、スキーマには有る。実在確認はスキーマを正とした。

## 1. 対象ノード

| ノード | 変更 |
|---|---|
| FixTextReadFields | 新規(共通定義、read) |
| FixTextEditFields | 新規(共通定義、edit) |
| TaskReadFields | アンカー`&TaskReadFields`を追加(内容の変更なし) |
| OperationPage | 新規(`operation_page`、read、filter) |
| OperationPageEdit | 新規(`operation_page`、edit、generateRfe) |

## 2. 検査結果

| 項目 | 結果 |
|---|---|
| 命名(接尾辞・kind一致、アンカー名=ノード名) | 問題なし。接尾辞の無いトップノードは無い |
| アンカーの定義順(使用より前に定義されている) | 問題なし |
| `<<: &`の誤記(9-1) | 無し |
| テーブル・列・リレーションの実在 | 下記のとおり。`details`の扱いに問題あり(E1) |
| schema.jsonによる検証 | **未実施**(環境にPythonとjsonschemaが無い)。必要なら別途実施する |

実在を確認したもの: `mstr_operation`(control_code, names, details, symbol, remarks, update_*, remove)、
`mstr_operation_task`(mstr_operation_id, mstr_task_id, sequence, control_code, names, details, remarks, update_*, remove)、
`shared_text`、`shared_text_value`(text_value, shared_language_code_id)。
リレーション: `sharedAppellationByNames`、`sharedTextByDetails`、`mstrTaskByMstrTaskId`、`mstrOperationTasksByMstrOperationId`。

## 3. エラー(修正が必要。該当部分は生成しない)

### E1 OperationPageEdit.operationTasks: 列`details`とリレーション`details`の名前が衝突している

```yaml
        - details              # 列(shared_textへのFK、UUID)
        - name: details        # リレーション(sharedTextByDetails)
          using: details
          <<: *FixTextEditFields
```

- 出力名(`as`が無ければ`name`)が両方`details`になる。RFEでは、同じ応答キー`details`に、スカラーとオブジェクトが衝突する。
- 他のノードの前例は、列と別の名前をリレーションに付けている(`names`列に対して`name: labels`)。
- 修正案: リレーションに別の名前を付ける。例: `name: detailTexts`+`as: detailTexts`。
  あわせて、プレーンの`- details`は削除する(FK列は`using`から出る。editable:falseの子の規則と同じ)。
- 影響: このまま生成すると、operation_page_rfe.graphqlが不正なクエリになる。

## 4. 警告(生成は可能だが確認が必要)

### W1 OperationPage・OperationPageEditのトップに、`details`(共有テキスト)が無い

- `mstr_operation.details`は、子の`mstr_operation_task.details`と同じく、shared_textへのFKである。
- トップの`columns`に`details`も、FixTextReadFields/FixTextEditFieldsも無い。
- 取りこぼしの疑い。意図して省略したなら、それで構わない。
- 意図があるなら、OperationPage(read)にも`details`(FixTextReadFields、`pick`の要否を含む)を足す。
  FixTextReadFieldsは現状どこからも使われていない。

### W2 operationTasksは「明細」の定義(page.md)と食い違う

- page.mdの定義: 明細は`editable: false`。子の追加・編集・削除は子の「XX情報」が担う。
- view.yaml: `operationTasks`は`editable: true`で、親とともに入れ子で編集する。`sequence`も子の本体にある。
- どちらかに揃える必要がある。
  - A: `editable: true`のまま。明細とは呼ばず、親の部品として扱う(page.mdの注記「親とともに編集する子は明細ではない」に沿う)。
  - B: `editable: false`にして、子の編集は`OperationTaskPageEdit`(新設)へ移す。
    この場合`sequence`の置き場所(紐付け側)と、削除方式のタグ(〔論理削除〕)を決める。

### W3 TaskReadFieldsを初めて子として使う

- これまで未使用のアンカーだった。`groups <<: *TaskGroupPage`を含み、言語の引数が深く入る。
- edit・RFEでは、5-5節のja/en引数に読み替わる。実際の読み替えは、生成後に確認する。
- 他の画面での前例(`editable: false`でreadを参照)はあり、規則上は問題ない。

### W4 入れ子書き込みの入力型が、絞り込み(4-2節)で足りなくなる可能性

- `operationTasks`はtoManyで、`CompanyPageEdit.provisions`と同様に、標準の入れ子書き込み型(updateBy/create/delete)を変数として渡す方式になる。
- そのpatchの中で、`sharedAppellationToNames`と共有テキストの入れ子書き込みを行う。
  これは「他テーブルへの入れ子書き込み」にあたる。
- prune_schema.dartの規則に追加が要る可能性が高い(4-2節に従い、生成前に確認する)。

### W5 軽微

- OperationPageEditのコメントが「工程運用の読込」(書込の誤記)。OperationPageと同じ文言。
- トップ・子とも`detail`列は無い(スキーマでは`details`に置き換わっている)。問題なし。

## 5. 問題が無かったもの

- FixTextReadFields・FixTextEditFields: FixLabelReadFields・FixLabelEditFieldsと同型。kind・from・columnsの実在に問題なし。
  Editは`toMany`、Readは`toFirstOne`+`language`(output:false)で、規則どおり。
- OperationPageの`labels`(`using: names`、`pick`)、`update_user`(複合FKの`using`の順序)は、TaskPageと同一。
- OperationPageEditの`requiredWhere`、`generateRfe: true`、`labels`(EditFields)は、他のPageEditと同型。
- `tasks`(`editable: false`+TaskReadFields)は、規則6-8節に沿っている。

## 6. 次の手順

E1を修正(W1・W2・W4の判断を含む)→ 再評価 → GraphQLの生成 → 絞り込み → build_runner → テスト、の順(5-7節)。

## 7. 判断と対応(2026/10/14)

| 項目 | 判断 | 対応 |
|---|---|---|
| E1 | 修正 | `operationTasks`の`- details`(列)を削除し、リレーションを`detailTexts`へ改名した(`using: details`、FixTextEditFields) |
| W1 | モレ・要修正 | OperationPageEditのトップに`detailTexts`(FixTextEditFields)を追加。OperationPageにも`detailTexts`(FixTextReadFields、`as: detailTexts`)を追加 |
| W2 | A採択 | `operationTasks`は`editable: true`のまま、親の部品として扱う。子のTask(`tasks`)は変更しない |
| W3 | 採択 | 生成後に言語引数の読み替えを確認する |
| W4 | 採択 | 生成前に、prune_schema.dartの規則へ入れ子書き込み(共有テキスト・呼称)の追加が要るか確認する |
| W5 | 対応 | OperationPageEditのコメントを「工程運用の書込」に直した |

再評価と生成は未実施。

## 8. 生成の準備中に見つかった追加のエラー(E2)

### E2 TaskReadFields(およびTaskPage・TaskPageEdit)の列`detail`が、スキーマに存在しない

- 2026/10/14に再取得したスキーマでは、`mstr_task`に`detail`は無く、`details`(shared_textへのFK、UUID)に置き換わっている(`MstrTask.details`、`sharedTextByDetails`)。
- view.yamlのTaskReadFields・TaskPage・TaskPageEditは、`- detail`と書いている。
- 5章の評価では、古いA5のCSV(`detail` VARCHAR)で確認したため、見落とした。
- TaskReadFieldsは、`OperationPageEdit.operationTasks.tasks`の子として使うため、このままでは`operation_page`を生成できない。
- 修正案(OperationPageのW1と同じ形): `- detail`を、`name: detailTexts`(FixTextReadFields/FixTextEditFields、`using: details`)に置き換える。

## 9. 生成の実施(2026/10/14)

| 項目 | 内容 |
|---|---|
| E2の修正 | TaskReadFields・TaskPage・TaskPageEditの`- detail`を`detailTexts`(FixText*、`using: details`)に置き換えた(A採択) |
| 生成したGraphQL | `lib/graphql/operation_page/operation_page_{read,edit,rfe}.graphql`(生成ツールが無いため、スクリプトで組み立てた) |
| 修正 | `tasks.defaultTime`は`Interval`型(オブジェクト)のため、`years/months/days/hours/minutes/seconds`を選択するようにした |
| 絞り込み(4-2) | 入力型215→241。W4の入れ子書き込み(共有テキスト・工程運用明細)の入力型は、規則の追加なしで残った |
| 対応表(4-5) | `lib/contents/operation_page_filter_spec.dart`を生成(`detailTexts||value||textValue`は`some`で、言語の条件を加える) |
| build_runner | 58入力、28秒。5000KBを超える生成物なし(operation_page: edit 1.5MB、rfe 1.4MB、read 0.3MB) |
| テスト | `test/operation_page_flatten_roundtrip_test.dart`を新設。`rfe_edit_interconversion_test.dart`と`flat_filter_converter_test.dart`に登録。全109件通過 |

未対応: `lib/contents/operation_page_keyname.dart`(平坦化キーの定数、5-6節)。他の画面では手書きで、一部の列のみ。
Task系(TaskPage・TaskPageEdit・TaskGroup系等)のGraphQLは未生成。
