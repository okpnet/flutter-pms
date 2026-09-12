// org_res_equipment_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/org_res_equipment/org_res_equipment_read.graphql /
// org_res_equipment_edit.graphql の結果を nested_map_flattener.dart で平坦化した
// ときのキー文字列の定数クラス。
// ⚠ docs/0021_view_graphql_log.md #7: 実スキーマの型名は"MstrEquipment"。
// ⚠ #9: サイズ幅/奥行き/高さ(mstr_item_size)はEAV構造のため個別キー化していない
//   (mstrItemByMstrItemId||mstrItemSizesByMstrItemIdまでで、これ以上は平坦化しない。
//   Relay Connection形状のリストとして扱う)。
//
// 対象画面: source/views.md #org_res_equipment (read / edit)
abstract class OrgResEquipmentKeyName {
  /// 設備ID
  static const String mstrEquipmentId = 'mstrEquipmentId';

  /// 設備コード
  static const String code = 'code';

  /// 管理コード
  static const String controlCode = 'controlCode';

  /// 表示コード
  static const String labelCode = 'labelCode';

  /// 備考(mstr_equipment)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 設備区分名(参照のみ、⚠ #10) -------------------------------------------
  static const String mstrEquipmentKindByMstrEquipmentCategoryId_mstrEquipmentKindId =
      'mstrEquipmentKindByMstrEquipmentCategoryId||mstrEquipmentKindId';

  static const String mstrEquipmentKindByMstrEquipmentCategoryId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrEquipmentKindByMstrEquipmentCategoryId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrEquipmentKindByMstrEquipmentCategoryId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrEquipmentKindByMstrEquipmentCategoryId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- 設備名 / 読み / 略称(共通名前仕様、mstr_item経由・⚠ #10で入れ子編集対象) -----
  static const String mstrItemByMstrItemId_mstrItemId =
      'mstrItemByMstrItemId||mstrItemId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedAppellationsId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: サイズ幅/奥行き/高さ(⚠ #9、Relay Connection形状のためこれ以上は平坦化しない) ---
  // 2026/09/11のschema.graphql更新でmstrItemSizesByMstrItemId→mstrItemActualSizesByMstrItemId
  // に改称(docs/0021_view_graphql_log.mdの追記を参照)。
  static const String mstrItemByMstrItemId_mstrItemActualSizesByMstrItemId =
      'mstrItemByMstrItemId||mstrItemActualSizesByMstrItemId';

  // --- read専用: 場所名(参照のみ) --------------------------------------------
  static const String mstrLocationByMstrLocationId_mstrLocationId =
      'mstrLocationByMstrLocationId||mstrLocationId';

  static const String mstrLocationByMstrLocationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrLocationByMstrLocationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrLocationByMstrLocationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrLocationByMstrLocationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';

  // --- edit専用: 設備区分 / 場所(スカラーFK付け替え、⚠ #10) --------------------
  static const String mstrEquipmentCategoryId = 'mstrEquipmentCategoryId';
  static const String mstrLocationId = 'mstrLocationId';
}
