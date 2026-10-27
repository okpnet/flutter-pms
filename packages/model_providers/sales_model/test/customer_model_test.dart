import 'package:flutter_test/flutter_test.dart';
import 'package:pms_graphql/pms_graphql.dart';
import 'package:sales_model/sales_model.dart';

void main() {
  test('顧客の読み取りモデルは空の応答を読み、JSON に戻せる', () {
    final model = Query$CustomerPageRead.fromJson({
      '__typename': 'Query',
      'allMstrStakeholders': {
        'nodes': [],
        'totalCount': 0,
        '__typename': 'MstrStakeholdersConnection',
        'pageInfo': {'hasNextPage': false, '__typename': 'PageInfo'},
      },
    });
    expect(model.allMstrStakeholders?.nodes, isEmpty);
    expect(model.toJson()['allMstrStakeholders'], isNotNull);
  });

  test('検索条件の対応表で平坦なMapを顧客のFilterに展開できる', () {
    final filter = FlatFilterConverter(CustomerPageFilterSpec.spec).convert({
      'code': {'startsWith': 'A'},
    });
    expect(Input$MstrStakeholderFilter.fromJson(filter).code, isNotNull);
  });
}
