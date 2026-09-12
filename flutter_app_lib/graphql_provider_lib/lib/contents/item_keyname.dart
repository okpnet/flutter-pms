// item_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/item/item_read.graphql / item_edit.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0025_view_graphql_evaluation_log.md: 実スキーマの型名は"MstrItem"。
// 「品目提供」は1対多のため配列(nodes)はフラット化されず、キー定数の対象外(要件0002)。
//
// 対象画面: source/views.md #item (read / edit)
abstract class ItemKeyName {
  /// 品目ID
  static const String mstrItemId = 'mstrItemId';

  /// 品目種類ID(既存マスタへの付け替え、スカラーID)
  static const String mstrItemKindId = 'mstrItemKindId';

  /// 品目コード
  static const String code = 'code';

  /// 識別コード
  static const String identification = 'identification';

  /// 管理コード
  static const String controlCode = 'controlCode';

  /// 製造元ID(既存マスタへの付け替え、スカラーID)
  static const String mstrManufacturerId = 'mstrManufacturerId';

  /// 表示コード
  static const String labelCode = 'labelCode';

  /// 詳細
  static const String description = 'description';

  /// ロット
  static const String lot = 'lot';

  /// 最小在庫数量
  static const String stockQuantity = 'stockQuantity';

  /// 単位ID(既存マスタへの付け替え、スカラーID)
  static const String sharedUnitId = 'sharedUnitId';

  /// 備考(mstr_item)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- read専用: 品目種類コード / 品目種類名(品目区分マスタ参照) -----------------
  static const String mstrItemKindByMstrItemKindId_mstrItemKindId =
      'mstrItemKindByMstrItemKindId||mstrItemKindId';

  static const String mstrItemKindByMstrItemKindId_code =
      'mstrItemKindByMstrItemKindId||code';

  static const String mstrItemKindByMstrItemKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrItemKindByMstrItemKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrItemKindByMstrItemKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrItemKindByMstrItemKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- read専用: 製造元コード / 製造元(製造元マスタ参照) -----------------------
  static const String mstrManufacturerByMstrManufacturerId_mstrManufacturerId =
      'mstrManufacturerByMstrManufacturerId||mstrManufacturerId';

  static const String mstrManufacturerByMstrManufacturerId_code =
      'mstrManufacturerByMstrManufacturerId||code';

  static const String mstrManufacturerByMstrManufacturerId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrManufacturerByMstrManufacturerId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrManufacturerByMstrManufacturerId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrManufacturerByMstrManufacturerId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- 品目名 / 読み / 略称(共通名前仕様、品目マスタ自身の呼称セット) -------------
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

  // --- read専用: 単位(単位マスタの略称参照) -----------------------------------
  static const String sharedUnitBySharedUnitId_sharedUnitId =
      'sharedUnitBySharedUnitId||sharedUnitId';

  static const String sharedUnitBySharedUnitId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'sharedUnitBySharedUnitId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String sharedUnitBySharedUnitId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'sharedUnitBySharedUnitId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
