// 検索条件の実例(OfficePage: 住所・呼称を経由した検索)。

import 'package:flutter_test/flutter_test.dart';
import 'package:organization_model/organization_model.dart';
import 'package:pms_graphql/pms_graphql.dart';

void main() {
  group('OfficePage(住所・呼称を経由した検索)', () {
    const converter = FlatFilterConverter(OfficePageFilterSpec.spec);

    test('住所の郵便番号と、事業所名(表示言語の辞書の値)で絞り込む', () {
      final filter = converter.convert(
        {
          'address||zipCode': {'startsWith': '100'},
          'labels||sharedDictionaryBySharedDictionaryNameId||value||dictionaryValue':
              {'includes': '東京'},
        },
        variables: {'languageCodeId': 'lang-ja'},
      );
      expect(filter, {
        'infoAddressByInfoAddressId': {
          'zipCode': {'startsWith': '100'},
        },
        'sharedAppellationByNames': {
          'sharedDictionaryBySharedDictionaryNameId': {
            'sharedDictionaryValuesBySharedDictionaryId': {
              'some': {
                'sharedLanguageCodeId': {'equalTo': 'lang-ja'},
                'dictionaryValue': {'includes': '東京'},
              },
            },
          },
        },
      });
      final model = Input$InfoOfficeFilter.fromJson(filter);
      expect(model.infoAddressByInfoAddressId!.zipCode!.startsWith, '100');
      expect(model.toJson(), filter);
    });
  });
}
