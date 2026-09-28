# 0039 実施ログ(組織階層の子孫数取得 — 列同士の比較・集計の未対応確認とDBビュー方式の採択)

## 指示

> Departmentでは、画面で子孫の数からツリーノードが展開できるかどうか判断します。そのため、
> 子孫数を取得する必要があります。
> 1.以下のyamlにschema.jsonが適用できるか
> 2.それをGraphQLに変換できるか
> 3.現状で再現できないとき、課題としてどれか適切か
>  3.1データベースにビューとして作成
>  3.2 schema.jsonの変更に加えPostgrapileにプラグインを追加
>  3.3 schema.jsonの変更だけ
>  3.4 その他のアプローチ

対象の下書きYAML(`view.yaml`/`test.yaml`のどちらにも未保存、貼り付けのみ):

```yaml
DepartmentHierarchy:
  kind: read
  from: hrchy_info_department
  requiredWhere:
    - ancestor_info_department_id
  defaultWhere:
      - column: remove
        operator: "="
        value: false
      - column: ancestor_info_department_id
        operator: "<>"  #これを再現したい
        value: descendant_info_department_id #columnを指定したい
  columns:
    - ancestor_info_department_id #リレーションシップをとるため
    - count(*) #すべての子孫の数を取得するため、countを再現したい
```

## 1. schema.jsonでの検証結果

- `operator: "<>"`は当時の`operator`enum(`=`,`>`,`<`,`>=`,`<=`,`IN`,`NOT IN`,`LIKE`,
  `NOT LIKE`,`EXISTS`,`NOT EXISTS`)に**含まれておらず、構文エラー**になる。
- `value: descendant_info_department_id`は`whereValue`(文字列等)として型上は通るが、
  「列を参照する」という意味にはならない(列同士の比較を表す機構が存在しない)。
- `columns: - count(*)`は`columnEntry`の単純文字列形式として型上は通るが、集計関数を
  表す機構は存在しない。

## 2. 実スキーマでのGraphQL変換可否

`lib/graphql/schema.graphql`の`HrchyInfoDepartmentCondition`/`Filter`を確認したところ、
各列は固定値との比較のみ対応し、**列同士の比較(`ancestor <> descendant`)を表現する経路が
無い**。またスキーマ全体を検索したが`Aggregate`という文字列は1件もヒットせず、集計
(GROUP BY/COUNT)を提供するプラグイン(`@graphile-contrib/pg-aggregates`等)は
**導入されていない**。つまりYAML/schema.jsonの記法をどう変えても、現在のPostGraphile
スキーマには変換先となる機能が存在しない。

## 3. 対応案の評価と採択

| 案 | 評価 |
|---|---|
| 3.1 DBにビューを作成 | 列比較・集計の両方をSQL側で解決でき、新規プラグイン不要。**採択**。 |
| 3.2 schema.json変更+pg-aggregates導入 | 汎用的だが列比較問題は別途残り、schema.json側の設計コストも大きい。今回は見送り。 |
| 3.3 schema.jsonの変更だけ | 実スキーマに無い機能はYAML側の変更だけでは作り出せないため**単独では実現不可**。 |
| 3.4 クライアント側で算出 | バックエンド変更不要な代替案として提示。ビューを採用する場合は不要。 |

**ユーザーが3.1(DBビュー作成)を選択。**

## 4. 実施内容

### 4-1. `source/schema.json`

`operator`enumに`"<>"`を追加(要件0039)。列同士の比較は依然として表現できないため、
その旨をdescriptionに明記した。

### 4-2. `source/test.yaml`

`departmentDescendantCount`という新規の共有アーム(`&departmentDescendantCount`)を追加。
`from: hrchy_info_department_descendant_count`(未作成のビュー)を対象に、
`ancestor_info_department_id`・`descendant_count`の2列を取得する定義。ビュー側で
`remove=false`・自己参照行の除外を済ませる前提のため、`defaultWhere`は持たない。

現時点では**どの部署ツリー画面からこのアームを使うか(`using`に何を指定するか)は未確定**
(部署ツリー画面のnode定義がまだview.yaml/test.yamlに存在しないため)。

### 4-3. DB側で別途実行が必要なSQL(★本ライブラリはDBアクセス手段を持たないため未実行)

```sql
CREATE VIEW hrchy_info_department_descendant_count AS
SELECT
  ancestor_info_department_id,
  COUNT(*) AS descendant_count
FROM hrchy_info_department
WHERE remove = false
  AND ancestor_info_department_id IS NOT NULL
  AND ancestor_info_department_id <> descendant_info_department_id
GROUP BY ancestor_info_department_id;
```

## 5. 残作業(ユーザー側での対応・今後の課題)

1. 上記SQLをDB(Postgres)へ適用する。
2. 要件0026(schema.graphql再取得)を実行し、`HrchyInfoDepartmentDescendantCount`
   (想定型名、実際の型名・フィールド名はPostGraphileの命名規則に従うため要確認)が
   スキーマに追加されたことを確認する。
3. 部署ツリー画面のnode定義(現時点で未作成)を追加し、`departmentDescendantCount`アームの
   `using`(部署自身のid列名)を確定する。
4. GROUP BYの性質上、子孫が0件の部署(葉ノード)はビューに行が存在しないため、
   `arrayType: toFirstOne`での取得結果は`null`になる。アプリ側(Dart)は
   「取得結果が無い/null」を「子孫数0」として扱う実装にすること(GraphQL変換ルール・
   keynameのコメントに明記しておくことを推奨)。
