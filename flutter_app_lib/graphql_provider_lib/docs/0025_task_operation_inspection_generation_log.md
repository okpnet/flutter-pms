# 0025 実施ログ(task/operation/equipment_inspection系7画面のGraphQL作成・モデル生成)

評価内容は
[docs/0025_task_operation_inspection_evaluation_log.md](0025_task_operation_inspection_evaluation_log.md)
を参照。本ログはエラー無しと判定した7見出し(task_group, task, operation, oepration_editer,
equipment_inspection_kind, equipment_inspection_operation, equipment_inspection_operation_editor)
のGraphQL作成・build_runner実行・キー定数化・往復変換テストの結果を記録する。

## 1. 作成したGraphQLファイル

| 見出し2 | ファイル | 実スキーマの型名 |
|---|---|---|
| task_group | lib/graphql/task_group/task_group_read.graphql, task_group_edit.graphql | MstrTaskGroup |
| task | lib/graphql/task/task_read.graphql, task_edit.graphql | MstrTask |
| operation | lib/graphql/operation/operation_read.graphql(read専用) | MstrOperation |
| oepration_editer | lib/graphql/oepration_editer/oepration_editer_read.graphql, oepration_editer_edit.graphql | MstrOperation |
| equipment_inspection_kind | lib/graphql/equipment_inspection_kind/equipment_inspection_kind_read.graphql, equipment_inspection_kind_edit.graphql | MstrInspectionKind |
| equipment_inspection_operation | lib/graphql/equipment_inspection_operation/equipment_inspection_operation_read.graphql(read専用) | MstrInspectionOperation |
| equipment_inspection_operation_editor | lib/graphql/equipment_inspection_operation_editor/equipment_inspection_operation_editor_read.graphql, equipment_inspection_operation_editor_edit.graphql | MstrInspectionOperation |

併せて、[lib/contents/](../lib/contents/)配下に画面ごとのキー定数クラス
(`<見出し2>_keyname.dart`、要件0018)を7件作成した。

## 2. build_runner実行中に判明した問題と対処

### 2-1. Interval型(標準時間等)をミューテーション変数に使うとコード生成が失敗する

1回目の`dart run build_runner build`で、`task_edit.graphql`のみ以下のエラーで失敗した
(他46件は成功)。

```
E graphql_codegen on lib/graphql/task/task_edit.graphql:
  Bad state: Failed to generate type for Interval.
```

調査の結果、Postgres の`interval`型はPostgraphileにより**出力用の`Interval`型**
(`seconds`/`minutes`/`hours`/`days`/`months`/`years`を持つ通常のオブジェクト型)と
**入力用の別の`IntervalInput`型**に分かれて生成されることが判明した(`scalar Interval`の宣言は
存在しない)。`task_edit.graphql`のミューテーション変数を誤って`$defaultTime: Interval`
(出力用の型)としていたため失敗していた。`$defaultTime: IntervalInput`に修正し、再度
`dart run build_runner build`を実行したところ成功した(`wrote 47 outputs`)。

### 2-2. Interval型はオブジェクト型のためサブセレクションが必須

上記の修正でビルド自体は通ったが、`flutter test`で`task_flatten_roundtrip_test.dart`の
2件が失敗した。原因は、`Interval`がスカラーではなく本物のオブジェクト型であるにも関わらず、
`task_read.graphql`・`task_edit.graphql`・`operation_read.graphql`・
`oepration_editer_read.graphql`・`equipment_inspection_operation_editor_read.graphql`の
5ファイルで`defaultTime`/`defaultInterval`/`timeInterval`をサブセレクション無しの単純フィールド
として記述していたこと。GraphQLの仕様上、オブジェクト型フィールドの選択にはサブセレクションが
必須だが、graphql_codegenは警告を出さずに空のクラス(`toJson()`が`{}`を返す)を生成してしまう
ため、ビルド時には気付けなかった。該当5ファイルすべてに
`{ seconds minutes hours days months years }`のサブセレクションを追加し、再ビルドしたところ
テストが成功した(往復変換テストで発見できたこと自体が、要件0018「モデル別のテストを作成する」
の効果と言える)。

## 3. build_runner実行結果(最終)

```
dart run build_runner build
```
最終結果: `Built with build_runner/aot in 266s; wrote 47 outputs.`(エラー無し。警告は
BigFloat/Date/Datetime/UUID/JSON/Cursorスカラーのstring代替のみで、既知の警告と同種)。

## 4. 往復変換テスト

要件0018に従い、7画面分の`test/<見出し2>_flatten_roundtrip_test.dart`を作成した
(operation・equipment_inspection_operationはread専用画面のためreadのみ)。

```
dart analyze lib test   -> error: 0件, warning: 0件
flutter test             -> All tests passed!(既存35件 + 新規12件 = 47件)
```

## 5. キー定数化時に確認した nested_map_flattener.dart の挙動

`mstrOperationTasksByMstrOperationId { totalCount nodes {...} }`のように`nodes`(または
`edges`)キーを含むMapは、件数や`totalCount`の有無に関わらずConnection形状と判定され、
`flatten()`はその階層を再帰せず丸ごと1つの値として保持する(`nested_map_flattener.dart`の
`_isConnectionShaped`参照)。そのため、当初`||totalCount`・`||nodes`のように分割したキー定数を
用意していたが、実際には分割されないことに気付き、以下のキーへ修正した。

- `operation`: `mstrOperationTasksByMstrOperationId`(1キーで`{totalCount, nodes}`全体)
- `oepration_editer`: `mstrOperationTasksByMstrOperationId`(同上、`nodes`のみ選択)
- `equipment_inspection_operation_editor`: `mstrInspectionOperationTasksByMstrInspectionOperationId`
  (同上)
- `task`: `mstrTaskTreesByMstrTaskId`(`nodes`を選択しているため1キーでまるごと)。一方
  `mstrTaskTreesByParentMstrTaskId`は`totalCount`のみを選択しており`nodes`/`edges`キーを
  持たないため、こちらは想定どおり`||totalCount`に分割される(`equipment_inspection_operation`
  の`mstrInspectionOperationTasksByMstrInspectionOperationId||totalCount`も同様)。

## 6. 未対応事項(既知の制約として記録、評価ログと重複する点を含む)

1.  task「工程場所」(1対多)・oepration_editer/equipment_inspection_operation_editorの
    「工程運用課題」「点検項目」(1対多)は、追加/削除を含む配列の入れ子ミューテーションが
    本バージョンでは未対応。読み取り専用として出力にのみ含めている。
2.  ~~task「親id」(工程体系マスタ)の編集は、先行実装のorg_res_location/info_departmentと同じく
    本バージョンでは未対応。~~ → 2026/09/15追記で対応済み(下記「追記2」参照)。
3.  ~~operation「工数」(標準時間の合計)はGraphQL側にSUM集計が無いため、アプリ側での合計が必要。~~
    → 2026/09/15追記でドメインモデル側のgetterプロパティとして実装する設計を確定
    (下記「追記2」参照)。GraphQL自体はSUM集計に対応していない点は変わらない。

## 追記: equipment_inspection・equipment_inspection_peration_taskの解消・生成(2026/09/15)

見送りとした2見出しについて、views.mdが修正され(「工程id」参照の取り消し線での無効化、
「点検整備区分id」「点検整備id」の追加、「外部点検整備」「点検整備サービス品目id」への
「(表示のための参照)」注記の追加)、docs/0025_task_operation_inspection_evaluation_log.md
4-1節・4-2節のエラーが解消されたことを確認した(検証内容は同ログ末尾を参照)。あわせて
equipment_inspection読みのすぐ下に残っていた空の箇条書き行(取り消し線編集の副産物)を削除し、
「点検整備サービス品目id」にも外部点検整備と同じ「(表示のための参照)」注記を追加して
views.md内の表記を揃えた。

以下2見出しのGraphQL作成・build_runner実行・キー定数化・往復変換テストを実施した。

| 見出し2 | ファイル | 実スキーマの型名 |
|---|---|---|
| equipment_inspection | lib/graphql/equipment_inspection/equipment_inspection_read.graphql, equipment_inspection_edit.graphql | MstrInspection |
| equipment_inspection_peration_task | lib/graphql/equipment_inspection_peration_task/equipment_inspection_peration_task_read.graphql, equipment_inspection_peration_task_edit.graphql | MstrInspectionOperationTask |

`dart run build_runner build` → `Built with build_runner/aot in 215s; wrote 51 outputs.`(エラー無し)。

### テストで判明した問題

`flutter test`で`equipment_inspection_flatten_roundtrip_test.dart`が1件失敗した。原因は
`MstrInspectionFormula.argClass`(要件0026でStringからJSON型に変更された列)で、
schema.graphqlにJSON型のカスタムスカラーマッピングが無いため`Missing scalar JSON. Defaulting
to String`の警告どおり生成モデルは`String?`型になる。テストのfixtureで誤ってMap値
(`{'threshold': 10}`)を渡していたためキャストエラーになった。JSON文字列
(`'{"threshold":10}'`)に修正し、再実行して成功した。

### 最終結果

```
dart analyze lib test   -> error: 0件, warning: 0件
flutter test             -> All tests passed!(51件、既存47件 + 新規4件)
```

これで要件0025のtask/operation/equipment_inspection系9見出しはすべてエラーが解消され、
GraphQL作成・モデル生成まで完了した。

## 追記2: 5-2(taskの親id編集)・5-3(operationの工数集計)の解消(2026/09/15)

評価ログ(docs/0025_task_operation_inspection_evaluation_log.md)5-2節・5-3節で「未対応」と
記録していた2点について、views.mdの更新(「親id(idのみセットする)」「工数」への
「getプロパティで実装」の追加)を受けて対応した。

### task「親id」編集への対応

`MstrTask`自体には親を表す列が無いが、`MstrTaskTree`(工程体系マスタ)の逆参照入力型
`MstrTaskTreeFk3InverseInput`(`mstrTaskTreesToMstrTaskIdUsingMstrTaskId`)に
`updateByMstrTaskTreeId`(既存tree行を特定してpatchする配列型フィールド)があり、その
patch型`updateMstrTaskTreeOnMstrTaskTreeForMstrTaskTreeFk3Patch`に`parentMstrTaskId`が
含まれることをスキーマから確認した。これを使って`task_edit.graphql`を修正した。

- ミューテーション変数に`$mstrTaskTreeId`(readの`mstrTaskTreesByMstrTaskId`先頭ノードから
  得られる、このタスク自身を表すtree行のID)・`$parentMstrTaskId`を追加
- `mstrTaskPatch`内に`mstrTaskTreesToMstrTaskIdUsingMstrTaskId.updateByMstrTaskTreeId`の
  入れ子ミューテーションを追加し、`parentMstrTaskId`のみをパッチ(要求どおり「idのみ
  セットする」、tree行の他の列は編集しない)
- 出力選択にも`mstrTaskTreesByMstrTaskId(first: 1)`を追加し、更新後の親idを確認できるように
  した
- 対象のtree行が存在しないタスク(新規登録直後等)は本ミューテーションでは対応できない
  (update専用。create/upsertは対象外という既知の制約は残る)

`lib/contents/task_keyname.dart`のコメントも、`mstrTaskTreesByMstrTaskId`がread専用ではなく
read/edit共通になった旨を反映した。`test/task_flatten_roundtrip_test.dart`のeditフィクスチャに
`mstrTaskTreesByMstrTaskId`を追加した。

### operation「工数」集計の設計確定

GraphQL側にSUM集計の仕組みが無い点は変わらないが、views.mdの「getプロパティで実装」の指示を
受け、合計値の算出はドメインモデル側(lib/converters、まだ未着手)のgetterプロパティとして
実装する設計であることを`operation_read.graphql`・`lib/contents/operation_keyname.dart`の
コメントに明記した。GraphQL・キー定数ファイル自体の変更は無い。

### 検証結果

```
dart run build_runner build -> Built with build_runner/aot in 211s; wrote 51 outputs.(エラー無し)
dart analyze lib test        -> error: 0件, warning: 0件
flutter test                  -> All tests passed!(51件)
```
