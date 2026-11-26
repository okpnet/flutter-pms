import 'package:entity_screens/entity_screens.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_master/src/stakeholder/stakeholder_module.dart';

class _Bus implements CommandBus {
  @override
  Future<R> execute<R>(ActionCommand<R> command) async => null as R;
}

/// 利害関係者の新規登録の初期値: アプリが決める値(標準の通貨)を下敷きにし、遷移先が渡した値が優先される。
Future<Map<String, String>> _initialOf(
  WidgetTester tester,
  String location,
  Map<String, String> defaults,
) async {
  const module = StakeholderModule();
  final container = ProviderContainer(
    overrides: [
      commandBusProvider.overrideWithValue(_Bus()),
      entityNewDefaultsProvider.overrideWith(
        (ref, key) async => key == 'stakeholder' ? defaults : const {},
      ),
    ],
  );
  addTearDown(container.dispose);
  container.read(
    Provider<void>(
      (ref) => module.registerHandlers(CommandHandlerRegistry(), ref),
    ),
  );
  final router = GoRouter(initialLocation: location, routes: module.routes);
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    UncontrolledProviderScope(
      container: container,
      child: MaterialApp.router(routerConfig: router),
    ),
  );
  await tester.pumpAndSettle();
  return tester
      .widget<EntityEditPage>(find.byType(EntityEditPage))
      .initialValues;
}

void main() {
  testWidgets('新規は、アプリが決めた標準の通貨を初期値にする', (tester) async {
    final v = await _initialOf(tester, '/e/stakeholder/new', {
      'mstr_currency_id': 'cur-base',
    });
    expect(v['mstr_currency_id'], 'cur-base');
  });

  testWidgets('遷移先が渡した値と合わせる。同じ項目は遷移先が優先される', (tester) async {
    final v = await _initialOf(
      tester,
      '/e/stakeholder/new?d.is_customer=${Uri.encodeComponent('はい')}&d.mstr_currency_id=cur-x',
      {'mstr_currency_id': 'cur-base'},
    );
    expect(v['is_customer'], 'はい');
    expect(v['mstr_currency_id'], 'cur-x');
  });

  testWidgets('標準の通貨が取り出せない(空)ときは、初期値を入れない', (tester) async {
    final v = await _initialOf(tester, '/e/stakeholder/new', const {});
    expect(v.containsKey('mstr_currency_id'), isFalse);
  });
}
