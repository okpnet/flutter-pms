# 0021_画面仕様→GraphQL一括作成ログ

対象: [画面仕様](../source/views.md)に定義された全画面(info_company・info_office・
info_department・info_staff・info_postion・org_res_equipment・org_res_equipment_kind・
org_res_location)のうち、まだGraphQLを作成していない7画面(info_company は要件0019で
作成済のため対象外)について、要件0006・0011・0017・0018の手順・規則に従いRead/Edit
GraphQLを作成し、build_runnerでコード生成する(要件0021)。

要件0021の指示「生成済みの場合は更新されていなければ無視する」に基づき、info_companyは
本ログの対象から除外した(views.mdのinfo_company項目に前回作成時からの変更は無いと
確認済み)。「生成されたGraphQLのみ対象にコードを生成する」は、build_runnerの差分ビルド
(変更の無いinfo_companyの2ファイル・schema.graphqlは`same`として再出力されない)により
自然に満たされている。「エラーが発生したものは無視し、ログに残す」に該当する事象は
下記#9(サイズ幅/奥行き/高さ)のみで、他はエラー無く生成できた。

## 作成前に実スキーマ([lib/graphql/schema.graphql](../lib/graphql/schema.graphql))を
確認して判明した問題点・設計判断(⚠番号は各GraphQLファイル内のコメントから参照される)

| # | 内容 |
|---|---|
| 1 | info_addressに`address3`相当の列が存在しないため、住所3行目は今回も取得不可(0007・0019ログと同一の既知の制約。低減処置=DB側へのカラム追加で対応可能、DB変更範囲のため本ライブラリの責務外)。 |
| 2 | `history_info_staff.shared_appellations_id -> shared_appellations`の外部キーが実スキーマに未定義のため、「更新者名」は各画面ごとに`<Screen>ReadUpdaterAppellation`という別クエリ(ルートの単票取得`sharedAppellationBySharedAppellationsId`を使用)で解決する(0007・0019ログと同一の既知の制約・回避パターン)。 |
| 3 | 更新者id/更新者履歴id/削除は、info_company_edit.graphql(要件0019)がミューテーション変数から除外した既定方針を、本ログの7画面すべてで踏襲した(バックエンド側のトリガー/セッションで管理される想定の共通項のため)。 |
| 4 | info_departmentの「子の数（info_department_tree）」は`infoDepartmentTreesByInfoDepartmentId(...).totalCount`で取得できる派生集計値であり、readでは views.md が要求していないため取得せず、editのpatchにも含めない(read結果を編集画面に表示するのみ、という要件0018 edit「原則としてreadから生成されたモデルのMapから変換できる」の解釈)。 |
| 5 | `InfoStaff.info_office_id`には外部キー制約が実スキーマに定義されておらず(`InfoStaff`型に`infoOfficeByInfoOfficeId`が存在しない)、「事業所名」をネストして取得できない。read側は`infoOfficeId`(スカラー)を取得し、別クエリ`InfoStaffReadOffice`(ルート単票取得`infoOfficeByInfoOfficeId(infoOfficeId: ...)`)で事業所名を解決する。edit側もネスト入力が無いため、「事業所id」はスカラーの付け替えのみとして扱う。 |
| 6 | 画面仕様の見出しは"info_postion"(「i」が抜けたスペル)だが、実スキーマの型名は`InfoPosition`。要件0011・0017「見出し2をディレクトリ名/ファイル名にする」に従い、フォルダ・ファイル名は画面仕様の見出しをそのまま使用した(実テーブル名との対応はGraphQLファイル内コメントで明示)。 |
| 7 | "org_res_equipment"→`MstrEquipment`、"org_res_equipment_kind"→`MstrEquipmentKind`、"org_res_location"→`MstrLocation`が対応する実スキーマの型(画面仕様の見出しと実テーブル名が異なる)。フォルダ・ファイル名は画面仕様の見出しをそのまま使用。 |
| 8 | org_res_locationの「組織名」(read)・「組織id」(edit)は、`infoDepartmentByInfoDepartmentId`経由の参照。読み取り専用の表示(組織名)とスカラーの付け替え(組織id)に留め、組織(info_department)自体の内容編集は行わない(組織は複数の場所から参照されうる共有マスタのため)。 |
| 9 | org_res_equipmentの「サイズ幅/サイズ奥行き/サイズ高さ」は`mstr_item_size`テーブルに対応するが、実スキーマは幅・奥行き・高さを個別列として持たず、`mstrItemSizeKindId`(区分マスタ)+`sizeValue`(値)のEAV構造(1品目に対し区分ごとに複数行)になっている。どの`mstrItemSizeKindId`が「幅」「奥行き」「高さ」に対応するかはマスタデータ(DBの値)次第で、GraphQL定義時点では静的に判別できない。**要件0021「エラーが発生したものは無視し、ログに残す」に基づき、この3項目は個別の平坦化キーとしては対応せず**、`mstrItemSizesByMstrItemId`のnodes(区分名+値のリスト)をそのまま取得するに留めた(read/edit共通の制約。editのpatchにも含めていない)。[0003_risk_assessment.md](0003_risk_assessment.md)の基準では、DB構成(EAV設計)自体の見直しが必要な項目であり、低減処置(アプリ側での対応)のみでは根本解決しない。 |
| 10 | org_res_equipmentの画面仕様では、「設備区分(mstr-equipment_kind.shared_appellations_id)」「場所(mstr_location)」に「名」が付いていない一方、「設備名/読み/略称(mstr_item.shared_appellations_id)」には「名」が付いている。設備区分・場所はequipmentから見て複数行から共有されうるマスタであるのに対し、mstr_itemはこの設備専用の品目マスタ行とみなせるため、以下のとおり使い分けた。<br>・設備区分・場所: 既存マスタへのスカラーID付け替えのみ(名称自体は編集しない)<br>・設備名/読み/略称: mstr_item経由でshared_appellationsを入れ子更新(この設備専用の品目名を直接編集) |

## 実施内容

1. 上記の調査結果に基づき、7画面分の Read/Edit GraphQL(計14ファイル)を
   [構成](../CLAUDE.md#構成)・[画面仕様命名規則](../CLAUDE.md#画面仕様命名規則)に従い作成した。
   - `lib/graphql/info_office/{info_office_read,info_office_edit}.graphql`
   - `lib/graphql/info_department/{info_department_read,info_department_edit}.graphql`
   - `lib/graphql/info_staff/{info_staff_read,info_staff_edit}.graphql`
   - `lib/graphql/info_postion/{info_postion_read,info_postion_edit}.graphql`
   - `lib/graphql/org_res_equipment/{org_res_equipment_read,org_res_equipment_edit}.graphql`
   - `lib/graphql/org_res_equipment_kind/{org_res_equipment_kind_read,org_res_equipment_kind_edit}.graphql`
   - `lib/graphql/org_res_location/{org_res_location_read,org_res_location_edit}.graphql`
2. 要件0018「指示全てのGraphQLを作成後、buildrunnerを実行し、モデルを生成する」に従い
   `dart run build_runner build`を実行した。

   ```
     177s graphql_codegen on 17 inputs: 14 output, 3 same; spent 173s building, 4s tracking
     Built with build_runner/aot in 183s; wrote 17 outputs.
   EXITCODE:0
   ```

   17入力(新規14ファイル+変更無しのinfo_company用2ファイル+schema.graphql)のうち、
   新規14ファイルすべてが**エラー無く**生成された(`same`の3件は差分無しで再出力されな
   かったもの)。生成されたモデルのサイズはいずれも5000KB未満であり
   (最大は`org_res_equipment_read.graphql.dart`の約293.8KB)、要件0015のGit無視リスト
   追加は不要と判断した(`schema.graphql.dart`は引き続き対象)。
3. 要件0018「read/edit: nested_map_flattener.dartによってMapの平坦化、モデル復元が
   できること」「モデル別のテストを作成する」に従い、7画面分のキー定数クラス
   (`lib/contents/*_keyname.dart`)と往復変換テスト(`test/*_flatten_roundtrip_test.dart`)
   を作成した。

## テスト結果

7画面 × (Read/Edit) = 14テストを実行した。初回実行では2件が失敗し、テスト側の
フィクスチャ不備と判明したため修正のうえ再実行し、最終的に**全14件成功**した。

- **info_office(Edit)**: `type 'Null' is not a subtype of type 'String' in type cast`。
  `InfoOffice.code`が非null(`String!`)であるにもかかわらず、テストのフィクスチャJSONに
  `code`を含めていなかったことが原因。フィクスチャに`code`を追加して解消(スキーマ・
  生成コード側の問題ではない)。
- **org_res_equipment(Read)**: `type 'double' is not a subtype of type 'String?' in type cast`。
  `mstrItemSize.sizeValue`は`BigFloat`スカラーで、`build.yaml`にマッピング未設定のため
  `String`にフォールバックして生成される(`Missing scalar BigFloat`警告どおり)。
  テストのフィクスチャで数値`120.5`を渡していたことが原因で、文字列`'120.5'`に修正して
  解消(スキーマ・生成コード側の問題ではない)。

```
00:15 +14: All tests passed!
EXITCODE:0
```

## 結論

views.mdの残り7画面すべてについて、要件0006・0011・0017・0018の一連の規則に沿って
GraphQL作成・build_runner実行・キー定数化・往復変換テストまで完了した。過程で判明した
既知の制約(#1・#2・#5)は0007・0019から継続するDB側の課題であり、[0003_risk_assessment.md]
(0003_risk_assessment.md)の基準に照らして「低減処置(DB側のFK追加等)で対応可能」の
範囲と判定する。一方、#9(mstr_item_sizeのEAV構造によりサイズ幅/奥行き/高さを個別列として
取得できない)は、低減処置だけでは対応が難しく、テーブル構成自体の見直し(区分ごとの列追加、
または区分マスタの固定コード化)が必要になる可能性がある項目として記録した。#6・#7・#8・#10は
画面仕様と実スキーマの対応関係・設計判断であり、仕様変更は不要と判断する。
