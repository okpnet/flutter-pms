# 0037 実施ログ(独立したkind:RFEの廃止、editの`generateRfe`への統合)

## 経緯

0036の実装過程で、company_pageの「read(表示用)」と「RFE(編集フォームのプリロード用)」の
キー構造が非対称になったことを記録した([docs/0036_language_argument_simplification_log.md](0036_language_argument_simplification_log.md)3節)。
これを受けてユーザーから、この非対称性(および0034ログで見つかった
「`CompanyPageRFE`が対応する`CompanyPageEdit`ではなく無関係な`dictionaryEdit`を
誤って参照していた」事故)の根本原因はkind:RFEというeditと独立した定義を
手書きで維持する構造そのものにあり、「editが常にreadも生成すればRFEを廃止できる
のではないか」という指摘を受けた。

これを受けて設計案を提示し(A: editから自動導出/B: RFEノードを残しつつ`<<: *Edit`を
強制/C: list用readとRFEを1つに統合)、**案A(editの`generateRfe: true`から自動導出、
RFEノードそのものを廃止)を採択**した。

## 技術的前提

GraphQLの仕様上`query`と`mutation`は別々のルート操作型であり、1つの操作(1本のGraphQL
ドキュメント内の1オペレーション)が両方を兼ねることはできない。したがって「editが
文字通りクエリになる」ことは不可能だが、「editの定義(columnsツリー)を単一の情報源にして、
そこからquery/mutationの両方を機械的に導出する」ことは可能であり、これが案Aの実体である。

## 変更内容

### 1. `source/schema.json`

- `$defs.kind`のenumから`"RFE"`を削除(`["read", "edit"]`のみに)。
- 新規`$defs.generateRfe`(真偽値)を追加。「kind:editのノードにのみ意味を持ち、
  trueのとき同一のcolumnsツリーをSELECT対象として解釈したread for editingクエリを
  追加生成する」ことを定義。
- `$defs.node.properties`に`generateRfe`を追加。
- トップレベルの`description`・`kind`・`pagination`・`columnEntry`の説明文からRFEへの
  言及を削除・訂正。

### 2. `source/view.yaml`

- `dictionaryRFE`・`appellationLabelsRFE`・`CompanyPageRFE`の3ノードを削除
  (いずれも対応するEdit定義の`<<: *〇〇Edit`のみを持つ、実質的に空の中継ノードだった)。
- `CompanyPageEdit`に`requiredWhere: [info_company_id]`(従来欠落していた、read for
  editingが1件取得する際に必須の主キー引数の宣言)と`generateRfe: true`を追加。

### 3. `source/27_yaml_to_graphql_conversion_rules.md`

- 1章(kind→操作種別)・2章(from)・7章(edit/RFEでの書き込み対象の表現)からRFEへの
  独立した言及を削除し、editの`generateRfe`に統合。
- 8章「`RFE`の生成方針」を全面的に書き換え、`generateRfe`による自動導出の背景・方針・
  具体的な変換規則(nested mutation記法→SELECT記法の読み替え)を明文化。
- 変更履歴に本件のエントリを追加。

### 4. `CLAUDE.md`

- [画面仕様](../CLAUDE.md#画面仕様)の「RFEはミューテーションを生成するための読み込み用
  クエリ//0033」を見え消しにし、`generateRfe: true`による自動導出方式へ訂正(//0037)。
- [画面仕様命名規則](../CLAUDE.md#画面仕様命名規則)に、`generateRfe`による自動導出ファイルの
  命名規則(トップノードのスネークケース+"_rfe")を追加。
- [要件](../CLAUDE.md#要件)に0037のエントリを追加。

### 5. 生成済みGraphQLファイルのコメント更新(内容そのものは変更なし)

- [lib/graphql/company_page/company_page_edit.graphql](../lib/graphql/company_page/company_page_edit.graphql)・
  [company_page_rfe.graphql](../lib/graphql/company_page/company_page_rfe.graphql)の
  ヘッダーコメントを、新しい`generateRfe`の考え方に合わせて更新した。
  **クエリ本体・モデル生成物は変更していない**(company_page_rfe.graphqlの内容は
  元々`CompanyPageEdit`と同一のcolumnsツリーから作られていたため、`generateRfe`の
  概念上も同一のものとして扱える。再生成は不要と判断した)。

## 未対応・既知の限界

- `source/test.yaml`は`dictionaryRFE`/`appellationLabelsRFE`(`kind: RFE`)をまだ含む。
  同ファイルは`27_yaml_to_graphql_conversion_rules.md`の設計検証のために使われた
  下書き(2026-09-26時点で役目を終えた実験記録、変更履歴参照)であり、`view.yaml`のような
  現行の画面仕様の情報源ではないため、本ログでは意図的に変更していない。ただし
  `# yaml-language-server: $schema=schema.json`を参照しているため、IDE上は
  `kind: RFE`がenum違反として表示され続ける(実害は無いが認識しておくこと)。
- `generateRfe`による「editのnested mutation記法→SELECT記法への読み替え」規則は、
  company_page(唯一の実装例)から抽出した規則を27_yaml_to_graphql_conversion_rules.md
  8章に明文化したが、これは依然として**人間(またはAI)が手作業でGraphQLへ変換する際の
  ガイドライン**であり、自動変換ツールとして実装されたわけではない(要件0033以来の
  制約)。今後、他の画面をgenerateRfe方式で追加する際も、8章の規則に従って
  手作業でRFE相当のクエリを作成する必要がある。
