# 0038 実施ログ(複合FK用の`using`拡張、列順の誤りの修正)

## 指示

> test.yamlを見て下さい。外部キーが2つあるupdate_userに対して、using配列として渡すための
> 変更が必要か、それとも別の方法指定を定義しているか確認して下さい。

## 確認結果

`source/test.yaml`(および同じ内容がすでに反映されていた`source/view.yaml`)の
`CompanyPage.offices.update_user`は、[共通名前仕様](../CLAUDE.md#共通名前仕様)が定める
「`(update_user_id,update_user_history_id)->info_staff(shared_appellations_id)`」の
更新者解決を、`history_info_staff`への**複合(2列)外部キー**として`using`に配列
(`using: [update_user_id, update_user_history_id]`)で渡そうとしていた。

1. **`schema.json`は複合FKに未対応だった**: `$defs`内の`using`(`columnEntry`・
   `editTableEntry`の両方に別々にインライン定義されていた)はいずれも
   `{"type": "string", "minLength": 1}`のみで、配列を許容していなかった。
   → **変更が必要と判断**。
2. **指定していた列順が実スキーマと逆だった**: `lib/graphql/schema.graphql`を
   `historyInfoStaffBy`で検索したところ、該当の複合FKフィールドは
   `historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`という1種類のみ存在した
   (揺れなし)。PostGraphileの複合FK命名(`<関連型>By<列1>And<列2>...`)における列順は
   DBのFK制約定義に依存し、アルファベット順・記述順ではない。実際の順は
   `update_user_history_id`が先、`update_user_id`が後だが、
   `test.yaml`/`view.yaml`はいずれも`[update_user_id, update_user_history_id]`
   (逆順)になっていた。このまま生成すると存在しないフィールド名
   (`historyInfoStaffByUpdateUserIdAndUpdateUserHistoryId`)を参照してしまう。
3. **副次的に発見した誤字**: `updateStaff`アーム内の`using: shared_appellations_idl`
   (末尾に余分な`l`)。正しくは`shared_appellations_id`。

## 対応

### 1. `source/schema.json`

- `$defs.using`を新設。`oneOf`で単一文字列(従来通り)または文字列配列
  (`minItems: 2`、複合FK用)を許容する。配列指定時の列順は実スキーマのフィールド名と
  一致させる必要がある旨をdescriptionに明記(本スキーマでは検証しない、点10と同じ方針)。
- `columnEntry`・`editTableEntry`双方にインライン定義されていた`using`を、
  いずれも`{"$ref": "#/$defs/using"}`に置き換えて集約した。

### 2. `source/27_yaml_to_graphql_conversion_rules.md`

- 6-2節に複合FKの節を追加し、`update_user_id`+`update_user_history_id`の実例・
  列順の考え方(DBのFK制約定義に依存、本ルールでは検証しない)を明文化。
- 変更履歴に本件のエントリを追加。

### 3. `source/test.yaml`・`source/view.yaml`

両ファイルに存在した以下2点を修正した(内容が同一だったため同じ修正を両方に適用)。

- `using: [update_user_id, update_user_history_id]` → `using: [update_user_history_id, update_user_id]`
  (実スキーマのフィールド名`historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`の列順に合わせた)。
- `using: shared_appellations_idl` → `using: shared_appellations_id`(誤字修正)。

### 4. `CLAUDE.md`

[要件](../CLAUDE.md#要件)に0038のエントリを追加した。

## 未対応・注記

- 本ログの変更は`view.yaml`・`schema.json`・変換ルールのみであり、対応する
  GraphQLファイル(`company_page_read.graphql`等)への反映・`build_runner`再生成は
  行っていない(`update_user`列自体がまだGraphQLファイルに反映されていないため、
  今回のスコープ外と判断)。次にcompany_pageのofficesへ`update_user`を反映する際は、
  修正後の列順(`using: [update_user_history_id, update_user_id]`)に基づいて
  `historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId`フィールドを使うこと。
- `view.yaml`には本件と無関係な新規ノード`OfficePage`(`kind: read`、`info_office`の
  一覧画面)も追加されていたが、本ログのスコープ外のため評価していない。

## 追記1: `test.yaml`でのOfficePage再利用パターンの評価(2026-09-26、「OfficePageを定義すると
冗長になるCompanyPageのofficeを参照にした」の指示)

`test.yaml`が、独立画面`OfficePage`(トップレベルの`node`、`&OfficePage`アンカー付き)を
`CompanyPage.columns[].offices`から`<<: *OfficePage`でそのまま`columnEntry`としてmergeする
書き方に更新された。

### 評価

- **仕組みとしては適切・schema.json変更不要**: `columnEntry`は`kind`/`from`/`condition`/
  `columns`を持てる「汎用フィールド共存型」のため、独立画面のnode定義をそのまま
  `columnEntry`としてmergeでき、ローカルの`name`(必須)/`arrayType`/`limit`と衝突しない。
  「単独の一覧画面」と「親画面に埋め込む子リスト」で同じ列構成を2箇所に書かずに済む、
  有効な重複排除。
- **発見した誤り(修正済み)**: `OfficePage`(`kind: read`)の`labels`が
  `<<: *appellationLabelsEdit`(edit用)、`info_address_id`が`<<: *addressEditFields`
  (edit用)を誤って参照していた。既存の規則(read画面はread用アーム、edit画面はedit用
  アームを対応させる。`CompanyPage`のceo/addressが`appellationLabels`/`addressFields`を
  使う例を参照)に反するため、`appellationLabels`/`addressFields`(read用)に修正した。

### 対応

- `source/test.yaml`: 上記2箇所を修正。
- `source/27_yaml_to_graphql_conversion_rules.md`: 6-7節として本パターン(トップレベルnode
  の`columnEntry`としての再利用)と、kind不一致に関する注意を追加。

### 未対応

- `source/view.yaml`は旧来の独立した`OfficePage`(フラットな列構成、`labels`/`update_user`
  の構造化されたlookupは未反映)のままで、`CompanyPage.offices`もこのmergeパターンを
  まだ採用していない。`test.yaml`側の検証が完了し、ユーザーが採用を決めた時点で
  `view.yaml`へ反映する。
