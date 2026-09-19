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
import 'content_variable.dart';

abstract class EquipmentInspectionPerationTaskKeyName {
  /// 点検整備運用課題ID
  static const ContentVariable mstrInspectionOperationTaskId = ContentVariable(
    'mstrInspectionOperationTaskId',
    GraphQLTypeKind.uuid,
  );

  /// 点検整備運用ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrInspectionOperationId = ContentVariable(
    'mstrInspectionOperationId',
    GraphQLTypeKind.uuid,
  );

  /// 順
  static const ContentVariable sequence = ContentVariable(
    'sequence',
    GraphQLTypeKind.int,
  );

  /// 点検整備ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrInspectionId = ContentVariable(
    'mstrInspectionId',
    GraphQLTypeKind.uuid,
  );

  /// 起算日
  static const ContentVariable commencementDate = ContentVariable(
    'commencementDate',
    GraphQLTypeKind.datetime,
  );

  /// 間隔(Interval、サブフィールドごとにフラット化される)
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

  /// 備考(mstr_inspection_operation_task)
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

  // --- read専用: 点検整備運用コード / 名 / 読み / 略称(点検整備運用マスタ参照) ---
  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_mstrInspectionOperationId =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||mstrInspectionOperationId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_code = ContentVariable(
    'mstrInspectionOperationByMstrInspectionOperationId||code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionOperationByMstrInspectionOperationId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrInspectionOperationByMstrInspectionOperationId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 点検整備コード / 名 / 読み / 略称(点検整備マスタ自身) ---------
  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrInspectionId = ContentVariable(
    'mstrInspectionByMstrInspectionId||mstrInspectionId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable mstrInspectionByMstrInspectionId_code =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 外部点検整備id / 委託先コード / 名 / 読み / 略称(⚠2階層先、参照のみ) ---
  static const ContentVariable
  mstrInspectionByMstrInspectionId_externalInspection = ContentVariable(
    'mstrInspectionByMstrInspectionId||externalInspection',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_mstrStakeholderId =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||mstrStakeholderId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_code =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrStakeholderByExternalInspection_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrStakeholderByExternalInspection||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 点検整備サービス品目id / サービスコード / 名 / 読み / 略称(⚠2階層先、参照のみ) ---
  static const ContentVariable mstrInspectionByMstrInspectionId_mstrItemId =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_mstrItemId =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||mstrItemId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_code = ContentVariable(
    'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrInspectionByMstrInspectionId_mstrItemByMstrItemId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrInspectionByMstrInspectionId||mstrItemByMstrItemId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
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
