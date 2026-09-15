// equipment_inspection_operation_editor_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/equipment_inspection_operation_editor/equipment_inspection_operation_editor_read.graphql /
// equipment_inspection_operation_editor_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ 実スキーマの型名は"MstrInspectionOperation"(equipment_inspection_operationと同一物理
//   テーブル)。「設備id」「設備名」は要件0025評価のモレ修正で追加。「点検項目」は1対多のため
//   配列(nodes)自体はフラット化されず、キー定数の対象外(要件0002)。
//
// 対象画面: source/views.md #equipment_inspection_operation_editor (read / edit)
abstract class EquipmentInspectionOperationEditorKeyName {
  /// 点検整備運用ID
  static const String mstrInspectionOperationId = 'mstrInspectionOperationId';

  /// 点検整備運用コード
  static const String code = 'code';

  /// 設備ID(既存マスタへの付け替え、スカラーID)
  static const String mstrEquipmentId = 'mstrEquipmentId';

  /// 備考(mstr_inspection_operation)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 点検運用名 / 読み / 略称(共通名前仕様) ---------------------------------
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

  // --- read専用: 設備名(参照のみ、mstr_item経由) -------------------------------
  static const String mstrEquipmentByMstrEquipmentId_mstrEquipmentId =
      'mstrEquipmentByMstrEquipmentId||mstrEquipmentId';

  static const String mstrEquipmentByMstrEquipmentId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrEquipmentByMstrEquipmentId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrEquipmentByMstrEquipmentId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrEquipmentByMstrEquipmentId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  // --- read専用: 点検項目(配列、⚠参照のみ) -------------------------------------
  // ⚠ nested_map_flattener.dartは`nodes`キーを持つMap(Connection形状)をフラット化
  //   せずそのまま保持するため、この値は`{nodes: [...]}`というMapそのものになる。
  static const String mstrInspectionOperationTasksByMstrInspectionOperationId =
      'mstrInspectionOperationTasksByMstrInspectionOperationId';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
