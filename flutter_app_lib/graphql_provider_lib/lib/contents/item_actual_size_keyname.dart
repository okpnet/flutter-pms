// item_actual_size_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/item_actual_size/item_actual_size_read.graphql /
// item_actual_size_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0025_view_graphql_evaluation_log.md 4-2節: 実スキーマの型名は"MstrItemActualSize"。
// 本テーブル自身はshared_appellationsを持たない(大きさ区分名等は品目大きさ区分マスタ経由の参照)。
//
// 対象画面: source/views.md #item_actual_size (read / edit)
abstract class ItemActualSizeKeyName {
  /// 大きさID
  static const String mstrItemActualSizeId = 'mstrItemActualSizeId';

  /// 品目ID(既存マスタへの付け替え、スカラーID)
  static const String mstrItemId = 'mstrItemId';

  /// 大きさ
  static const String sizeValue = 'sizeValue';

  /// 詳細
  static const String detail = 'detail';

  /// 備考(mstr_item_actual_size)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- read専用: 品目大きさ区分マスタ参照(コード / 呼称セット) -------------------
  static const String mstrItemSizeKindByMstrItemSizeKindId_mstrItemSizeKindId =
      'mstrItemSizeKindByMstrItemSizeKindId||mstrItemSizeKindId';

  /// edit専用: 品目大きさ区分(既存マスタへの付け替え、スカラーID)
  static const String mstrItemSizeKindId = 'mstrItemSizeKindId';

  static const String mstrItemSizeKindByMstrItemSizeKindId_code =
      'mstrItemSizeKindByMstrItemSizeKindId||code';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedAppellationsId';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
