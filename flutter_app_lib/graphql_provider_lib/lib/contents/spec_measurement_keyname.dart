// spec_measurement_keyname.dart
//
// ignore_for_file: constant_identifier_names
// lib/graphql/spec_measurement/spec_measurement_read.graphql /
// spec_measurement_edit.graphql の結果を nested_map_flattener.dart で
// 平坦化したときのキー文字列の定数クラス。
//
// 対象画面: source/view.yaml #SpecMeasurement / #SpecMeasurementEdit
// (梱包サイズ、mstr_spec_measurement)
import 'content_variable.dart';

abstract class SpecMeasurementKeyName {
  static const ContentVariable mstrSpecMeasurementId = ContentVariable(
    'mstrSpecMeasurementId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable measurementValue = ContentVariable(
    'measurementValue',
    GraphQLTypeKind.bigFloat,
  );

  // 要件0044フィードバック: readの出力からは`unit.sharedUnitId`と重複するため削除
  // 済み(下記unit_sharedUnitIdを使う)。edit/rfeの出力・Patch変数としては
  // 引き続き使われるため、この定数自体は残す。
  static const ContentVariable sharedUnitId = ContentVariable(
    'sharedUnitId',
    GraphQLTypeKind.uuid,
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

  // --- 単位(Unit共有アーム経由、IDの取得・表示専用) ----------------------------
  static const ContentVariable unit_sharedUnitId = ContentVariable(
    'unit||sharedUnitId',
    GraphQLTypeKind.uuid,
  );

  static const ContentVariable
  unit_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue =
      ContentVariable(
        'unit||labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue',
        GraphQLTypeKind.string,
      );

  // --- 共通項: 更新者(history_info_staff経由、updateStaffアーム相当) -------------
  static const ContentVariable update_user_historyId = ContentVariable(
    'update_user||historyId',
    GraphQLTypeKind.uuid,
  );
}
