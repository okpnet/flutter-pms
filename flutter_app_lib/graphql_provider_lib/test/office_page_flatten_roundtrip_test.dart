// 要件0035: office_page画面(source/view.yaml #OfficePage/#OfficePageEdit)のGraphQLから
// build_runnerで生成されたモデルのnested_map_flattener.dart往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/office_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/office_page/office_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/office_page/office_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/office_page/office_page_rfe.graphql.dart';

Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

/// read側(単一言語`value`エイリアス)のshared_appellations JSON。
Map<String, dynamic> _appellationValue(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd${appellationsId}n',
    'value': _dictionaryValueConnection(nameJa),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd${appellationsId}p',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd${appellationsId}k',
    'value': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

/// edit/rfe側(ja/en個別エイリアス)のshared_appellations JSON。
Map<String, dynamic> _appellationJaEn(String appellationsId, String nameJa) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd${appellationsId}n',
    'ja': _dictionaryValueConnection(nameJa),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd${appellationsId}p',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd${appellationsId}k',
    'ja': _dictionaryValueConnection(null),
    'en': _dictionaryValueConnection(null),
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _addressValueJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'address1': _appellationValue('a2222222-2222-2222-2222-222222222222', '東京都千代田区1-1'),
  'address2': _appellationValue('a3333333-3333-3333-3333-333333333333', '3F'),
  'billName': _appellationValue('a4444444-4444-4444-4444-444444444444', 'テストビル'),
  'phone': '03-1111-2222',
  'faxNumber': '03-1111-2223',
  'remarks': null,
  'updateAt': '2026-09-26T00:00:00',
  'remove': false,
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _addressJaEnJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'phone': '03-1111-2222',
  'faxNumber': '03-1111-2223',
  'address1': _appellationJaEn('a2222222-2222-2222-2222-222222222222', '東京都千代田区1-1'),
  'address2': _appellationJaEn('a3333333-3333-3333-3333-333333333333', '3F'),
  'billName': _appellationJaEn('a4444444-4444-4444-4444-444444444444', 'テストビル'),
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _updateUserValueJson() => {
  'historyId': 'h1111111-1111-1111-1111-111111111111',
  'infoStaffId': 's1111111-1111-1111-1111-111111111111',
  'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
  'code': 'U001',
  'sex': null,
  'phone': null,
  'symbol': null,
  'privatePhone': null,
  'name': _appellationValue('a9999999-9999-9999-9999-999999999999', '管理者 花子'),
  '__typename': 'HistoryInfoStaff',
};

void main() {
  test('要件0035: Query\$OfficePageRead <-> Map 往復変換が元と一致する', () {
    final raw = {
      'allInfoOffices': {
        'totalCount': 1,
        'pageInfo': {
          'hasNextPage': false,
          'endCursor': null,
          '__typename': 'PageInfo',
        },
        'nodes': [
          {
            'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
            'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
            'code': 'OFC001',
            'symbol': 'OFFICE001',
            'remarks': '備考テキスト',
            'updateAt': '2026-09-26T00:00:00',
            'remove': false,
            'labels': _appellationValue(
              'a1111111-1111-1111-1111-111111111111',
              '本社',
            ),
            'address': _addressValueJson(),
            'update_user': _updateUserValueJson(),
            '__typename': 'InfoOffice',
          },
        ],
        '__typename': 'InfoOfficesConnection',
      },
      '__typename': 'Query',
    };

    final model = Query$OfficePageRead.fromJson(raw);
    final node = model.allInfoOffices!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$OfficePageRead$allInfoOffices$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    final columns = nodeMap.flattenForColumns(
      [
        OfficePageKeyName
            .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
        OfficePageKeyName
            .address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
        OfficePageKeyName
            .address_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
            .name,
      ],
      collapseSingleRecordPaths: {
        'labels||sharedDictionaryBySharedDictionaryNameId||value',
        'address||address1||sharedDictionaryBySharedDictionaryNameId||value',
        'address||billName||sharedDictionaryBySharedDictionaryNameId||value',
      },
    );
    expect(
      columns[OfficePageKeyName
          .labels_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '本社',
    );
    expect(
      columns[OfficePageKeyName
          .address_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      '東京都千代田区1-1',
    );
    expect(
      columns[OfficePageKeyName
          .address_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue
          .name],
      'テストビル',
    );

    // ignore: avoid_print
    print('OFFICE_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0035: Mutation\$OfficePageEdit <-> Map 往復変換が元と一致する', () {
    final raw = {
      'updateInfoOfficeByInfoOfficeId': {
        'infoOffice': {
          'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
          'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
          'code': 'OFC001',
          'remarks': '備考テキスト(編集後)',
          'labels': _appellationJaEn(
            'a1111111-1111-1111-1111-111111111111',
            '本社',
          ),
          'address': _addressJaEnJson(),
          '__typename': 'InfoOffice',
        },
        'clientMutationId': null,
        '__typename': 'UpdateInfoOfficePayload',
      },
      '__typename': 'Mutation',
    };

    final model = Mutation$OfficePageEdit.fromJson(raw);
    final infoOffice = model.updateInfoOfficeByInfoOfficeId!.infoOffice!;

    final officeMap = infoOffice.toJson();
    final flatMap = officeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$OfficePageEdit$updateInfoOfficeByInfoOfficeId$infoOffice.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(officeMap));
    expect(restoredModel, equals(infoOffice));
  });

  test('要件0035: Query\$OfficePageRfe <-> Map 往復変換が元と一致する', () {
    final raw = {
      'infoOfficeByInfoOfficeId': {
        'infoOfficeId': 'o1111111-1111-1111-1111-111111111111',
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'code': 'OFC001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-26T00:00:00',
        'updateUserId': 'u1111111-1111-1111-1111-111111111111',
        'updateUserHistoryId': 'h2222222-2222-2222-2222-222222222222',
        'remove': false,
        'labels': _appellationJaEn(
          'a1111111-1111-1111-1111-111111111111',
          '本社',
        ),
        'address': _addressJaEnJson(),
        '__typename': 'InfoOffice',
      },
      '__typename': 'Query',
    };

    final model = Query$OfficePageRfe.fromJson(raw);
    final infoOffice = model.infoOfficeByInfoOfficeId!;

    final officeMap = infoOffice.toJson();
    final flatMap = officeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$OfficePageRfe$infoOfficeByInfoOfficeId
        .fromJson(restoredMap);

    expect(restoredMap, equals(officeMap));
    expect(restoredModel, equals(infoOffice));
  });
}
