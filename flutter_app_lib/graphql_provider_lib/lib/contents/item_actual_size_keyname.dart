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
import 'content_variable.dart';

abstract class ItemActualSizeKeyName {
  /// 大きさID
  static const ContentVariable mstrItemActualSizeId = ContentVariable(
    'mstrItemActualSizeId',
    GraphQLTypeKind.uuid,
  );

  /// 品目ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrItemId = ContentVariable(
    'mstrItemId',
    GraphQLTypeKind.uuid,
  );

  /// 大きさ
  static const ContentVariable sizeValue = ContentVariable(
    'sizeValue',
    GraphQLTypeKind.bigFloat,
  );

  /// 詳細
  static const ContentVariable detail = ContentVariable(
    'detail',
    GraphQLTypeKind.string,
  );

  /// 備考(mstr_item_actual_size)
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

  // --- read専用: 品目大きさ区分マスタ参照(コード / 呼称セット) -------------------
  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_mstrItemSizeKindId = ContentVariable(
    'mstrItemSizeKindByMstrItemSizeKindId||mstrItemSizeKindId',
    GraphQLTypeKind.uuid,
  );

  /// edit専用: 品目大きさ区分(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrItemSizeKindId = ContentVariable(
    'mstrItemSizeKindId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable mstrItemSizeKindByMstrItemSizeKindId_code =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemSizeKindByMstrItemSizeKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrItemSizeKindByMstrItemSizeKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
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
