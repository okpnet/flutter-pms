import 'package:baton_lib/baton_lib.dart';
import 'package:feature_shared/feature_shared.dart' show EntityPickerDestination, commandBusProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:quality/quality.dart';
import 'package:quality/quality_api.dart';
import 'package:selection_result/selection_result.dart';

/// 台帳の選択画面の代わりに、決まった選択を返す(機能同士は、キーだけで受け渡す)。
class _Bus implements CommandBus {
  final List<String> picked = [];

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    final c = command as Object;
    if (c is EntityPickerDestination) {
      picked.add(c.entityKey);
      return Selection(entityKey: c.entityKey, id: 'id-${c.entityKey}', label: '選んだ ${c.entityKey}') as R;
    }
    throw UnimplementedError('$command');
  }
}

Widget _app(InMemoryComplaintRegisterGateway g, _Bus bus, {String location = '/quality/complaint-register'}) {
  final router = GoRouter(
    initialLocation: location,
    routes: [...const QualityModule().routes.where((r) => r is GoRoute && r.path == '/quality/complaint-register')],
  );
  return ProviderScope(
    overrides: [complaintRegisterGatewayProvider.overrideWithValue(g), commandBusProvider.overrideWithValue(bus)],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1000, 1400));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  group('入力の検査(DB の関数と同じ規則)', () {
    test('題名・対象は必須。数量は、ロットで必須・0 より大きい。ほかは省略できる', () {
      expect(validateComplaintRegister(const ComplaintRegisterInput(target: ComplaintTarget.process)), [ComplaintRegisterError.titleRequired, ComplaintRegisterError.targetRequired]);
      expect(validateComplaintRegister(const ComplaintRegisterInput(target: ComplaintTarget.process, targetId: 't', title: 'x')), isEmpty);
      const lot = ComplaintRegisterInput(target: ComplaintTarget.visiter, targetId: 'v', title: 'x');
      expect(validateComplaintRegister(lot), [ComplaintRegisterError.quantityInvalid]);
      expect(validateComplaintRegister(const ComplaintRegisterInput(target: ComplaintTarget.visiter, targetId: 'v', title: 'x', quantity: '0')), [ComplaintRegisterError.quantityInvalid]);
      expect(validateComplaintRegister(const ComplaintRegisterInput(target: ComplaintTarget.visiter, targetId: 'v', title: 'x', quantity: '2.5')), isEmpty);
      expect(validateComplaintRegister(const ComplaintRegisterInput(target: ComplaintTarget.work, targetId: 'w', title: 'x', quantity: 'abc')), [ComplaintRegisterError.quantityInvalid]);
    });

    test('対象の種類は、選ぶ台帳のキーを持つ', () {
      expect(ComplaintTarget.process.pickerKey, 'task');
      expect(ComplaintTarget.stakeholder.pickerKey, 'stakeholder');
      expect(ComplaintTarget.work.pickerKey, 'workrecpick');
      expect(ComplaintTarget.visiter.pickerKey, 'lotpick');
      expect(ComplaintTarget.work.symbolEntry, isTrue); // 作業実績・ロットは、シンボル(バーコード)の入力も使える
      expect(ComplaintTarget.process.symbolEntry, isFalse);
      expect(ComplaintTarget.byName('order'), ComplaintTarget.order);
      expect(ComplaintTarget.byName('?'), isNull);
    });

    test('遷移先はパスに変換でき、JSON にできる', () {
      const m = QualityModule();
      expect(m.locationOf(const ComplaintRegisterDestination()), '/quality/complaint-register');
      expect(m.locationOf(const ComplaintRegisterDestination(target: 'order', targetId: 'o1', targetLabel: 'SO-1')), '/quality/complaint-register?target=order&id=o1&label=SO-1');
      expect(const ComplaintRegisterDestination(target: 'order', targetId: 'o1').toJson()['targetId'], 'o1');
    });
  });

  group('異常の登録の画面', () {
    testWidgets('種類を選び、対象を選択画面で選んで登録できる。登録後は入力が空になる', (tester) async {
      final g = InMemoryComplaintRegisterGateway();
      final bus = _Bus();
      await _open(tester, _app(g, bus));

      await tester.tap(find.byKey(const Key('cr-pick')));
      await tester.pumpAndSettle();
      expect(bus.picked, ['task']); // 既定の種類は工程
      expect(find.text('選んだ task'), findsOneWidget);

      await tester.enterText(find.byKey(const Key('cr-title')), '寸法の外れ');
      await tester.enterText(find.byKey(const Key('cr-details')), '公差を超えた');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered.single.target, ComplaintTarget.process);
      expect(g.registered.single.targetId, 'id-task');
      expect(g.registered.single.title, '寸法の外れ');
      expect(find.byKey(const Key('cr-registered')), findsOneWidget);
      expect(find.text('選んだ task'), findsNothing);
    });

    testWidgets('作業実績・ロットは、選択画面と、シンボルまたは ID の入力の両方で指定できる。ロットは数量が必須', (tester) async {
      final g = InMemoryComplaintRegisterGateway();
      await _open(tester, _app(g, _Bus()));
      await tester.tap(find.byKey(const Key('cr-kind')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('ロット(棚移動で発見された異常)').last);
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('cr-pick')), findsOneWidget); // 選択画面も使える
      await tester.enterText(find.byKey(const Key('cr-target-text')), 'LT-0001');
      await tester.enterText(find.byKey(const Key('cr-title')), '棚の取り違え');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered, isEmpty); // 数量が無いので、登録しない
      expect(find.text('数量は 0 より大きい数を入れてください。'), findsOneWidget);
      await tester.enterText(find.byKey(const Key('cr-quantity')), '3');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered.single.targetId, 'LT-0001');
      expect(g.registered.single.quantity, '3');
    });

    testWidgets('必須の入力が無いときは、項目に誤りを出し、登録しない。失敗は表示する', (tester) async {
      final g = InMemoryComplaintRegisterGateway();
      await _open(tester, _app(g, _Bus()));
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(find.text('題名を入れてください。'), findsOneWidget);
      expect(find.text('対象を選んでください。'), findsOneWidget);
      expect(g.registered, isEmpty);

      g.failing = true;
      await tester.enterText(find.byKey(const Key('cr-title')), 'x');
      await tester.tap(find.byKey(const Key('cr-pick')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('cr-failed')), findsOneWidget);
    });

    testWidgets('作業実績・ロットを選択画面で選ぶと、その ID で登録する。選んだあとにシンボルを入力すると、入力したシンボルを使う(後から指定した方が優先)', (tester) async {
      final g = InMemoryComplaintRegisterGateway();
      final bus = _Bus();
      await _open(tester, _app(g, bus, location: '/quality/complaint-register?target=visiter'));
      await tester.tap(find.byKey(const Key('cr-pick')));
      await tester.pumpAndSettle();
      expect(bus.picked, ['lotpick']);
      await tester.enterText(find.byKey(const Key('cr-title')), '棚の取り違え');
      await tester.enterText(find.byKey(const Key('cr-quantity')), '2');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered.last.targetId, 'id-lotpick');

      await tester.tap(find.byKey(const Key('cr-pick')));
      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(const Key('cr-target-text')), 'LT-0009'); // 選んだ対象は使わない
      await tester.enterText(find.byKey(const Key('cr-title')), '別のロット');
      await tester.enterText(find.byKey(const Key('cr-quantity')), '1');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered.last.targetId, 'LT-0009');
    });

    testWidgets('関連する画面からは、種類と対象を決めて開ける(対象は選び直せる)', (tester) async {
      final g = InMemoryComplaintRegisterGateway();
      await _open(tester, _app(g, _Bus(), location: '/quality/complaint-register?target=order&id=o1&label=SO-1001'));
      expect(find.text('SO-1001'), findsOneWidget);
      await tester.enterText(find.byKey(const Key('cr-title')), '梱包の破損');
      await tester.tap(find.byKey(const Key('cr-register')));
      await tester.pumpAndSettle();
      expect(g.registered.single.target, ComplaintTarget.order);
      expect(g.registered.single.targetId, 'o1');
    });
  });
}
