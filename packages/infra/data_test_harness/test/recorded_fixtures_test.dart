import 'dart:io';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

/// Actions で記録した応答(fixtures/graphql)を、サーバー無しで再生できることのテスト。
void main() {
  final dir = Directory('fixtures/graphql');

  test('記録した応答が読み込め、操作名で再生できる', () async {
    expect(dir.existsSync(), isTrue);
    final names = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.json'))
        .length;
    expect(names, greaterThan(100)); // 記録の件数(減っていたら、取り込みの失敗)

    final link = ReplayLink()..loadDirectory(dir);
    final provider = ReplayGraphql.provider(link);
    final result = await provider.query(
      QueryOptions(
        document: gql(
          'query PositionPageRead { allInfoPositions { totalCount } }',
        ),
      ),
    );
    expect(result, isA<Ok<Map<dynamic, dynamic>>>());
    final data = (result as Ok<Map<dynamic, dynamic>>).value;
    expect((data['allInfoPositions'] as Map)['totalCount'], 4);
  });
}
