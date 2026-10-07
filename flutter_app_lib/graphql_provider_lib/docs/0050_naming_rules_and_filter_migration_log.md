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
