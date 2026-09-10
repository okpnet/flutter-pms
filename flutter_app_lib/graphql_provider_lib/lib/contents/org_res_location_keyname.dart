// org_res_location_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/org_res_location/org_res_location_read.graphql /
// org_res_location_edit.graphql の結果を nested_map_flattener.dart で平坦化した
// ときのキー文字列の定数クラス。
// ⚠ docs/0021_view_graphql_log.md #7: 実スキーマの型名は"MstrLocation"。
//
// 対象画面: source/views.md #org_res_location (read / edit)
abstract class OrgResLocationKeyName {
  /// 場所ID
  static const String mstrLocationId = 'mstrLocationId';

  /// 場所コード
  static const String code = 'code';

  /// 管理コード
  static const String controlCode = 'controlCode';

  /// 備考(mstr_location)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- read専用: 組織名(参照のみ、⚠ #8) -------------------------------------
  static const String infoDepartmentByInfoDepartmentId_infoDepartmentId =
      'infoDepartmentByInfoDepartmentId||infoDepartmentId';

  static const String infoDepartmentByInfoDepartmentId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'infoDepartmentByInfoDepartmentId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String infoDepartmentByInfoDepartmentId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'infoDepartmentByInfoDepartmentId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- 場所名 / 読み / 略称(共通名前仕様) -----------------------------------
  static const String sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      'sharedAppellationBySharedAppellationsId||sharedAppellationsId';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- 郵便番号 / 住所1~2 / 建物 / 電話番号 / FAX番号 -------------------------
  static const String infoAddressByInfoAddressId_infoAddressId =
      'infoAddressByInfoAddressId||infoAddressId';

  static const String infoAddressByInfoAddressId_zipCode =
      'infoAddressByInfoAddressId||zipCode';

  static const String infoAddressByInfoAddressId_address1 =
      'infoAddressByInfoAddressId||address1';

  static const String infoAddressByInfoAddressId_address2 =
      'infoAddressByInfoAddressId||address2';

  static const String infoAddressByInfoAddressId_bill =
      'infoAddressByInfoAddressId||bill';

  static const String infoAddressByInfoAddressId_phone =
      'infoAddressByInfoAddressId||phone';

  static const String infoAddressByInfoAddressId_faxNumber =
      'infoAddressByInfoAddressId||faxNumber';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
