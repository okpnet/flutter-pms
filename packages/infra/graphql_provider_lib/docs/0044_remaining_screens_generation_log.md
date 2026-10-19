# 0044 実施ログ(view.yaml未生成7画面のGraphQL/モデル生成、CompanyPage.provisions追加)

## 指示

> view.yamlからGraphQLの生成、成功した場合にのみモデルを生成する。モデルがnested_map_flattener.dart
> によってフラット化、復元できるかもテストする。相互変換できないときだけnested_map_flattener.dartを
> レビューし、根本から見直しが必要な場合は提案、それ以外の場合は対応できるように修正する。

要件0042(生成・テストの最小分割実行)に従い、画面単位でGraphQL生成→build_runner→
nested_map_flattener.dart往復変換テストのサイクルを1画面ずつ完了させてから次へ進んだ。

## 1. 生成前の評価(view.yamlの誤りの発見・修正)

生成に着手する前にview.yamlの未生成ノード(ProvisionPage/Edit・CapabilityPage/Edit・
LicensePage/Edit・PositionPage/Edit・AssignPage/Edit・StaffToCapabilityPage・
CapabilityToStaffPage)を精査し、以下の誤りを発見・修正した(いずれも生成を妨げる、または
意味的に誤った変換になる問題のため、生成前に修正)。

1. **`CapabilityPageEdit`/`LicensePageEdit`/`PositionPageEdit`/`ProvisionPageEdit`の
   `labels`が編集用アーム`*appellationLabelsEdit`ではなく読み込み用`*appellationLabels`を
   参照**(27_yaml_to_graphql_conversion_rules.md 6-7節「参照する際は常に参照元と同じkind
   のアームを選ぶこと」に反する、4箇所)。`*appellationLabelsEdit`に修正した。
2. **`StaffToCapabilityPage.capability`が存在しないテーブル`info_staff_capability`を
   参照**(実際には`mstr_staff_capability`のみ存在。兄弟ノード`CapabilityToStaffPage.
   staff_capability`は正しく`mstr_staff_capability`を参照済み)。修正した。
3. **`LicensePage`のみ他の一覧画面と異なり`condition: true`・`requiredWhere:
   [languageCode]`が欠けている**。他画面との一貫性のため追加した。
4. **`PositionPage`(kind: read)に`generateRfe: true`が誤って付与されていた**
   (`generateRfe`は`kind: edit`のノードにのみ意味を持つ、8章参照。`PositionPageEdit`側には
   正しく付与済みのため、`PositionPage`側は単純な貼り間違いと判断)。削除した。
5. **`CapabilityToStaffPage.staff_capability.staff`の`arrayType`が`toMany`になっていた**
   (`mstr_staff_capability.info_staff_id`は同テーブル自身が持つFKで`info_staff`への
   外向きの関係のため、6-1節により実際のGraphQLは常に単数フィールドになる。`arrayType`の
   値自体はFKの向きと対応しないため生成結果に影響はないが、実態と合わせ`toFirstOne`に
   修正した)。

## 2. 生成した画面(7画面、GraphQL 17ファイル)

要件0042の分割方針に従い、1画面ごとに生成→`dart run build_runner build --build-filter`
(画面単位)→`flutter test`(該当テストファイルのみ)を実施した。

| 画面 | kind | ファイル | 備考 |
|---|---|---|---|
| ProvisionPage/Edit | read+edit(+RFE) | provision_page_{read,edit,rfe}.graphql | office_page/department_categoryと同型 |
| CapabilityPage/Edit | read+edit(+RFE) | capability_page_{read,edit,rfe}.graphql | 同上 |
| LicensePage/Edit | read+edit(+RFE) | license_page_{read,edit,rfe}.graphql | `update_interval`で問題発見(3節) |
| PositionPage/Edit | read+edit(+RFE) | position_page_{read,edit,rfe}.graphql | `code`列自体が存在しない画面 |
| AssignPage/Edit | read+edit(+RFE) | assign_page_{read,edit,rfe}.graphql | staff(StaffPage共有アーム)を埋め込み |
| StaffToCapabilityPage | read のみ | staff_to_capability_page_read.graphql | capabilitys(toMany)→capability(CapabilityPage埋め込み) |
| CapabilityToStaffPage | read のみ | capability_to_staff_page_read.graphql | staff_capability(toMany)→staff(StaffPage埋め込み、外向き単数) |

各画面とも`dart analyze lib test`: error/warning 0件、対応する
`test/*_flatten_roundtrip_test.dart`: 全件成功を画面単位で確認済み(詳細は3節参照)。

### 2-1. Patchから除外した列の方針(office_page_edit.graphql等の前例を踏襲)

既存の`office_page_edit.graphql`/`staff_page_edit.graphql`が、view.yamlの`columns`に
`code`/`info_company_id`を含めているにもかかわらずPatch(書き込み対象)から除外し、
結果選択・RFEでの表示にのみ使っている前例を踏襲し、新規7画面でも以下の方針で統一した。

- **`code`をPatchから除外した理由(訂正)**: 当初は「業務コードは編集不可とする設計」と
  推測していたが誤りだった。正しい理由は**`languageCode`引数との重複**である。
  `code`を持つテーブル(`info_office`・`info_staff`・`mstr_capability`・`mstr_license`
  ・`info_provision`等)はいずれも`appellationLabels`/`appellationLabelsEdit`経由で
  `labels`を持ち、その内部の`dictionaryLabel.value.language`ノードは表示言語を解決する
  ための引数を持つ。要件0043で指摘されたとおり、この言語解決引数はテーブル自身が持つ
  `code`列と同じ名前になり得るため(3-1節、`{column: code, as: languageCode}`で
  `languageCode`へ改名する対応を要件0043で行った)、テーブル自身の`code`列を安易に
  Patchの`$code`変数として書き込み対象に含めると、将来この画面で`languageCode`系の
  引数(またはそれに準ずる`code`ベースの参照)が必要になった際に再び名前が重複する
  リスクがある。既存2画面(office/staff)はこのリスクを避けるため`code`をPatchから
  除外していたと考えられる(理由がログに明記されていなかったため本ログで訂正・明文化)。
  新規5画面(Provision/Capability/License/Position、業務コードを持つ画面すべて)でも
  同じ理由で`code`をPatchから除外し、結果選択・RFEでの表示にのみ使うことで統一した。
- `AssignPageEdit.info_staff_id`(この割り当てが「誰の」割り当てかを表す所有者的FK、
  `info_company_id`と同種)はPatchから除外。一方`info_position_id`/`info_office_id`/
  `info_department_id`は「どこに割り当てるか」という編集対象そのものであるためPatchに含めた
  (`info_assign`自体は`code`列を持たないため、この項目は`languageCode`重複とは無関係)。
- 上記以外(`details`/`detail`/`referenceValue`/`max`/`min`/`step`/`publicLicense`/
  `customerLicense`/`organizationLicense`/`updateInterval`/`priority`/`remarks`等)は
  view.yamlの宣言どおりPatchに含めた。

`info_company_id`等の「所有者的FK」をPatchから除外する方針(AssignPageEdit.info_staff_id
のみ該当)は業務要件次第のため、異なる方針が正しい場合はユーザーに確認のうえ修正されたい。

## 3. 生成中に発見した問題(すべて解決済み)

### 3-1. `mstr_license.update_interval`(Postgresの`interval`型)でgraphql_codegenがクラッシュ

`license_page_edit.graphql`で`$updateInterval: Interval`をミューテーション変数として
使ったところ、`dart run build_runner build`が`graphql_codegen`内部の`_printNamedTypeNode`
(`printInputClasses`経由)で`Null check operator used on a null value`によりクラッシュした
(出力フィールドとしての単純な使用は問題なし)。

**原因調査**: `lib/graphql/schema.graphql`を確認したところ、`Interval`はスカラーではなく
`years`/`months`/`days`/`hours`/`minutes`/`seconds`を持つ**OUTPUT専用のオブジェクト型**
であり、対応するINPUT型は別名の`IntervalInput`(同じ6フィールド)だった。GraphQL変数の
型にOUTPUT専用のオブジェクト型を指定すること自体がスキーマ上不正であり、graphql_codegen
はこの不正な組み合わせを想定しておらずクラッシュしたと判明した。

**対応**:
1. ミューテーション変数を`$updateInterval: IntervalInput`に修正。
2. `Interval`はオブジェクト型のため、他のスカラーと異なり`updateInterval`を裸の
   フィールドとして選択することはできない(サブセレクション必須)。read/RFE/editの
   結果選択すべてに`updateInterval { years months days hours minutes seconds }`を
   追加した(修正前はサブセレクション無しでも警告のみでビルドが通っていたため見落として
   いた箇所)。
3. `lib/contents/license_page_keyname.dart`の`updateInterval`定数を、他のスカラーと
   同様の単一`ContentVariable`ではなく、サブフィールドごとの6定数
   (`updateInterval_years`等)に変更した。

修正後、`dart run build_runner build --build-filter="lib/postgraphile/license_page/**"`は
正常終了し、`nested_map_flattener.dart`もこのネストしたオブジェクト(Connection形状では
ない単純なネストオブジェクト)を`updateInterval||years`のような`||`区切りキーへ問題なく
平坦化・復元できることを確認した(nested_map_flattener.dart自体の変更は不要だった)。

## 4. CompanyPage.provisions(ProvisionPage埋め込み)の追加

view.yamlの`CompanyPage`に`provision`(`as: provisions`、`arrayType: toMany`、
`<<: *ProvisionPage`)が追加されていたため(2026/09/29付コメント)、`company_page_read.graphql`
に`provisions: infoProvisionsByInfoCompanyId(...)`ブロックを追加した。

- `using`は省略されているが、`InfoProvision`から`InfoCompany`への一意なFKは
  `info_company_id`の1本のみのため、自動的に`infoProvisionsByInfoCompanyId`に決定できる
  (27_yaml_to_graphql_conversion_rules.md 6-2節)。
- view.yamlに`limit`指定が無いため、`offices`(`limit: 50`あり)と異なりページネーション
  引数(`first`/`offset`)は持たない(department_page.kindsと同じ扱い、6-6節)。
- `ProvisionPage`自身の`defaultWhere`(`remove = false`)は、`offices`の前例(要件0035)に
  ならい`filter: { remove: { equalTo: $removed } }`として引き継いだ。
- `company_page_keyname.dart`に`provisions`(Connection)・
  `provisions_labels_..._dictionaryValue`の2定数を追加。
- `company_page_flatten_roundtrip_test.dart`のread用モックJSONに`provisions`(1件)を
  追加し、`extractFromEachRecord`で各レコードのlabelsを取り出せることを確認するアサーション
  を追加した。

`dart run build_runner build --build-filter="lib/postgraphile/company_page/**"`実行後、
`flutter test test/company_page_flatten_roundtrip_test.dart`は5件(既存3件+新規1件+要件0036の
1件)すべて成功した。`company_page_edit.graphql`/`company_page_rfe.graphql`はprovisions
埋め込みの対象外(view.yamlのCompanyPageEditに`provision`は追加されていない)のため変更していない。

## 5. nested_map_flattener.dartのレビュー結果

指示にある「相互変換できないときだけnested_map_flattener.dartをレビューし」に該当する
ケースは**発生しなかった**。7画面17ファイル+CompanyPage.provisionsのすべてで
`flatten()` → `unflatten()`の往復が元のMapと完全一致することを確認した。3-1節の
`Interval`(ネストしたオブジェクト、Connection形状ではない)を含め、既存の
`nested_map_flattener.dart`の実装(Connection形状の再帰的な平坦化・復元、
`extractFromEachRecord`によるtoMany配下の特定列抽出)で問題なく対応できた。
nested_map_flattener.dart自体の変更は不要と判断した。

## 6. 影響確認(全体)

- `dart analyze lib test`: 21,225件、すべて`info`(既存生成コードのスタイル指摘)。
  `error`・`warning`は0件。
- `flutter test`(画面単位、要件0042の分割方針): 新規7画面
  (provision_page/capability_page/license_page/position_page/assign_page/
  staff_to_capability_page/capability_to_staff_page)+company_pageの往復変換テストを
  個別実行し、すべて成功したことを画面ごとに確認済み。
- 全体一括の`flutter test`もあわせてバックグラウンド実行(要件0042の10分間隔監視対象と
  したが、監視中にハングアップの兆候無く正常終了した)し、既存5画面
  (company_page/office_page/staff_page/department_category/department_page)を含めた
  **35件すべて成功**(exit code 0)を確認した。回帰は無い。

## 7. 未対応・次のアクション

- `ProvisionPageEdit`/`CapabilityPageEdit`/`LicensePageEdit`/`PositionPageEdit`は
  いずれも`code`をPatchから除外したが、これは2-1節のとおり`languageCode`引数との
  重複を避けるためであり(ユーザー確認済み)、業務コードの不変性を意図したものではない。

## 8. 追記(2026-09-29): `AssignPageEdit.info_staff_id`編集の追加・`CompanyPageEdit.provisions`入れ子編集の追加

ユーザー指示により、7節(旧)で保留していた2点を追加対応した。

### 8-1. `AssignPageEdit.info_staff_id`を編集対象に追加

`info_staff_id`(担当者の付け替え)も編集操作に含める方針が確定したため、
`assign_page_edit.graphql`の`infoAssignPatch`に`infoStaffId: $infoStaffId`
(`$infoStaffId: UUID`)を追加した(`info_position_id`/`info_office_id`/
`info_department_id`と同様の扱いに統一)。`view.yaml`側は元々`info_staff_id`を
`AssignPageEdit.columns`に含んでいたため変更不要。
`dart run build_runner build --build-filter="lib/postgraphile/assign_page/**"`・
`flutter test test/assign_page_flatten_roundtrip_test.dart`(3件)で確認済み。

### 8-2. `CompanyPageEdit`に`provisions`の入れ子編集を追加

`view.yaml`の`CompanyPageEdit`に`provision`(`as: provisions`、`arrayType: toMany`)を
追加した。既存の入れ子編集(会社名・代表・住所)はすべて`arrayType: toFirstOne`
(1対1相当)であり、各サブフィールドを個別のスカラー変数(`$nameJa`等)に分解できたが、
`provisions`は`arrayType: toMany`(件数が可変)のため同じ分解方式が使えない。

**view.yamlでの問題と対応**: 当初`ProvisionPageEdit`(トップノード)をそのまま
`<<: *ProvisionPageEdit`でこの`columnEntry`へmergeしようとしたところ、`generateRfe`が
`node`専用のプロパティであり`columnEntry`では許可されていない(schema.jsonの
`node.generateRfe`は`columnEntry`の`$ref`に含まれない)ためスキーマ検証エラーになった。
6-7節が想定する「トップレベルnodeを別画面のcolumnEntryとして再利用する」パターンは、
これまで`generateRfe`を持たないread画面(`OfficePage`等)でのみ実績があり、
`generateRfe: true`を持つedit画面を同様にmergeしたのは今回が初めてだったために
表面化した制約である。対応として、`ProvisionPageEdit`のnode全体をmergeするのではなく、
`generateRfe`/`requiredWhere`を除いた`columns`のみをこの`columnEntry`内に複製した
(`ProvisionPageEdit`本体とは別に保守が必要になる点は明記しておく)。

**GraphQLでの対応**: PostGraphile(postgraphile-plugin-nested-mutations)が
`InfoProvisionFk2InverseInput`として提供する標準の入れ子書き込み型
(`updateByInfoProvisionId`/`create`/`deleteByInfoProvisionId`)を、可変長リストの
GraphQL変数としてそのまま公開する方式を採用した。

```graphql
$provisionsUpdate: [InfoProvisionOnInfoProvisionForInfoProvisionFk2UsingInfoProvisionPkcUpdate!]
$provisionsCreate: [InfoProvisionFk2InfoProvisionCreateInput!]
$provisionsDelete: [InfoProvisionInfoProvisionPkcDelete!]
...
infoProvisionsUsingInfoCompanyId: {
  updateByInfoProvisionId: $provisionsUpdate
  create: $provisionsCreate
  deleteByInfoProvisionId: $provisionsDelete
}
```

他の入れ子編集(名前・住所)のようにフィールドごとの個別スカラー変数へ分解するのではなく、
呼び出し側(アプリケーション層)がスキーマの入力型どおりのMap/JSON(各要素は
`infoProvisionId`+`infoProvisionPatch`、`infoProvisionPatch`には`sharedAppellationToNames`
による名称の入れ子更新も含められる)を直接組み立てて渡す設計とした。件数が可変な
1対多の入れ子編集に対し、フィールド単位のスカラー変数分解が構造的に成立しないための
選択であり、本プロジェクトで初めて登場した設計パターンである(今後同様の1対多入れ子編集
(例: `DepartmentPageEdit.kinds`)を実装する際の参考にできる)。

ミューテーションの結果選択にも`provisions: infoProvisionsByInfoCompanyId {...}`
(ja/en両方を返す、他の入れ子編集結果と同型)を追加した。

`company_page_keyname.dart`・`company_page_flatten_roundtrip_test.dart`は追加の
定数・変更は不要だった(`provisions`関連の定数は本要件0044の先行対応(read側)で
既に追加済みのものをそのまま使用でき、editのモックJSONに`provisions`データを追加した
のみ)。

`dart run build_runner build --build-filter="lib/postgraphile/company_page/**"`・
`flutter test test/company_page_flatten_roundtrip_test.dart`(5件)で確認済み。

### 8-3. 影響確認(全体、8-1・8-2適用後)

- `dart analyze lib test`: error/warning 0件。
- `flutter test`(全体、バックグラウンド実行): **36件すべて成功**(exit code 0)。
  既存5画面・新規7画面すべてを含め回帰は無い。
