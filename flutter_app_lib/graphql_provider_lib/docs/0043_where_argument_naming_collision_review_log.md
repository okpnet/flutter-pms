# 0043 実施ログ(`dictionaryLabel`の`code`引数と祖先列名の衝突リスクのレビュー)

## 指示

> view.yamlのdictionaryLabelを子や孫に配置したとき、dictionaryLabelがとるWhereの引数"code"は
> 親に同名の列が存在する場合があるので、dictionaryLabelに対するWhereである、あるいは親が
> 他の子テーブルの同名の子列をWhereで絞り込むことができるようにschema.jsonをレビューする。

## 調査結果

### 1. 現状の設計とその矛盾

`27_yaml_to_graphql_conversion_rules.md`3-1節は、生成されるGraphQL引数名は
`where`/`requiredWhere`に列挙した列名をそのまま使う(祖先を辿った自動プレフィックスは
行わない)と定めており、複数箇所で同名の引数が必要になる衝突は「YAML/スキーマでは検証せず、
生成時エラーとして検出する」方針だった。衝突を回避したい場合の手段として
「YAMLの`as`(6-3節)を使って引数名を分ける」と書かれていたが、実際には**6-3節の`as`は
出力フィールド名の上書き専用であり、`where`/`requiredWhere`の引数名には一切影響しない**
(`schema.json`の`whereList`は単純な列名の文字列配列で、`as`との接続点が存在しなかった)。
つまり、3-1節が挙げていた回避策は**実際には機能しない、ドキュメント上の矛盾**だった。

### 2. 衝突が起こりうる具体的なケース

- `dictionaryLabel.language`(`requiredWhere: [code]`)を、`appellationLabels`経由で
  name/pronunciation/nicknameの3箇所など複数箇所で使い回す場合。ただし、表示言語コードは
  実務上すべて同じ値を使い回すのが通常のため、GraphQL変数の再利用で衝突自体は起きない
  (`company_page`等の実装で`$languageCodeId`を全箇所で使い回している実例のとおり)。
- **要件0043で新たに指摘された衝突**: `dictionaryLabel`がツリーの深い位置(子・孫)に
  配置され、祖先または兄弟の別ノードが同名の列(例: `office_page`/`staff_page`等マスタ
  テーブル自身が持つ`code`列)を持つ場合。祖先側の`code`列が(現状のように)単なる出力列
  なら衝突しないが、将来その列を`where`/`requiredWhere`としても使いたくなった場合、
  `dictionaryLabel`側の`$code`と衝突する。

現時点で生成済みの5画面では、祖先側の`code`列を`where`/`requiredWhere`として使っている
箇所は無いため、**実際の衝突は発生していない**(潜在的なリスクとしての指摘)。

## 対応: `schema.json`に引数名専用の上書き機構を追加

`where`/`requiredWhere`の要素(`whereEntry`)を、次のいずれかを取れるよう拡張した。

1. 従来通りの単純な文字列(列名。生成される引数名は列名そのまま)。
2. `{column, as}`のオブジェクト(新規)。`as`が生成されるGraphQL引数名を明示的に上書きする。

```yaml
- name: language
  arrayType: toFirstOne
  from: shared_language_code
  output: false
  requiredWhere:
    - column: code
      as: languageCode   # 生成される引数名は $code ではなく $languageCode になる
```

この`as`は、`columnEntry`自身が持つ`as`(6-3節、出力フィールド名の上書き)とは**独立した
別のプロパティ**である(`whereEntry`内の`as`)。出力フィールド名を変えずに引数名だけを
変える、あるいはその逆も、互いに影響せず独立して指定できる。

これにより、指示にあった2つの解決方向は次のように統一的に実現できる。

- 「dictionaryLabelに対するWhereであることが分かるように」→ `dictionaryLabel`側の
  `code`に`as: languageCode`のような分かりやすい別名を与えれば、生成されるGraphQL上でも
  「これはdictionaryLabel(言語コード)向けの引数である」ことが明示される。
- 「親が他の子テーブルの同名の子列をWhereで絞り込むことができるように」→
  祖先側が自分の`code`列を`where`/`requiredWhere`として使いたい場合も、同様に`as`で
  別名を与えれば、`dictionaryLabel`側の`code`引数と衝突せず共存できる。

## 変更したファイル

- `source/schema.json`: `$defs.whereEntry`を新設(`oneOf`で文字列/`{column, as}`
  オブジェクトを許容)、`$defs.whereList`の`items`をこれに変更。
- `source/27_yaml_to_graphql_conversion_rules.md`: 3-1節の矛盾(`as`が引数名を分けられると
  誤って記載していた点)を解消し、新しい`{column, as}`記法と例を追加。変更履歴に追記。

## 未対応・注記

- 現在の`view.yaml`/`test.yaml`の`dictionaryLabel.language`(`requiredWhere: [code]`)は、
  実際の衝突が発生していないため、`{column, as}`形式への書き換えは行っていない(単純な
  文字列形式のままでも引き続き有効)。将来、祖先側の`code`列を`where`/`requiredWhere`として
  使う必要が生じた時点で、衝突する側(通常は`dictionaryLabel`側)に`as`を適用する運用とする。

## 追記1: ユーザーによる適用箇所の誤り(2026-09-29)と修正

ユーザーが`view.yaml`の`LicensePage`(`from: mstr_license`)のルートに
`requiredWhere: [languageCode]`を追加し、再レビューを依頼した。

**問題点**: `requiredWhere`は常に`from`で指定したテーブル自身の実在する列を参照する
仕組みだが、`mstr_license`には`language_code`/`languageCode`という列は存在しない
(`mstr_license.code`はライセンス自身の業務コードで無関係)。このままでは
生成時エラーになる、機能しない追加だった。

**正しい適用箇所**: `dictionaryLabel`は共有アームとして多数の画面(`appellationLabels`
経由で`company_page`・`office_page`・`staff_page`・`department_category`・
`LicensePage`等すべて)から再利用されるため、衝突の解消は**画面ごとではなく
`dictionaryLabel`自身の`value.language`ノード(`from: shared_language_code`、実列`code`)に
1箇所だけ適用すればよい**。個別画面への追記は不要かつ誤り。

**対応**:
- `view.yaml`の`LicensePage`から誤って追加された`requiredWhere: [languageCode]`を削除。
- `view.yaml`の`dictionaryLabel.value.language.requiredWhere`を
  `[code]`(文字列)から`[{column: code, as: languageCode}]`に変更。これにより
  `dictionaryLabel`を経由する全画面で、生成される引数名が一律`$languageCode`
  (祖先の`code`列と衝突しない名前)になる。

`test.yaml`には`dictionaryLabel`の独立コピーが無く(view.yamlの定義を前提とした
断片のため)、追加の修正は不要と判断した。
