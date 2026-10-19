// assign_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/assign_page/assign_page_read.graphql /
// assign_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #AssignPage / #AssignPageEdit(担当者の組織割り当て、info_assign)
import 'content_variable.dart';

abstract class AssignPageKeyName {
  static const ContentVariable infoAssignId = ContentVariable(
    'infoAssignId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoPositionId = ContentVariable(
    'infoPositionId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoOfficeId = ContentVariable(
    'infoOfficeId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable infoDepartmentId = ContentVariable(
    'infoDepartmentId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable enable = ContentVariable(
    'enable',
    GraphQLTypeKind.boolean,
  );

  static const ContentVariable priority = ContentVariable(
    'priority',
    GraphQLTypeKind.int,
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

  // --- 担当者(StaffPage共有アーム相当) ----------------------------------------
  static const ContentVariable staff_infoStaffId = ContentVariable(
    'staff||infoStaffId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  staff_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
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
