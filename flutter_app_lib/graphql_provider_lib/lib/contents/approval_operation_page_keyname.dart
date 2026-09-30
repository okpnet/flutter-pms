// approval_operation_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/approval_operation_page/approval_operation_page_read.graphql /
// approval_operation_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #ApprovalOperationPage / #ApprovalOperationPageEdit
// (承認オペレーション、mstr_approval_pattern)
import 'content_variable.dart';

abstract class ApprovalOperationPageKeyName {
  static const ContentVariable mstrApprovalPatternId = ContentVariable(
    'mstrApprovalPatternId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable symbol = ContentVariable(
    'symbol',
    GraphQLTypeKind.string,
  );

  static const ContentVariable remarks = ContentVariable(
    'remarks',
    GraphQLTypeKind.string,
  );

  static const ContentVariable updateAt = ContentVariable(
    'updateAt',
    GraphQLTypeKind.datetime,
  );

  static const ContentVariable remove = ContentVariable(
    'remove',
    GraphQLTypeKind.boolean,
  );

  // --- 承認オペレーション名(共通名前仕様、shared_appellations経由) -------------
  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 承認経路一覧(mstr_approval_pattern_detail、Connection形状) --------------
  static const ContentVariable pattern_detail = ContentVariable(
    'pattern_detail',
    GraphQLTypeKind.connection,
  );

  static const ContentVariable
  pattern_detail_approval_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'pattern_detail||approval||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable pattern_detail_approval_priority =
      ContentVariable(
        'pattern_detail||approval||priority',
        GraphQLTypeKind.int,
      );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );
}
