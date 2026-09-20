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

## 追記2: 0026再々実行(2026/09/15、「0026を実行」の再指示)

前回(追記1)以降、他コミット(`f6613b5`〜`19cb69c`)でリポジトリが進んでおり、要件0025で
作成した9画面の生成物(GraphQL/モデル/キー定数/テスト)はすべて維持されていることを確認した
うえで、要件0020の重複判定のため再度差分の有無を確認した。

### 接続・取得・差分判定

`curl`で疎通確認(`HTTP 405`、変化なし)後、`get-graphql-schema`で再取得したところ389,298行
(直前の`lib/graphql/schema.graphql`は375,490行、+13,808行)と、これまでで最も大きい差分を検出した。
`@graphql-inspector/cli diff`では8,143件の差分が報告されたが、大半はFk#番号ズレ由来のノイズで、
実質的な差分(578件)の内訳は以下のとおり。

1.  **新規テーブル`MstrInspectionKind`(検査種類マスタ)が追加された**(対応するCreate/Delete/
    Update/History系の型一式、1,270型・旧1,258型から+12型)。
2.  `MstrItem`に`mstrInspectionsByMstrItemId`、`MstrStakeholder`に
    `mstrInspectionsByExternalInspection`、`SharedAppellation`に
    `mstrInspectionKindsBySharedAppellationsId`等、検査関連の新規逆参照フィールドが追加された。
3.  `MstrEquipmentKind`の逆参照フィールド名が誤字修正された:
    `historyMstrEquipmenKindsByMstrEquipmentKindId`(Equipmen、tが1つ欠落)→
    `historyMstrEquipmentKindsByMstrEquipmentKindId`。org_res_equipment_kind画面の
    GraphQLファイル(read/edit とも)はこのフィールドを参照していないことを確認済み
    (`grep`で該当箇所なし)。
4.  他はいずれも新規CRUD型の追加(既存型への破壊的変更ではない)。

新規テーブル`MstrInspectionKind`はviews.mdの対象17見出しに存在しない。#3の誤字修正は
org_res_equipment_kindの生成済みGraphQLが参照しないフィールドのため影響なし。要件0026は
差分の有無のみを条件にしているため、要件0020のスキップ対象にはあたらないと判断し、
前回と同様に**置き換えを実行した**。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(375,490行 → 389,298行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 219s; wrote 1 output.`(警告は前回までと同種のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の本ライブラリの生成済みファイルに変更が
  無いことを確認(既存17画面の`*.graphql`/`*.graphql.dart`は再生成されていない)。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 35件すべて成功。

### 結論

新規テーブル`MstrInspectionKind`の追加を含む今回のschema変更も、views.mdが対象とする17画面には
影響しない。生成物の再作成は不要と判断し、実施していない。

## 追記3: 0026再実行(2026/09/17、「2026を実行」の再指示)

チャットの指示「2026を実行」は要件番号「0026」の入力ミスと判断し(直近まで一貫して
「00XX」形式の4桁で指示されており、要件番号としての「2026」は存在しないため)、要件0026を
再実行した。なお本セッションの外でリポジトリが大きく進んでおり(要件0027〜0030の追加、
バーコード用テーブルの追加等)、`git status`はクリーンな状態から開始した。

### 接続・取得・差分判定

`curl`で疎通確認(`HTTP 405`、変化なし)後、`get-graphql-schema`で再取得したところ437,212行
(直前の`lib/graphql/schema.graphql`は389,298行、+47,914行)と、これまでで最大の差分を検出した。
`@graphql-inspector/cli diff`は9,610件を報告したが、大半はFk#番号ズレ由来のノイズ。
`type X implements Node`の一覧差分を取ったところ、新規テーブルは**`SharedSymbolCounter`のみ**
(直近のコミット「ER修正。バーコード用のシンボルをテーブルに追加した」に対応、views.mdの対象
17+9見出しには含まれない)。

views.mdの対象テーブルに関する実質的な差分は以下のとおり。

1.  **ほぼ全テーブルに`symbol`列が追加された**(views.mdの17+9見出しが対応する型のうち
    `InfoCompany`・`InfoOffice`・`InfoDepartment`・`InfoStaff`・`InfoPosition`・
    `MstrEquipment`・`MstrEquipmentKind`・`MstrLocation`・`MstrStakeholder`・
    `MstrStakeholderContact`・`MstrShippingKind`・`MstrItemKind`・`MstrManufacturer`・
    `MstrItemActualSize`・`MstrItem`・`MstrItemProvision`・`MstrItemSizeKind`・
    `MstrStakeholderProvision`・`MstrTaskGroup`・`MstrTask`・`MstrTaskTree`・
    `MstrTaskLocation`・`MstrOperation`・`MstrItemOperationTask`・`MstrInspectionKind`・
    `MstrInspection`・`MstrInspectionFormula`・`MstrInspectionOperation`・
    `MstrInspectionOperationTask`・`InfoAddress`・`InfoProvision`含めほぼすべてに追加された)。
    バーコード用シンボルのER変更に対応するものと見られる。
2.  **`MstrItem.mstrItemKindId`が`UUID`(任意)から`UUID!`(必須)に変更された**(itemの
    「品目種類id」)。
3.  **`MstrItemOperationTask.mstrItemId`が`UUID`(任意)から`UUID!`(必須)に変更された**
    (oepration_editerの品目工程運用課題「品目ID」)。

2・3はいずれも出力型(`type`)側のみの変更で、対応する`Patch`型
(`MstrItemPatch.mstrItemKindId`・`MstrItemOperationTaskPatch.mstrItemId`)は引き続き
`UUID`(任意)のままであることを確認した。ミューテーション変数の型定義は変更不要。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(389,298行 → 437,212行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 243s; wrote 1 output.`(新規スカラー`BigInt`について
`Missing scalar BigInt. Defaulting to String`の警告が追加されたが、既存のBigFloat/Date/
Datetime/UUID/JSONと同種の既知の警告)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイルに変更が無いことを確認。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 50件すべて成功(前回51件から1件減っているのは、本ログ範囲外の作業
  ("### read"がviews.mdから削除されたequipment_inspection_operation_editor向けのreadテスト
  削除)によるもので、今回のschema置き換えとは無関係)。

### 次のアクション

新規列`symbol`の追加、および`mstrItemKindId`/`mstrItemId`の必須化は、views.mdでの評価
(要件0025のスコープ、モレの要否判断)が別途必要。本ログでは記録のみに留め、views.md・
GraphQLファイルの修正は行っていない。

## 追記4: 0026再実行(2026/09/18、「0026を実行」の指示)

### 接続・取得・差分判定

`curl`で疎通確認(`HTTP 405`)後、`get-graphql-schema`で再取得したところ438,395行(直前の
`lib/graphql/schema.graphql`は437,212行、+1,183行)と、これまでより小規模な差分を検出した。
`type X implements Node`の一覧差分を取ったところ、以下の変化があった。

- **新規テーブル`TransOperationsPlan`・`TransWorkPlan`が追加**
- **既存テーブル`TransProduct`・`TransProductDetail`が削除**

いずれもviews.mdの対象見出し(既存26+新規7、inspection_sch除く)には含まれない。views.mdの
対象テーブルへの影響としては、以下の逆参照フィールドの変化のみを検出した(Fk#番号ズレノイズ
除く実質差分216件中の一部)。

- `MstrTask`(taskの主テーブル): `transProductDetailsByMstrTaskId`が削除され、
  `transWorkPlansByMstrTaskId`が追加された。
- `TransResorcePlan`(resource_planの主テーブル): `transProductsByTransResorcePlanId`が削除され、
  `transOperationsPlansByTransResorcePlanId`が追加された。

これらはいずれも既存の生成済みGraphQLファイル(task_read/edit.graphql、
resource_plan未生成のため対象外)が選択していないフィールドのため、既存の生成物への実害は
無いと判断した。他の対象テーブル(info_company〜equipment_inspection_peration_task、
order/order_detail/ship_order/purchase/purchase_detail/unrecognized)には実質的な変更は
無かった。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(437,212行 → 438,395行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 226s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイルに変更が無いことを確認。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 60件すべて成功(前回50件から10件増加しているのは、本ログ範囲外の並行作業
  (`symbol`列のGraphQL反映)によるもので、今回のschema置き換えとは無関係)。

### 次のアクション

新規テーブル`TransOperationsPlan`・`TransWorkPlan`はviews.mdに未反映(要件0025のスコープ)。
「生産」関連と見られる`TransProduct`・`TransProductDetail`の廃止に伴う再設計の可能性があり、
業務要件の確認が必要。

## 追記5: 0026再実行(2026/09/18、「0026の実行。完了後0025を実行。」の指示)

### 接続・取得・差分判定

`curl`で疎通確認(`HTTP 405`)後、`get-graphql-schema`で再取得したところ438,885行(直前の
`lib/graphql/schema.graphql`は438,395行、+490行)と、小規模な差分を検出した。
`type X implements Node`の一覧差分は無く(新規・削除テーブルなし)、実質差分(Fk#番号ズレ
ノイズ除く)は以下の2点のみだった。

1.  **`TransContainer.name`(String)が削除され、`sharedAppellationsId`(共通名前仕様)が
    追加された**(コンテナ名を`shared_appellations`経由の呼称セットへ移行する設計変更と
    見られる)。
2.  **`TransWorkRecordVisiter.transProductId`が削除された**(前回追記4で確認した
    `TransProduct`廃止に伴う残存フィールドの整理と見られる)。

いずれも`TransContainer`・`TransWorkRecordVisiter`はviews.mdの対象見出し(38見出し)に
含まれておらず、影響は無い。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(438,395行 → 438,885行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 241s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイルに変更が無いことを確認。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 60件すべて成功。

### 次のアクション

`TransContainer`・`TransWorkRecordVisiter`はviews.md未対応のため対応不要。引き続き
`TransOperationsPlan`・`TransWorkPlan`(前回追記4)はviews.mdへの評価・反映が要件0025の
スコープとして残っている。

## 追記6: 0026再実行(2026/09/18、「0026実行。完了後0025実行。」の指示)

### 接続・取得・差分判定

`curl`で疎通確認(`HTTP 405`)後、`get-graphql-schema`で再取得したところ438,850行(直前の
`lib/graphql/schema.graphql`は438,885行、-35行)と、小規模な差分を検出した。新規・削除
テーブルは無し。実質差分(Fk#番号ズレノイズ除く)は以下の2点のみだった。

1.  **`TransWorkRecordVisiter.transProductDetailId`列が削除された**(前回
    [docs/0025_container_and_visiter_evaluation_log.md](0025_container_and_visiter_evaluation_log.md)
    で「`TransProduct`廃止の余波で参照先を失い孤立した列」としてエラー記録していた
    まさにその列)。
2.  `TransWorkRecordVisiter.transVisiterId`が`UUID`(任意)から`UUID!`(必須)に変更された。

`TransWorkRecordVisiter`はviews.mdの`work_rcord_visiter`見出しに対応する(要件0025の
スコープ)ため、置き換えを実行した。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(438,885行 → 438,850行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 283s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイルに変更が無いことを確認。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 60件すべて成功。

### 次のアクション

`transProductDetailId`列の削除に伴うviews.md側の対応は、要件0025として続けて実施する
(docs/0025_container_and_visiter_evaluation_log.md の続報を参照)。

## 追記7: 0026再実行(2026/09/19、「0026の実行。product_rezを除き、0025を実行。」の指示)

### 接続・取得・差分判定

`curl -m 10 http://192.168.1.100:5000/graphql` で疎通確認(`HTTP 405`、変化なし)後、
`get-graphql-schema`で再取得したところ445,222行(直前の`lib/graphql/schema.graphql`は
438,850行、+6,372行)の差分を検出した。`type X implements Node`の一覧差分は無く(新規・削除
テーブルなし)。

`@graphql-inspector/cli diff`は6,965件を報告した。従来からのFk#番号ズレノイズに加え、今回は
**`HistoryInfoStaffXxxCreateInput`/`updateHistoryInfoStaffOnXxxForXxxFkNPatch`系の型が持つ
「`transConveysUsingHistoryIdAndInfoStaffId`」「`transInventoryAppliesUsingHistoryIdAndInfoStaffId`」
「`transInventoryRequestsUsingHistoryIdAndInfoStaffId`」「`transProductRezsUsingHistoryIdAndInfoStaffId`」
「`transPurchaseRezsUsingHistoryIdAndInfoStaffId`」という5種の逆参照ネスト入力フィールドが、
ほぼ全テーブル(`TransContainer`・`TransInspectRecord`・`TransInspectSch`・
`TransInspectSchDetail`・`TransOperationsPlan`・`TransPurchaseRec`・`TransPurchaseRecVisiter`・
`TransResorcePlan`・`TransUnrecognized`・`TransUnrecognizedDetail`・`TransWorkRecord`・
`TransWorkRecordCertificate`・`TransWorkRecordVisiter`等)の`HistoryInfoStaff`系Create/Patch入力
から一斉に消える」という、Fk#番号ズレと同種の副作用的ノイズが大半を占めた。

この副作用の発生元を確認したところ、`TransConvey`・`TransInventoryApply`・
`TransInventoryRequest`・`TransProductRez`・`TransPurchaseRez`の5テーブル自身に、
`historyInfoStaffToStaffHistoryIdAndInfoStaffId`(担当者)という新しい複合外部キー参照が
追加されたことが原因と判明した(該当5テーブル向けの`Update`系入力型が95件新規追加、
`staffHistoryId`の説明文「作業担当履歴ID」→「作業担当者履歴ID」の訂正が4件、等)。

`TransPurchaseRez`は`purchase_rec`見出しが対応する`TransPurchaseRec`(cで終わる、別テーブル)
とは名称が似ているが別物であり、views.mdのどの見出しにも対応しない。`TransProductRez`は
`product_rez`見出し(今回の指示で評価対象外)に対応する。`TransConvey`・
`TransInventoryApply`・`TransInventoryRequest`はviews.mdに見出しが存在しない。

上記5テーブルを名乗り元とする副作用ノイズを除いた残り(views.mdの対象見出しの物理型
`TransUnrecognized`・`TransResorcePlan`・`TransInspectSch`・`TransInspectSchDetail`・
`TransInspectRecord`・`TransPurchaseRec`・`TransOperationsPlan`・`TransWorkRecord`・
`TransWorkRecordVisiter`・`TransPurchaseRecVisiter`・`TransContainer`・`TransContainerTree`)
自身の列・フィールドが変更対象になっている行は**1件も無い**ことを`grep`で確認した
(いずれも「〜Fk#HistoryInfoStaffCreateInput」等の器としてしか登場しない)。

要件0026の指示は差分の有無のみを条件にしているため、要件0020のスキップ対象にはあたらないと
判断し、前回までと同様に**置き換えを実行した**。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(438,850行 → 445,222行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 249s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイル(`*.graphql`/`*.graphql.dart`)
  に変更が無いことを確認(既存31画面は再生成されていない)。
- `dart analyze lib test`: error・warning 0件(info 13,848件、いずれも既存生成コードの
  スタイル指摘)。
- `flutter test`: 既存分すべて成功。

### 結論

`TransConvey`・`TransInventoryApply`・`TransInventoryRequest`・`TransProductRez`・
`TransPurchaseRez`(いずれもviews.md対象外、`TransProductRez`は今回の指示で評価対象外と
指定された`product_rez`見出しに対応)への「担当者」参照追加に伴う今回のschema変更は、
views.mdが対象とする既存31画面・評価済み11見出し(unrecognized〜container_tree)の
いずれにも影響しない。生成物の再作成は不要と判断し、実施していない。

要件0025の実行(product_rez除く)については
[docs/0025_purchase_convey_staff_reference_evaluation_log.md](0025_purchase_convey_staff_reference_evaluation_log.md)
に記録した。

## 追記8: 0026再実行(2026/09/19、「trans_purchase_rezとtrans_product_rez、中間テーブル
trans_inventory_requestを変更した。0026を実行。」の指示)

### 接続・取得・差分判定

`curl -m 10 http://192.168.1.100:5000/graphql` で疎通確認(`HTTP 405`、変化なし)後、
`get-graphql-schema`で再取得したところ442,976行(直前の`lib/graphql/schema.graphql`は
445,222行、-2,246行)を検出した。`type X implements Node`の一覧差分は無く
(新規・削除テーブルなし)。

`@graphql-inspector/cli diff`は3,381件を報告した。Fk#番号ズレノイズを除いた実質差分を
`TransProductRez`・`TransPurchaseRez`・`TransInventoryRequest`自身のフィールド変更に
絞り込んで確認したところ、以下のとおりだった。

1.  **`TransProductRez`から`registerAt`(引当予約日)・`registerPlanAt`(引当予定日)・
    `staffHistoryId`(作業担当者履歴ID)・`infoStaffId`(作業担当者ID)の4列
    (および導出される`historyInfoStaffByStaffHistoryIdAndInfoStaffId`参照)が削除された**
    (要件0026追記7で新規追加を確認した「担当者」参照が、指示どおり変更・削除された)。
2.  **`TransPurchaseRez`から`historyId`(作業担当者履歴ID)・`infoStaffId`(作業担当者ID)の
    2列(および導出される`historyInfoStaffByHistoryIdAndInfoStaffId`参照)が削除された**
    (同上)。
3.  `TransInventoryRequest`自身のフィールド構成(`historyId`・`infoStaffId`を含む)は
    旧スキーマと完全に一致しており、差分は検出されなかった。指示にある「中間テーブル
    trans_inventory_requestを変更した」に対応する実質差分はスキーマ上には現れなかった
    (列以外の制約・トリガー等の変更、または`TransProductRez`/`TransPurchaseRez`側からの
    参照関係の変更に留まる可能性がある)。

このほか、views.mdに対応する見出しを持たない`TransComplaintOrderAdapter`に
`transOrderByTransOrderId`(新規列`trans_order_id`)が追加されたことも検出したが、
既存の`order`見出しが対応する`TransOrder`自身のフィールドには変更が無く
(`TransOrder`側に追加されたのは`transComplaintOrderAdaptersByTransOrderId`という
逆参照フィールドのみで、生成済み`order_read.graphql`/`order_edit.graphql`はこのフィールドを
選択していない)、影響は無いと判断した。

`TransProductRez`は`product_rez`見出し(要件0025で継続して評価対象外としている空スタブ)に、
`TransPurchaseRez`・`TransComplaintOrderAdapter`・`TransInventoryRequest`はいずれもviews.mdの
どの見出しにも対応しないため、既存31画面・評価済み11見出しのいずれにも影響しないことを
`grep`で確認した(0026追記7と同じ確認方法)。

要件0026の指示は差分の有無のみを条件にしているため、要件0020のスキップ対象にはあたらないと
判断し、**置き換えを実行した**。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(445,222行 → 442,976行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 311s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイル(`*.graphql`/`*.graphql.dart`)
  に変更が無いことを確認(既存31画面は再生成されていない)。
- `dart analyze lib test`: error・warning 0件(info 13,848件、既存生成コードのスタイル指摘のみ)。
- `flutter test`: 60件すべて成功。

### 結論

`trans_purchase_rez`・`trans_product_rez`の「担当者」参照削除は、views.md対象外
(`product_rez`は評価対象外、`TransPurchaseRez`は対応見出し無し)のため、views.mdへの
反映・GraphQL再生成は不要と判断した。`trans_inventory_request`自体の実質差分はスキーマ上
検出されなかった。生成物の再作成は行っていない。

## 追記9: 0026再実行(2026/09/20、「0026を実行」の指示)【重大】共通名前仕様の破壊的変更を検出

### 接続・取得・差分判定

`curl -m 10 http://192.168.1.100:5000/graphql` で疎通確認(`HTTP 405`、変化なし)後、
`get-graphql-schema`で再取得したところ446,975行(直前の`lib/graphql/schema.graphql`は
442,976行、+3,999行)を検出した。`type X implements Node`の一覧差分を取ったところ、
**新規テーブル`SharedDictionaryValue`・`SharedLanguageCode`が追加された**。

`@graphql-inspector/cli diff`は1,033件(うち61件が"breaking changes")を報告した。今回は
従来のFk#番号ズレノイズが発生しておらず、`grep -ivE "shareddictionary|sharedlanguagecode"`で
除外すると残るのは17行のみ(`SharedAppellationsFkNInput`の`connect/delete/updateByJaAndEn`
複合キー入力の削除、`SharedDictionariesOrderBy`の`JA_ASC/JA_DESC/EN_ASC/EN_DESC`列挙値の削除)で、
これも同じ変更の副作用であることを確認した。つまり**今回の1,033件はすべて単一の変更に由来する**。

### 変更内容(要件0005の[共通名前仕様](../CLAUDE.md#共通名前仕様)そのものに関わる破壊的変更)

1.  **`SharedDictionary`型から`ja`・`en`のスカラー列(String)が削除**され、代わりに
    `sharedDictionaryValuesBySharedDictionaryId`(Relay Connection、新規`SharedDictionaryValue`
    型)が追加された。
2.  **新規テーブル`SharedLanguageCode`**(言語コードマスタ): `sharedLanguageCodeId`・
    `code`(言語コード、`String!`)・`label`(ラベル、`String!`)・`priority`(優先順位、`Int!`)・
    `isDefault`(標準、`Boolean`)・共通項(`remarks`/`updateAt`/`updateUserId`/
    `updateUserHistoryId`/`remove`)を持つ。
3.  **新規テーブル`SharedDictionaryValue`**(辞書値、`SharedDictionary`×`SharedLanguageCode`の
    多対多相当): `sharedDictionaryValueId`・`sharedLanguageCodeId`・`sharedDictionaryId`・
    `dictionaryValue`(値、`String!`)・共通項を持つ。
4.  `SharedDictionaryInput`/`SharedDictionaryPatch`(ミューテーション入力)からも`ja`/`en`が
    削除され、代わりに`sharedDictionaryValuesUsingSharedDictionaryId`(ネストしたcreate/connect
    入力)が追加された。

つまり、固定2言語(ja/en)をスカラー列として持つ設計から、**言語マスタ(`SharedLanguageCode`)
経由で任意の言語数を子テーブル(`SharedDictionaryValue`)の行として持つ設計**へ全面的に
再設計された。

### 影響範囲(重大・全画面規模)

[CLAUDE.md 共通名前仕様](../CLAUDE.md#共通名前仕様)は「`shared_dictionary`の列`ja`,`en`は
アプリケーションがローカライズを基に引数として与える」という、今回削除された旧構造を前提に
記述されている。この前提のもとで生成された成果物すべてが影響を受ける。

- `grep -rlE "^\s+ja$|^\s+en$" lib/graphql --include="*.graphql"` → **48ファイル**
  (既存31画面の read/edit GraphQLファイルほぼすべて)が`ja`/`en`をフィールド選択している。
- `lib/contents/*_keyname.dart`の`_ja`/`_en`サフィックス定数(要件0005の共通名前仕様に基づく
  ものすべて、要件0032で`ContentVariable`化した706定数のうち相当数)も、参照先のスカラー列が
  無くなるため、現行のクエリ構造のままでは意味を失う。
- 現時点では`--build-filter="lib/postgraphile/schema.graphql.dart"`で対象を限定しているため、
  既存31画面の`*.graphql.dart`は再生成されておらず、`dart analyze`・`flutter test`は
  影響を受けず成功する(下記4節)。ただし**次回、いずれかの画面のGraphQLファイルに手を入れて
  build_runnerを実行した瞬間、その画面のコード生成が失敗する**(schema上に`ja`/`en`
  フィールドが存在しないため)。

### 置き換え・要件0024の実行・影響確認

`lib/graphql/schema.graphql`を置き換え(442,976行 → 446,975行)、
`dart run build_runner build --build-filter="lib/postgraphile/schema.graphql.dart"`を実行した。

結果: `Built with build_runner/aot in 259s; wrote 1 output.`(警告は既知のスカラー代替のみ)。

- `git status`で`lib/graphql/schema.graphql`以外の生成済みファイルに変更が無いことを確認
  (既存31画面は再生成されていない)。
- `dart analyze lib test`: error・warning 0件。
- `flutter test`: 既存分すべて成功(`*.graphql`ファイル自体はまだ古いschemaのまま
  codegenされた`*.graphql.dart`を参照しているため、今回の置き換えの影響を受けていない)。

### 結論・次のアクション(要件0003のリスク顕在化)

要件0003で抽出すべきとされていた「大幅な変更が予測される領域」のうち、**共通名前仕様
(shared_appellations/shared_dictionary経由のローカライズ)そのものの構造変更**が実際に
発生した。これは低減処置(データベース構成の一部変更等)で吸収できる範囲を超えており、
要件0003の言う「仕様そのものの変更としてコミット」する対象に該当すると判断する。

対応方針(新しい`ja`/`en`の取得クエリ形状、`KeyName`定数の再設計、`nested_map_flattener.dart`
側の対応、[共通名前仕様](../CLAUDE.md#共通名前仕様)本文の書き換え、既存31画面GraphQLの
一斉改修の要否・範囲)は業務・設計判断を要するため、本ログでは現状の記録に留め、
schema.graphql自体の置き換え以外の対応(views.md・GraphQL・KeyNameの修正)は実施していない。
