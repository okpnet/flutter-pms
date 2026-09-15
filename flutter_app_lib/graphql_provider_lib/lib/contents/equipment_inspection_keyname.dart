// equipment_inspection_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/equipment_inspection/equipment_inspection_read.graphql /
// equipment_inspection_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ 実スキーマの型名は"MstrInspection"。`Interval`型(標準間隔)は`nodes`/`edges`キーを
//   持たない通常のオブジェクトのため、nested_map_flattener.dartにより再帰的にフラット化される
//   (`timeInterval||seconds`等)。
//
// 対象画面: source/views.md #equipment_inspection (read / edit)
abstract class EquipmentInspectionKeyName {
  /// 点検整備ID
  static const String mstrInspectionId = 'mstrInspectionId';

  /// 点検整備コード
  static const String code = 'code';

  /// 点検整備区分ID(既存マスタへの付け替え、スカラーID)
  static const String inspectionKind = 'inspectionKind';

  /// 標準起算日
  static const String baseDate = 'baseDate';

  /// 標準間隔(Interval、サブフィールドごとにフラット化される)
  static const String timeInterval_seconds = 'timeInterval||seconds';
  static const String timeInterval_minutes = 'timeInterval||minutes';
  static const String timeInterval_hours = 'timeInterval||hours';
  static const String timeInterval_days = 'timeInterval||days';
  static const String timeInterval_months = 'timeInterval||months';
  static const String timeInterval_years = 'timeInterval||years';

  /// 外部点検整備ID(既存マスタへの付け替え、スカラーID)
  static const String externalInspection = 'externalInspection';

  /// 点検整備項目式ID(既存マスタへの付け替え、スカラーID)
  static const String inspectionFormulaId = 'inspectionFormulaId';

  /// 点検整備サービス品目ID(既存マスタへの付け替え、スカラーID)
  static const String mstrItemId = 'mstrItemId';

  /// 備考(mstr_inspection)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- read専用: 外部点検委託先名 / 読み / 略称(利害関係者マスタ参照) -----------
  static const String mstrStakeholderByExternalInspection_mstrStakeholderId =
      'mstrStakeholderByExternalInspection||mstrStakeholderId';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 点検整備区分名 / 読み / 略称(点検整備区分マスタ参照) -----------
  static const String mstrInspectionKindByInspectionKind_mstrInspectionKindId =
      'mstrInspectionKindByInspectionKind||mstrInspectionKindId';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 点検整備サービス品目名 / 読み / 略称(品目マスタ参照) -----------
  static const String mstrItemByMstrItemId_mstrItemId = 'mstrItemByMstrItemId||mstrItemId';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 式 / 引数 / 型 / フォーマット(点検整備項目式マスタ参照) -------
  static const String mstrInspectionFormulaByInspectionFormulaId_mstrInspectionFormulaId =
      'mstrInspectionFormulaByInspectionFormulaId||mstrInspectionFormulaId';

  static const String mstrInspectionFormulaByInspectionFormulaId_formulaClass =
      'mstrInspectionFormulaByInspectionFormulaId||formulaClass';

  static const String mstrInspectionFormulaByInspectionFormulaId_argClass =
      'mstrInspectionFormulaByInspectionFormulaId||argClass';

  static const String mstrInspectionFormulaByInspectionFormulaId_typeClass =
      'mstrInspectionFormulaByInspectionFormulaId||typeClass';

  static const String mstrInspectionFormulaByInspectionFormulaId_formatClass =
      'mstrInspectionFormulaByInspectionFormulaId||formatClass';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
