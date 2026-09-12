// customer_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/customer/customer_read.graphql / customer_edit.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0025_view_graphql_evaluation_log.md: 実スキーマの型名は"MstrStakeholder"
//   (customer/supplierは同一物理テーブルを共有、`isCustomer`条件で絞り込む)。
// 「提供」は1対多のため配列(nodes)はフラット化されず、キー定数の対象外(要件0002)。
//
// 対象画面: source/views.md #customer (read / edit)
abstract class CustomerKeyName {
  /// 利害関係者ID
  static const String mstrStakeholderId = 'mstrStakeholderId';

  /// 顧客コード(論理名: 利害関係者コード)
  static const String code = 'code';

  /// 管理コード
  static const String controlCode = 'controlCode';

  /// 配送区分ID(既存マスタへの付け替え、スカラーID)
  static const String mstrShippingKindId = 'mstrShippingKindId';

  /// 備考(mstr_stakeholder)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 顧客名 / 読み / 略称(共通名前仕様) -----------------------------------
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

  // --- read専用: 配送区分名(配送区分マスタ参照) -------------------------------
  static const String mstrShippingKindByMstrShippingKindId_mstrShippingKindId =
      'mstrShippingKindByMstrShippingKindId||mstrShippingKindId';

  static const String mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- 住所情報(info_address) -----------------------------------------------
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
