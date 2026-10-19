// staff_capability_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/staff_capability_page/staff_capability_page_read.graphql /
// staff_capability_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #StaffCapabilityPage(2026/09/30、旧StaffToCapabilityPageから
// リネーム。担当者→力量、info_staff起点)。要件0045でStaffCapabilityPageEdit/RFEを追加したが、
// Edit/RFEはlabels等をja/en個別フィールドで返すため既存のvalueキーとは別形状になる。
// CLAUDE.md GraphQL変換ルール(read for editing)の方針に従い、Edit/RFE専用の
// 定数は追加しない(department_category_keyname.dartと同じ方針)。
import 'content_variable.dart';

abstract class StaffCapabilityPageKeyName {
  static const ContentVariable infoStaffId = ContentVariable(
    'infoStaffId',
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

  // --- 担当者名(共通名前仕様、shared_appellations経由) ------------------------
  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 力量一覧(mstr_staff_capability、Connection形状のためnested_map_flattener.dartの
  //     extractFromEachRecordで各レコードのlabelsのみをリストとして取り出す用途) -----------
  static const ContentVariable capabilitys = ContentVariable(
    'capabilitys',
    GraphQLTypeKind.connection,
  );

  static const ContentVariable
  capabilitys_capability_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'capabilitys||capability||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable capabilitys_value = ContentVariable(
    'capabilitys||value',
    GraphQLTypeKind.bigFloat,
  );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );
}
