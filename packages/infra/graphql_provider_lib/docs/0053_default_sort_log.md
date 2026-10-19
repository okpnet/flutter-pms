# 要件0053: defaultSort(並び順の既定値)(2026/10/15)

## 1. 確認(view.yamlに並び順の指定があるか)
- `source/views/`にソートの指定は無かった(`defaultSort`・`orderBy`・`sort`のいずれも無し)。
- 生成ツールが固定で付けていた並び順:
  - トップ(read): `$orderBy: [<テーブル>sOrderBy!] = [PRIMARY_KEY_ASC]`(引数あり)。
  - 1対多: 列に`sequence`があれば`orderBy: SEQUENCE_ASC`(引数なし・固定)。無ければ並び順なし(引数なし)。
  - edit(ミューテーション): 並び順なし。

## 2. 追加した仕様(27章6-9節)
- `defaultSort`: `asc` / `desc` / `none`(標準、省略可)。`node`(kind: read)と`columnEntry`(toMany)。
- 並び順の引数は必ず生成する。トップ: `$orderBy`、1対多: `$<子の出力名>OrderBy`。
- `defaultSort`は引数の既定値(`asc`/`desc`のとき`= [PRIMARY_KEY_ASC]`や`[SEQUENCE_DESC]`等。`none`は既定値なし)。引数を指定するとdefaultSortは無効、`null`を渡すと並べない。
- 並べる列: トップは主キー、1対多は`sequence`があれば`sequence`、無ければ主キー。
- 不正な値、およびスキーマに無い並び順はエラー。`sequence`があるのに`none`の1対多は警告。

## 3. 変更
| 対象 | 内容 |
|---|---|
| `source/schema.json` | `defaultSort`を追加(nodeとcolumnEntry) |
| `tool/view_graphql/read_generator.dart` | トップの`$orderBy`の既定値をdefaultSortから求める。1対多に`$<名>OrderBy`を追加(固定の`SEQUENCE_ASC`を廃止) |
| `source/views/**` | `kind: read`の`~Page`35ノードと`OperationPageEdit.operationTasks`に`defaultSort: asc`を指定(従来の挙動を維持) |
| `test/view_graphql_generator_test.dart` | defaultSortのテスト(asc/desc/none/省略/不正値)を追加 |
| `test/support/rfe_edit_conversion.dart` | RFEの環境引数の値を作る処理を、リスト型(`[XOrderBy!]`)に対応させた |
| `lib/graphql`(6ファイル) | 生成物で置き換えた(下記) |

## 4. 生成物と利用側への影響
- トップの`$orderBy`は変わらない(`[PRIMARY_KEY_ASC]`のまま)。
- 1対多に変数が増えた。
  - `operation_page_edit`・`operation_page_rfe`: `$operationTasksOrderBy: [MstrOperationTasksOrderBy!] = [SEQUENCE_ASC]`(従来の固定`SEQUENCE_ASC`と同じ結果)。
  - `capable_staff_page_read`・`license_holders_page_read`・`staff_capability_page_read`・`staff_held_license_page_read`: 1対多(`staff_capability`等)に`$<名>OrderBy: [...OrderBy!]`(既定値なし。従来も並び順なし)。
- 変数を渡さない呼び出しは、従来と同じ結果になる。`null`を渡すと並べない。
- `lib/graphql`に採用したのは、生成物と回帰テストで一致していた画面(上の6ファイル)だけ。ほかの既存の画面は、view.yamlとの差分が別の理由で未決のため、置き換えていない。そのため、それらの1対多には並び順の引数がまだ無い。

## 5. 実行(CLAUDE.md 4-2節の順)
view.yaml→GraphQLの生成 → 絞り込み(256入力型) → 検索条件の対応表(19ファイル) → build_runner(58ファイル) → `flutter test --no-pub`(158件成功)。

## 6. 判断が必要な点
- 「`none`が標準」のため、`defaultSort`を指定しない`~Page`は並び順の既定値が無くなる。従来の挙動(主キー昇順)を保つため、既存のページには`asc`を指定した。主キー順は画面上は意味のある順序ではないので、必要なページは別の列・`none`への変更を検討する。
- 並べる列は主キーまたは`sequence`に限った。任意の列(名前順など)で並べるには、`defaultSort`の拡張(列の指定)が必要。
## 7. 追加の要件(4・5)と変更(ユーザーの採択を受けて)
- 採択: ①`none`は主キー順で問題ない(`defaultSort: asc`の一括指定は不要)、②任意の列で並べられるよう拡張する。
- 定義(正): `defaultSort`の入れ子で`sortColumns`を指定する。YAMLでは`defaultSort: asc`の下に子を置けないため、`asc`/`desc`をキーにする。
  ```yaml
  defaultSort:
    asc:           # または desc
      sortColumns:
        - 列名1
        - 列名2
  ```
  - 最初の実装は、`defaultSort: asc`と`sortColumns`を同じ階層に並べていた(認識の違い)。ユーザーの指摘で入れ子に改めた。同じ階層の`sortColumns`、文字列の`defaultSort: asc/desc`(旧形式)は、エラーにする。
  - ascとdescは同時に指定できない(両方書くとエラー)。省略・`none`は並べない。
  - `sortColumns`がnull・空・省略(`asc:`だけ等)のときはnoneと同義。
  - 列名はこのノードの列(snake_case、主キーは`primary_key`)。関連先の列は、PostGraphileの`orderBy`に無いためエラー(filterと違い、子の関連の列では並べられない)。
- 従来の暗黙の既定値(トップの`PRIMARY_KEY_ASC`、1対多の`SEQUENCE_ASC`)は廃止した。
  - view.yaml: `~Page`35ノードの`defaultSort: asc`を削除した。`OperationPageEdit.operationTasks`は`defaultSort: { asc: { sortColumns: [sequence] } }`。
  - 生成物: トップの`$orderBy`の既定値が無くなった。`lib/graphql`は、回帰テストが失敗した14ファイルを生成物で置き換えた(差分は並び順の既定値と、選択の順序・コメントのみ)。入れ子への変更後も、生成物は変わらない(`operation_page`は`= [SEQUENCE_ASC]`のまま)。
- `schema.json`: `defaultSort`を`null` / `"none"` / `{asc|desc: {sortColumns}}`(`oneOf`)に変更し、`sortDirection`・`sortColumns`の定義を追加した。`schema.json.help.md`も更新した。
- generator: `_defaultOrder`(`tool/view_graphql/read_generator.dart`)を入れ子の形に対応させ、不正な形のエラーを追加した。
- テスト: 入れ子の形(複数列・primary_key・null/空・none・ascとdescの同時指定・旧形式・不正な列)に差し替えた。
