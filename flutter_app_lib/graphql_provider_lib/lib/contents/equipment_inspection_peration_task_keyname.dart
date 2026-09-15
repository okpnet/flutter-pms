// equipment_inspection_peration_task_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/equipment_inspection_peration_task/equipment_inspection_peration_task_read.graphql /
// equipment_inspection_peration_task_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ 実スキーマの型名は"MstrInspectionOperationTask"。「外部点検整備」「点検整備サービス品目」は
//   本テーブルの列ではなく、mstrInspectionId経由の親"MstrInspection"の列(2階層先)であり、
//   views.mdの明記どおり表示専用(編集対象外)。
//
// 対象画面: source/views.md #equipment_inspection_peration_task (read / edit)
abstract class EquipmentInspectionPerationTaskKeyName {
  /// 点検整備運用課題ID
  static const String mstrInspectionOperationTaskId = 'mstrInspectionOperationTaskId';

  /// 点検整備運用ID(既存マスタへの付け替え、スカラーID)
  static const String mstrInspectionOperationId = 'mstrInspectionOperationId';

  /// 順
  static const String sequence = 'sequence';

  /// 点検整備ID(既存マスタへの付け替え、スカラーID)
  static const String mstrInspectionId = 'mstrInspectionId';

  /// 起算日
  static const String commencementDate = 'commencementDate';

  /// 間隔(Interval、サブフィールドごとにフラット化される)
  static const String timeInterval_seconds = 'timeInterval||seconds';
  static const String timeInterval_minutes = 'timeInterval||minutes';
  static const String timeInterval_hours = 'timeInterval||hours';
  static const String timeInterval_days = 'timeInterval||days';
  static const String timeInterval_months = 'timeInterval||months';
  static const String timeInterval_years = 'timeInterval||years';

  /// 備考(mstr_inspection_operation_task)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- read専用: 点検整備運用コード / 名 / 読み / 略称(点検整備運用マスタ参照) ---
  static const String mstrInspectionOperationByMstrInspectionOperationId_mstrInspectionOperationId =
      'mstrInspectionOperationByMstrInspectionOperationId||mstrInspectionOperationId';

  static const String mstrInspectionOperationByMstrInspectionOperationId_code =
      'mstrInspectionOperationByMstrInspectionOperationId||code';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 点検整備コード / 名 / 読み / 略称(点検整備マスタ自身) ---------
  static const String mstrInspectionByMstrInspectionId_mstrInspectionId =
      'mstrInspectionByMstrInspectionId||mstrInspectionId';

  static const String mstrInspectionByMstrInspectionId_code =
      'mstrInspectionByMstrInspectionId||code';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 外部点検整備id / 委託先コード / 名 / 読み / 略称(⚠2階層先、参照のみ) ---
  static const String mstrInspectionByMstrInspectionId_externalInspection =
      'mstrInspectionByMstrInspectionId||externalInspection';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_mstrStakeholderId =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||mstrStakeholderId';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_code =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||code';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 点検整備サービス品目id / サービスコード / 名 / 読み / 略称(⚠2階層先、参照のみ) ---
  static const String mstrInspectionByMstrInspectionId_mstrItemId =
      'mstrInspectionByMstrInspectionId||mstrItemId';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_mstrItemId =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||mstrItemId';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_code =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||code';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
