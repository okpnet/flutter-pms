# view.yaml → GraphQL 生成ツール(tool/view_graphql、2026/10/14)

これまで`view.yaml`から`lib/graphql/*.graphql`への変換は、規則(27章)に沿ってClaudeが毎回作成していた。
この変換を、build_runnerで実行できるツールにした。要件番号は未割り当て(提案: 0051)。

## 1. 構成

| ファイル | 役割 |
|---|---|
| `tool/view_graphql/names.dart` | 名前の規則(snake↔camel↔Pascal、ディレクトリ名、生成対象の判定) |
| `tool/view_graphql/yaml_loader.dart` | view.yamlの読み込み。`<<`(マージキー)をキー単位で展開する |
| `tool/view_graphql/schema_index.dart` | 全量スキーマ(`source/schema.full.graphql`)の索引。関連の向き・フィールド名・入力型を求める |
| `tool/view_graphql/read_generator.dart` | kind: read → query。選択セットの組み立ては、edit・RFEと共有する |
| `tool/view_graphql/edit_generator.dart` | kind: edit → mutation、`generateRfe: true` → RFEのquery |
| `tool/view_graphql/generator.dart` | view.yaml全体から、生成対象(~Page / ~PageEdit)ごとに生成する |
| `tool/view_graphql/builder.dart` | build_runnerのBuilder(`build.yaml`の`view_graphql`) |
| `tool/view_graphql/normalize.dart` | 書式・コメント・選択の順序に依存しないGraphQLの比較 |
| `tool/gen_view_graphql.dart` | CLI(同じライブラリを使う) |
| `test/view_graphql_generator_test.dart` | 名前・マージの単体テストと、既存の画面との回帰テスト |

## 2. 使い方

```
dart run build_runner build                      # 生成(source/generated_graphql/ へ出力)と、モデルの生成
dart run tool/gen_view_graphql.dart              # CLI。--only <ノード名>、--yaml <view.yaml>、--out <出力先>
dart run tool/gen_view_graphql.dart --compare <作業ディレクトリ>   # lib/graphql の既存ファイルと正規化して比較
```

- 出力先は`build.yaml`の`view_graphql.options.output_dir`(既定 `source/generated_graphql`。git対象外)。
- 既存の`lib/graphql`は、まだ置き換えていない(コメント入りの手作業の成果物があるため)。
  採用するときは、`source/generated_graphql/<dir>/`のファイルを`lib/graphql/<dir>/`へコピーし、
  CLAUDE.md 4-2節の順(絞り込み → 検索条件の対応表の生成 → build_runner)を続ける。
  この手順で、`operation_page`を生成物に置き換えた(2026/10/14)。
- エラーは警告として出力し、そのノードは生成しない(5-7節)。

## 3. 生成の規則(既存の生成物から読み取り、ツールに実装したもの)

### 3-1. read

- 先頭の変数は`$first`・`$offset`・`$filter`(`filter: true`のとき)・`$orderBy`・`$languageCodeId`・`$removed`。
- ルートは`filter: { and: [{ remove: { equalTo: $removed } }, $filter] }`(4-5節)。入れ子の`defaultWhere`の`remove`は、
  1対多で`filter: { remove: { equalTo: false } }`の固定値にする(27章4節)。
- 関連の向きとフィールド名は、全量スキーマから求める(`using`は親側のFK列、または子側のFK列)。
  `toMany`はコネクション、`toFirstOne`は単数フィールドを優先する。内向きの`toFirstOne`は`first: 1`。
- `output: false`の子(表示言語の絞り込み)は、親のコネクションの`condition`に変換する(27章4-1節)。
- 単数の関連は主キーを必ず含める。ルートの`update_at`の後に`remove`を足す(defaultWhereに`remove`があるとき)。
- オブジェクト型の列(`Interval`)は、構成する値(years〜seconds)をすべて選択する。
- 1対多の`pagination: true`は`$<名前>First`/`$<名前>Offset`(`limit`が既定値)。

### 3-2. edit

- 更新対象は`requiredWhere`(主キー)。ミューテーション名は`update<型>By<列>`、結果は`<型の先頭小文字>`。
- 監査列(`update_at`/`update_user_id`/`update_user_history_id`/`remove`)は引数・Patch・結果に含めない(0048)。
- `editable: false`(readを参照)の子は、親側のFK列だけをPatchに含め、結果ではFK列と子の中身をja/enで返す(0047)。
- `editable: true`の外向きの1対1は、入れ子の`updateBy<主キー>`で更新する。引数名は、関係の名前を接頭辞に連ねる
  (`labels`と`address`は連ねない。例: `ceo`+`name`+`Ja` → `ceoNameJa`)。
- 言語別の値を持つ1対多(`shared_language_code_id`を列に持つ)は、`deleteOthers: true`+`create`(ja/en)。引数は`<接頭辞>Ja`/`En`。
- それ以外の1対多は、標準の入れ子書き込み型を`$<名前>Update`/`Create`/`Delete`のリストの変数にする。
- 呼称・辞書・テキストの`remarks`は、Patch・結果に含めない。
- 解釈できない構成(内向きの1対1を入れ子で更新する子など)は、エラーにする(`DepartmentPageEdit.parent`・`kinds`)。

### 3-3. RFE

- `<型>By<主キー>`のquery。edit用の選択セットに、ルートの監査列を足す。
- 1対多は`first: $<名前>First`(既定30、5-6節)。列に`sequence`があり`SEQUENCE_ASC`があれば`orderBy: SEQUENCE_ASC`(page.md 明細)。

## 4. 検証の結果

既存の`lib/graphql`(54ファイル)と、現在のview.yamlからの生成物を、正規化して比較した。

- **36ファイルが一致**(回帰テストで固定: `test/view_graphql_generator_test.dart`)。
- 14ファイルが差分あり。原因はすべてview.yaml側(または、view.yamlより古い既存ファイル)で、ツールの不具合ではない:

| 画面 | 差分の原因 |
|---|---|
| office_page(read・edit・rfe) | 別名`bill_name`(既存は`billName`)。`AddressReadFields`に`remarks`/`update_at`/`remove`が無い。edit・rfeは`AddressEditFields`の`remarks`、`OfficePageEdit`の`code`/`info_company_id`が既存に無い |
| company_page(read・edit・rfe) | 同上。`offices`に`pagination: true`が無い(既存は`$officesFirst`)。editの子は`provision`(既存は`provisions`)。editの`symbol`が既存にあるがview.yamlに無い |
| department_page(read) | 同上。`descendants`(0049で関連が追加)と、`kinds`の`remove`など |
| position_page(read) | `PositionPage`に`filter: true`が無い(既存は`$filter`あり) |
| staff_page・capability_page・license_page・item_kind_page(edit) | view.yamlに`code`/`info_company_id`があるが、既存のeditに無い |
| spec_measurement_page(edit・rfe) | 既存は0048より前の単一言語(`$languageCodeId`)。現在の規則はja/en |

これらは「view.yaml、または既存のGraphQLのどちらを正とするか」の判断が必要。ツールは、view.yamlを正として出力する。

## 5. 見つかったview.yamlの不具合

- 修正した(明らかな誤字。AppellationLabels系のnameがasと食い違い、引数名が`pronunciationeJa`等になるため):
  `name: pronunciatione` → `pronunciation`、`name: npronunciatione` → `pronunciation`、`name: nicknam` → `nickname`。
- 未修正(定義の判断が必要):
  - `LocationPage.parent`の列`mmstr_location_tree_idd`、`FlexibleTextEditFields`の列`ttrans_text_value_idd`
  - `FlexibleTextReadFields`の`from: trans_label_value`(`trans_text_value`の誤りか)
  - `ItemPage`の`increment`・`lot`・`stock_quantity`、`ItemSizePage`の`details`(スキーマに無い列)
  - `from`が無い共有定義の取り込み(`EquipmentPage.item`、`InspectionOperationPage.equipments.item`、`TaskResourcePage.departments`など)
  - `ProvisionPageEdit`の`from`が無い

## 6. 制約・今後

- 長いスキーマ(24MB)の解析に数秒かかる。Builderは実行のたびに解析する。
- 生成物の書式は、既存の手作業のものと完全には同じではない(コメントの量、空行)。意味(正規化したAST)の一致で検証している。
- 内向きの1対1の入れ子更新(`DepartmentPageEdit.parent`・`kinds`)は未対応。必要になったら規則を決めて実装する。
- 規則の根拠を27章に反映し、要件番号を割り当てる(CLAUDE.md への追記を含む)。
