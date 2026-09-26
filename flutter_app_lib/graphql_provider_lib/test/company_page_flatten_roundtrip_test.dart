// 要件0035: company_page画面(source/view.yaml #CompanyPage/#CompanyPageEdit/#CompanyPageRFE)
// のGraphQLから build_runner で生成されたモデルの nested_map_flattener.dart 往復変換を
// 検証する。要件0033の暫定実装(info_company_*、ceo/address1/address2/billをプレーンな
// String列として扱っていた)を、要件0026のスキーマ変更(shared_appellations経由のFKに
// 変更)・要件0034の評価・命名規則(トップノード基準の`company_page`)にあわせて
// 全面的に書き直したもの。結果はdocs/0035_company_page_generation_log.md に記録する。
//
// 要件0036(2026-09-26): company_page_read.graphql / company_page_rfe.graphqlから
// 「$ja: Boolean!/$en: Boolean!」を撤廃した。read側は1回の呼び出しで言語1つのみ
// (エイリアス`value`)を取得する形になったため、read用のモックJSONはja/enペアではなく
// 単一の`value`を持つ形に変更した(edit/RFEは引き続きja/enペアのまま)。
// 結果はdocs/0036_language_argument_simplification_log.md に記録する。

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gqlprvlib/contents/company_page_keyname.dart';
import 'package:gqlprvlib/extensions/nested_map_flattener.dart';
import 'package:gqlprvlib/postgraphile/company_page/company_page_edit.graphql.dart';
import 'package:gqlprvlib/postgraphile/company_page/company_page_read.graphql.dart';
import 'package:gqlprvlib/postgraphile/company_page/company_page_rfe.graphql.dart';

/// [value]をSharedDictionaryValueのConnection形状(nodes)にラップする。
/// 値が無い場合は空配列(0件)にする。
Map<String, dynamic> _dictionaryValueConnection(String? value) => {
  'nodes': value == null
      ? <dynamic>[]
      : [
          {'dictionaryValue': value, '__typename': 'SharedDictionaryValue'},
        ],
  '__typename': 'SharedDictionaryValuesConnection',
};

// --- read用: 1言語(`value`エイリアス)のみを持つ形状 --------------------------

Map<String, dynamic> _sharedDictionaryValueOnlyJson(
  String sharedDictionaryId,
  String? value,
) => {
  'sharedDictionaryId': sharedDictionaryId,
  'value': _dictionaryValueConnection(value),
  '__typename': 'SharedDictionary',
};

/// name/pronunciation/nicknameの3本(いずれもshared_dictionary経由)を持つ
/// shared_appellationsのread用JSON(要件0036、`value`単一エイリアス形状)。
/// 会社名・ceo・address1・address2・billの5箇所で同型のため共通化する。
Map<String, dynamic> _sharedAppellationReadJson({
  required String appellationsId,
  required String nameDictionaryId,
  String? nameValue,
  required String pronunciationDictionaryId,
  String? pronunciationValue,
  required String nicknameDictionaryId,
  String? nicknameValue,
}) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': _sharedDictionaryValueOnlyJson(
    nameDictionaryId,
    nameValue,
  ),
  'sharedDictionaryBySharedDictionaryPronunciationId':
      _sharedDictionaryValueOnlyJson(pronunciationDictionaryId, pronunciationValue),
  'sharedDictionaryBySharedDictionaryNicknameId': _sharedDictionaryValueOnlyJson(
    nicknameDictionaryId,
    nicknameValue,
  ),
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _companyNameReadJson() => _sharedAppellationReadJson(
  appellationsId: 'a1111111-1111-1111-1111-111111111111',
  nameDictionaryId: 'd1111111-1111-1111-1111-111111111111',
  nameValue: '株式会社テスト',
  pronunciationDictionaryId: 'd2222222-2222-2222-2222-222222222222',
  pronunciationValue: 'カブシキガイシャテスト',
  nicknameDictionaryId: 'd3333333-3333-3333-3333-333333333333',
  nicknameValue: 'テスト',
);

Map<String, dynamic> _ceoReadJson() => _sharedAppellationReadJson(
  appellationsId: 'a4444444-4444-4444-4444-444444444444',
  nameDictionaryId: 'd4444444-4444-4444-4444-444444444444',
  nameValue: '代表 太郎',
  pronunciationDictionaryId: 'd5555555-5555-5555-5555-555555555555',
  pronunciationValue: 'ダイヒョウ タロウ',
  nicknameDictionaryId: 'd6666666-6666-6666-6666-666666666666',
);

Map<String, dynamic> _address1ReadJson() => _sharedAppellationReadJson(
  appellationsId: 'a7777777-7777-7777-7777-777777777777',
  nameDictionaryId: 'd7777777-7777-7777-7777-777777777777',
  nameValue: '東京都千代田区千代田1-1',
  pronunciationDictionaryId: 'd8888888-8888-8888-8888-888888888888',
  nicknameDictionaryId: 'd9999999-9999-9999-9999-999999999999',
);

Map<String, dynamic> _address2ReadJson() => _sharedAppellationReadJson(
  appellationsId: 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  nameDictionaryId: 'dbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
  nameValue: 'テストビル10F',
  pronunciationDictionaryId: 'dcccccc1-cccc-cccc-cccc-cccccccccccc',
  nicknameDictionaryId: 'dcccccc2-cccc-cccc-cccc-cccccccccccc',
);

Map<String, dynamic> _billReadJson() => _sharedAppellationReadJson(
  appellationsId: 'adddddd1-dddd-dddd-dddd-dddddddddddd',
  nameDictionaryId: 'deeeeee1-eeee-eeee-eeee-eeeeeeeeeeee',
  nameValue: 'テストビル',
  pronunciationDictionaryId: 'deeeeee2-eeee-eeee-eeee-eeeeeeeeeeee',
  nicknameDictionaryId: 'deeeeee3-eeee-eeee-eeee-eeeeeeeeeeee',
);

Map<String, dynamic> _infoAddressReadJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'address1': _address1ReadJson(),
  'address2': _address2ReadJson(),
  'billName': _billReadJson(),
  'phone': '03-1234-5678',
  'faxNumber': '03-1234-5679',
  'remarks': null,
  'updateAt': '2026-09-25T00:00:00',
  'remove': false,
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawReadJson() => {
  'allInfoCompanies': {
    'totalCount': 1,
    'pageInfo': {
      'hasNextPage': false,
      'endCursor': null,
      '__typename': 'PageInfo',
    },
    'nodes': [
      {
        'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
        'webPage': 'https://example.com',
        'symbol': 'CO001',
        'remarks': '備考テキスト',
        'updateAt': '2026-09-25T00:00:00',
        'remove': false,
        'sharedAppellationBySharedAppellationsId': _companyNameReadJson(),
        'ceo': _ceoReadJson(),
        'infoAddressByInfoAddressId': _infoAddressReadJson(),
        'infoOfficesByInfoCompanyId': {
          'totalCount': 0,
          'pageInfo': {
            'hasNextPage': false,
            'endCursor': null,
            '__typename': 'PageInfo',
          },
          'nodes': <dynamic>[],
          '__typename': 'InfoOfficesConnection',
        },
        'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId': {
          'historyId': 'h1111111-1111-1111-1111-111111111111',
          'infoStaffId': 's1111111-1111-1111-1111-111111111111',
          'sharedAppellationsId': 'a2222222-2222-2222-2222-222222222222',
          '__typename': 'HistoryInfoStaff',
        },
        '__typename': 'InfoCompany',
      },
    ],
    '__typename': 'InfoCompaniesConnection',
  },
  '__typename': 'Query',
};

// --- edit/RFE用: 引き続きja/en両方を持つ形状(編集フォームは常に両方が必要) --------

Map<String, dynamic> _sharedDictionaryJson(
  String sharedDictionaryId,
  String? ja,
  String? en,
) => {
  'sharedDictionaryId': sharedDictionaryId,
  'ja': _dictionaryValueConnection(ja),
  'en': _dictionaryValueConnection(en),
  '__typename': 'SharedDictionary',
};

Map<String, dynamic> _sharedAppellationJson({
  required String appellationsId,
  required String nameDictionaryId,
  String? nameJa,
  String? nameEn,
  required String pronunciationDictionaryId,
  String? pronunciationJa,
  String? pronunciationEn,
  required String nicknameDictionaryId,
  String? nicknameJa,
  String? nicknameEn,
}) => {
  'sharedAppellationsId': appellationsId,
  'sharedDictionaryBySharedDictionaryNameId': _sharedDictionaryJson(
    nameDictionaryId,
    nameJa,
    nameEn,
  ),
  'sharedDictionaryBySharedDictionaryPronunciationId': _sharedDictionaryJson(
    pronunciationDictionaryId,
    pronunciationJa,
    pronunciationEn,
  ),
  'sharedDictionaryBySharedDictionaryNicknameId': _sharedDictionaryJson(
    nicknameDictionaryId,
    nicknameJa,
    nicknameEn,
  ),
  '__typename': 'SharedAppellation',
};

Map<String, dynamic> _companyNameJson() => _sharedAppellationJson(
  appellationsId: 'a1111111-1111-1111-1111-111111111111',
  nameDictionaryId: 'd1111111-1111-1111-1111-111111111111',
  nameJa: '株式会社テスト',
  nameEn: 'Test Co., Ltd.',
  pronunciationDictionaryId: 'd2222222-2222-2222-2222-222222222222',
  pronunciationJa: 'カブシキガイシャテスト',
  nicknameDictionaryId: 'd3333333-3333-3333-3333-333333333333',
  nicknameJa: 'テスト',
);

Map<String, dynamic> _ceoJson() => _sharedAppellationJson(
  appellationsId: 'a4444444-4444-4444-4444-444444444444',
  nameDictionaryId: 'd4444444-4444-4444-4444-444444444444',
  nameJa: '代表 太郎',
  nameEn: 'Taro Daihyo',
  pronunciationDictionaryId: 'd5555555-5555-5555-5555-555555555555',
  pronunciationJa: 'ダイヒョウ タロウ',
  nicknameDictionaryId: 'd6666666-6666-6666-6666-666666666666',
);

Map<String, dynamic> _address1Json() => _sharedAppellationJson(
  appellationsId: 'a7777777-7777-7777-7777-777777777777',
  nameDictionaryId: 'd7777777-7777-7777-7777-777777777777',
  nameJa: '東京都千代田区千代田1-1',
  pronunciationDictionaryId: 'd8888888-8888-8888-8888-888888888888',
  nicknameDictionaryId: 'd9999999-9999-9999-9999-999999999999',
);

Map<String, dynamic> _address2Json() => _sharedAppellationJson(
  appellationsId: 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
  nameDictionaryId: 'dbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
  nameJa: 'テストビル10F',
  pronunciationDictionaryId: 'dcccccc1-cccc-cccc-cccc-cccccccccccc',
  nicknameDictionaryId: 'dcccccc2-cccc-cccc-cccc-cccccccccccc',
);

Map<String, dynamic> _billJson() => _sharedAppellationJson(
  appellationsId: 'adddddd1-dddd-dddd-dddd-dddddddddddd',
  nameDictionaryId: 'deeeeee1-eeee-eeee-eeee-eeeeeeeeeeee',
  nameJa: 'テストビル',
  pronunciationDictionaryId: 'deeeeee2-eeee-eeee-eeee-eeeeeeeeeeee',
  nicknameDictionaryId: 'deeeeee3-eeee-eeee-eeee-eeeeeeeeeeee',
);

Map<String, dynamic> _infoAddressJson() => {
  'infoAddressId': 'ad111111-1111-1111-1111-111111111111',
  'iso31663': 'JPN',
  'zipCode': '100-0001',
  'address1': _address1Json(),
  'address2': _address2Json(),
  'billName': _billJson(),
  'phone': '03-1234-5678',
  'faxNumber': '03-1234-5679',
  'remarks': null,
  'updateAt': '2026-09-25T00:00:00',
  'remove': false,
  '__typename': 'InfoAddress',
};

Map<String, dynamic> _buildRawEditJson() => {
  'updateInfoCompanyByInfoCompanyId': {
    'infoCompany': {
      'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
      'webPage': 'https://example.com',
      'symbol': 'CO001',
      'remarks': '備考テキスト(編集後)',
      'sharedAppellationBySharedAppellationsId': _companyNameJson(),
      'ceo': _ceoJson(),
      'infoAddressByInfoAddressId': _infoAddressJson(),
      '__typename': 'InfoCompany',
    },
    'clientMutationId': null,
    '__typename': 'UpdateInfoCompanyPayload',
  },
  '__typename': 'Mutation',
};

Map<String, dynamic> _buildRawRfeJson() => {
  'infoCompanyByInfoCompanyId': {
    'infoCompanyId': 'c1111111-1111-1111-1111-111111111111',
    'webPage': 'https://example.com',
    'symbol': 'CO001',
    'remarks': '備考テキスト',
    'updateAt': '2026-09-25T00:00:00',
    'updateUserId': 's1111111-1111-1111-1111-111111111111',
    'updateUserHistoryId': 'h1111111-1111-1111-1111-111111111111',
    'remove': false,
    'sharedAppellationBySharedAppellationsId': _companyNameJson(),
    'ceo': _ceoJson(),
    'infoAddressByInfoAddressId': _infoAddressJson(),
    '__typename': 'InfoCompany',
  },
  '__typename': 'Query',
};

void main() {
  test('要件0035: Query\$CompanyPageRead <-> Map 往復変換が元と一致する', () {
    final model = Query$CompanyPageRead.fromJson(_buildRawReadJson());
    final node = model.allInfoCompanies!.nodes.single!;

    final nodeMap = node.toJson();
    final flatMap = nodeMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredNode = Query$CompanyPageRead$allInfoCompanies$nodes.fromJson(
      restoredMap,
    );

    expect(restoredMap, equals(nodeMap));
    expect(restoredNode, equals(node));

    // ignore: avoid_print
    print('COMPANY_PAGE_READ_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test(
    '要件0036: CompanyPageKeyName(value単一エイリアス) + collapseSingleRecordPathsで'
    '1言語ぶんの会社名・ceo・住所を解決できる',
    () {
      final model = Query$CompanyPageRead.fromJson(_buildRawReadJson());
      final node = model.allInfoCompanies!.nodes.single!;
      final nodeMap = node.toJson();

      const nameValue = CompanyPageKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue;
      const pronunciationValue = CompanyPageKeyName
          .sharedAppellationBySharedAppellationsId_sharedDictionaryBySharedDictionaryPronunciationId_value_dictionaryValue;
      const ceoNameValue = CompanyPageKeyName
          .ceo_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue;
      const ceoNicknameValue = CompanyPageKeyName
          .ceo_sharedDictionaryBySharedDictionaryNicknameId_value_dictionaryValue;
      const address1NameValue = CompanyPageKeyName
          .infoAddressByInfoAddressId_address1_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue;
      const billNameValue = CompanyPageKeyName
          .infoAddressByInfoAddressId_billName_sharedDictionaryBySharedDictionaryNameId_value_dictionaryValue;

      const collapsePaths = {
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryNameId||value',
        'sharedAppellationBySharedAppellationsId||sharedDictionaryBySharedDictionaryPronunciationId||value',
        'ceo||sharedDictionaryBySharedDictionaryNameId||value',
        'ceo||sharedDictionaryBySharedDictionaryNicknameId||value',
        'infoAddressByInfoAddressId||address1||sharedDictionaryBySharedDictionaryNameId||value',
        'infoAddressByInfoAddressId||billName||sharedDictionaryBySharedDictionaryNameId||value',
      };

      final flatColumns = nodeMap.flattenForColumns([
        nameValue.name,
        pronunciationValue.name,
        ceoNameValue.name,
        ceoNicknameValue.name,
        address1NameValue.name,
        billNameValue.name,
      ], collapseSingleRecordPaths: collapsePaths);

      expect(flatColumns[nameValue.name], '株式会社テスト');
      expect(flatColumns[pronunciationValue.name], 'カブシキガイシャテスト');
      expect(flatColumns[ceoNameValue.name], '代表 太郎');
      // ceoのnicknameは値を与えていない(0件)ため null になる。
      expect(flatColumns[ceoNicknameValue.name], isNull);
      expect(flatColumns[address1NameValue.name], '東京都千代田区千代田1-1');
      expect(flatColumns[billNameValue.name], 'テストビル');
    },
  );

  test('要件0035: Mutation\$CompanyPageEdit <-> Map 往復変換が元と一致する', () {
    final model = Mutation$CompanyPageEdit.fromJson(_buildRawEditJson());
    final infoCompany = model.updateInfoCompanyByInfoCompanyId!.infoCompany!;

    final companyMap = infoCompany.toJson();
    final flatMap = companyMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel =
        Mutation$CompanyPageEdit$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
          restoredMap,
        );

    expect(restoredMap, equals(companyMap));
    expect(restoredModel, equals(infoCompany));

    // ignore: avoid_print
    print('COMPANY_PAGE_EDIT_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });

  test('要件0035: Query\$CompanyPageRfe <-> Map 往復変換が元と一致する', () {
    final model = Query$CompanyPageRfe.fromJson(_buildRawRfeJson());
    final infoCompany = model.infoCompanyByInfoCompanyId!;

    final companyMap = infoCompany.toJson();
    final flatMap = companyMap.flatten();
    final restoredMap = flatMap.unflatten();
    final restoredModel = Query$CompanyPageRfe$infoCompanyByInfoCompanyId
        .fromJson(restoredMap);

    expect(restoredMap, equals(companyMap));
    expect(restoredModel, equals(infoCompany));

    // ignore: avoid_print
    print('COMPANY_PAGE_RFE_FLAT_MAP_JSON=${jsonEncode(flatMap)}');
  });
}
