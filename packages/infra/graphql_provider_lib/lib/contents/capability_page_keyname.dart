// capability_page_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/capability_page/capability_page_read.graphql /
// capability_page_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #CapabilityPage / #CapabilityPageEdit(力量、mstr_capability)
import 'content_variable.dart';

abstract class CapabilityPageKeyName {
  static const ContentVariable mstrCapabilityId = ContentVariable(
    'mstrCapabilityId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable code = ContentVariable(
    'code',
    GraphQLTypeKind.string,
  );

  static const ContentVariable detail = ContentVariable(
    'detail',
    GraphQLTypeKind.string,
  );

  static const ContentVariable referenceValue = ContentVariable(
    'referenceValue',
    GraphQLTypeKind.bigFloat,
  );

  static const ContentVariable max = ContentVariable(
    'max',
    GraphQLTypeKind.bigFloat,
  );

  static const ContentVariable min = ContentVariable(
    'min',
    GraphQLTypeKind.bigFloat,
  );

  static const ContentVariable step = ContentVariable(
    'step',
    GraphQLTypeKind.bigFloat,
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

  // --- 力量名(共通名前仕様、shared_appellations経由) --------------------------
  static const ContentVariable labels_sharedAppellationsId = ContentVariable(
    'labels||sharedAppellationsId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryPronunciationId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryPronunciationId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryPronunciationId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNicknameId_sharedDictionaryId =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNicknameId||sharedDictionaryId',
        GraphQLTypeKind.uuid,
      );

  static const ContentVariable
  labels_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue =
      ContentVariable(
        'labels||sharedDictionaryBySharedDictionaryNicknameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  update_user_name_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'update_user||name||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );
}
