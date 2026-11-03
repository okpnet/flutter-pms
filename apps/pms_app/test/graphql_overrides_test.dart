import 'package:entity_screens/entity_screens.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/services.dart';

void main() {
  test('GRAPHQL_URL が未指定のときは、取得元を差し替えない(サンプルのまま)', () {
    final container = ProviderContainer(overrides: graphqlOverrides());
    addTearDown(container.dispose);
    expect(graphqlUrl, isEmpty);
    expect(container.read(graphqlClientProvider), isNull);
    expect(container.read(entityRepositoryOverridesProvider), isEmpty);
  });

  test('認証ヘッダーは Bearer。トークンが無いときは付けない', () {
    expect(bearerOf(null), isNull);
    expect(bearerOf(''), isNull);
    expect(bearerOf('abc'), 'Bearer abc');
  });

  test('JWT は Riverpod に保存し、更新・消去できる', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    expect(container.read(graphqlTokenProvider), isNull);
    container.read(graphqlTokenProvider.notifier).set('jwt-1');
    expect(container.read(graphqlTokenProvider), 'jwt-1');
    container.read(graphqlTokenProvider.notifier).set(null);
    expect(container.read(graphqlTokenProvider), isNull);
  });
}
