// license_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/license_page/license_page_read.graphql /
// license_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #LicensePage / #LicensePageEdit(資格、mstr_license)
import 'content_variable.dart';

abstract class LicensePageKeyName {
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

  static const ContentVariable publicLicense = ContentVariable(
    'publicLicense',
    GraphQLTypeKind.boolean,
  );

  static const ContentVariable customerLicense = ContentVariable(
    'customerLicense',
    GraphQLTypeKind.boolean,
  );

  static const ContentVariable organizationLicense = ContentVariable(
    'organizationLicense',
    GraphQLTypeKind.boolean,
  );

  // --- 更新間隔(Postgresのinterval型、GraphQL上は年/月/日/時/分/秒を持つ
  //     オブジェクト型`Interval`のため、スカラーと違いサブフィールドごとに定数を持つ) ---
  static const ContentVariable updateInterval_years = ContentVariable(
    'updateInterval||years',
    GraphQLTypeKind.int,
  );

  static const ContentVariable updateInterval_months = ContentVariable(
    'updateInterval||months',
    GraphQLTypeKind.int,
  );

  static const ContentVariable updateInterval_days = ContentVariable(
    'updateInterval||days',
    GraphQLTypeKind.int,
  );

  static const ContentVariable updateInterval_hours = ContentVariable(
    'updateInterval||hours',
    GraphQLTypeKind.int,
  );

  static const ContentVariable updateInterval_minutes = ContentVariable(
    'updateInterval||minutes',
    GraphQLTypeKind.int,
  );

  static const ContentVariable updateInterval_seconds = ContentVariable(
    'updateInterval||seconds',
    GraphQLTypeKind.float,
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
  static const ContentVariable labels_sharedAppellationsId = ContentVariable(
    'labels||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
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
