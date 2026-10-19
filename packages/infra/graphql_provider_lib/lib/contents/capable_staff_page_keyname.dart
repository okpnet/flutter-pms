// capable_staff_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/capable_staff_page/capable_staff_page_read.graphql /
// capable_staff_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #CapableStaffPage(2026/09/30、旧CapabilityToStaffPageから
// リネーム。力量→担当者、mstr_capability起点)。要件0045でCapableStaffPageEdit/RFEを
// 追加したが、Edit/RFEはlabels等をja/en個別フィールドで返すため既存のvalueキーとは
// 別形状になる。CLAUDE.md GraphQL変換ルール(read for editing)の方針に従い、Edit/RFE
// 専用の定数は追加しない(department_category_page_keyname.dartと同じ方針)。
import 'content_variable.dart';

abstract class CapableStaffPageKeyName {
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
