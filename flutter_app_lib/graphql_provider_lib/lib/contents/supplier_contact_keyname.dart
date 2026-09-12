// supplier_contact_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/supplier_contact/supplier_contact_read.graphql /
// supplier_contact_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0025_view_graphql_evaluation_log.md / docs/0026_schema_fetch_log.md: 実スキーマの
//   型名は"MstrStakeholderContact"(supplier_contact/customer_contactは同一物理テーブルを共有)。
//   事業所名/部署名/担当者氏名はそれぞれ独立したshared_appellations参照。
//
// 対象画面: source/views.md #supplier_contact (read / edit)
abstract class SupplierContactKeyName {
  /// 窓口ID
  static const String mstrStakeholderContactId = 'mstrStakeholderContactId';

  /// 利害関係者ID
  static const String mstrStakeholderId = 'mstrStakeholderId';

  /// サプライヤー担当者コード(論理名: 利害関係者窓口コード)
  static const String code = 'code';

  /// Eメールアドレス(要件0026でprivate_phone→mailへ物理名変更)
  static const String mail = 'mail';

  /// 配送区分ID(既存マスタへの付け替え、スカラーID)
  static const String mstrShippingKindId = 'mstrShippingKindId';

  /// 備考(mstr_stakeholder_contact)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 事業所名 / 読み / 略称(共通名前仕様) ---------------------------------
  static const String sharedAppellationByOfficeAppellationsId_sharedAppellationsId =
      'sharedAppellationByOfficeAppellationsId||sharedAppellationsId';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String sharedAppellationByOfficeAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'sharedAppellationByOfficeAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- 部署名 / 読み / 略称(共通名前仕様) -----------------------------------
  static const String sharedAppellationByDepartmentAppellationsId_sharedAppellationsId =
      'sharedAppellationByDepartmentAppellationsId||sharedAppellationsId';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String sharedAppellationByDepartmentAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'sharedAppellationByDepartmentAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- 担当者氏名 / 読み / 略称(共通名前仕様) -------------------------------
  static const String sharedAppellationByContactPersonAppellationsId_sharedAppellationsId =
      'sharedAppellationByContactPersonAppellationsId||sharedAppellationsId';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String sharedAppellationByContactPersonAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'sharedAppellationByContactPersonAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 配送区分名(配送区分マスタ参照) -------------------------------
  static const String mstrShippingKindByMstrShippingKindId_mstrShippingKindId =
      'mstrShippingKindByMstrShippingKindId||mstrShippingKindId';

  static const String mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrShippingKindByMstrShippingKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrShippingKindByMstrShippingKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
