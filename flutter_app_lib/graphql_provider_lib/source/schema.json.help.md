# schema.json 属性ヘルプ

`source/schema.json`(view.yaml用JSON Schema)が定義する属性ごとのヘルプ。実際に
`source/view.yaml`で使われている例を示す。schema.jsonをレビュー・変更するたびに
この内容も更新すること(変更履歴はここには残さない。変更の経緯は
`source/27_yaml_to_graphql_conversion_rules.md`の変更履歴、または`docs/`配下の
実施ログを参照)。

読み方の前提: `view.yaml`のトップレベルの各エントリ(`CompanyPage`等)、および
YAMLアンカー(`&name`)で定義される共有アームは、いずれも同じ`node`構造を持つ。
`node`の`columns`配下の要素(`columnEntry`)も、ネストした関係を表すときは
`node`とほぼ同じプロパティ群を持つ(`kind`によるプロパティの出し分けは行わない)。

---

## kind

`node`が表す操作の種類。

| 値 | 意味 |
|---|---|
| `read` | クエリ(SELECT) |
| `edit` | ミューテーション(INSERT/UPDATE) |

要件0037により、独立した`kind: RFE`は廃止した。編集画面のプリロード用の読み込み
専用クエリ(旧RFE)が必要な場合は、`kind: edit`のノードに`generateRfe: true`を
指定する(後述)。

例(`dictionaryLabel`、読み込み専用の共有アーム):
```yaml
dictionaryLabel: &dictionaryLabel
  kind: read
  from: shared_dictionary
```

例(`CompanyPageEdit`、ミューテーション):
```yaml
CompanyPageEdit:
  kind: edit
  from: info_company
```

---

## from

この定義が対象とする主たるテーブル名(スネークケース)。省略可能(省略時は
生成側が文脈から推測する)。実在性はここでは検証しない(生成時エラー)。

例(`CompanyPage`):
```yaml
CompanyPage:
  kind: read
  from: info_company
```

`columnEntry`(ネストした関係)でも同じ意味で使う。例(`DepartmentPage.parent`、
`info_department`から`info_department_tree`への関係):
```yaml
- name: parent
  arrayType: toFirstOne
  as: parent
  using: info_department_id
  from: info_department_tree
  columns:
    - info_department_tree_id
    - parent_info_department_id
```

---

## where / requiredWhere

呼び出し側がGraphQL引数として値を渡す列名の配列。値そのものはYAMLに書かない
(列名だけを列挙する)。

- `where`: 任意引数。呼び出し側が省略すれば、その条件は適用されない。
- `requiredWhere`: 必須引数。呼び出し側は必ず値を渡す。

引数名は列挙した列名をそのまま使う(祖先の`as`/`name`によるプレフィックス付与は
行わない)。同じ引数名が複数箇所で必要になる場合の衝突は検証せず、生成時エラーと
する。

`arrayType: toFirstOne`を持つ`columnEntry`(単数リレーション)上の`where`/
`requiredWhere`は、そのcolumnEntry自身をPostGraphile標準の`condition`/`filter`で
直接絞り込むことはできない(単数リレーションフィールドには絞り込み引数が
存在しないため)。代わりに「`using`が指す親の列の値を、`from`に対して外部で
一意に検索するためのWHERE句一式」として扱う
(`27_yaml_to_graphql_conversion_rules.md` 4-1節)。

例(`dictionaryLabel.value.language`、`requiredWhere`。`code`は呼び出し側が
必ず指定する):
```yaml
- name: language
  arrayType: toFirstOne
  from: shared_language_code
  output: false
  requiredWhere:
    - code
```

例(`appellationLabelsEdit`、`requiredWhere`。更新対象自身のPKを指定する):
```yaml
appellationLabelsEdit: &appellationLabelsEdit
  kind: edit
  from: shared_appellations
  requiredWhere:
    - shared_appellations_id
```

`where`(任意引数)は現時点で`view.yaml`に使用例が無い。書き方は`requiredWhere`と
同じで、キーを`where`に置き換えるだけでよい。

---

## defaultWhere

呼び出し側に公開しない、常に適用される固定条件。配列で、各要素は
`column`(列名)・`operator`(比較演算子)・`value`(値)を持つ。

`operator`に使える値: `=` `>` `<` `>=` `<=` `IN` `NOT IN` `LIKE` `NOT LIKE`
`EXISTS` `NOT EXISTS`。`EXISTS`/`NOT EXISTS`のときは`value`をSELECT文を表す
文字列として扱う(現時点で`view.yaml`に使用例は無い)。

典型例: 論理削除フラグ(`remove = false`)などの固定ガード条件。

例(`dictionaryLabel`、`shared_dictionary`自身への固定条件):
```yaml
dictionaryLabel: &dictionaryLabel
  kind: read
  from: shared_dictionary
  defaultWhere:
    - column: remove
      operator: "="
      value: false
```

`arrayType: toFirstOne`を持つ単数リレーション上の`defaultWhere`は、GraphQLの
`condition`/`filter`引数としては再現できない(単数リレーションに絞り込み引数が
存在しないため)。これは問題ではなく想定通りの挙動であり、`defaultWhere`は
元々「呼び出し側に公開しない」ものなので、生成されるSQL/リゾルバ側に
ハードコードされれば良い。例(`CompanyPage.address`、`info_company→info_address`の
単数リレーション上の`defaultWhere`。GraphQL引数としては実現されない):
```yaml
- name: address
  as: address
  arrayType: toFirstOne
  using: info_address_id
  <<: *addressFields
  defaultWhere:
    - column: remove
      operator: "="
      value: false
```

`where`/`requiredWhere`と同じ`arrayType: toFirstOne`上にある場合、`defaultWhere`は
「`using`が指す親の列の値を外部で一意に検索するためのWHERE句一式」の一部としても
扱われる(`dictionaryLabel.value.language`の`remove = false`を参照)。

---

## condition

真偽値。`true`のとき、GraphQL変換時にPostGraphile標準のNull許容`condition`引数を
クエリ/ミューテーションの引数シグネチャに追加する。値の中身はYAML側では一切
表現しない(既に`where`/`requiredWhere`/`defaultWhere`で条件を表現できるため)。
省略時(`false`と同義)は`condition`引数自体を生成しない。

例(`CompanyPage`、トップレベルの一覧クエリ):
```yaml
CompanyPage:
  kind: read
  from: info_company
  condition: true
```

`arrayType: toFirstOne`(単数リレーション)上の`condition: true`は、`defaultWhere`と
同じ理由で実現されない(無害だが無効)。`DepartmentPage.office`(`<<: *OfficePage`
経由でネストした位置に`condition: true`を継承するが、単数リレーションのため
無効)を参照。

---

## limit / offset / pagination

1対多(`arrayType: toMany`)の取得件数を制御する3点セット。

- `limit`: 取得数。`pagination`を指定しない場合はYAML定義時点で固定される値
  (呼び出し側には公開されない)。
- `offset`: 取得開始位置(スキップする件数)。`limit`と対になる固定値。
- `pagination`: 真偽値。`true`のとき、PostGraphile標準のページネーション引数
  (`first`/`offset`、またはRelay形式の`first`/`last`/`before`/`after`)を
  呼び出し側の引数として公開する。省略時は`limit`/`offset`が固定値のまま使われる
  (従来通り)。`kind`を問わず、`arrayType: toMany`を持つ`node`/`columnEntry`
  であればどこにでも指定できる。

例(`CompanyPage.offices`、`limit`のみ。呼び出し側には公開されない固定50件):
```yaml
- name: offices
  arrayType: toMany
  limit: 50
  <<: *OfficePage
```

`pagination: true`は現時点で`view.yaml`に使用例が無い。指定するとこうなる
(`27_yaml_to_graphql_conversion_rules.md` 6-6節より、イメージ):
```yaml
- name: offices
  arrayType: toMany
  from: info_office
  pagination: true   # first/offsetを呼び出し側の引数にする
  limit: 50           # 呼び出し側が省略した場合のデフォルト
  offset: 0
```

---

## generateRfe

真偽値。`kind: edit`のノード(トップレベルの画面ノードを想定。`columnEntry`には
無い)にのみ意味を持つ。`true`のとき、このeditノードと全く同じ`columns`ツリーを、
書き込み対象としてではなく単純なSELECT対象として解釈した「read for editing
(旧RFE)」クエリを追加生成する。`requiredWhere`で指定した列(通常は主キー)を
必須引数として1件取得する読み込み専用クエリになる。要件0037により、独立した
`kind: RFE`ノードを手書きで維持する方式を廃止し、editとread for editingが
構造的に乖離するリスクを無くすために導入した。

ファイル名は「トップノードのスネークケース」+`_rfe`(例:
`CompanyPageEdit`→`company_page_rfe.graphql`。`_edit`は付けない)。

例(`CompanyPageEdit`):
```yaml
CompanyPageEdit:
  kind: edit
  from: info_company
  requiredWhere:
    - info_company_id
  generateRfe: true
```

---

## columns / columnEntry

`columns`は`columnEntry`の配列。各要素は次のいずれか。

1. **プレーンな文字列** — 単純なスカラー列。そのままGraphQLの選択セット
   (`read`)または書き込み対象列(`edit`)になる。
   ```yaml
   - info_company_id
   - web_page
   ```
2. **オブジェクト形式**(`name`が必須) — ネストした関係、または列名と出力名を
   分けたい場合に使う。`arrayType`を持てば関係(JOIN)を表す。

`columnEntry`オブジェクトが持てるプロパティ: `name`・`as`・`arrayType`・`kind`・
`from`・`using`・`requiredWhere`・`where`・`defaultWhere`・`condition`・
`columns`・`pick`・`output`・`limit`・`offset`・`pagination`・`editTables`
(`generateRfe`は含まない。トップレベルのnodeにのみ意味を持つため)。

`name`は結合・マージ元を識別するための識別子(YAMLアンカーで共有アームを
再利用する際の目印)。実際にGraphQLへ現れるフィールド名は`as`があればその値、
無ければ`name`をそのまま使う。

例(`CompanyPage.ceo`、`name`と`as`を分けている):
```yaml
- name: ceo
  as: ceo_labels
  arrayType: toFirstOne
  using: ceo
  pick:
    - name
    - pronunciation
    - nickname
  <<: *appellationLabels
```

---

## as

`columnEntry`の出力時のエイリアス(別名)。省略時は`name`がそのまま出力
フィールド名になる。共有(参照)定義をYAMLアンカーで複数箇所に使い回す際、
出力フィールド名の重複を避けるために使う。

例(`addressFields`、`bill`列を`bill_name`という出力名にする):
```yaml
- name: bill
  as: bill_name
  using: bill
  arrayType: toFirstOne
  pick:
    - name
    - pronunciation
    - nickname
  <<: *appellationLabels
```

---

## arrayType

`columnEntry`が`from`を伴うネストした関係を持つとき、その関係の返し方を指定する。

| 値 | 意味 |
|---|---|
| `toMany` | 複数件のコレクション(Relay Connection、`nodes`/`edges`/`pageInfo`/`totalCount`)として返す |
| `toFirstOne` | コレクションの先頭要素のみを採用し、単一オブジェクトとして返す |

1対1相当かどうかの実際の制約(FK/UNIQUE)はここでは検証しない(生成時エラー)。

例(`toFirstOne`、`CompanyPage.address`。`info_company→info_address`は
1件のみ):
```yaml
- name: address
  as: address
  arrayType: toFirstOne
  using: info_address_id
  <<: *addressFields
```

例(`toMany`、`DepartmentPage.kinds`。`info_department→info_department_kind`は
複数件):
```yaml
- name: kinds
  arrayType: toMany
  using: info_department_id
  from: info_department_kind
  columns:
    - info_department_kind_id
```

---

## using

結合元(この`columnEntry`/`editTableEntry`を含む側のテーブル)が持つ、`from`への
結合に使うFK列名。

- **単一列のFK**: 文字列で指定する。
- **複合(2列以上)FK**: 文字列の配列で指定する。配列の要素の並び順は、実スキーマ
  (`lib/graphql/schema.graphql`)が生成する複合FKのGraphQLフィールド名の列順と
  一致させること(要件0038)。この列順はテーブルごとの実際のFK制約定義に
  依存するため、生成のたびに実スキーマのフィールド名と突き合わせて確認する。

1つのテーブル間に複数のFKが存在する場合(例: `shared_appellations`から
`shared_dictionary`への`shared_dictionary_name_id`/`_pronunciation_id`/
`_nickname_id`)に、どのFK列を使うかを一意にするための項目。省略時は生成側が
FK制約から一意に決定できる場合のみ許容され、決定できない場合は生成時エラーと
する。

例(単一列、`CompanyPage.ceo`。`info_company.ceo`という1本のFK):
```yaml
- name: ceo
  as: ceo_labels
  arrayType: toFirstOne
  using: ceo
  <<: *appellationLabels
```

例(複合FK、`OfficePage.update_user`。`update_user_history_id`+`update_user_id`の
2列。実スキーマの`historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`という
フィールド名の列順(history→id)に合わせて`[update_user_history_id,
update_user_id]`の順にする):
```yaml
- name: update_user
  as: update_user
  using: [update_user_history_id, update_user_id]
  arrayType: toFirstOne
  <<: *updateStaff
```

---

## pick

このnode/columnEntryが持つ`columns`(自身の`columns`が無ければ、YAMLアンカー/
マージで継承した`columns`を含む)のうち、出力名(`as`の値。`as`省略時は`name`。
プレーン文字列要素はその文字列自身)がこの配列に含まれる要素だけを残す絞り込み。

共有(参照)定義をYAMLエイリアス/マージで丸ごと取り込んだ上で、その一部だけを
使いたい場合に使う(取り込んだ`columns`を手作業で作り直す必要がなくなる)。
`pick`はYAMLのマージが完了した**あと**の生成段階で適用するフィルタであり、
YAML側では列を選び出す特別な処理はしない。`pick`が指す出力名の実在性はここでは
検証しない(生成時エラー)。省略時は`columns`全体がそのまま使われる。

`pick`は「表示するかどうかを選べる、それ自体で完結した関係」の絞り込み専用
(除外された要素は`where`/`requiredWhere`含め丸ごと不要という前提)。「親を
絞り込むためだけに存在し常に処理が必要な関係」を隠したい場合は`pick`ではなく
`output`(後述)を使うこと。`output: false`の要素は`pick`の内容に関わらず常に
出力対象から除外される(`pick`と`output`は独立に働く)。

例(`CompanyPage.ceo`、`appellationLabels`が持つname/pronunciation/nicknameの
うちnameだけ表示する):
```yaml
- name: ceo
  as: ceo_labels
  arrayType: toFirstOne
  using: ceo
  pick:
    - name
    - pronunciation
    - nickname
  <<: *appellationLabels
```
(この例は実際にはname/pronunciation/nicknameの3つとも`pick`に含めているため
実質的な絞り込みにはなっていないが、`pick`自体は`appellationLabels`側の
出力名(`as`の値)である`name`/`pronunciation`/`nickname`と一致させる必要がある
ことを示す例として参照できる。)

---

## output

真偽値。`columnEntry`のみに指定できる(`node`には無い)。`false`のとき、この
`columnEntry`を出力(選択セット/SELECT句)の対象から常に除外する。`pick`の
指定内容に関わらず優先される(`pick`の配列にこのエントリの出力名を含めても
無視される)。

一方で`where`/`requiredWhere`/`defaultWhere`(およびさらにネストした構造)は
除外されず、常に処理されて親の絞り込み条件(JOIN/WHERE)として使われる。効果の
範囲は、この`columnEntry`が属する直近の`columns`(=対応するSELECT句)に限定される。

典型例: 絞り込み専用のJOINで、それ自体は出力しない関係。

例(`dictionaryLabel.value.language`、`shared_language_code`は絞り込み専用。
出力列は無い):
```yaml
- name: language
  arrayType: toFirstOne
  from: shared_language_code
  output: false
  requiredWhere:
    - code
  defaultWhere:
    - column: remove
      operator: "="
      value: false
```

---

## editTables / editTableEntry

書き込み対象を表現するもう1つの方式(`columns`/`from`方式と併存)。
`table`(テーブル名)・`using`(結合FK列名、単一文字列または複合FK配列)・
`editTable`(子テーブル、単体または配列で再帰)のみを持つ、テーブル単位の
列挙に特化した形式。列単位の書き込み対象は表現しない。

現時点で`view.yaml`に使用例は無い(すべて`columns`/`from`方式で統一している)。
書式イメージ:
```yaml
editTables:
  - table: info_company
    editTable:
      - table: info_address
        using: info_address_id
```

---

## 参照

- 変換の考え方・振る舞いの詳細ルールは`source/27_yaml_to_graphql_conversion_rules.md`
  を参照。
- `view.yaml`の実例は`source/view.yaml`を直接参照。
