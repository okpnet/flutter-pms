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
import 'content_variable.dart';

abstract class EquipmentInspectionKeyName {
  /// 点検整備ID
  static const ContentVariable mstrInspectionId = ContentVariable(
    'mstrInspectionId',
    GraphQLTypeKind.uuid,
  );

  /// 点検整備コード
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// 点検整備区分ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable inspectionKind = ContentVariable(
    'inspectionKind',
    GraphQLTypeKind.uuid,
  );

  /// 標準起算日
  static const ContentVariable baseDate = ContentVariable(
    'baseDate',
    GraphQLTypeKind.datetime,
  );

  /// 標準間隔(Interval、サブフィールドごとにフラット化される)
  static const ContentVariable timeInterval_seconds = ContentVariable(
    'timeInterval||seconds',
    GraphQLTypeKind.float,
  );
  static const ContentVariable timeInterval_minutes = ContentVariable(
    'timeInterval||minutes',
    GraphQLTypeKind.int,
  );
  static const ContentVariable timeInterval_hours = ContentVariable(
    'timeInterval||hours',
    GraphQLTypeKind.int,
  );
  static const ContentVariable timeInterval_days = ContentVariable(
    'timeInterval||days',
    GraphQLTypeKind.int,
  );
  static const ContentVariable timeInterval_months = ContentVariable(
    'timeInterval||months',
    GraphQLTypeKind.int,
  );
  static const ContentVariable timeInterval_years = ContentVariable(
    'timeInterval||years',
    GraphQLTypeKind.int,
  );

  /// 外部点検整備ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable externalInspection = ContentVariable(
    'externalInspection',
    GraphQLTypeKind.uuid,
  );

  /// 点検整備項目式ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable inspectionFormulaId = ContentVariable(
    'inspectionFormulaId',
    GraphQLTypeKind.uuid,
  );

  /// 点検整備サービス品目ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrItemId = ContentVariable(
    'mstrItemId',
    GraphQLTypeKind.uuid,
  );

  /// 備考(mstr_inspection)
  static const ContentVariable remarks = ContentVariable(
    'remarks',
    GraphQLTypeKind.string,
  );

  /// 共通項: 更新日時
  static const ContentVariable updateAt = ContentVariable(
    'updateAt',
    GraphQLTypeKind.datetime,
  );

  /// 共通項: 削除
  static const ContentVariable remove = ContentVariable(
    'remove',
    GraphQLTypeKind.boolean,
  );

  // --- read専用: 外部点検委託先名 / 読み / 略称(利害関係者マスタ参照) -----------
  static const ContentVariable
  mstrStakeholderByExternalInspection_mstrStakeholderId = ContentVariable(
    'mstrStakeholderByExternalInspection||mstrStakeholderId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 点検整備区分名 / 読み / 略称(点検整備区分マスタ参照) -----------
  static const ContentVariable
  mstrInspectionKindByInspectionKind_mstrInspectionKindId = ContentVariable(
    'mstrInspectionKindByInspectionKind||mstrInspectionKindId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionKindByInspectionKind_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrInspectionKindByInspectionKind||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 点検整備サービス品目名 / 読み / 略称(品目マスタ参照) -----------
  static const ContentVariable mstrItemByMstrItemId_mstrItemId =
      ContentVariable('mstrItemByMstrItemId||mstrItemId', GraphQLTypeKind.uuid);

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 式 / 引数 / 型 / フォーマット(点検整備項目式マスタ参照) -------
  static const ContentVariable
  mstrInspectionFormulaByInspectionFormulaId_mstrInspectionFormulaId =
      ContentVariable(
        'mstrInspectionFormulaByInspectionFormulaId||mstrInspectionFormulaId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrInspectionFormulaByInspectionFormulaId_formulaClass = ContentVariable(
    'mstrInspectionFormulaByInspectionFormulaId||formulaClass',
    GraphQLTypeKind.int,
  );

  static const ContentVariable
  mstrInspectionFormulaByInspectionFormulaId_argClass = ContentVariable(
    'mstrInspectionFormulaByInspectionFormulaId||argClass',
    GraphQLTypeKind.json,
  );

  static const ContentVariable
  mstrInspectionFormulaByInspectionFormulaId_typeClass = ContentVariable(
    'mstrInspectionFormulaByInspectionFormulaId||typeClass',
    GraphQLTypeKind.int,
  );

  static const ContentVariable
  mstrInspectionFormulaByInspectionFormulaId_formatClass = ContentVariable(
    'mstrInspectionFormulaByInspectionFormulaId||formatClass',
    GraphQLTypeKind.string,
  );

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      ContentVariable(
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );
}
