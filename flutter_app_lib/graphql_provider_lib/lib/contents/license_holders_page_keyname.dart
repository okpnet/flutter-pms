// license_holders_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/license_holders_page/license_holders_page_read.graphql /
// license_holders_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #LicenseHoldersPage(資格起点、mstr_staff_license
// 経由でinfo_staffへ)。要件0045で新規追加。Edit/RFEはlabels等をja/en個別フィールドで
// 返すため既存のvalueキーとは別形状になる。CLAUDE.md GraphQL変換ルール(read for
// editing)の方針に従い、Edit/RFE専用の定数は追加しない
// (department_category_keyname.dartと同じ方針)。
import 'content_variable.dart';

abstract class LicenseHoldersPageKeyName {
  static const ContentVariable mstrLicenseId = ContentVariable(
    'mstrLicenseId',
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

  // --- 資格名(共通名前仕様、shared_appellations経由) --------------------------
  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 保有担当者一覧(mstr_staff_license、Connection形状) -----------------------
  static const ContentVariable licenses = ContentVariable(
    'licenses',
    GraphQLTypeKind.connection,
  );

  static const ContentVariable
  licenses_staff_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'licenses||staff||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );
}
