// operation_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/operation/operation_read.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス(読み取り専用画面のためreadのみ)。
// ⚠ 実スキーマの型名は"MstrOperation"。「工程数」はtotalCount、「工数」は
//   工程運用課題配下の工程の標準時間を合計するため、いずれも配列(nodes)自体は
//   フラット化されず、キー定数の対象外(要件0002)。「工数」の合計値自体は要件0025評価
//   5-3節の指示どおり、ドメインモデル側(lib/converters、未着手)のgetterプロパティとして
//   実装する設計(GraphQL・キー定数の対象外)。
//
// 対象画面: source/views.md #operation (read)
import 'content_variable.dart';

abstract class OperationKeyName {
  /// 工程運用マスタID
  static const ContentVariable mstrOperationId = ContentVariable(
    'mstrOperationId',
    GraphQLTypeKind.uuid,
  );

  /// 管理コード
  static const ContentVariable controlCode = ContentVariable(
    'controlCode',
    GraphQLTypeKind.string,
  );

  /// 詳細
  static const ContentVariable detail = ContentVariable(
    'detail',
    GraphQLTypeKind.string,
  );

  /// 備考(mstr_operation)
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

  // --- 運用名 / 読み / 略称(共通名前仕様) -------------------------------------
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

  // --- read専用: 工程数(totalCount) / 工数の元データ(nodes、集計はアプリ側) -----
  // ⚠ nested_map_flattener.dartは`nodes`キーを持つMap(Connection形状)を件数に
  //   関わらずフラット化せずそのまま保持するため、totalCountとnodesは分離されず、
  //   この1キーの値が`{totalCount: N, nodes: [...]}`というMapそのものになる。
  static const ContentVariable mstrOperationTasksByMstrOperationId =
      ContentVariable(
        'mstrOperationTasksByMstrOperationId',
        GraphQLTypeKind.connection,
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
