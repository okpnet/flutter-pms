// department_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/department_page/department_page_read.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #DepartmentPage(組織、info_department。read専用画面)
//
// `kinds`(1対多、info_department_kind)はConnection形状のためflatten()では
// 再帰されず、`kinds`というキー1つでConnectionオブジェクトそのものが値になる
// (nested_map_flattener.dartの設計方針どおり)。個別の`info_department_kind_value`
// ラベルを取り出す場合はnested_map_flattener.dartのConnectionRecordsX
// (extractFromEachRecord)を使う。
import 'content_variable.dart';

abstract class DepartmentPageKeyName {
  static const ContentVariable infoDepartmentId = ContentVariable(
    'infoDepartmentId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoCompanyId = ContentVariable(
    'infoCompanyId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoOfficeId = ContentVariable(
    'infoOfficeId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable symbol = ContentVariable(
    'symbol',
    GraphQLTypeKind.string,
  );

  static const ContentVariable remarks = ContentVariable(
    'remarks',
    GraphQLTypeKind.string,
  );

  static const ContentVariable updateAt = ContentVariable(
    'updateAt',
    GraphQLTypeKind.datetime,
  );

  static const ContentVariable remove = ContentVariable(
    'remove',
    GraphQLTypeKind.boolean,
  );

  // --- 親組織(info_department_tree、1対多だが実質1件のためConnectionのまま) -----
  static const ContentVariable parent = ContentVariable(
    'parent',
    GraphQLTypeKind.connection,
  );

  // --- 組織名(共通名前仕様、shared_appellations経由) --------------------------
  static const ContentVariable labels_sharedAppellationsId = ContentVariable(
    'labels||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 住所(address1/bill、shared_appellations経由) --------------------------
  static const ContentVariable address_infoAddressId = ContentVariable(
    'address||infoAddressId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'address||address1||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  address_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'address||billName||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 事業所(office_page相当、代表としてoffice自身のlabelsのみ) -----------------
  static const ContentVariable office_infoOfficeId = ContentVariable(
    'office||infoOfficeId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  office_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'office||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 組織区分一覧(Connection、ConnectionRecordsXで個別に取り出す) --------------
  static const ContentVariable kinds = ContentVariable(
    'kinds',
    GraphQLTypeKind.connection,
  );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  update_user_name_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );
}
