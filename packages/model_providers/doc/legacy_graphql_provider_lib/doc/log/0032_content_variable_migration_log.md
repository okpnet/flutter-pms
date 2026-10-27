# 0032: KeyName抽象クラスのContentVariable移行ログ

## 対象要件
2026/09/19_0032:「[GraphQL変換ルール](../CLAUDE.md#GraphQL変換ルール)」のレビュー。
- 変換ルール移動 => 共通している項目を移動
- KeyName条件の変更(ContentVariable適用)
- Enumのルールを追加

## 実施内容

### 1. `lib/contents/content_variable.dart`
- `GraphQLTypeKind` Enumを新設。値(`value`)は実スキーマ(`lib/graphql/schema.graphql`)の型名文字列
  (`String`/`Int`/`Float`/`Boolean`/`UUID`/`Datetime`/`Date`/`BigInt`/`BigFloat`/`JSON`/`Interval`)、
  および nested_map_flattener.dart がこれ以上フラット化しないRelay Connection形状を表す
  `Connection` を追加した。
- `GraphQLTypeKind.fromString(String)`で文字列からEnumへ復元できるようにした(要件0032)。
- `ContentVariable(name, kind)`を新設。`name`は既存の平坦化キー文字列、`kind`は上記Enum。
  `==`/`hashCode`を実装し、Mapキー代替としての比較にも使えるようにした。

### 2. 全`lib/contents/*_keyname.dart`(25ファイル、706定数)
`static const String NAME = 'value';` を
`static const ContentVariable NAME = ContentVariable('value', GraphQLTypeKind.KIND);`
へ一括変換した(要件0018/0032「~~static const String~~ → static const ContentVariable」)。

各定数の`KIND`は、フラットキー末尾のセグメント名を実スキーマ`lib/graphql/schema.graphql`と
突き合わせて機械的に判定した。判定表(抜粋):

| 末尾セグメント | GraphQLTypeKind | 備考 |
| --- | --- | --- |
| `*Id`(命名規則どおりの外部/主キー) | `uuid` | schema上は`UUID`/`UUID!` |
| `externalInspection` / `inspectionKind` | `uuid` | `Id`接尾辞が無いがschema上は`UUID` |
| `remove` / `lot` | `boolean` | |
| `updateAt` / `startAt` / `stopAt` / `baseDate` / `commencementDate` | `datetime` | schema上はすべて`Datetime`(`Date`型は未使用) |
| `totalCount` / `sequence` / `priority` / `class` / `typeClass` / `formulaClass` | `int` | |
| `stockQuantity` / `sizeValue` | `bigFloat` | schema上は`BigFloat` |
| `argClass` | `json` | |
| `defaultTime`(単体) | `interval` | `Interval`型オブジェクトそのもの(要素ごとにはフラット化しない、task_keyname.dart) |
| `timeInterval||seconds` | `float` | `Interval.seconds`のみ`Float`、他は`Int` |
| `timeInterval||minutes/hours/days/months/years` | `int` | |
| 上記以外(`ja`/`en`/`code`/`remarks`/`webPage`/`zipCode`/`address1`/`address2`/`bill`/`phone`/`faxNumber`/`mail`/`privatePhone`/`identification`/`controlCode`/`labelCode`/`detail`/`details`/`formatClass`等) | `string` | schema確認済み |

Relay Connection形状のままキー化している以下5定数は`connection`とした
(これ以上フラット化しない、既存コメントに明記されていたもの):
- `InfoCompanyKeyName.infoOfficesByInfoCompanyId`
- `OeprationEditerKeyName.mstrOperationTasksByMstrOperationId` /
  `OperationKeyName.mstrOperationTasksByMstrOperationId`
- `EquipmentInspectionOperationKeyName.mstrInspectionOperationTasksByMstrInspectionOperationId` /
  `EquipmentInspectionOperationEditorKeyName`側の同名定数
- `OrgResEquipmentKeyName.mstrItemByMstrItemId_mstrItemActualSizesByMstrItemId`
- `TaskKeyName.mstrTaskTreesByMstrTaskId`

各ファイル先頭に `import 'content_variable.dart';` を追加。

### 3. `test/info_company_flatten_roundtrip_test.dart`
`InfoCompanyKeyName.xxx` を `flattenForColumns`/Mapキーとして直接使用していた箇所を
`InfoCompanyKeyName.xxx.name`(平坦化キー文字列)に変更した(型が`String`→`ContentVariable`に
変わったことに伴う修正、要件0018「再生成のときはテストもレビューする」)。

## 確認結果
- `dart analyze lib/contents test`: `No issues found!`
- `dart format lib/contents test/info_company_flatten_roundtrip_test.dart`: 27ファイル整形
- `flutter test`: 60件すべて成功(`All tests passed!`)

## 備考(次回への申し送り)
- `GraphQLTypeKind`は現時点で実際に使用されている型のみを列挙した(`date`/`bigInt`は
  スキーマに定義があるが本ライブラリの既存キー定数では未使用のため追加していない)。
  今後、Date型やBigInt型の列を持つ画面を追加する際は、要件0032のルールに従い
  重複しない値で`GraphQLTypeKind`へ追加すること。
