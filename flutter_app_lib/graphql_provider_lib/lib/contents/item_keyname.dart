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
import 'content_variable.dart';

abstract class ItemKeyName {
  /// 品目ID
  static const ContentVariable mstrItemId = ContentVariable(
    'mstrItemId',
    GraphQLTypeKind.uuid,
  );

  /// 品目種類ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrItemKindId = ContentVariable(
    'mstrItemKindId',
    GraphQLTypeKind.uuid,
  );

  /// 品目コード
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// 識別コード
  static const ContentVariable identification = ContentVariable(
    'identification',
    GraphQLTypeKind.string,
  );

  /// 管理コード
  static const ContentVariable controlCode = ContentVariable(
    'controlCode',
    GraphQLTypeKind.string,
  );

  /// 製造元ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrManufacturerId = ContentVariable(
    'mstrManufacturerId',
    GraphQLTypeKind.uuid,
  );

  /// 表示コード
  static const ContentVariable labelCode = ContentVariable(
    'labelCode',
    GraphQLTypeKind.string,
  );

  /// 詳細
  static const ContentVariable description = ContentVariable(
    'description',
    GraphQLTypeKind.string,
  );

  /// ロット
  static const ContentVariable lot = ContentVariable(
    'lot',
    GraphQLTypeKind.boolean,
  );

  /// 最小在庫数量
  static const ContentVariable stockQuantity = ContentVariable(
    'stockQuantity',
    GraphQLTypeKind.bigFloat,
  );

  /// 単位ID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable sharedUnitId = ContentVariable(
    'sharedUnitId',
    GraphQLTypeKind.uuid,
  );

  /// 備考(mstr_item)
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

  // --- read専用: 品目種類コード / 品目種類名(品目区分マスタ参照) -----------------
  static const ContentVariable mstrItemKindByMstrItemKindId_mstrItemKindId =
      ContentVariable(
        'mstrItemKindByMstrItemKindId||mstrItemKindId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable mstrItemKindByMstrItemKindId_code =
      ContentVariable(
        'mstrItemKindByMstrItemKindId||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemKindByMstrItemKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrItemKindByMstrItemKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrItemKindByMstrItemKindId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrItemKindByMstrItemKindId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 製造元コード / 製造元(製造元マスタ参照) -----------------------
  static const ContentVariable
  mstrManufacturerByMstrManufacturerId_mstrManufacturerId = ContentVariable(
    'mstrManufacturerByMstrManufacturerId||mstrManufacturerId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable mstrManufacturerByMstrManufacturerId_code =
      ContentVariable(
        'mstrManufacturerByMstrManufacturerId||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrManufacturerByMstrManufacturerId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrManufacturerByMstrManufacturerId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrManufacturerByMstrManufacturerId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrManufacturerByMstrManufacturerId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  // --- 品目名 / 読み / 略称(共通名前仕様、品目マスタ自身の呼称セット) -------------
  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedAppellationsId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedAppellationsId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
        GraphQLTypeKind.string,
      );

  // --- read専用: 単位(単位マスタの略称参照) -----------------------------------
  static const ContentVariable sharedUnitBySharedUnitId_sharedUnitId =
      ContentVariable(
        'sharedUnitBySharedUnitId||sharedUnitId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  sharedUnitBySharedUnitId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'sharedUnitBySharedUnitId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  sharedUnitBySharedUnitId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'sharedUnitBySharedUnitId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
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
