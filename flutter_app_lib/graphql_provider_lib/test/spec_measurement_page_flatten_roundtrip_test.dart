// 要件0044(要件0047で改名): spec_measurement_page画面(source/view.yaml #SpecMeasurementPage/#SpecMeasurementEdit)の
// GraphQLからbuild_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/spec_measurement_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/spec_measurement_page/spec_measurement_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/spec_measurement_page/spec_measurement_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/spec_measurement_page/spec_measurement_page_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

Map<String, dynamic> _unitJsonValue(String appellationsId, String nameJa) => {
  'sharedUnitId': 'u1111111-1111-1111-1111-111111111111',
  'labels': {
    'sharedAppellationsId': appellationsId,
    'sharedDictionaryBySharedDictionaryNameId': {
      'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
      'value': _dictionaryValueConnection(nameJa),
      '__typename': 'SharedDictionary',
    },
    'sharedDictionaryBySharedDictionaryPronunciationId': {
      'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
      'value': _dictionaryValueConnection(null),
      '__typename': 'SharedDictionary',
    },
    'sharedDictionaryBySharedDictionaryNicknameId': {
      'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
      'value': _dictionaryValueConnection(null),
      '__typename': 'SharedDictionary',
    },
    '__typename': 'SharedAppellation',
  },
  '__typename': 'SharedUnit',
};

Map<String, dynamic> _labelsJsonValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'value': _dictionaryValueConnection(nameJa),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _updateUserJson() => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': _labelsJsonValue(
    'a9999999-9999-9999-9999-999999999999',
    '管理者 花子',
  ),
  '__typename': 'HistoryInfoStaff',
};

void main() {
  test('要件0044: Query\$SpecMeasurementPageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allMstrSpecMeasurements': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'mstrSpecMeasurementId': 'm1111111-1111-1111-1111-111111111111',
            'measurementValue': '10.5',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-30T00:00:00',
            'remove': false,
            'unit': _unitJsonValue(
              'a1111111-1111-1111-1111-111111111111',
              'ミリメートル',
            ),
            'update_user': _updateUserJson(),
            '__typename': 'MstrSpecMeasurement',
          },
        ],
        '__typename': 'MstrSpecMeasurementsConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$SpecMeasurementPageRead.fromJson(raw);
    final node = model.allMstrSpecMeasurements!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode =
        Query$SpecMeasurementPageRead$allMstrSpecMeasurements$nodes.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final unitNameJa = nodeMap.flattenForColumns(
      [
        SpecMeasurementPageKeyName
            .unit_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'unit||labels||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      unitNameJa[SpecMeasurementPageKeyName
          .unit_labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      'ミリメートル',
    );

    // ignore: avoid_print
    print('SPEC_MEASUREMENT_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0044: Mutation\$SpecMeasurementPageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateMstrSpecMeasurementByMstrSpecMeasurementId': {
        'mstrSpecMeasurement': {
          'mstrSpecMeasurementId': 'm1111111-1111-1111-1111-111111111111',
          'measurementValue': '12.0',
          'sharedUnitId': 'u1111111-1111-1111-1111-111111111111',
          'remarks': '備考テキスト(編集後)',
          'unit': _unitJsonValue(
            'a1111111-1111-1111-1111-111111111111',
            'ミリメートル',
          ),
          '__typename': 'MstrSpecMeasurement',
        },
        'clientMutationId': null,
        '__typename': 'UpdateMstrSpecMeasurementPayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$SpecMeasurementPageEdit.fromJson(raw);
    final entity = model
        .updateMstrSpecMeasurementByMstrSpecMeasurementId!
        .mstrSpecMeasurement!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$SpecMeasurementPageEdit$updateMstrSpecMeasurementByMstrSpecMeasurementId$mstrSpecMeasurement.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });

  test('要件0044: Query\$SpecMeasurementPageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'mstrSpecMeasurementByMstrSpecMeasurementId': {
        'mstrSpecMeasurementId': 'm1111111-1111-1111-1111-111111111111',
        'measurementValue': '10.5',
        'sharedUnitId': 'u1111111-1111-1111-1111-111111111111',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-30T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'unit': _unitJsonValue(
          'a1111111-1111-1111-1111-111111111111',
          'ミリメートル',
        ),
        '__typename': 'MstrSpecMeasurement',
      },
      '__typename': 'Query',
    };

    final model = Query$SpecMeasurementPageRfe.fromJson(raw);
    final entity = model.mstrSpecMeasurementByMstrSpecMeasurementId!;

    final entityMap = entity.toJson();
    final flatMap = entityMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Query$SpecMeasurementPageRfe$mstrSpecMeasurementByMstrSpecMeasurementId.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(entityMap));
    expect(restoredModel, equals(entity));
  });
}
