# 0026 実施ログ(schema.graphql の再取得・差分反映・build_runner実行)

指示(要件0026):
> "http://192.168.1.100:5000/graphql"からshema.graphqlを取得して差分を比較し、変更があれば置き換え、
> 0024を実行。最新は"http://192.168.1.100:5000/graphql"から取得したSDLである。接続できない場合は中止する。

## 1. 接続確認

`curl -m 10 http://192.168.1.100:5000/graphql` → `HTTP 405`(GETは未対応だが応答あり=疎通OK)。
Postgraphileは`--export-schema-graphql`でコンテナ内ファイルにSDLを書き出す構成
([docker_compose/postgraphile/docker-compose.yml](../../../docker_compose/postgraphile/docker-compose.yml))
のみで、HTTP経由でSDLテキストを直接返すエンドポイントは無いため、標準のGraphQL
イントロスペクションをHTTP POSTで実行し、結果をSDLへ変換する方式(`get-graphql-schema`
CLI、内部的に`graphql`パッケージの`buildClientSchema`+`printSchema`を使用)で取得した。

```
npx --yes get-graphql-schema http://192.168.1.100:5000/graphql > schema_new.graphql
```
取得成功(375,457行、UTF-8、日本語コメント正常)。接続不可のケースには該当しなかったため中止処理は発生していない。

## 2. 差分比較

素朴な行diffでは`lib/graphql/schema.graphql`(旧, 479,820行)と取得結果(375,457行)で大きく行数が
異なったが、これは`get-graphql-schema`のSDL整形(説明文が1行に収まる場合は`"""text"""`を単一行で
出力する)とPostgraphile本体の`--export-schema-graphql`の整形(常に複数行)の差によるもので、
`InfoCompany`型など既知の型を目視比較した限り、フィールド構成・説明文の実質的な内容に差は無かった。

このため`@graphql-inspector/cli diff`で意味的な差分を取得した。

```
npx --yes @graphql-inspector/cli diff schema_old.graphql schema_new.graphql
```

検出1,028件中、989件は`XxxFk6InverseInput`→`XxxFk7InverseInput`のような、
postgraphile-plugin-nested-mutationsが自動採番する逆方向入力型名の番号ズレ(型の列挙順序に依存し、
実際のDB構成が変わらなくても再エクスポートのたびに変動しうる既知の癖)であり、実質的な変更ではないと
判断した。残り39件が実質的な差分。

### 2-1. 実質的な差分(採用)

1.  **`MstrStakeholderContact`(利害関係者窓口マスタ)の「メール」列の物理名が`private_phone`から
    `mail`へ変更**(`HistoryMstrStakeholderContact`にも同様に反映)。関連する
    Condition/Filter/Input/Patch型・`XxxOrderBy`列挙値・Payload型もすべて追随している。
    → [0025評価ログ](0025_view_graphql_evaluation_log.md)8-2節で指摘した「メールの説明が
    付いた列が`private_phone`という物理名になっている」命名の食い違いは、この変更で解消された。
2.  **`MstrStakeholderContact.mstrShippingKindId`(配送区分ID)が`UUID!`(必須)から`UUID`
    (任意)へ変更。** 併せて`mstrShippingKindByMstrShippingKindId`(参照)・
    `mstrStakeholderContactsByMstrShippingKindId`(逆参照)の関連フィールドが追加された。
    → 同ログ8-1節で指摘した「必須列だがcustomer_contact/supplier_contactの画面仕様に
    存在しない」懸念は、任意項目化されたことで解消された。
3.  **文字化け(mojibake)の修正**: `InfoAddressInput.phone`の説明(電話番号)、
    `MstrStakeholderContactPatch.revision`の説明(レビジョン)、
    `TransPreventionDetail.transPreventionId`の説明(未然防止ID)が、旧ファイルでは文字化けして
    いたが、新しい取得結果では正しく表示されている。旧`lib/graphql/schema.graphql`(または
    そのエクスポート経路)側にエンコーディング上の問題があったとみられる。今回の画面仕様
    ([views.md](../source/views.md))が参照する範囲には影響が無いことを確認済み。
4.  `HistoryInfoDepartmentAccessPermissionFilter`の説明差分としてinspectorが1件報告しているが、
    出力を確認したところ長い説明文がinspectorのログ表示で単に途中省略されているだけであり、
    実際の説明文に変更は無い。実質差分として扱わない。

上記1・2はいずれも本ライブラリが現在生成対象としている画面(要件0025で生成対象とした
customer_contact/supplier_contact)にのみ影響し、生成済みの他8画面・org_res_equipment・
info_staffには影響しない(該当テーブル`MstrStakeholderContact`をこれらの画面は参照していない)。

## 3. schema.graphql の置き換え

差分(2節)が実在するため、指示のとおり`lib/graphql/schema.graphql`を新しい取得結果で置き換えた。

- 旧: 479,820行
- 新: 375,457行(型定義の数は1,258型でどちらも一致。差は2-1節の実質差分+整形方式の違いのみ)

## 4. 要件0024の実行(schema.graphqlのみコード生成)

```
dart run build_runner build --delete-conflicting-outputs --build-filter="lib/postgraphile/schema.graphql.dart"
```
結果: `Built with build_runner/aot in 207s; wrote 1 output.`
(`--delete-conflicting-outputs`は現行のbuild_runnerでは削除済みオプションである旨の警告が出たが、
ビルド自体は正常終了。`--build-filter`により対象を`lib/postgraphile/schema.graphql.dart`1件のみに
限定した結果、他の8画面・info_staff・org_res_equipmentの生成済み`*.graphql.dart`は再生成されず
更新日時も変わっていないことを確認した(`git status`でも該当ファイルは未変更のまま)。

`lib/postgraphile/schema.graphql.dart`は431,666,077バイト(約412MiB)。要件0015・0016のとおり
`.gitignore`・アナライザ除外・VSCode監視除外の対象として既に登録済み(要件0014・0015・0016で
対応済みのため今回の追加変更は無い)。

## 5. 影響確認

- `dart analyze lib`: 3,405件はすべて`info`(スタイル上の指摘、既存生成コードに元々存在するもの)。
  `error`・`warning`は0件。
- `flutter test`: 既存17件すべて成功(`All tests passed!`)。

以上により、`schema.graphql`置き換え・`schema.graphql.dart`の限定再生成は既存の生成済み画面
(info_company〜org_res_location, info_staff, org_res_equipment)に影響を与えていないことを確認した。

## 6. 次のアクション

要件0025の評価で「生成対象」と判定していた6見出し(customer_contact, supplier_contact,
shipping_kind, item_kind, manufacture, item)のうち、customer_contact/supplier_contactについては
本ログ2-1節の変更(mail命名の解消・配送区分IDの任意化)を踏まえて評価内容を更新できる状態になった。
customer/supplier(親場所マスタのエラー)・item_actual_size(呼称セットのエラー)は今回のschema変更
と無関係のため、要件0025ログの判定(見送り)のまま変化なし。

(その後、views.mdの修正・要件0025の再評価・9画面ぶんのGraphQL作成/モデル生成を実施した。詳細は
[docs/0025_view_graphql_generation_log.md](0025_view_graphql_generation_log.md)を参照。)

## 追記1: 0026再実行(2026/09/12、「0026を実行」の再指示)

指示の再実行にあたり、要件0020(重複指示のスキップ判定)に基づき、まず前回取得時からの差分の
有無を確認した。

### 接続・取得

`curl`で疎通確認(`HTTP 405`、前回と同様)後、`get-graphql-schema`で再取得したところ
375,490行(前回置き換え後の`lib/graphql/schema.graphql`は375,457行)で、単純な行diffでも差分が
検出された。

### 差分判定

`@graphql-inspector/cli diff`で意味的な差分を確認したところ、今回はFk#番号ズレ由来のノイズに加え、
以下の実質的な差分があった。

1.  `MstrAuditStdCheckitem`(監査基準チェック項目マスタ、History含む)の`max`/`min`列が削除された。
2.  `MstrInspectionFormula.argClass`の型が`String`から`JSON`へ変更された(新規スカラー型`JSON`が
    追加された)。
3.  `MstrAuditStdCheckitem`(History含む)に新規列`argClass`(JSON型)が追加された。
4.  `TransInspectRecord`に新規列`resultValue`(JSON型)が追加された。
5.  「工程運用マスタID」→「工程運用ID」、「品目工程運用課題マスタID」→「品目工程運用課題ID」等、
    `MstrOperation`/`MstrOperationTask`/`MstrItemOperationTask`関連の説明文(コメント)がいくつか
    整理された。

上記はいずれも`MstrAuditStdCheckitem`・`MstrInspectionFormula`・`MstrOperation`・
`MstrOperationTask`・`MstrItemOperationTask`・`TransInspectRecord`に関するものであり、
[views.md](../source/views.md)が対象とする17見出し(info_company〜item、要件0025で作成した
9画面を含む)のいずれにも該当しない。しかし要件0026の指示は「差分を比較し、変更があれば置き換え」
であり、対象画面への影響有無を条件にしていないため、要件0020の「実行しても結果が変わらないと
判断できる場合」には該当しないと判断し、**スキップせず置き換えを実行した**。

### 置き換え・要件0024の実行

`lib/graphql/schema.graphql`を置き換え(375,457行 → 375,490行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 213s; wrote 1 output.`
(新規スカラー`JSON`について`Missing scalar JSON. Defaulting to String`の警告が追加で出たが、
既存のBigFloat/Date/Datetime/UUIDと同種の既知の警告であり、エラーではない。)

### 影響確認

- `git status`で`lib/postgraphile/schema.graphql.dart`以外の生成済みファイルに変更が無いことを
  確認(他の17画面の`*.graphql.dart`は再生成されていない)。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 既存分含め35件すべて成功。

### 結論

今回のschema変更は、views.mdが対象とする画面のいずれにも影響しない。要件0025で作成済みの
9画面・既存8画面とも生成物の再作成は不要と判断し、実施していない。
