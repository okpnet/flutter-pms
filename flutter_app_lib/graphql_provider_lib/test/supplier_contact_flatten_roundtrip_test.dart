// 要件0018・0025: supplier_contact画面のGraphQLから build_runner で生成されたモデルの
// nested_map_flattener.dart 往復変換を検証する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/supplier_contact/supplier_contact_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/supplier_contact/supplier_contact_read.graphql.dart';

Map<String, dynamic> _sharedAppellationJson({required String ja, required String? en}) => {
  'sharedAppellationsId': 'a1111111-1111-1111-1111-111111111111',
  'sharedDictionaryBySharedDictionaryNameId': {
    'sharedDictionaryId': 'd1111111-1111-1111-1111-111111111111',
    'ja': ja,
    'en': en,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryPronunciationId': {
    'sharedDictionaryId': 'd2222222-2222-2222-2222-222222222222',
    'ja': 'ヨミガナ',
    'en': null,
    '__typename': 'SharedDictionary',
  },
  'sharedDictionaryBySharedDictionaryNicknameId': {
    'sharedDictionaryId': 'd3333333-3333-3333-3333-333333333333',
    'ja': ja,
    'en': null,
    '__typename': 'SharedDictionary',
  },
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allMstrStakeholderContacts': {
    'totalCount': 1,
    'pageInfo': {'hasNextPage': false, 'endCursor': null, '__typename': 'PageInfo'},
    'nodes': [
      {
        'mstrStakeholderContactId': 'sc111111-1111-1111-1111-111111111111',
        'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
        'code': 'SC001',
        'mail': 'contact@example.com',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-12T00:00:00',
        'remove': false,
        'sharedAppellationByOfficeAppellationsId': _sharedAppellationJson(
          ja: '本社',
          en: 'Head Office',
        ),
        'sharedAppellationByDepartmentAppellationsId': _sharedAppellationJson(
          ja: '営業部',
          en: 'Sales Dept.',
        ),
        'sharedAppellationByContactPersonAppellationsId': _sharedAppellationJson(
          ja: '山田太郎',
          en: null,
        ),
        'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
        'mstrShippingKindByMstrShippingKindId': {
          'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
          'sharedAppellationBySharedAppellationsId': {
            'sharedDictionaryBySharedDictionaryNameId': {
              'ja': '陸送',
              'en': null,
              '__typename': 'SharedDictionary',
            },
            '__typename': 'SharedAppellation',
          },
          '__typename': 'MstrShippingKind',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'MstrStakeholderContact',
      },
    ],
    '__typename': 'MstrStakeholderContactsConnection',
  },
  '__typename': 'Query',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateMstrStakeholderContactByMstrStakeholderContactId': {
    'mstrStakeholderContact': {
      'mstrStakeholderContactId': 'sc111111-1111-1111-1111-111111111111',
      'mstrStakeholderId': 'su111111-1111-1111-1111-111111111111',
      'code': 'SC001',
      'mail': 'contact-new@example.com',
      'mstrShippingKindId': 'sk111111-1111-1111-1111-111111111111',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationByOfficeAppellationsId': _sharedAppellationJson(
        ja: '本社',
        en: 'Head Office',
      ),
      'sharedAppellationByDepartmentAppellationsId': _sharedAppellationJson(
        ja: '営業部',
        en: 'Sales Dept.',
      ),
      'sharedAppellationByContactPersonAppellationsId': _sharedAppellationJson(
        ja: '山田太郎',
        en: null,
      ),
      '__typename': 'MstrStakeholderContact',
    },
    'clientMutationId': null,
    '__typename': 'UpdateMstrStakeholderContactPayload',
  },
  '__typename': 'Mutation',
};

void main() {
  test('要件0025: Query\$SupplierContactRead <-> Map 往復変換が元と一致する', () {
    final model = Query$SupplierContactRead.fromJson(_buildRawReadJson());
    final node = model.allMstrStakeholderContacts!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$SupplierContactRead$allMstrStakeholderContacts$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('SUPPLIER_CONTACT_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0025: Mutation\$SupplierContactEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$SupplierContactEdit.fromJson(_buildRawEditJson());
    final mstrStakeholderContact =
        model.updateMstrStakeholderContactByMstrStakeholderContactId!.mstrStakeholderContact!;

    final contactMap = mstrStakeholderContact.toJson();
    final flatMap = contactMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$SupplierContactEdit$updateMstrStakeholderContactByMstrStakeholderContactId$mstrStakeholderContact.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(contactMap));
    expect(restoredModel, equals(mstrStakeholderContact));

    // ignore: avoid_print
    print('SUPPLIER_CONTACT_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
