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
abstract class OperationKeyName {
  /// 工程運用マスタID
  static const String mstrOperationId = 'mstrOperationId';

  /// 管理コード
  static const String controlCode = 'controlCode';

  /// 詳細
  static const String detail = 'detail';

  /// 備考(mstr_operation)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 運用名 / 読み / 略称(共通名前仕様) -------------------------------------
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

  // --- read専用: 工程数(totalCount) / 工数の元データ(nodes、集計はアプリ側) -----
  // ⚠ nested_map_flattener.dartは`nodes`キーを持つMap(Connection形状)を件数に
  //   関わらずフラット化せずそのまま保持するため、totalCountとnodesは分離されず、
  //   この1キーの値が`{totalCount: N, nodes: [...]}`というMapそのものになる。
  static const String mstrOperationTasksByMstrOperationId = 'mstrOperationTasksByMstrOperationId';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
