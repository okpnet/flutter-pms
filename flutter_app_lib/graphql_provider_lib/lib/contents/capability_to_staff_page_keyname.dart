// capability_to_staff_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/capability_to_staff_page/capability_to_staff_page_read.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #CapabilityToStaffPage(力量→担当者、mstr_capability起点)
import 'content_variable.dart';

abstract class CapabilityToStaffPageKeyName {
  static const ContentVariable mstrCapabilityId = ContentVariable(
    'mstrCapabilityId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable detail = ContentVariable(
    'detail',
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

  // --- 力量名(共通名前仕様、shared_appellations経由) --------------------------
  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 担当者一覧(mstr_staff_capability、Connection形状) ------------------------
  static const ContentVariable staff_capability = ContentVariable(
    'staff_capability',
    GraphQLTypeKind.connection,
  );

  static const ContentVariable
  staff_capability_staff_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'staff_capability||staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable staff_capability_value = ContentVariable(
    'staff_capability||value',
    GraphQLTypeKind.bigFloat,
  );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );
}
