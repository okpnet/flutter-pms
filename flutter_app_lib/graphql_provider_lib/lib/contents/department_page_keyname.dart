// department_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/department_page/department_page_read.graphql /
// department_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #DepartmentPage / #DepartmentPageEdit(組織、info_department)
//
// 要件0045修正: `kinds`(info_department_kind)はinfo_department_idに一意制約(Ix1)を
// 持つ1対1と判明したため、`office`/`address`と同じ単純な入れ子オブジェクトとして
// 平坦化される(`kinds||...`キー)。内側の`kinds||value`(info_department_kind_value、
// 真のtoMany)はConnection形状のためflatten()では再帰されず、`kinds||value`という
// キー1つでConnectionオブジェクトそのものが値になる(nested_map_flattener.dartの
// 設計方針どおり)。個別のラベルを取り出す場合はConnectionRecordsX
// (extractFromEachRecord)を使う。Edit/RFEはlabels等をja/en個別フィールドで返すため
// 既存のvalueキーとは別形状になる。CLAUDE.md GraphQL変換ルール(read for editing)の
// 方針に従い、Edit/RFE専用の定数は追加しない(department_category_keyname.dartと
// 同じ方針)。
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

  // --- 組織区分(要件0045修正: info_department_kindはinfo_department_idに一意制約を
  //     持つ1対1のため、office/addressと同じ単純な入れ子オブジェクト) --------------
  static const ContentVariable kinds_infoDepartmentKindId = ContentVariable(
    'kinds||infoDepartmentKindId',
    GraphQLTypeKind.uuid,
  );

  // `value`(info_department_kind_value)は真のtoMany。Connection、
  // ConnectionRecordsXで個別に取り出す。
  static const ContentVariable kinds_value = ContentVariable(
    'kinds||value',
    GraphQLTypeKind.connection,
  );

  static const ContentVariable
  kinds_value_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'kinds||value||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
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
