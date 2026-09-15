// task_keyname.dart
//
// ignore_for_file: constant_identifier_names
// 要件0018・0021により、定数名はフラットキーの`||`区切りをそのまま`_`に置き換えた
// 名前にする(lowerCamelCase強制のlintは意図的に無効化している)。
//
// lib/graphql/task/task_read.graphql / task_edit.graphql の結果を
// nested_map_flattener.dart で平坦化したときのキー文字列の定数クラス。
// ⚠ 実スキーマの型名は"MstrTask"。「工程場所」(1対多)は配列(nodes)のためフラット化されず、
//   キー定数の対象外(要件0002)。「親id」は`mstrTaskTreesByMstrTaskId`の先頭ノード配下、
//   「子の数」は`mstrTaskTreesByParentMstrTaskId`のtotalCount配下となる。
// ⚠ 要件0025評価5-2節を受け、editでも`mstrTaskTreesByMstrTaskId`(親idの入れ子更新・
//   更新後の値の再取得)を使用する(read専用ではなくなった)。
//
// 対象画面: source/views.md #task (read / edit)
abstract class TaskKeyName {
  /// 工程ID
  static const String mstrTaskId = 'mstrTaskId';

  /// 工程コード
  static const String code = 'code';

  /// 工程グループID(既存マスタへの付け替え、スカラーID)
  static const String mstrTaskGroupId = 'mstrTaskGroupId';

  /// 詳細
  static const String detail = 'detail';

  /// クラス(区分)
  static const String taskClass = 'class';

  /// 標準時間
  static const String defaultTime = 'defaultTime';

  /// 備考(mstr_task)
  static const String remarks = 'remarks';

  /// 共通項: 更新日時
  static const String updateAt = 'updateAt';

  /// 共通項: 削除
  static const String remove = 'remove';

  // --- 親id(工程体系マスタ、先頭ノード。read/edit共通) ---------------------------
  // ⚠ nested_map_flattener.dartは`nodes`/`edges`キーを持つMap(Connection形状)を
  //   件数に関わらずフラット化せずそのまま保持するため、この値は
  //   `{nodes: [...]}`という形のMapそのものになる(`||nodes`は付かない)。
  //   editでは、このMapのnodes[0].mstrTaskTreeId/parentMstrTaskIdをミューテーション変数
  //   $mstrTaskTreeId/$parentMstrTaskIdへ渡すことで親idを更新する(要件0025評価5-2節)。
  static const String mstrTaskTreesByMstrTaskId = 'mstrTaskTreesByMstrTaskId';

  // --- read専用: 子の数(工程体系マスタ、totalCount) ----------------------------
  static const String mstrTaskTreesByParentMstrTaskId_totalCount =
      'mstrTaskTreesByParentMstrTaskId||totalCount';

  // --- 工程名 / 読み / 略称(共通名前仕様) -------------------------------------
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

  // --- read専用: 工程グループコード / 名 / 読み / 略称(参照のみ) -----------------
  static const String mstrTaskGroupByMstrTaskGroupId_mstrTaskGroupId =
      'mstrTaskGroupByMstrTaskGroupId||mstrTaskGroupId';

  static const String mstrTaskGroupByMstrTaskGroupId_code =
      'mstrTaskGroupByMstrTaskGroupId||code';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja';

  static const String mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en';

  // --- read専用: 共通項: 更新者名(共通名前仕様)の呼称セットID -----------------
  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_historyId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||historyId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_infoStaffId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||infoStaffId';

  static const String historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId_sharedAppellationsId =
      'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId||sharedAppellationsId';
}
