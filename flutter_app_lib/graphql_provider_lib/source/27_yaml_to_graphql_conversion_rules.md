# YAML → GraphQL 変換ルール

**作成日**: 2026-09-26
**対象**: `schema.json`に準拠したYAML定義(read/edit/RFE)を、PostGraphile向けのGraphQLクエリ/ミューテーションへ変換する際のルール。
**位置づけ**: `24_yaml_schema_design_conditions.md`がスキーマの「構造」の決定事項を整理したものであるのに対し、本ドキュメントはその構造を実際にGraphQLへ変換する際の「振る舞い」を定める。特に`condition`の再設計(引数はGraphQL変換時にのみ意味を持ち、YAML側にMapとしての意味を持たせない)と、`where`/`requiredWhere`(引数)と`defaultWhere`(ハードコード条件)の役割分担を明確にすることが目的。

---

## 0. 基本方針

YAMLの各プロパティは「GraphQLの引数として呼び出し側に公開するもの」と「YAML定義時点で固定し、呼び出し側には公開しないもの」の2種類に大別される。

| 呼び出し側に公開する(引数化する) | 呼び出し側には公開しない(生成時に固定) |
|---|---|
| `where` / `requiredWhere`(任意/必須の引数) | `defaultWhere`(常に適用される固定条件) |
| `condition`(trueのときNull許容の`condition`引数を追加するフラグ) | — |

`defaultWhere`に列挙した条件(例: `remove = false`)はSQL/GraphQLリゾルバ側に直接埋め込まれ、呼び出し側からは変更できない。逆に`where`/`requiredWhere`に列挙した列名は、呼び出し側が値を指定できる引数になる。**同じ列に対して`defaultWhere`と`where`/`requiredWhere`を同時に指定することはしない**(用途が矛盾するため)。

列・テーブル・FKの実在性はスキーマでも本変換ルールでも検証しない。存在しない場合はコード生成時にエラーとする(`24_yaml_schema_design_conditions.md`グループ6・点10を参照)。**この「検証しない・生成時エラーとする」方針は、引数名の衝突についても同様に適用する(3-1節参照)。**

---

## 1. `kind` → 操作種別

| kind | GraphQL操作 |
|---|---|
| `read` | `query` |
| `edit` | `mutation` |
| `RFE` | 生成側の利用文脈に応じて`query`/`mutation`どちらにもなり得る(同一定義をkind差し替えのみで両方に使い回すための種別。プロパティの出し分けはスキーマ上は強制しない) |

## 2. `from` → ルート型/テーブル

その定義が対象とする主たるテーブル名。`read`/`RFE`ではSELECT対象、`edit`ではUPDATE/INSERT対象のテーブルを表す(nullの場合は生成側で文脈から推測、または`editTables`側の`table`を正とする)。`editTables[].table`との一致検証は行わない(独立したラベル)。

## 3. `where` / `requiredWhere` → GraphQL引数

- `where`: 任意引数。呼び出し側が指定しなければ、その条件は適用されない(フィルタなし)。
- `requiredWhere`: 必須引数。呼び出し側は必ず値を渡す必要がある。
- いずれも列名の配列。値・演算子は持たない(`=`一致、またはPostGraphileの標準フィルタ引数に委ねる)。

### 3-1. 引数名の決め方

生成されるGraphQL引数名は、**`where`/`requiredWhere`に列挙した列名(例: `code`)をそのまま使う**。node直下・ネストした`columnEntry`のいずれでも同じで、祖先の`as`/`name`を連結して自動的にプレフィックスを付与するような処理は行わない。

理由: `where`/`requiredWhere`を持つ`columnEntry`が共有アーム経由で複数箇所に再利用される場合(例: `dictionaryLabel.language`(`requiredWhere: [code]`)が`appellationLabels`のname/pronunciation/nicknameの3箇所で使われる場合)、素朴には`code`という同じ引数名が複数箇所で必要になり得る。この衝突は**YAML/スキーマの検証範囲外とし、GraphQL変換時に実際に引数名が重複した場合はそこで初めてエラーとして検出する**(点10と同じ「構造の妥当性のみ検証し、実在性・整合性は生成時エラーとする」考え方の一貫した適用)。

呼び出し側が実務上同じ値(例: 表示言語コード)を複数箇所で使い回したいだけであれば、GraphQL変数は同じクエリ内の複数の引数位置で再利用できるため、そもそも引数名の衝突自体が起こらない(`CompanyPage.graphql`で`$displayLanguageCode`を全箇所で使い回している実例を参照)。逆に要素ごとに独立して異なる値を渡したい場合は、その時点で衝突が起きるので、YAMLの`as`(6-3節)を使って呼び出し側ごとに人が判断して引数名を分ける、または生成ツールがエラーを検出した時点で個別に対応する。

## 4. `defaultWhere` → 固定条件(ハードコード)

呼び出し側に公開しない、常に適用される条件。`column`/`operator`/`value`を持つ。`operator`が`EXISTS`/`NOT EXISTS`のときは`value`をSELECT文を表す文字列として扱い、そのままSQLへ埋め込む。

典型例: 論理削除フラグ(`remove = false`)など、呼び出し側が意識する必要のない固定ガード条件。

**やってはいけない例**: 呼び出し側が選択すべき値(表示言語コードなど)を`defaultWhere`にハードコードすること。過去の例(`shared_language_code.code = "JA"`固定)はこの誤りに該当したため、`requiredWhere: [code]`(3節)に修正した。「呼び出し側が選ぶべき値か、常に固定でよい値か」で`where`/`requiredWhere`と`defaultWhere`を使い分ける。

`defaultWhere`が「単数(1対1相当)の外部キーリレーション」(例: `info_company.ceo → shared_appellations`)上にある場合、stock PostGraphileの単数リレーションフィールドには絞り込み引数(`condition`/`filter`)自体が存在しないため、そのままではGraphQL引数として表現できないが、これは問題ではなく想定通りの挙動である。`defaultWhere`は元々「呼び出し側に公開しない」ものなので、GraphQL引数として再現できる必要はなく、生成されるSQL/リゾルバ側にそのままハードコードされれば良い。

## 5. `condition` → GraphQL引数の追加フラグ(再設計)

**(2026-09-26改訂)** `condition`はYAML上ではMap等の構造を一切表現しない、単純な真偽値フラグに変更した。

- `condition: true` … GraphQL変換時に、PostGraphile標準のNull許容`condition`引数(例: `condition: PatchCondition`のような型)をクエリ/ミューテーションの引数シグネチャに追加する。
- 省略(または`condition: false`) … `condition`引数自体を生成しない。

`condition`引数の中身(何を絞り込むか)はYAML側では一切表現しない。理由は、その役割は既に`where`/`requiredWhere`(引数)と`defaultWhere`(固定条件)でカバーされているため。`condition`はあくまで「PostGraphileネイティブの`condition`引数を、生成されるGraphQLスキーマ上に生やすかどうか」だけを制御する。

旧設計(`condition`にMap値やテンプレート文字列を書く)は廃止した。既存例(`info_staff.yaml`の`infoStaff`)もこの形に修正済み。

## 6. `columns` → 選択セット

- プレーン文字列 … スカラー列。そのままGraphQLの選択セットに列挙する。
- `name`必須のオブジェクト形式 … 出力フィールドを表す。`arrayType`を持たない場合は単なる列(将来の拡張余地として構造のみ許容、現状の例では未使用)。

### 6-1. `arrayType`(`toMany` / `toFirstOne`) → ネストしたリレーション

`from`を伴う`columnEntry`がネストした関係(json_agg/LATERAL等で生成される)を表す。

- `toMany`: 生成されるコレクションをそのまま配列として返す(1対N)。
- `toFirstOne`: 生成されるコレクションの先頭要素のみを採用し、単一オブジェクトとして返す(1対1相当として扱いたい場合)。実際にFK/UNIQUE制約上1対1が成立するかは検証しない。`toFirstOne`を指定していても実際には複数件になり得る場合の指摘や強制的な配列化への切り替えは生成側の責務とする。

`arrayType`の値そのものはFKの向きと必ずしも対応しない。実際にGraphQLへ変換する際は2パターンに分かれる: (a) 参照元テーブルが持つFK列を辿る「外向きの関係」(例: `info_company.ceo → shared_appellations`)は元々1件しか無いため、PostGraphileは最初から**単数フィールド**を生成する(`toFirstOne`は追認にすぎず、`first:1`のような切り詰めは不要)。(b) 参照先テーブルがFK列を持つ「内向きの関係」(例: `shared_dictionary_value.shared_dictionary_id → shared_dictionary`)は本来複数件あり得るため、PostGraphileは**コネクション(JOIN LATERALで実装される)**を生成する。この場合の`toFirstOne`は`LIMIT 1`(`first: 1`)+`nodes[0]`相当への変換を意味する。`toMany`は同じくコネクションのまま(`limit`があれば`first`/`LIMIT`に反映)。YAML側はこの区別を表現しないため、生成側はusing/fromの対象テーブルの実際のFK方向を見て判定する必要がある(点10と同じ方針)。

### 6-2. `using` → 結合経路の一意化

`columnEntry`を含む側のテーブルが持つ、`from`への結合に使うFK列名。1つのテーブル間に複数のFKが存在する場合(例: `shared_appellations`→`shared_dictionary`への`shared_dictionary_name_id`/`_pronunciation_id`/`_nickname_id`)に、どのFKを使って結合するかを一意にする。省略時は生成側がFK制約から一意に決定できる場合のみ許容され、決定できない場合は生成時エラーとする。

### 6-3. `as` → 出力フィールド名の上書き

`name`は結合・マージ元を識別するための識別子として使う。GraphQL出力に実際に現れるフィールド名は、`as`があればその値、無ければ`name`をそのまま使う。共有(参照)定義をYAMLアンカーで複数箇所に使い回す際、出力フィールド名の重複を避けるために使う(`test.yaml`の`dictionaryLabel`をname/pronunciation/nicknameの3か所で使い回す例を参照)。

### 6-4. `pick` → 継承したcolumnsの絞り込み

YAMLのマージキー(`<<`)は**キー単位で全部か無しか**の挙動しか持たない。ローカルに`columns:`を明示すればマージ元の`columns`は完全に無視され(要素単位の部分継承はできない)、逆にローカルで`columns:`を省略すればマージ元の`columns`がそのまま丸ごと使われる。このため「共有定義を丸ごと取り込みつつ、その一部の列だけを出力したい」という要求はYAMLの機能だけでは実現できない。

これを解決するのが`pick`(`node`/`columnEntry`の両方に指定可能)。`pick`はYAMLのマージが完了した**あと**の生成段階で適用するフィルタで、その時点で確定している`columns`(ローカル指定 or マージ継承のどちらか)のうち、出力名(`as`の値。`as`が無ければ`name`。プレーン文字列要素はその文字列自身)が`pick`の配列に含まれる要素だけを残す。

```yaml
appellationLabels: &appellationLabels
  kind: read
  from: shared_appellations
  columns:
    - name: name
      as: name
      using: shared_dictionary_name_id
      arrayType: toFirstOne
      <<: *dictionaryLabel
    - name: name
      as: pronunciation
      using: shared_dictionary_pronunciation_id
      arrayType: toFirstOne
      <<: *dictionaryLabel
    - name: name
      as: nickname
      using: shared_dictionary_nickname_id
      arrayType: toFirstOne
      <<: *dictionaryLabel

# 呼び出し側: 3列すべてを持つappellationLabelsを丸ごとマージしつつ、
# このページではnameだけ表示したいのでpickで絞り込む(pronunciation/nicknameを手作業で書き直す必要が無い)
- name: ceo
  using: ceo
  arrayType: toFirstOne
  pick:
    - name
  <<: *appellationLabels
```

`pick`が指す名前の実在性(`columns`側に本当にその出力名が存在するか)はここでは検証しない(生成時エラー、点10と同じ方針)。`columns`をローカルで手書きし直す(`appellationLabels`の内部構造を`using`/`from`/`arrayType`無しの素のスタブで再現しようとする)のは、その時点でFK解決に必要な構造(`using`/`from`/`arrayType`)が失われて機能しなくなるため避けること。列を絞り込みたいときは必ず`pick`を使う。

`pick`はプレーン文字列要素(`shared_appellations_id`のような単純スカラー列)にも同じ規則で適用される。`pick`の配列に含まれない出力名は、それがネストしたリレーションであっても単純スカラーであっても等しく除外される。

**`pick`が対象とするのは「表示するかどうかを選べる、それ自体で完結した関係」に限る**(例: pronunciation/nicknameは、表示しないならそのFK自体をJOINする必要が無い独立した関係)。pickで除外された要素は、`where`/`requiredWhere`を含めて丸ごと処理対象から外れる、という前提で設計されている。「親を絞り込むためだけに存在し、常に処理が必要な関係」(9-3節、6-5節参照)を隠したい場合は`pick`ではなく`output`(6-5節)を使うこと。両者は独立して働く(`output: false`は`pick`の内容に関わらず常に優先される)。

### 6-5. `output` → 出力からの除外(常に処理はする)(2026-09-26 6回目追加)

`columnEntry`に`output`(真偽値)を追加した。`output: false`のとき、そのエントリは**出力(選択セット/SELECT句)から常に除外**される。`pick`の内容に関わらず優先される(`pick`の配列にこのエントリの出力名を含めても無視される)。

一方で`where`/`requiredWhere`/`defaultWhere`(およびさらにネストした構造)は除外されず、**常に処理されて親の絞り込み条件(JOIN/WHERE句)として使われ続ける**。効果の範囲は常に、そのエントリが属する直近の`columns`(=対応するSELECT句。ルート直下ならクエリ全体、ネストした`columnEntry`配下ならそのLATERALサブクエリ等)に限定され、他の階層には影響しない。

典型例: `dictionaryLabel.value`配下の`language`(`shared_dictionary_value` → `shared_language_code`、表示言語で絞り込むためだけのJOINで、それ自体は出力しない)。

```yaml
dictionaryLabel: &dictionaryLabel
  kind: read
  from: shared_dictionary
  columns:
    - name: value
      arrayType: toFirstOne
      from: shared_dictionary_value
      columns:
        - dictionary_value
        - name: language
          arrayType: toFirstOne
          from: shared_language_code
          output: false        # 出力はしないが、requiredWhereは常に処理される
          requiredWhere:
            - code
```

生成されるSQL(概念)は次のようになる。`slc.code = $code`はLATERALサブクエリ内部のJOIN/WHERE句として現れるが、`slc`の列は一切SELECTされない。

```sql
SELECT sd.shared_dictionary_id, v.dictionary_value
FROM shared_dictionary sd
LEFT JOIN LATERAL (
  SELECT sdv.dictionary_value
  FROM shared_dictionary_value sdv
  JOIN shared_language_code slc
    ON slc.shared_language_code_id = sdv.shared_language_code_id
  WHERE sdv.shared_dictionary_id = sd.shared_dictionary_id
    AND slc.code = $code
  LIMIT 1
) v ON true;
```

なぜ`pick`だけでは解決できないか: `pick`は「除外された要素は丸ごと不要」という前提(6-4節)であり、この前提を`language`にも適用すると`requiredWhere: [code]`ごと失われ、上記SQLのJOIN/WHERE句自体が生成できなくなる(言語の絞り込みが効かなくなり、`toFirstOne`が不定の1件を返す)。逆に「pickは出力にのみ影響し、除外されても常に処理する」という規則に統一すると、今度はpronunciation/nicknameのような本来不要な独立リレーションの引数まで無駄に生成されてしまう。この2つの要求(「除外＝丸ごと不要」と「除外しても処理は必要」)を1つの`pick`だけで両立できないため、`output`を別プロパティとして追加した。

## 7. `edit`/`RFE`での書き込み対象の表現

書き込み対象は次の2通りの表現が併存する。生成側はどちらの形式にも対応する前提とし、1つの`node`内で混在させることも構造上は可能だが、可読性のため通常はどちらか一方に統一することを推奨する。

1. **`editTables`/`editTableEntry`**: `table`(テーブル名)・`using`(結合FK列名)・`editTable`(子テーブル、単体または配列で再帰)のみを持つ。列単位の書き込み対象は表現しない、テーブル単位の列挙に特化した形式。
2. **`columns`/`from`(readと同形式)**: `node`は「汎用フィールド共存型」によりkindに関わらず同じプロパティを持てるため、`edit`/`RFE`でも`read`と全く同じ`columns`/`from`/`arrayType`/`using`構造を書き込み対象列の表現として使ってよい。ネストした`columnEntry`(`from`+`arrayType`持ち)は関連テーブルへの入れ子書き込みを表す。この形式の利点は、`read`用定義と`edit`用定義の構造が同じになるため、**`RFE`は`kind`を差し替えるだけで成立する**こと(`test.yaml`の`dictionaryRFE`/`appellationLabelsRFE`を参照)。

`create`(新規作成)/`connect`(既存レコードへの関連付け)の区別を表すプロパティはまだ無い(未解決、`24_yaml_schema_design_conditions.md`未確定事項を参照)。

## 8. `RFE`の生成方針

`RFE`ノードは読み込み(`query`)としても書き込み(`mutation`)としても使われうる、同一定義。生成側はコンテキスト(呼び出し元の画面が「表示」目的か「編集」目的か)に応じて、同じ`columns`/`from`構造をSELECT用の選択セットとして解釈するか、書き込み対象の列として解釈するかを切り替える。スキーマ側でkindごとのプロパティ出し分けを強制しないのはこのため。

## 9. 実際に変換を試行して見つかった論点(2026-09-26 3〜6回目、すべて解決済み)

ユーザーがアップロードした`test.yaml`の下書きを実際に修正・検証し、`CompanyPage`(read)をGraphQLへ手作業で変換する実験(`/mnt/user-data/outputs/CompanyPage.graphql`)を行った際に見つかった論点。5件すべてについて方針を確定・反映済み。

### 9-1. YAMLパースを破壊する`<<: &name`の実例

`<<: &appellationLabels`(既存アンカーの参照ではなく再定義)が同一ドキュメント内で3回出現した実例で、PyYAMLの`safe_load`が例外を投げて**ファイルが一切パースできない**ことを実機で確認した。

```
yaml.composer.ComposerError: found duplicate anchor 'appellationLabels'; first occurrence
  in "<unicode string>", line 103, column 20
second occurrence
  in "<unicode string>", line 143, column 11
```

**メカニズム**: YAMLのアンカー(`&name`)はドキュメント全体のスコープで「名前→ノード」の対応を作る。エイリアス(`*name`)はその対応を参照(dereference)するだけで、新たな対応は作らない。`<<: &appellationLabels`(直後に値が続かない)は、(a)まず`&appellationLabels`という**新しいアンカー定義**を試みる(値は何も続かないためnull)。この時点で同名のアンカーが既にドキュメント内に存在するため、PyYAMLのComposerは「同名アンカーの重複定義」としてただちに`ComposerError`を送出する。(b) 仮にこの重複チェックが無かったとしても、マージキー`<<`はマッピング(またはマッピングへのエイリアスの配列)を値として要求するため、null値を渡すこと自体が別の意味エラーになる。つまりこのタイプミスは「アンカー名の重複」と「マージキーへの不正な値」という2つの誤りが重なったものである。

なお、YAML仕様(1.1/1.2)自体はアンカーの重複定義そのものを明確に禁止しているわけではなく、パーサによっては「後勝ち」として許容する可能性もある。PyYAMLがここで例外を投げるのは実装上の安全策(明らかなミスを早期に検出するため)であり、実際の生成パイプラインで使うYAMLライブラリ(JS/TS製など)が同じ挙動をするとは限らないため、生成側で使用するライブラリでも同様に検証することを推奨する。

**再発防止の提案**: この誤りは本プロジェクトで既に3回発生している。`<<: &`という文字列パターンを検出する簡易lint(正規表現ベースでよい)をコミット前チェックやCIに組み込むことを検討候補とする(未実施)。

### 9-2. 引数名の決め方

3-1節参照。自動プレフィックス命名は行わず、列名をそのまま引数名とし、衝突はGraphQL変換時エラーとして扱う方針で確定。

### 9-3. 「絞り込み専用・出力列なし」の`columnEntry`の表現(6-5節で解決)

`dictionaryLabel`内の`language`(`requiredWhere: [code]`)は「絞り込み専用のJOIN。出力列は無い」。当初`pick`で解決しようとしたが、`pick`は「除外された要素は丸ごと不要」という前提のため、`language`をpick対象にすると`requiredWhere`ごと失われ、PostGraphileが生成するJOIN LATERALサブクエリ内のJOIN/WHERE句(言語での絞り込み)が構築できなくなるという致命的なリスクがあることが分かった(詳細な検討過程・SQLレベルの具体例は6-5節を参照)。

**解決策**: 新しいプロパティ`output`(6-5節)を追加した。`output: false`は出力からの除外のみを表し、`where`/`requiredWhere`/`defaultWhere`の処理(親のJOIN/WHERE句への反映)には影響しない。`pick`と`output`は独立したプロパティとして併存させ、役割を分離した:「表示するかどうかを選べる、それ自体で完結した関係」の絞り込みは`pick`、「親を絞り込むためだけに存在し常に処理が必要な関係」を隠すには`output`。

`test.yaml`・`info_company.yaml`・`shared_dictionary_ja_label.yaml`・`shared_dictionary_ja_label_with_name_id.yaml`・`shared_appellations_ja_label.yaml`の`language`エントリ(または相当箇所)に`output: false`を追加し(以前追加した`value`側の`pick: [dictionary_value]`は撤回)、schema.jsonに対する検証、および「requiredWhereが除外されずに残ること」のシミュレーションで確認済み。

### 9-4. 単数(1対1相当)の外部キーリレーション上の`defaultWhere`/`condition`(解決・想定通りと確定)

4節参照。これは問題ではなく想定通りの挙動と確定した。`defaultWhere`はそもそも呼び出し側に公開しない固定条件であり、GraphQL引数として再現できる必要はなく、生成されるSQL/リゾルバ側にハードコードされていれば良い。スキーマ変更・生成ルールの追加対応は不要。

### 9-5. `pick`とプレーン文字列列の相互作用(実例で確認・仕様通り・採択済み)

`appellationLabels`の`shared_appellations_id`(プレーン文字列列)は、`pick: [name, pronunciation, nickname]`によって出力から除外されることを実際に確認した。設計通りの挙動(6-4節参照)。追加対応不要。

---

## 変更履歴

- 2026-09-26: 新規作成。`condition`の再設計(Map値の廃止、真偽値フラグ化)と、`where`/`requiredWhere`(引数)・`defaultWhere`(固定条件)の役割分担の明文化に伴い、既存のYAML例(`shared_language_code.code = "JA"`のハードコードを`requiredWhere: [code]`に修正、`info_staff.yaml`の`condition`のMap値を`condition: true`に修正)と合わせて作成。
- 2026-09-26(2回目): `pick`(6-4節)を追加。YAMLマージがキー単位の全部か無しかしかできないため、「共有定義を丸ごと取り込みつつ一部の列だけ出力したい」を実現する生成時フィルタとして新設。`info_company.yaml`に`appellationLabels`(shared_appellationsのname/pronunciation/nickname束ね)と、`CompanyPage`(`ceo`/`offices`でそれぞれ`pick: [name]`を使う例)を追加。
- 2026-09-26(3回目): ユーザーがアップロードした`test.yaml`の下書きを実際に修正し(`<<: &appellationLabels`の重複アンカーによるパースエラーを含む複数の不具合を修正)、`CompanyPage`をGraphQLへ手作業変換する実験を実施(`CompanyPage.graphql`)。この過程で見つかった5件の論点を9節として追加。
- 2026-09-26(4回目): 9節の5論点について暫定方針を検討。3-1節に多段ネストでのプレフィックス命名ルールを追記(後に撤回、5回目参照)。
- 2026-09-26(5回目): 3-1節の自動プレフィックス命名案を撤回し、引数名は列名をそのまま使う・衝突は生成時エラーとするシンプルな方針に変更。「絞り込み専用・出力列なし」は`pick`を共有アーム定義自身に付けることで解決とした(後に撤回、6回目参照)。単数リレーション上の`defaultWhere`はGraphQL引数化不要・ハードコードで問題無しと確定。
- 2026-09-26(6回目): 5回目の`pick`ベースの解決策を撤回。`pick`は「除外された要素は丸ごと不要」という前提のため、`language`のような「絞り込み専用・出力列なしだが常に処理が必要な関係」に適用すると`requiredWhere`ごと失われ、PostGraphileが生成するJOIN LATERAL内のJOIN/WHERE句が構築できなくなるというリスクが判明したため。新しいプロパティ`output`(6-5節、`columnEntry`のみ)を追加し、`pick`とは独立に「出力からの除外」と「where/requiredWhere/defaultWhereの処理継続」を両立できるようにした。`schema.json`(`$defs/output`追加)、および`test.yaml`・`info_company.yaml`・`shared_dictionary_ja_label.yaml`・`shared_dictionary_ja_label_with_name_id.yaml`・`shared_appellations_ja_label.yaml`の`language`エントリに反映、schema.json検証・シミュレーション確認済み。