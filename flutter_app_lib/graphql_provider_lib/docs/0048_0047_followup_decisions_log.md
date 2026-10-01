# 要件0048 0047の変換不可・要確認事項への方針の反映 ログ

- 実施日: 2026/10/01
- 対象: `docs/0047_editable_attribute_and_regeneration_log.md` 6章「変換不可・要確認(修正していないもの)」の1〜6
- 結果: 全テスト74件成功。RFE/Edit相互変換テストは17画面すべてで、失敗・要確認が0件になった(残りは方針どおりの監査列(A1)のみ)。

## 1. 方針と対応

| 項目 | 決定(要件0048) | 対応 |
|---|---|---|
| 1. DepartmentPage.descendants(変換不可) | 修正するまで保留 | 変更なし。view.yamlの確認コメント(`要件0046確認(変換不可、要件0047)`)は保留中の目印として残した |
| 2. 監査列(全Edit共通) | Editには含めない(`update_at`はトリガーで設定されるが、Editに含めるとプログラマが意図的に変更できてしまうため)。必要なら保存後にRFEを再取得する | 方針を`27_yaml_to_graphql_conversion_rules.md` 8章に追記した。相互変換テストでは、監査列がRFEにのみ存在する差を「A1(方針どおり)」として区別し、要確認(C1)から外した。view.yaml冒頭の確認コメントは削除した |
| 3. @includeによる条件付き取得(7画面) | 要件0036以前の方式は修正する | 7画面のRFEを修正・再生成した(2章)。相互変換テストでは、今後この方式が混入した場合を失敗(F6)とするよう変更した。view.yamlの確認コメント7件は削除した |
| 4. ItemPageEdit.manufacture(`editable: true`) | 採択 | 変更なし(現状どおり) |
| 5. CompanyPageEdit.provision | 「`requiredWhere: [info_provision_id]`は見つからなかった」 | 3章のとおり、変更なし |
| 6. company_pageの`symbol` | 採択。修正モレ | view.yamlの`CompanyPageEdit`に`symbol`を追加し、company_pageのedit/rfeに`symbol`を戻した(2章) |

## 2. 再生成したGraphQL

| ファイル | 変更 |
|---|---|
| `capability_page_rfe` / `department_category_rfe` / `license_page_rfe` / `office_page_rfe` / `position_page_rfe` / `provision_page_rfe` / `staff_page_rfe` | `$ja`/`$en: Boolean!`と`@include(if: $ja/$en)`を削除し、`$jaLanguageCodeId`/`$enLanguageCodeId`を`UUID!`(必須)にした。company_page_rfe.graphqlと同じ方式で、ja/en両方を常に取得する。応答の形(`ja`/`en`の別名)は変わらないため、既存テストのフィクスチャは変更不要だった |
| `company_page_edit` | `$symbol`(引数)・Patchの`symbol`・結果の`symbol`を戻した |
| `company_page_rfe` | `symbol`を戻した |

呼び出し側への影響として、7画面のRFEの`Variables$Query$XxxRfe`から`ja`/`en`(bool)が無くなり、
`jaLanguageCodeId`/`enLanguageCodeId`が必須になった(company_page等の既存方式と同じ)。

## 3. 項目5(CompanyPageEdit.provision)について

`requiredWhere: [info_provision_id]`は、複製元のトップノード`ProvisionPageEdit`にある(view.yaml 337行付近、HEADにも存在)。

```yaml
ProvisionPageEdit:
  kind: edit
  generateRfe: true
  requiredWhere:
    - info_provision_id
```

`CompanyPageEdit.provision`(子)側は、この`requiredWhere`・`generateRfe`を除いて複製しているため、子の側には存在しない。
0047ログで「`<<: *ProvisionPageEdit`へ置き換えると意味が変わる」と書いたのは、置き換えると
このトップノードの`requiredWhere`が子へmergeされ、子の位置でGraphQL引数になるためである。

今回は方針の指示が無いため、変更していない。

`ProvisionPageEdit`には、他のEditノードにある`from: info_provision`も無い(生成物は`info_provision`で生成済み)。
アンカー(`&ProvisionPageEdit`)も未定義である。置き換える場合は、次の2点が必要になる。
- アンカーを追加する。
- 子の位置で`requiredWhere`を上書きする手段を用意する(例えば、置き換えずに複製のまま維持する)。

## 4. build_runner・テスト

- 0042に従い、画面単位に分割して順次実行した(company 1回、RFE 7画面を各1回)。
  - capability・license・position・provisionの4画面で、0047と同じbuild_runner内部の例外(`Null check operator used on a null value`)が発生した。
  - 既存の出力を削除して再実行し、すべて生成できた。
  - 該当の4画面は出力の更新日時が2026/09/30 07:23で、git操作の影響を受けたファイルではなかった。原因は「build_runnerの現在のアセットグラフ外で書かれた出力」と推定し、0047ログの推定(git操作による更新)を拡張する。
  - 今後の再生成で同じ例外が出た場合は、該当の出力を削除して再実行すれば回避できる。
- `dart analyze lib test`: 生成物以外のerror・warningは0件。
- `flutter test`: 74件すべて成功。
- 相互変換テスト(17画面): 失敗0件、要確認(C1/C3/C4)0件。A1(監査列、方針どおり)のみ。

## 5. 変更したファイル

| 区分 | ファイル |
|---|---|
| view.yaml | `source/view.yaml`(CompanyPageEditに`symbol`を追加、解決した要件0046確認コメント8件を削除) |
| 規則 | `source/27_yaml_to_graphql_conversion_rules.md`(8章に監査列とRFEの言語引数の方針) |
| GraphQL・生成モデル | 2章の9ファイルと、対応する`lib/postgraphile/**` |
| テスト | `test/support/rfe_edit_conversion.dart`(A1・F6の区分)、`test/company_page_flatten_roundtrip_test.dart`(`symbol`を戻した) |
