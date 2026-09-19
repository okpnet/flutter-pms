// org_res_equipment_kind_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/org_res_equipment_kind/org_res_equipment_kind_read.graphql /
// org_res_equipment_kind_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
// ⚠ docs/0021_view_graphql_log.md #7: 実スキーマの型名は"MstrEquipmentKind"。
//
// 対象画面: source/views.md #org_res_equipment_kind (read / edit)
import 'content_variable.dart';

abstract class OrgResEquipmentKindKeyName {
  /// 設備区分ID
  static const ContentVariable mstrEquipmentKindId = ContentVariable(
    'mstrEquipmentKindId',
    GraphQLTypeKind.uuid,
  );

  /// 適用開始
  static const ContentVariable startAt = ContentVariable(
    'startAt',
    GraphQLTypeKind.datetime,
  );

  /// 適用終了
  static const ContentVariable stopAt = ContentVariable(
    'stopAt',
    GraphQLTypeKind.datetime,
  );

  /// 備考(mstr_equipment_kind)
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

  // --- 設備区分名 / 読み / 略称(共通名前仕様) -------------------------------
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
