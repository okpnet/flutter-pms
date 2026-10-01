# 要件0047 editable属性の追加・view.yaml修正・再生成・相互変換テスト ログ

- 実施日: 2026/10/01
- 結果: 全テスト74件成功(RFE/Edit相互変換テストは17画面すべて成功)。要件0046で唯一相互変換不可だったcompany_pageも解消した。

要件0047の指示どおり、次の順で実施した。

1. 子ノードの編集可否を表すBool属性`editable`の追加(schema.json)。「上記実行前に行うこと」の指示に従い最初に行った。
2. `generateRfe`をcolumnEntry(子の位置)でも書けるようにした(schema.json)。
3. view.yamlの修正(`editable`の付与、修正モレの修正)。
4. 再生成が必要なGraphQLを特定・再生成・比較し、build_runner・テストを実行した。
5. 要件0046のとおり相互変換テスト・確認を再実行した。

## 1. schema.json(source/schema.json)

| 追加・変更 | 内容 |
|---|---|
| `$defs/editable`(新設) | columnEntry専用のboolean。`false`: IDの割り当てのみ(子は書き込まず、親側の`using`のFK列だけを書き込む。子はreadを参照)。`true`: 親とともに編集する(子はeditを参照し、親のRFEに必ず含まれる) |
| columnEntryの`allOf`(if/then) | `editable: false`なら`kind`は`read`、`editable: true`なら`kind`は`edit`でなければならない(merge後のkindで検証される) |
| `$defs/childGenerateRfe`(新設)・columnEntryの`generateRfe` | 子の位置でも`generateRfe`を許容した。editのトップレベルnodeを子として`<<`でmergeしてもスキーマ違反にならず、`generateRfe: false`も明示できる。子の位置では独立したRFEは生成しない |

命名は指示どおりシンプルに`editable`とした。

`generateRfe: false`は従来もトップレベルでは書けた。書けなかったのは子の位置であり、`ApprovalDetailEdit`(`generateRfe: false`)を
`ApprovalOperationPageEdit.pattern_detail`へmergeした箇所や、`ManufacturePageEdit`を`ItemPageEdit.manufacture`へmergeした箇所がエラーになっていた。
これを解消した。

規則の詳細は`source/27_yaml_to_graphql_conversion_rules.md` 6-8節(新設)、CLAUDE.md「画面仕様」(//0047)に追記した。

> **要確認**: VS Code上のYAML言語サーバーが旧schema.jsonをキャッシュしており、本ログ作成時点では`editable`・子の`generateRfe`に
> 「許可されていません」と表示されたままである。schema.jsonはDartで構文検証済み(JSONとして正しい)。
> **VS Codeのウィンドウ再読み込み(Developer: Reload Window)後に、エラーが消えることを確認してほしい。**

## 2. view.yamlの修正

### 2-1. editableの付与(11箇所)

| editノード.子 | 参照先(kind) | editable |
|---|---|---|
| StaffCapabilityEdit.staff / .capability | StaffPage / CapabilityPage (read) | false |
| StaffLicenseEdit.staff / .license | StaffPage / LicensePage (read) | false |
| ApprovalEdit.department / .position | DepartmentPage / PositionPage (read) | false |
| SpecMeasurementEdit.unit | Unit (read) | false |
| ItemPageEdit.kinds / .unit | ItemKind / Unit (read) | false |
| ApprovalDetailEdit.approval | ApprovalEdit (edit) | true |
| ItemPageEdit.manufacture | ManufacturePageEdit (edit) | true |

再監査の結果、editノード内でreadを参照し`editable`を省略している子、およびkindと`editable`が矛盾する子は0件になった。

`ItemPageEdit.unit`の要件0046での所見(生FK列`shared_unit_id`がcolumnsに無い)は、`editable: false`の規則で解消した。
規則では親側の`using`のFK列を書き込み対象とし、生FK列の記述は不要とした(既存の生成物StaffCapabilityEdit等も
生FK列をコメントアウトしたまま`using`から引数を生成しており、それと同じ扱い)。

### 2-2. 修正モレの修正(再生成の比較で発見)

| ノード | 修正 | 理由 |
|---|---|---|
| CompanyPage(read) | 会社名`labels`、`update_at`、`update_user`を追加 | CLAUDE.md「仕様」の共通項(name・update_at・更新者)が欠落していた。要件0041の改名(shared_appellations_id→names)時の修正モレ。他のRead画面と同じ形にした |
| CompanyPageEdit | 旧列名`shared_appellations_id`を会社名`labels`(appellationLabelsEdit)へ置換し、子`info_address_id`を`address`へ改名 | 要件0041の改名の修正モレ。子の名前がFK列名と同じで出力名が衝突するため、OfficePageEdit等と同じ`address`にした |
| DepartmentPageEdit.kinds | `arrayType: toMany`→`toFirstOne` | info_department_kindはinfo_department_idに一意制約を持つ1対1。要件0045でRead・GraphQLは修正済みだったが、このEditノードだけ残っていた |

### 2-3. ユーザーが要件0047として事前に変更していた箇所(そのまま反映)

- `StaffCapabilityPageEdit`/`CapableStaffPageEdit`のコメントアウト(「0047:不要と判断した」)
- `ApprovalDetailEdit`の`generateRfe: false`
- 読み込みノード名`SpecMeasurement`→`SpecMeasurementPage`、および`SpecMeasurementPage`への`symbol`の追加

## 3. 再生成が必要なGraphQLの特定と比較

view.yaml(現行、`<<`のmergeを展開)と生成済みGraphQLを、各階層の列名・子の出力名の集合で比較した(比較スクリプトは作業用、リポジトリには含めていない)。
変換規則上の定型の差は除外した。除外したのは次の差である。
- Readの`remove`(defaultWhere)とRFEの`updateAt`の付加
- Editの結果モデルからの監査列の除外
- 呼称アーム内部の展開

| 画面 | 再生成前の差分 | 対応 |
|---|---|---|
| company_page (read/edit/rfe) | readは会社名・代表・住所・事業所・更新者の出力名がview.yamlと不一致。edit/rfeは出力名の不一致に加え、rfeに`provisions`が欠落(要件0046の相互変換不可の原因) | 3ファイルを再生成 |
| approval_operation_page (edit/rfe) | `pattern_detail.approval`の`department`/`position`(ID割り当てのみ)が欠落。rfeにview.yamlに無い`symbol` | 2ファイルを再生成 |
| department_page (edit/rfe) | `kinds.remarks`が欠落 | 2ファイルを再生成(`$kindsRemarks`を追加) |
| department_page (read) | `descendants`が欠落 | **変換不可**(6章) |
| license_holders_page / staff_held_license_page (edit) | 結果モデルに`remarks`が欠落(要件0046のC1) | 結果に追加 |
| spec_measurement (read) | 参照ノード名`SpecMeasurement`がview.yamlに無い(改名)、`symbol`が欠落 | フォルダごと`spec_measurement_page`へ改名し(ユーザー選択)、readに`symbol`を追加 |
| staff_capability_page / capable_staff_page (edit/rfe) | 参照ノード(StaffCapabilityPageEdit/CapableStaffPageEdit)がコメントアウトされ存在しない | 両画面のedit/rfe(内容は同一)を削除し、トップノード`StaffCapabilityEdit`から`staff_capability/staff_capability_{edit,rfe}`を1組生成した(ユーザー選択)。結果モデルに欠落していた`remarks`も追加。両画面のreadはそのまま |

再生成後の比較では、6章の変換不可以外の差分は次の想定どおりのものだけになった。
- `editable: false`の子の`using`のFK列(`infoStaffId`等)が引数・出力に現れる差。規則どおり。
- department_page.parentの基数差。実スキーマが真の1対多のため`first: 1`で取得している(要件0045で記録済み)。

### 3-1. 改名・統合に伴う変更(アプリケーションから見えるクラス名の変更)

| 旧 | 新 |
|---|---|
| `lib/graphql/spec_measurement/spec_measurement_{read,edit,rfe}.graphql` | `lib/graphql/spec_measurement_page/spec_measurement_page_{read,edit,rfe}.graphql` |
| `Query$SpecMeasurementRead` / `Mutation$SpecMeasurementEdit` / `Query$SpecMeasurementRfe` | `Query$SpecMeasurementPageRead` / `Mutation$SpecMeasurementPageEdit` / `Query$SpecMeasurementPageRfe` |
| `lib/contents/spec_measurement_keyname.dart`(`SpecMeasurementKeyName`) | `lib/contents/spec_measurement_page_keyname.dart`(`SpecMeasurementPageKeyName`) |
| `staff_capability_page_{edit,rfe}` / `capable_staff_page_{edit,rfe}`(`Mutation$StaffCapabilityPageEdit`等) | `staff_capability/staff_capability_{edit,rfe}`(`Mutation$StaffCapabilityEdit` / `Query$StaffCapabilityRfe`) |
| company_page: 出力キー`sharedAppellationByNames` / `infoAddressByInfoAddressId` / read`ceo` / `historyInfoStaff…` | `labels` / `address` / read`ceo_labels` / `update_user`(`CompanyPageKeyName`の定数名も同様に変更。edit/RFEの代表は`ceo`のまま) |
| company_page edit: `$symbol` | 削除(view.yamlの`CompanyPageEdit`に`symbol`が無いため。編集対象にする場合はview.yamlへの追加が必要) |

## 4. build_runner

0042に従い、画面単位に分割して`--build-filter`で順次実行した。所要時間は1画面あたり約20秒。
進捗はログ監視で確認し、停止は無かった。`schema.graphql.dart`は再生成していない。

- approval_operation_pageのみ、build_runner内部で`Null check operator used on a null value`(`BuildSeries._writeBuildOutput`)が発生し、出力が書き込まれなかった。
  - 原因: 既存の出力ファイルがgit操作(10/01 07:20)で更新されており、build_runnerが自分の生成物として認識できなかったと推定する。`--delete-conflicting-outputs`は現行版では廃止され、無視される。
  - 対処: 該当の2ファイル(git管理下)を削除して再実行し、正常に生成された。
  - 同時刻にgitが更新した他の生成物(item_kind_page・unit_page)を今後再生成する場合も、同じ対処が必要になる可能性がある。
- 生成物のサイズは最大4.2MB(approval_operation_page_edit)で、0015の5000KBを超えるものは無い(.gitignoreへの追加は不要)。
- 旧`lib/postgraphile/spec_measurement/`と、staff_capability_page・capable_staff_pageのedit/rfeの生成物は`git rm`した。

## 5. テストと要件0046の再実行

| 対象 | 変更 |
|---|---|
| `test/company_page_flatten_roundtrip_test.dart` | 出力名の変更、read の`update_user`、edit/rfe の`symbol`削除、rfeの`provisions`追加に追随 |
| `lib/contents/company_page_keyname.dart` | キー・定数名を出力名に追随(readの代表のID用に`ceo_labels_*`を4件追加) |
| `test/spec_measurement_page_flatten_roundtrip_test.dart` | 旧spec_measurementのテストを改名・追随 |
| `test/staff_capability_flatten_roundtrip_test.dart` | 新規。旧staff_capability_pageのEdit/RFEテストを移設し、`remarks`を追加 |
| `test/staff_capability_page_*` / `test/capable_staff_page_*` | Edit/RFEテストを削除(readのテストは残す) |
| `test/rfe_edit_interconversion_test.dart` | 対象画面を再生成(17画面) |

結果: `flutter test` **74件すべて成功**。`dart analyze lib test`: 生成物以外のerror・warningは0件。

要件0046の再実行結果(RFE/Edit相互変換テスト):

| 画面 | 判定 | C1(RFEのみの値) | C2(@include) |
|---|---|---|---|
| 17画面すべて | 可 | 監査列(update_at等4列)のみ。approval_operation_pageは入れ子の監査列も | capability/department_category/license/office/position/provision/staff の7画面(要件0046と同じ) |

要件0046からの変化:
- company_page: 相互変換不可 → 可
- staff_capability・license_holders・staff_held_licenseの`remarks`差: 解消
- approval_operation_pageの`symbol`差: 解消
- editではない参照の確認対象: 9件 → 0件(`editable`で意図を明示)

view.yamlの要件0046確認コメントは再実行結果に合わせ、解消した13件を削除し、残る8件(全Edit共通の監査列1件、@include 7件)を残した。
新たに`DepartmentPage.descendants`へ変換不可のコメントを追加した。

## 6. 変換不可・要確認(修正していないもの)

1. **DepartmentPage.descendants(変換不可)**
   - 現象: `v_department_descendants`はビューのため、`schema.graphql`上`InfoDepartment`との関連フィールドが無い。`allVDepartmentDescendants`(ルート)からしか参照できず、一覧の各行へ入れ子で取得できない。
   - ビューの列は`ancestor_info_department_id`であり、view.yamlの`using: info_department_id`とも一致しない。
   - 対応案(DB側): `comment on view v_department_descendants is E'@foreignKey (ancestor_info_department_id) references info_department (info_department_id)';`を付与し、schema.graphqlを再取得する(要件0026)。
   - 未生成の`ItemPage`が参照する`v_item_descendants`も同じ構造のため、生成時に同じ問題になる見込み。
2. **監査列(全Edit共通、C1)**: Editの結果モデルに`updateAt`等が含まれない。保存後はRFEを再取得する運用か、Editの結果に含めるかの判断が必要(要件0046ログ5章と同じ)。
3. **@includeによる条件付き取得(7画面、C2)**: 要件0036以前の方式のRFE。今回はview.yamlの変更が無いため再生成対象外とした。要件0036の方式への追随を別途検討してほしい。
4. **ItemPageEdit.manufacture(`editable: true`)**: ユーザーがeditの参照(ManufacturePageEdit)を選んでいたため、親とともに編集する意図として`true`を付与した。品目の編集で製造元(名称・監査列を含む)まで更新することになるため、意図と異なる場合は`*ManufacturePage`+`editable: false`に変更してほしい。
5. **CompanyPageEdit.provision**: 子の位置で`generateRfe`を書けなかったことによる回避策として、ProvisionPageEditのcolumnsを複製している。
   - 今回`generateRfe`は子でも書けるようになった。
   - ただしProvisionPageEditは`requiredWhere: [info_provision_id]`も持つ。子の位置の`requiredWhere`はGraphQL引数になるため、`<<: *ProvisionPageEdit`へ置き換えると意味が変わる。複製のまま残した。
6. **company_pageの`symbol`**: CompanyPageEditに`symbol`が無いため、Editから削除した(3-1節)。編集対象とする場合はview.yamlへの追加が必要。

## 7. 追加・変更したファイル

| 区分 | ファイル |
|---|---|
| スキーマ・規則 | `source/schema.json`、`source/27_yaml_to_graphql_conversion_rules.md`(6-8節)、`CLAUDE.md`(画面仕様) |
| view.yaml | `source/view.yaml`(2章の修正、要件0046確認コメントの整理) |
| GraphQL(再生成) | company_page(read/edit/rfe)、approval_operation_page(edit/rfe)、department_page(edit/rfe)、license_holders_page(edit)、staff_held_license_page(edit) |
| GraphQL(改名・新設・削除) | spec_measurement → spec_measurement_page(read/edit/rfe、readにsymbol追加)、staff_capability(edit/rfe、新設)、staff_capability_page・capable_staff_page(edit/rfe、削除) |
| 生成モデル | 上記に対応する`lib/postgraphile/**`(build_runner) |
| keyname | `lib/contents/company_page_keyname.dart`、`lib/contents/spec_measurement_page_keyname.dart`(改名) |
| テスト | 5章の表のとおり |

## 追記: 再実行指示のスキップ(要件0020、2026/10/01)

同日に「0047を実行」が再度指示された。前回実行後、`source/view.yaml`・`source/schema.json`・`lib/graphql/**`に変更が無いこと(更新日時)を確認し、view.yamlとGraphQLの構造比較を再実行した。結果は前回の最終状態と同一だった(差分は6章の`DepartmentPage.descendants`(変換不可)と、3章の想定どおりの差のみ)。実行しても結果が変わらないため、要件0020に従い再生成・テストは行わずスキップした。
