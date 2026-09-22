# PostGraphile向けクエリ/ミューテーション定義スキーマ(schema.json) 設計条件整理

**作成日**: 2026-09-22
**対象**: `schema.json`(YAMLでread/edit/RFEを記述するためのJSON Schema、Draft 2020-12)
**目的**: PMS画面のクエリ・ミューテーションをYAMLでまとめて表記し、CLAUDE.mdからの生成指示として使うための構造定義。本ドキュメントは、これまでのやり取りで指示された条件と、確認の上で確定した設計判断を項目別グループに整理したもの。

---

## グループ1: 種別(kind)と共有(参照)の仕組み

| # | 条件 | 決定事項 | スキーマ上の対応 |
|---|---|---|---|
| 1 | クエリを`"read"`、ミューテーションを`"edit"`、クエリ/ミューテーション相互変換可能な読み込みを`"RFE"`のEnum型とする | RFEは「汎用フィールド共存型」を採用。read相当・edit相当のプロパティを同一ノードに共存させ、kindによるプロパティの出し分けはスキーマ側では強制せず、生成側の解釈に委ねる | `$defs/kind`(enum: read/edit/RFE)。`$defs/node`が全プロパティを共有 |
| 8 | read・edit・RFEはいずれも共有(参照)するオブジェクトとして使用できる | 参照方式はYAMLのアンカー(`&name`)/エイリアス(`*name`)に一任。スキーマ側には参照専用キーワード(`ref`等)を設けない | スキーマ上は「同じnode形状の値が来る」ことのみを許容。参照解決はYAMLパーサ側で完結 |
| 9 | `columns`(グループ3)に8の共有オブジェクトを指定できる | ネストした`columns`要素(`columnEntry`)にも`node`と同じプロパティ群を持たせ、共有定義をエイリアスで展開できるようにする | `$defs/columnEntry`のオブジェクト分岐が`kind`/`columns`/`where`等を保持可能 |

---

## グループ2: 引数・条件(where系)

| # | 条件 | 決定事項 | スキーマ上の対応 |
|---|---|---|---|
| 2 | クエリに対する必須引数を`"requiredWhere"`、それ以外を`"where"`とする。配列で複数指定できる | 各要素は列名の文字列配列とする(演算子・値は持たない、シンプルな引数列挙) | `$defs/whereList`(string配列) |
| 11 | 演算子`=`・`>`・`<`・`>=`・`<=`・`IN`・`NOT IN`・`LIKE`・`NOT LIKE`・`EXISTS`・`NOT EXISTS`をEnumで定義する | 上記11種をそのままEnum化 | `$defs/operator` |
| 12 | デフォルト条件を`"defaultWhere"`として配列で指定でき、列・演算子(11)・値を受け取る。値は列の型で受け取る。ただしEXISTSは文字列としてSELECT文を受け取れる | `column`/`operator`/`value`の3プロパティを持つオブジェクト配列。`value`は列の型を限定しないためスカラー(文字列/数値/真偽値/null)または配列(IN/NOT IN用)のみを構造として許容。`operator`が`EXISTS`/`NOT EXISTS`のときは`if/then`で`value`を文字列型に限定 | `$defs/defaultWhereEntry`、`$defs/defaultWhereList`、`$defs/whereValue` |
| 13 | すべてのWhereに渡すオブジェクトのうち、GraphQLへMapで渡す`"condition"`を定数とする。Mapかどうか評価しない | `condition`はPostGraphileの`condition`引数(クエリ全体に対して1つのMapを渡す仕組み)に対応する`node`直下の独立プロパティとし、`where`/`requiredWhere`/`defaultWhere`の兄弟として配置(defaultWhereの各要素の中には入れない)。スキーマは`true`(無制約)とし、値の内部構造(Mapかどうか)は一切検証しない | `$defs/condition`(値`true`) |

---

## グループ3: 出力列(columns)とネスト配列

| # | 条件 | 決定事項 | スキーマ上の対応 |
|---|---|---|---|
| 3 | クエリが返す列群を`"columns"`として列名を指定、型は指定しない。配列のオブジェクトを返すときは`arrayType`を指定できる | `columns`の各要素は「列名の文字列」または「`name`必須のオブジェクト」の`oneOf`。オブジェクト形式は`arrayType`(真偽値)を持ち、trueのとき`node`相当のプロパティ(`columns`/`where`/`defaultWhere`/`limit`/`kind`等)をネストして持てる | `$defs/columnEntry`、`$defs/columnsList` |
| 4 | 3の`arrayType`のうち、1対1に該当する場合は`arrayFirst`を指定できる | `arrayFirst`は`arrayType`に依存する形で`if/then`により制約(`arrayFirst: true`なら`arrayType: true`も必須) | `columnEntry`内の`if/then` |
| 5 | 取得数(特に列が配列のとき)を`"limit"`として指定できる | 正の整数。`node`/`columnEntry`の両方に持たせる | `$defs/limit` |
| 9 | (再掲)3に8を指定できる | グループ1参照。`columnEntry`がYAMLエイリアスで共有定義を展開できる | 同上 |

---

## グループ4: ミューテーション(editTables)

| # | 条件 | 決定事項 | スキーマ上の対応 |
|---|---|---|---|
| 6 | ミューテーションの場合は`"editTables"`で配列で指定する | `editTables`は書き込み対象テーブルの配列 | `$defs/editTablesList` |
| 7 | 6の子オブジェクト、もしくは子オブジェクトの配列があるとき、`editTables`配列のオブジェクトの子として`"editTable"`を指定する | `editTable`の多重度は「単体オブジェクトまたは配列」を`oneOf`で使い分ける方式(columnsの`arrayType`と同じ考え方)。再帰構造(`editTableEntry`が自分自身を参照)で任意の深さのネストに対応 | `$defs/editTableEntry`(再帰) |

**未確定事項**: `editTables`/`editTable`には、書き込む値(カラムと値の対応、および`create`/`connect`の区別)を表すプロパティをまだ定義していない。現状は`table`(テーブル名)と`editTable`(子テーブル)のみで、値ペイロードの表現方法は別途設計が必要。

---

## グループ5: 出力識別子(fileName/from)

| # | 条件 | 決定事項 | スキーマ上の対応 |
|---|---|---|---|
| 14 | read・edit・RFEに`fileName`属性を追加。GraphQL出力時のファイル名・クラス名に使用(テーブル名と同じとは限らない) | 付与範囲は「トップレベルのread/edit/RFE定義」と「ネストした`columnEntry`(arrayTypeのブロック)」の両方。任意項目とし、YAMLエイリアス専用の共有ブロック(例: `addressFields`)には付けなくてよい | `$defs/fileName`。`node`と`columnEntry`の両方のプロパティに追加 |
| 15 | 14に伴い、対象テーブルが不明になるため主たるテーブル名を格納する`"from"`を追加 | `fileName`と同じ付与範囲・任意項目。`edit`/`RFE`の`from`と`editTables[].table`は独立したラベルとして扱い、一致検証は行わない(点10の方針を踏襲) | `$defs/from`。`node`と`columnEntry`の両方のプロパティに追加 |

---

## グループ6: 検証範囲の方針(横断的な原則)

| # | 条件 | 決定事項 |
|---|---|---|
| 10 | 9・7・4・一部の3について、`column`の外部キーが成立していないときは生成時にエラーにするため、YAML/スキーマ時には考慮しない | JSON Schemaは構造(型・必須項目・列挙値・依存関係)のみを検証し、列名・テーブル名がDB上に実在するか、FKとして成立するかは検証しない。この方針は`defaultWhere.column`・`editTables[].table`・`from`など、後から追加されたテーブル名/列名を持つプロパティすべてに一貫して適用している |

---

## 決定の経緯(確認済みの選択肢)

以下は複数の設計案から、確認の上で確定したもの。

- RFEの内部構造: **汎用フィールド共存型**(read相当・edit相当のプロパティを同一ノードに共存させ、kindによる出し分けは生成側に委ねる)
- 共有(参照)オブジェクトの参照方法: **YAMLアンカー/エイリアスに一任**(スキーマに専用キーワードは設けない)
- `where`/`requiredWhere`の粒度: **列名の文字列配列**(演算子・値を持たないシンプルな引数列挙)
- `editTables[].editTable`の多重度表現: **単体/配列を使い分け**(`columns`の`arrayType`と同じ考え方)
- `condition`の配置: **`node`直下の独立プロパティ**(PostGraphileの`condition`引数がクエリ全体に対して1つのMapを渡す仕組みであることに対応)
- `fileName`/`from`の付与範囲: **トップレベル + ネストした`columnEntry`の両方**
- `fileName`/`from`の要否: **任意**(共有専用ブロックには不要)
- `from`と`editTables[].table`の関係: **独立したラベル**(一致検証はしない)

---

## 未確定・今後の検討事項

- `editTables`/`editTable`の書き込み値(カラムと値の対応)の表現方法。`create`(新規作成)/`connect`(既存レコードへの関連付け)の区別をどう指示側で表現するか。
- `defaultWhere`の`operator`が`IN`/`NOT IN`のときの`value`(配列)の要素数・型の厳密化が必要かどうか。
- `fileName`の命名規則(重複防止・予約語の扱いなど)は未検討。
