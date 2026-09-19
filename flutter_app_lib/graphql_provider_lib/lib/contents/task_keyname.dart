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
import 'content_variable.dart';

abstract class TaskKeyName {
  /// 工程ID
  static const ContentVariable mstrTaskId = ContentVariable(
    'mstrTaskId',
    GraphQLTypeKind.uuid,
  );

  /// 工程コード
  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  /// 工程グループID(既存マスタへの付け替え、スカラーID)
  static const ContentVariable mstrTaskGroupId = ContentVariable(
    'mstrTaskGroupId',
    GraphQLTypeKind.uuid,
  );

  /// 詳細
  static const ContentVariable detail = ContentVariable(
    'detail',
    GraphQLTypeKind.string,
  );

  /// クラス(区分)
  static const ContentVariable taskClass = ContentVariable(
    'class',
    GraphQLTypeKind.int,
  );

  /// 標準時間
  static const ContentVariable defaultTime = ContentVariable(
    'defaultTime',
    GraphQLTypeKind.interval,
  );

  /// 備考(mstr_task)
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

  // --- 親id(工程体系マスタ、先頭ノード。read/edit共通) ---------------------------
  // ⚠ nested_map_flattener.dartは`nodes`/`edges`キーを持つMap(Connection形状)を
  //   件数に関わらずフラット化せずそのまま保持するため、この値は
  //   `{nodes: [...]}`という形のMapそのものになる(`||nodes`は付かない)。
  //   editでは、このMapのnodes[0].mstrTaskTreeId/parentMstrTaskIdをミューテーション変数
  //   $mstrTaskTreeId/$parentMstrTaskIdへ渡すことで親idを更新する(要件0025評価5-2節)。
  static const ContentVariable mstrTaskTreesByMstrTaskId = ContentVariable(
    'mstrTaskTreesByMstrTaskId',
    GraphQLTypeKind.connection,
  );

  // --- read専用: 子の数(工程体系マスタ、totalCount) ----------------------------
  static const ContentVariable mstrTaskTreesByParentMstrTaskId_totalCount =
      ContentVariable(
        'mstrTaskTreesByParentMstrTaskId||totalCount',
        GraphQLTypeKind.int,
      );

  // --- 工程名 / 読み / 略称(共通名前仕様) -------------------------------------
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

  // --- read専用: 工程グループコード / 名 / 読み / 略称(参照のみ) -----------------
  static const ContentVariable mstrTaskGroupByMstrTaskGroupId_mstrTaskGroupId =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||mstrTaskGroupId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable mstrTaskGroupByMstrTaskGroupId_code =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||code',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_ja =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_en =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_ja =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_en =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||en',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_ja =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||ja',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  mstrTaskGroupByMstrTaskGroupId_sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNicknameId_en =
      ContentVariable(
        'mstrTaskGroupByMstrTaskGroupId||sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNicknameId||en',
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
