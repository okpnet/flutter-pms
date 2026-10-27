# 要件0050 実施ログ: トップノードの命名規則・引き継ぎ規則・filterへの移行

実施日: 2026-10-07
要件: CLAUDE.md「要件(0050以降)」2026/10/07_0050

## 1. 対応表(要件0050 7-1)

### 1-1. 生成物が変わるもの

| 変更前 | 変更後 | 生成物の変化 | 状態 |
|---|---|---|---|
| DepartmentCategoryPage | (名前は同じ) | ディレクトリ`department_category/`→`department_category_page/`、操作名`DepartmentCategoryRead`→`DepartmentCategoryPageRead`、`DepartmentCategoryRfe`→`DepartmentCategoryPageRfe`、KeyName`department_category_keyname.dart`→`department_category_page_keyname.dart` | view.yaml済み・生成は未実施 |
| DepartmentCategoryEdit | DepartmentCategoryPageEdit | 操作名`DepartmentCategoryEdit`→`DepartmentCategoryPageEdit`(ディレクトリは上と同じ) | view.yaml済み・生成は未実施 |
| StaffCapabilityEdit | StaffCapabilityEditFields + StaffCapabilityPageEdit・CapableStaffPageEdit(新設) | `staff_capability/`(`StaffCapabilityEdit`・`StaffCapabilityRfe`)を廃止し、`staff_capability_page/`・`capable_staff_page/`にそれぞれedit・rfeを生成 | view.yaml済み・生成は未実施 |
| `condition: true`を持つ26ノード | `filter: true` | トップの引数`$condition: <テーブル>Condition`→`$filter: <テーブル>Filter` | view.yaml済み・生成は未実施 |

### 1-2. 名前だけが変わるもの(生成物は変わらない)

| 変更前 | 変更後 | view.yaml内の置換数 |
|---|---|---|
| dictionaryLabel | DictionaryLabelReadFields | 9 |
| dictionaryEdit | DictionaryEditFields | 5 |
| appellationLabels | AppellationLabelsReadFields | 33 |
| appellationLabelsEdit | AppellationLabelsEditFields | 28 |
| addressFields | AddressReadFields | 7 |
| addressEditFields | AddressEditFields | 7 |
| languageCodeEdit | LanguageCodeEditFields | 2 |
| updateStaff | UpdateStaffReadFields | 29 |
| Unit | UnitReadFields | 11 |
| ItemKind | ItemKindReadFields | 5 |
| ItemRead | ItemReadFields | 3 |
| ApprovalRead | ApprovalReadFields | 4 |
| ApprovalEdit | ApprovalEditFields | 5 |
| ApprovalDetailRead | ApprovalDetailReadFields | 3 |
| ApprovalDetailEdit | ApprovalDetailEditFields | 7 |
| StaffLicenseEdit | StaffLicenseEditFields | 6 |
| SpecMeasurementEdit | SpecMeasurementPageEdit | 3(生成物はすでに`spec_measurement_page/`・`SpecMeasurementPageEdit`) |

置換はコメント・アンカー・エイリアスを含め、識別子として一致する箇所だけを対象にした(前後が英字・`_`・`$`でないこと)。

### 1-3. 規則に合わせて構造を変えたもの

- `StaffLicenseEditFields`: `requiredWhere`・`generateRfe: true`を、取り込む側の`StaffHeldLicensePageEdit`・`LicenseHoldersPageEdit`へ移した(要件0050 3-2・4-1)。生成物は変わらない見込み。
- `ApprovalDetailEditFields`: `generateRfe: false`を削除した(要件0050 3-2。`~EditFields`は生成しないため不要)。

## 2. 反映先(要件0050 8)

| 対象 | 内容 | 状態 |
|---|---|---|
| CLAUDE.md 5-3節 | 命名・生成対象・ディレクトリ・操作名を置き換え | 済み |
| 27_yaml_to_graphql_conversion_rules.md | 0章の表、3-1節(変数の共有・paginationの例外)、5章(filter)、6-7節(引き継ぎ)、10章(命名)、変更履歴。本文のノード名を新しい名前に置換 | 済み |
| schema.json | `condition`→`filter`、トップノードの`patternProperties`(接尾辞とkindの一致、`~Fields`に`generateRfe`を禁止)、`additionalProperties: false` | 済み |
| prune_schema.dart | 関連フィルタの入力型を残す規則 | 未実施(全量スキーマの再取得待ち) |
| lib/extensions/ | 平坦なMap→`<テーブル>Filter`のコンバーター、画面ごとのテスト | 未実施(同上) |
| GraphQL・生成モデル・KeyName・テスト | 再生成 | 未実施(同上) |

## 3. 検証

- schema.jsonはJSONとして読み込めることを確認した。
- view.yamlを、マージキー(`<<`)を解決したうえで次の点について検査した(一時的な検査スクリプト、Dart)。
  - トップノード名が4つの接尾辞のいずれかに一致すること、kindが接尾辞と一致すること
  - `~Fields`に`generateRfe`が無いこと
  - node・columnEntryに、schema.jsonに無いキー(旧`condition`等)が無いこと
- 結果: 当初60ノード中エラー1件(`StaffCapabilityEdit`)。4章の判断を反映した後、62ノード・エラー0件。

## 4. StaffCapabilityEditの扱い(ユーザー判断済み)

0050の7-2-3は「`StaffCapabilityEditFields`にし、`StaffCapabilityPageEdit`と`CapableStaffPageEdit`を新設する」としている。
一方、0047では両者を「不要」と判断しており、両者が食い違っていたため、ユーザーに確認した。

- 判断: 0050の7-2-3どおり、EditFields+2つのPageEditとする(資格の`StaffHeldLicensePageEdit`・`LicenseHoldersPageEdit`と同じ形)。
- 対応: `StaffCapabilityEdit`を`StaffCapabilityEditFields`に改名し、`requiredWhere`・`generateRfe`を新設した2つの`~PageEdit`へ移した。
  0047のコメント(「不要と判断した」)は残し、0050で新設した旨を併記した。

## 5. 全量スキーマの再取得(CLAUDE.md 4-1節)

- `dart run tool/fetch_schema.dart`を実行した。
  - `http://192.168.1.100:5000/graphql`: 接続タイムアウト(10秒)
  - `http://192.168.9.245:5000/graphql`: イントロスペクションが5分でタイムアウト
- 同じサーバーへ軽いクエリを送ると応答はあったが、`InfoOfficeFilter`に関連のフィールド(`infoAddressByInfoAddressId`等)が無く、
  `connectionFilterRelations`はまだ有効になっていない。
- 原因の候補: `docker/postgraphile`のファイル名が`postgraphilerc.js`(先頭のドットなし)で、`docker-compose.yml`がマウントする
  `./.postgraphilerc.js`と一致していない。ファイル名を`.postgraphilerc.js`に改め、コンテナを作り直す必要がある。
- 関連フィルタを有効にすると入力型が大きく増えるため、イントロスペクションの所要時間も増える可能性がある。
  再取得でまたタイムアウトする場合は、`tool/fetch_schema.dart`のタイムアウト(5分)の延長を検討する。
- 全量スキーマは置き換えていない(取得に失敗したため)。
- 追記(2026-10-07): コミット時点で、設定ファイルはユーザーにより`.postgraphilerc.js`へ改名済み。サーバーへの適用(コンテナの作り直し)と全量スキーマの再取得は未確認。

## 6. 後半の実施(2026-10-07、全量スキーマの再取得以降)

### 6-1. 全量スキーマの再取得

- `http://192.168.1.100:5000/graphql`へ接続でき、関連フィルタ(`connectionFilterRelations`)が有効になっていることを`InfoOfficeFilter`のフィールド(`infoAddressByInfoAddressId`等)で確認した。
- `dart run tool/fetch_schema.dart`が約45秒で成功した(型12,605。`source/schema.full.graphql`が無かったため、比較は全型が追加扱い)。前回(5章)はタイムアウトしたが、今回は待ち時間を延ばさずに成功した(前回との差の原因は未確認。サーバー側の設定の適用状態による可能性がある)(一時的に30分へ延ばして実行したが、元に戻した)。
- Filter型は759。関連フィルタの有効化で、`<テーブル>Filter`に前方の関連・`<親>ToMany<子>Filter`(some/every/none)が加わった。

### 6-2. prune_schema.dartの規則(4-2節)

- 全Filter型を残すと再び肥大化するため、`$filter: <テーブル>Filter`の変数を持つ操作では、**そのクエリの選択経路に沿って**関連フィルタを残す。
  - 自テーブルの列(列用のフィルタ、`...Exist(s)`のBoolean)とand/or/notを残す。
  - 選択セットに現れる関連のうち、前方の関連は同名のFilterフィールドで、1対多は`some/every/none`で辿り、辿った先でも同様に残す(エイリアスではなく実フィールド名で照合)。
- 結果: 入力型 約1万(11,024)→215(うちFilter 41)、生成用スキーマ約106KB、`schema.graphql.dart`は3.8MB(絞り込み前の全量では563MB。CLAUDE.md 4-2節の約2MBから、関連フィルタ分が増えた)。
- 選択セットに無い関連では検索できない。必要になった場合は、view.yaml・GraphQLに関連を加える(出力しない関連は`output: false`で表現できる)。

### 6-3. GraphQLの再生成(要件0050 7-1)

| 対象 | 内容 |
|---|---|
| `department_category/` → `department_category_page/` | ファイル名`department_category_page_{read,edit,rfe}.graphql`、操作名`DepartmentCategoryPageRead`/`PageEdit`/`PageRfe`。旧生成物・旧KeyName・旧テストを削除し改名 |
| `staff_capability/`(`StaffCapabilityEdit`・`StaffCapabilityRfe`) | 廃止。`staff_capability_page/`に`StaffCapabilityPageEdit`・`StaffCapabilityPageRfe`、`capable_staff_page/`に`CapableStaffPageEdit`・`CapableStaffPageRfe`を新設(内容は同一、操作名だけ違う) |
| 全read(18本) | `$condition: <テーブル>Condition`を`$filter: <テーブル>Filter = {}`へ変更。`filter: { and: [{ remove: { equalTo: $removed } }, $filter] }`で`remove`の条件と結ぶ。`$filter`の既定値`{}`は、`and`の要素(非null)へNull許容の変数を渡せるようにするため。省略時はキーを送らないため`{}`が使われる |

- 子ページ(`filter`を持つ子)は独立した変数を作らない。親の`$filter`の関連の経路で検索する(5章)。
- 呼称の辞書の値(`sharedDictionaryValuesBy...(condition: { sharedLanguageCodeId: $languageCodeId })`)の`condition`は、行の絞り込みではなく表示言語の指定なので、そのまま残した。

### 6-4. コンバーター(要件0050 7-2)

- `lib/extensions/flat_filter_converter.dart`: `FlatFilterConverter`(平坦なMap→入れ子のFilterのMap)。1対1は前方の関連、1対多は`some`、`some`の変数条件(表示言語)を同じ`some`へ加える。展開できないキー・演算子のMapでない値・変数の欠落は`ArgumentError`。
- `tool/gen_filter_spec.dart`: 各readの選択経路から、平坦化キー→Filterの経路の対応表(`lib/contents/<画面>_filter_spec.dart`、18画面、生成物)を作る。
- 対応表は、view.yamlの経路(`as`・`using`・`from`)から作ったGraphQLを正とする。view.yamlから直接ではなくGraphQLから作るのは、GraphQLの選択経路と生成用スキーマ(6-2)が常に一致し、検索できる列と取得できる列が食い違わないようにするため。

### 6-5. build_runner・テスト

- `dart run build_runner build --delete-conflicting-outputs`: schema.graphql.dart(3.8MB)を含め、全体で約50秒。`Null check operator`のエラーは発生しなかった。5000KBを超える生成物は無く(最大は`approval_operation_page_edit.graphql.dart`の約4.2MB)、`.gitignore`への追記は不要。
- テストの見直し:
  - `department_category_flatten_roundtrip_test.dart` → `department_category_page_flatten_roundtrip_test.dart`(新名に追随)
  - `staff_capability_flatten_roundtrip_test.dart` → `staff_capability_page_edit_flatten_roundtrip_test.dart`・`capable_staff_page_edit_flatten_roundtrip_test.dart`に分割
  - `rfe_edit_interconversion_test.dart`: `department_category`→`department_category_page`、`staff_capability`→`staff_capability_page`・`capable_staff_page`(18ペア)
  - 新規`flat_filter_converter_test.dart`(27件): 単体、全18画面の対応表の全キーが`Input$<テーブル>Filter`のfromJson/toJsonで欠落なく往復すること、OfficePageの実例
- 結果: `test/`の23ファイルを1ファイルずつ実行し、すべて成功した。
- 環境の注意: Flutter 3.47.6(Windows、SDKのパスに日本語を含む)では、`flutter test`がシェーダーのコンパイル(`flutter/runtime_effect.glsl`が見つからない)で落ちる。アセットを使わないテストなので`flutter test --no-test-assets <ファイル>`で実行する。

### 6-6. 未対応(別の要件)

- 言語の引数の一般化(ja/en固定の廃止)。
- `DepartmentPage.descendants`のview.yaml・GraphQLへの反映(CLAUDE.md 8章)。
