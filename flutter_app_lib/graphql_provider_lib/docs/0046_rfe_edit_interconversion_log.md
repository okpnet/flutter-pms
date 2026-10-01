# 要件0046 RFE/Edit相互変換テスト ログ

- 実施日: 2026/10/01
- 対象: 生成済みの全18画面(`lib/graphql/*/*_rfe.graphql`と`*_edit.graphql`の組)
- 結果: **17画面が相互変換可、1画面(company_page)が相互変換不可**

## 1. 実施内容と判定条件

要件0046により「RFEとEditのモデルが相互変換できること」を生成物の条件に追加した
(CLAUDE.md「read for editing=>RFE」節、`source/27_yaml_to_graphql_conversion_rules.md` 8章に追記)。
これを検証するテスト`test/rfe_edit_interconversion_test.dart`(解析部は
`test/support/rfe_edit_conversion.dart`)を新設し、全画面に対して実行した。

モデルの値は`schema.graphql`の型から合成したデータを使い、画面ごとのテストデータは持たない。
変換はすべて`nested_map_flattener.dart`の`flatten()`→`unflatten()`を経由する。

| 検証 | 内容 |
|---|---|
| T1 RFE→Edit(結果モデル) | RFEモデルのMapから、Editの結果モデル(ミューテーションの戻り値のエンティティ)を復元できる。Editの全リーフがRFEの同じ位置にあり、値が一致する |
| T2 Edit(結果モデル)→RFE | Editの結果モデルのMapからRFEモデルを復元できる(RFEの必須フィールドがEdit側に揃っている) |
| T3 RFE→Edit(引数モデル) | Editの全引数(Variables)をRFEのMapから組み立てられ、Variablesモデルとして復元できる |

T3の引数とRFEの取得位置の対応付けでは、画面ごとの対応表を持たない。ミューテーションの
inputツリーを辿り、入れ子書き込みの入力名`xToY`/`xUsingY`を読み込み側の`xByY`に読み替える
(`schema.graphql`で実在を確認する)。言語別の辞書値(`create: [{sharedLanguageCodeId: $jaLanguageCodeId, ...}]`)は、
RFE側で同じ変数を`condition`に持つ取得(`ja:`/`en:`の別名)に対応付ける。

判定区分:

| 区分 | 意味 | テスト |
|---|---|---|
| F1 | Editの結果モデルのリーフがRFEに無い/値が引き継げない | 失敗 |
| F2 | Editの結果モデルからRFEモデルを復元できない | 失敗 |
| F3 | Editの引数をRFEから組み立てられない | 失敗 |
| F4 | 組み立てた引数でVariablesモデルを復元できない | 失敗 |
| F5 | 同じ出力キーで参照先フィールドが異なる | 失敗 |
| C1 | RFEにしか無いリーフ(Edit→RFEで値が失われる) | 要確認 |
| C2 | Editの必須引数の値を、RFEが`@include`で条件付き取得している | 要確認 |
| C3 | リスト引数の組み立てで一部要確認 | 要確認 |
| C4 | `schema.graphql`に対応するフィールドが無い(スキーマ未更新の可能性) | 要確認 |

## 2. 結果

`flutter test test/rfe_edit_interconversion_test.dart`: 17件成功、1件失敗。

| 画面 | 判定 | C1 | C2 | 備考 |
|---|---|---|---|---|
| approval_operation_page | 可 | 11 | 0 | 監査列に加えsymbol等(5章) |
| assign_page | 可 | 4 | 0 | |
| capability_page | 可 | 4 | 6 | |
| capable_staff_page | 可 | 5 | 0 | remarks(5章) |
| **company_page** | **不可** | 4 | 0 | F1:19 / F2:18 / F3:3(3章) |
| department_category | 可 | 4 | 6 | |
| department_page | 可 | 4 | 0 | 親の付け替え・kinds.valueのリスト引数も解決 |
| item_kind_page | 可 | 4 | 0 | |
| license_holders_page | 可 | 5 | 0 | remarks(5章) |
| license_page | 可 | 4 | 6 | |
| office_page | 可 | 4 | 24 | 名称+住所3組の呼称 |
| position_page | 可 | 4 | 6 | |
| provision_page | 可 | 4 | 6 | |
| spec_measurement | 可 | 4 | 0 | |
| staff_capability_page | 可 | 5 | 0 | remarks(5章) |
| staff_held_license_page | 可 | 5 | 0 | remarks(5章) |
| staff_page | 可 | 4 | 6 | |
| unit_page | 可 | 4 | 0 | |

C3・C4は0件だった。したがって、今回の構造差に`schema.graphql`の未更新が原因と判断できるものは無い。

## 3. 相互変換不可: 修正提案リスト

### 3-1. company_page(view.yamlの修正は不要、RFEの再生成を提案)

- 現象: `company_page_edit.graphql`の結果モデルと引数(`$provisionsUpdate`/`$provisionsCreate`/`$provisionsDelete`)が
  `provisions`(`infoProvisionsByInfoCompanyId`)を扱うが、`company_page_rfe.graphql`は`provisions`を取得していない。
  RFE→Edit・Edit→RFEのどちらでも`provisions`配下の全リーフが引き継げない。
  Editの結果モデルの`provisions`は必須のため、RFEのMapからの`fromJson`は例外になる。
- 原因: `company_page_rfe.graphql`は2026/09/29生成で、`provisions`の入れ子編集を追加した
  要件0044追記(`company_page_edit.graphql`、2026/09/30)の後に再生成されていない。
  `view.yaml`の`CompanyPageEdit`(`generateRfe: true`)には`provision`(`as: provisions`)が既にあるため、
  **view.yaml側の定義は正しく、生成物だけが古い**。
- 提案: `CompanyPageEdit`から`company_page_rfe.graphql`を再導出し、build_runnerでモデルを再生成する。
  再導出後は、`provisions`のRFE側を`nodes`とPK(`infoProvisionId`)付きで取得すれば、T1〜T3を満たす見込み。
  リスト引数も、department_page(`kinds.value`)と同じ方式で解決できる。
- view.yaml: `CompanyPageEdit`の直下に確認コメントを追記した(定義は変更していない)。

## 4. editのトップノード内で、editではないノードを参照している箇所

`view.yaml`の`kind: edit`のトップノード内にある`<<: *X`のうち、`X`が`kind: edit`ではないものを抽出した。
いずれも該当行の直前に`# 要件0046確認(参照先がeditではない)`のコメントを追記した(定義は変更していない)。

| 行(追記後) | editノード | 参照先(kind) | 既存コメント・所見 |
|---|---|---|---|
| 1180 | StaffCapabilityEdit.staff | *StaffPage(read) | 「IDを割り当てるだけ」→意図的と推定 |
| 1186 | StaffCapabilityEdit.capability | *CapabilityPage(read) | 「IDを割り当てるだけ」→意図的と推定 |
| 1355 | StaffLicenseEdit.staff | *StaffPage(read) | 「IDを割り当てるだけ」→意図的と推定 |
| 1361 | StaffLicenseEdit.license | *LicensePage(read) | 「IDを割り当てるだけ」→意図的と推定 |
| 1447 | ApprovalEdit.department | *DepartmentPage(read) | 「IDを取得するだけ」→意図的と推定(未生成) |
| 1454 | ApprovalEdit.position | *PositionPage(read) | 「IDを取得するだけ」→意図的と推定(未生成) |
| 1635 | SpecMeasurementEdit.unit | *Unit(read) | 「IDの取得のみ」。付け替え用の生FK列`shared_unit_id`もcolumnsにある→意図的と推定 |
| 1948 | ItemPageEdit.kinds | *ItemKind(read) | 「IDの取得のみ」。生FK列`mstr_item_kind_id`あり→意図的と推定(未生成) |
| 1966 | ItemPageEdit.unit | *Unit(read) | **要確認**: SpecMeasurementEditと異なり、付け替え用の生FK列`shared_unit_id`がcolumnsに無い(未生成) |

補足(editを参照しているが要確認のもの):

- `ItemPageEdit.manufacture`は`*ManufacturePageEdit`(edit)を参照する。
  このためトップノード専用の`generateRfe`がcolumnEntryへmergeされ、`view.yaml`の`generateRfe`(追記後1680行)にインテリセンスのエラーが出ている。
  また、品目の編集で製造元への入れ子の書き込み(`remove`/`update_user_id`等を含む)が発生する。
  製造元の付け替えだけが目的なら、次のどちらかの対応が考えられる。
  - `*ManufacturePage`(read)に変え、生FK列`mstr_manufacturer_id`をcolumnsに追加する。
  - `CompanyPageEdit.provision`と同様に、columnsだけをその場で複製する。
- 生成済み4画面(staff_capability_page等)は、上記のread参照があってもT1〜T3を満たした。
  IDの割り当てのみという意図どおりに生成されていることを確認済み。

## 5. 構造的な違い(要確認、修正していない)

いずれも`view.yaml`・`schema.graphql`は変更していない。`view.yaml`の該当箇所へコメントを追記した。

1. **監査列(全18画面、C1)**: `updateAt`/`updateUserId`/`updateUserHistoryId`/`remove`がRFEにのみあり、
   Editの結果モデルに含まれない。保存後にEditの戻り値でRFE(編集フォーム)を更新すると、これらは古い値のまま残る。
   特に`updateAt`を楽観排他に使う場合は、Editの結果モデルに含めるか、保存後にRFEを再取得する運用が必要。
   → `view.yaml`冒頭(3行目)にコメント。
2. **remarks(4画面、C1)**: staff_capability_page・capable_staff_page・staff_held_license_page・license_holders_pageでは、
   `remarks`はEditの引数にあるが、Editの結果モデルに無い。
   → `StaffCapabilityEdit`/`StaffLicenseEdit`の直下にコメント。
3. **approval_operation_page(C1)**: 以下がRFEにのみある。
   - `symbol`(ルート・`pattern_detail`・`pattern_detail.approval`)
   - `pattern_detail`側の`updateAt`/`remove`
   → `ApprovalOperationPageEdit`の直下にコメント。
4. **@includeによる条件付き取得(7画面、C2)**: capability_page・department_category・license_page・office_page・
   position_page・provision_page・staff_pageのRFEは、呼称のja/enを`@include(if: $ja/$en)`で取得する(要件0036以前の方式)。
   一方、Editは両言語を必須引数(`String!`)で要求する。
   呼び出し側が`$ja`/`$en`のどちらかを`false`にするとEditの引数を組み立てられないため、テストでは両方`true`として判定した。
   要件0045ログ(56行)で「要件0036の方式への追随」として既に挙がっている事項と同じ。
   → 各Editノードの直下にコメント。

## 6. 対象外・補足

- ManufacturePageEdit・ItemPageEdit等の未生成の画面は、要件0046がGraphQL生成を指示していないため対象外とした(次回の生成時に同テストで検証される)。
- `lib/graphql/schema.graphql`の更新日時(2026/10/01 07:20)が`lib/postgraphile/schema.graphql.dart`(2026/09/29)より新しいが、対応する0026のログ追記は無い。
  要件0024(schema.graphqlのみのコード生成)は本要件の範囲外のため実行していない。
  本テストは`schema.graphql`を直接解析し、C4(スキーマに無いフィールド)は0件だった。
- 作業中、表示用の言語条件にしか使われない引数(`$jaLanguageCodeId`等、結果の選択セットでのみ使用)を
  解析ヘルパーが「解決不可」と誤判定した。5画面が誤って失敗していたため、「RFEと共通の引数は呼び出し側が同じ値を渡す」と分類するよう修正して再実行した。
- `gql`パッケージはgraphql_codegen経由で既に解決済みのため、`pubspec.yaml`のdev_dependenciesに明示しただけである(バージョンは変わらない)。

## 7. 追加・変更したファイル

| ファイル | 内容 |
|---|---|
| `test/rfe_edit_interconversion_test.dart` | 新規。全18画面のRFE/Edit相互変換テスト |
| `test/support/rfe_edit_conversion.dart` | 新規。解析・合成データ・判定のヘルパー |
| `pubspec.yaml` | dev_dependenciesに`gql`を明示 |
| `source/view.yaml` | 要件0046の確認コメントのみ追記(定義の変更なし。ユーザーが確認後に削除してよい) |
| `source/27_yaml_to_graphql_conversion_rules.md` | 8章に相互変換の条件を追記 |
| `CLAUDE.md` | 「read for editing=>RFE」節に条件を追記(//0046) |

## 追記(要件0047、2026/10/01)

要件0047でview.yamlの修正(`editable`の付与、修正モレの修正)と、再生成が必要なGraphQLの再生成を行ったうえで、本要件の相互変換テスト・確認を再実行した。
17画面すべてが相互変換可となり、company_pageの相互変換不可は解消した。詳細は`docs/0047_editable_attribute_and_regeneration_log.md`を参照。
