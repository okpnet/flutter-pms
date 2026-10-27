# 0024・0028・0025(全見出し) 実施ログ(GraphQL更新・モデル再生成・テスト)

指示:
> 0024実行、完了後に0028適用、0025を更新されているかどうかにかかわらず全ての見出しを実行

要件0020(重複スキップ)を適用せず、views.mdの全26見出しを対象に実施した。

## 1. 要件0024の実行

`lib/graphql/schema.graphql`が本環境の`lib/postgraphile/schema.graphql.dart`(2026/09/09生成)より
新しく、環境固有の生成物(要件0015によりgit管理対象外)が最新化されていなかったため、

```
dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"
```

を実行した。947秒で完了(既知のスカラー欠落警告のみ、エラーなし)。`schema.graphql.dart`は
468,000,181バイト(約446MiB)に更新された。

## 2. 要件0028の適用(全read画面への削除フラグ引数追加)

要件0028「クエリは"##見出し"最後尾の列の削除フラグを引数として取る。引数がないときはデフォルトは
false。」に基づき、editを含む全25画面(item_actual_size含む)のread GraphQLに以下を機械的に追加した。

```graphql
query XxxRead(
  ...
  $removed: Boolean = false
) {
  allXxxs(
    ...
    filter: { remove: { equalTo: $removed } }
  ) {
```

追加前は全25画面のうち**1件も**この引数を持っていなかった(確認済み)。`InfoCompanyFilter`等の
`remove: BooleanFilter`がPostgraphileのconnection-filterプラグインで利用可能であることを
`schema.graphql`で確認したうえで、`condition`とは別枠の`filter`引数として実装した。

## 3. views.mdの構造変更に伴うGraphQL更新

| 見出し2 | 内容 |
|---|---|
| `equipment_inspection_operation_editor` | views.mdで`### read`が削除された(編集専用画面、RFEの
  デフォルト規則に委ねる設計)ため、`equipment_inspection_operation_editor_read.graphql`を削除した。
  対応するテスト([test/equipment_inspection_operation_editor_flatten_roundtrip_test.dart](../test/equipment_inspection_operation_editor_flatten_roundtrip_test.dart))から
  readの往復変換テストを削除し、editのみを検証するよう修正した。 |
| `oepration_editer` | 「工程運用課題」が読み取り専用の全配列取得だったのを、views.mdの「工程運用課題id
  (先頭)」「工程運用課題数」のとおり、`mstrOperationTasksByMstrOperationId(first: 1, orderBy:
  [UPDATE_AT_DESC]) { nodes { mstrOperationTaskId } totalCount }`に簡略化した(要件0027の
  「readで配列を読み込まない」に対応)。 |
| `task` | 「工程場所」を同様に`mstrTaskLocationsByMstrTaskId(first: 1, orderBy: [UPDATE_AT_DESC])`
  + `totalCount`へ変更した(ノード自体の詳細フィールドは維持、取得件数のみ先頭1件に限定)。 |

### 3-1. 指摘: `task`の「工程グループid(先頭)」「工程グループ数」は実装していない

views.mdの`task`見出しでは「工程グループid(先頭)」「工程グループ数」という記述に更新されているが、
`schema.graphql`を確認したところ`MstrTask.mstrTaskGroupId`は単純な1対1の直接参照列であり、1対多の
関係は存在しない。「工程場所」と同じ(先頭)/数のパターンが誤って適用された可能性が高いため、
`task_read.graphql`には反映せず、ファイル冒頭のコメントに記録した。**views.md側の記述訂正を推奨する
(「工程グループ数」は削除、「工程グループid(先頭)」は「工程グループid」に戻す)。**

## 4. build_runnerの不具合と対処

全体ビルド(`dart run build_runner build`)を実行したところ、`BuildSeries._writeBuildOutput`で
`Null check operator used on a null value`が2回連続で発生し、生成物が一切書き込まれなかった
(`--delete-conflicting-outputs`という現行build_runnerに存在しないフラグを渡していたことが最初の
原因と誤認したが、フラグを外しても再発)。単一画面への`--build-filter`ビルドで切り分けたところ、
一部画面(`info_company`除く)で同じクラッシュが再現し、その後`info_company`単体も含め**すべての
画面**でクラッシュするようになったことから、**繰り返しのクラッシュにより`.dart_tool/build`の
ビルドキャッシュが破損した**と判断した。

`dart run build_runner clean`でキャッシュをクリア(生成済み`.dart`ファイル自体は保持される)した後、
`dart run build_runner build`を実行したところ、665秒で50件すべての出力が正常に書き込まれた
(`schema.graphql.dart`は内容が同一のため再利用され、49画面分のクエリ・ミューテーションファイルが
再生成された)。

## 5. 検証

- `dart analyze lib test`: 初回はerror 3件(`equipment_inspection_operation_editor_flatten_roundtrip_test.dart`が
  削除済みの`equipment_inspection_operation_editor_read.graphql.dart`を参照していたことによる)。
  同テストファイルを2節のとおり修正し、error・warning 0件を確認(info 12,027件はすべて生成コードの
  既存スタイル指摘)。
- `flutter test`: 初回実行が26分間CPU使用率ほぼ0のままハングしたため強制終了し、原因切り分けのため
  単体・部分実行で正常動作を確認したうえで再実行した。2件が失敗(`oepration_editer_flatten_roundtrip_test.dart`・
  `task_flatten_roundtrip_test.dart`の各read往復変換テスト、`type 'Null' is not a subtype of type 'int'`)。
  3節のクエリ変更で追加された`totalCount`フィールドがテストのモックJSONに無かったことが原因。
  両テストファイルのモックJSONを新しいクエリ形状(先頭1件のみの簡略ノード+`totalCount`)に合わせて
  修正し、最終的に**50件すべて成功**(`All tests passed!`)。

## 6. 結論

- 要件0024・0028は全26見出しに適用済み。
- 要件0025(全見出し実行)としての評価・生成は、views.mdの現状(削除フラグ・(先頭)/(結合)ラベル・
  RFE関連の構造変更)を反映した形で完了した。
- 3-1節の`task`「工程グループ」の記述不整合のみ、views.md側の確認・修正が必要な状態で残っている。
- `dart analyze`・`flutter test`とも成功を確認済み。
