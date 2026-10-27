# 要件0054: ツリーの親の付け替え(2026/10/16)

## 1. エラーの原因(調査)
- `LocationPageEdit.parent`は`arrayType: toFirstOne`(場所に親が1つ)だが、`mstr_location_tree.mstr_location_id`にユニーク制約が無い(ユニークなのは`symbol`の`mstr_location_tree_IX1`のみ)。
- PostGraphileは、ユニークでないFKを1対多として扱う。`MstrLocationPatch`の入れ子書き込みは`mstrLocationTreesToMstrLocationIdUsingMstrLocationId`(`MstrLocationTreeFk2InverseInput`)だけで、1対1の`mstrLocationTreeToMstrLocationId`は無い。参照側も`mstrLocationTreesByMstrLocationId`(コネクション)のみ。
- ジェネレーター(`edit_generator.dart`)は、toFirstOneの子のフィールド名を`<子の型>To<FK列>`と推測するため、見つからずエラーになる。

## 2. 対応(案A)
- ツリー行を直接更新するページを追加した。

| ページ | ディレクトリ | 更新するミューテーション |
|---|---|---|
| LocationTreePageEdit | location_tree_page | updateMstrLocationTreeByMstrLocationTreeId |
| ItemTreePageEdit | item_tree_page | updateMstrItemTreeByMstrItemTreeId |
| TaskTreePageEdit | task_tree_page | updateMstrTaskTreeByMstrTaskTreeId |
| DepartmentTreePageEdit | department_tree_page | updateInfoDepartmentTreeByInfoDepartmentTreeId |

- 生成されるGraphQL(例): `mutation LocationTreePageEdit($mstrLocationTreeId: UUID!, $parentMstrLocationId: UUID, $remarks: String)`。RFEは`LocationTreePageRfe($mstrLocationTreeId: UUID!)`。
- 各`~PageEdit`から`parent`を削除した。`ItemTreePageEdit`には、旧`ItemPageEdit.parent`の列(code・control_code・labels・quantity・detailTexts)を引き継いだ。
- `source/page.md`に4ページを追加した。

## 3. 生成・採用
- 生成: 105ファイル、エラー2件(別原因、下記)。更新前は93ファイル・エラー6件。
- `lib/graphql`には、4つのツリーページ(各read無し、edit・rfe)だけを採用した。`location_page`・`item_page`・`task_page`等の新しく生成できるようになった画面は、採用の判断待ち。
- 絞り込み(入力型270)、検索条件の対応表(19ファイル)、build_runner(66ファイル)を実行した。
- テスト: `test/tree_page_flatten_roundtrip_test.dart`(location・task・department)と、`rfe_edit_interconversion_test.dart`(4ページを追加)。171件成功。

## 4. 親をnullにする(トップへ移動)
- graphql_codegenのVariablesコンストラクタは、nullの引数を省略する。そのため、`Variables$Mutation$LocationTreePageEdit(mstrLocationTreeId: id)`は`parentMstrLocationId`を送らず、親を変更しない。
- トップへ移動するには、`Variables$Mutation$LocationTreePageEdit.fromJson({'mstrLocationTreeId': id, 'parentMstrLocationId': null}).toJson()`のようにnullのキーを渡す(テストで確認済み)。

## 5. 残りのエラー(別原因)への適用
- `DepartmentPageEdit.kinds`: `info_department_kind`(`info_department_id`に一意制約を持つ1対1の内向き)を入れ子で更新する構成は、ジェネレーターが未対応。ツリーと同じく、編集から外した。区分の値の編集は`DepartmentCategoryPageEdit`、取得は`DepartmentPage`(read)で行う。
- `ItemPageEdit.descendants`: 読み取り専用のビュー(`v_item_descendants`)で、editに置くものではないため、編集から外した。取得は`ItemPage`(read)。
- 結果: GraphQLの生成は109ファイル、エラー0件。テストは171件成功。
- 注意: これにより`DepartmentPageEdit`・`ItemPageEdit`のRFEにも`kinds`・`descendants`は含まれない。部署の区分(kind)の行そのものを作成・更新する画面が必要になったときは、`from: info_department_kind`の独立したページを追加する。
- 新しく生成できるようになった画面(`location_page`・`item_page`・`task_page`・`department_page`のedit/rfe等)は、`lib/graphql`に未採用。

## 6. 利用側の注意
- 循環の防止(自分の子孫の下へ移動しない)はアプリ側で行う。`v_*_descendants`で移動先を確認する。
- `*_tree_IX1 unique(symbol)`は、`symbol`の既定値が空文字のため、複数行で衝突しないか確認する。
