# 要件0056 実施ログ(親に子のレコード数を返す列の追加、2026/10/17)

要件0056: `_tree`で終わるテーブル、または`hrchy_`か`history_`で始まるテーブルを除き、親子関係にあるテーブル(ペア)のviewを定義した。viewsの親に子のレコード数を返すcolumnを追加する。0055に従うこと。

## 1. DBのビュー(調査)
- `docker/postgresql/scripts/06_cteate_test.sql`に、`v_<親>_<子>_count`が125本ある(`tests.v_*_count`)。親テーブル(p)に子テーブル(c)を`LEFT JOIN`し、親のキーでグループ化して、次の3列を返す。

  | 列 | 内容 |
  |---|---|
  | `<親の主キー>` | 親のキー |
  | `all_count` | 子の全件 |
  | `enable_count` | `remove`でない子 |
  | `disable_count` | `remove`の子 |

- DBのコメント(`@foreignKey (<キー>) references <親> (<キー>)`、`@unique <キー>`)で、PostGraphileに親との1対1を伝えている。親の型には、単数のフィールド`v<親><子>CountBy<親のキー>`(例: `InfoCompany.vCompanyDepartmentCountByInfoCompanyId`)が生える。
- 既存のviewsの`v_*_descendants`(子孫の数)と同じ形で取得できる(`arrayType: toFirstOne`、`using: <親の主キー>`、`from: <ビュー>`、`pick`)。

## 2. 追加した列
親の~Page(`kind: read`のトップ。`from`が親テーブル)の`columns`に、`update_at`の直前へ追加した。例(CompanyPage):

```yaml
    - name: department_count
      arrayType: toFirstOne
      as: department_count
      using: info_company_id
      from: v_company_department_count
      pick:
        - all_count
        - enable_count
        - disable_count
```

- 列名・`as`は`<子テーブルのプレフィックスを除いた名前>_count`(同じ親で重複するときはビュー名)。
- 追加したのは、101本のビュー分(同じテーブルを`from`とする~Pageが複数あるときは、それぞれに)。合計113列、25ファイル。
- 共通定義を介する~Page(`CustomerPage`・`SupplierPage`が取り込む`StakeholderReadFields`)は、共通定義側へ追加した。そのため`StakeholderReadFields`を子として使う箇所(`TaskResourcePage`・`audit.yaml`の2箇所ずつ)にも、集計が含まれる。
- edit(~PageEdit)・RFEには追加していない(計算値のため、書き込まない)。

## 3. 対象外(親テーブルに~Pageが無い24本)
| ビュー | 親テーブル |
|---|---|
| v_visiter_purchase_rec_visiter_count, v_visiter_work_record_visiter_count, v_visiter_convey_count | trans_visiter |
| v_access_path_staff_access_permission_count, v_access_path_department_access_permission_count, v_access_path_report_count | info_access_path |
| v_text_trans_text_value_count | trans_text |
| v_text_shared_text_value_count | shared_text |
| v_label_label_value_count | trans_label |
| v_shipping_order_shipping_order_detail_count | trans_shipping_order |
| v_shipping_order_detail_shipping_order_detail_record_count | trans_shipping_order_detail |
| v_preapproval_approved_count | trans_preapproval |
| v_approval_pattern_preapproval_count, v_approval_pattern_document_count | trans_approval_pattern |
| v_language_code_*_count(4本) | shared_language_code |
| v_dictionary_dictionary_value_count | shared_dictionary |
| v_operation_task_item_operation_task_count | mstr_operation_task |
| v_approval_preapproval_count, v_approval_approval_pattern_detail_count | mstr_approval |
| v_app_app_status_count, v_app_access_path_count | info_app |

- これらの親テーブルは、viewsに~Pageがまだ無い(page.mdの項目が無い、または共通定義のみ)。~Pageを追加するときに、`tool/scaffold_view.dart`が集計を出力する。
- `mstr_approval`・`trans_approval_pattern`は、`ApprovalOperationPage`等がviewsにあるが、`from`のテーブルが異なる(`mstr_approval_pattern`等)ため対象外。必要なら、親の位置づけ(どのテーブルのページに集計を出すか)を決める。

## 4. 生成物・ツール
- GraphQLの生成: 281ファイル、エラー0件。生成物のサイズは、ほぼ変わらない(`company_page_read` 18,302 → 18,438バイト、`task_resource_page_rfe`は63,554バイトで減少)。
- `lib/graphql`には、回帰テストで差分が出た21ファイルだけを置き換えた(read 14、edit 3、rfe 4。edit・rfeは、readの~Pageを子として取り込む画面)。差分は、集計の列(`v…CountBy…`)とそのキーのみ。
- 絞り込み(入力型402)、検索条件の対応表(34ファイル)、build_runner(117ファイル)を実行した。5000KB超の生成物は、設定済みの3ファイルのみ。
- `tool/scaffold_view.dart`は、雛形の~Pageに子の集計の列を出力する(0055の雛形の規則に追加)。
- テスト: `test/page_views_consistency_test.dart`に「親の~Pageに、子のレコード数(v_*_count)が含まれる」を追加した(~Pageの`from`テーブルの型が持つ`V…Count`の単数フィールドを、すべて含むこと)。177件に1件加えて通過。

## 5. 利用側の注意
- 集計は、平坦化したMapでは`<名前>||all_count`等のキー(例: `department_count||allCount`)になる。
- `remove`が`true`の子は`disable_count`に入る。画面に出す件数は、通常`enable_count`。
- 集計のビューは、親ごとに全件をグループ化するため、一覧で件数が多いときは負荷に注意する。
