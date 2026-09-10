// info_office_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/info_office/info_office_read.graphql / info_office_edit.graphql の
// 結果(モデルのtoJson())を nested_map_flattener.dart の flatten()/flattenForColumns()
// で平坦化したときのキー文字列を、コード補完可能な定数として提供する。
//
// 対象画面: source/views.md #info_office (read / edit)
abstract class InfoOfficeKeyName {
  // --- info_office本体 ----------------------------------------------------
  /// 事業所ID
  static const String infoOfficeId = 'infoOfficeId';

  /// 会社ID
  static const String infoCompanyId = 'infoCompanyId';

  /// 事業所コード
  static const String code = 'code';

  /// 備考(info_office)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 事業所名 / 読み / 略称(共通名前仕様) ---------------------------------
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
  // ⚠ docs/0021_view_graphql_log.md #1: address3相当の列が存在しないため定数化していない。
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
  // ⚠ docs/0021_view_graphql_log.md #2: この先(shared_appellations以降)は
  //   InfoOfficeReadUpdaterAppellationクエリの結果側で解決する。
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
