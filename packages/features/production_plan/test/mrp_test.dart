import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:production_plan/production_plan.dart';
import 'package:production_plan/production_plan_api.dart';
import 'package:production_plan/src/mrp/mrp_module.dart';
import 'package:theme_lib/theme_lib.dart';

Future<ProviderContainerHandle> _pump(
  WidgetTester tester,
  DemoMrpGateway gateway, {
  List<Override> extra = const [],
}) async {
  await tester.binding.setSurfaceSize(const Size(1400, 1600));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(
    FeatureHost(
      title: '生産計画',
      modules: const [ProductionPlanModule()],
      entries: const [FeatureHostEntry('資材所要計算', MrpDestination())],
      logger: const NoopLoggerProvider(),
      overrides: [
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        mrpGatewayProvider.overrideWithValue(gateway),
        mrpStaffIdProvider.overrideWithValue('staff-1'),
        ...extra,
      ],
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('資材所要計算'));
  await tester.pumpAndSettle();
  return ProviderContainerHandle();
}

class ProviderContainerHandle {}

void main() {
  test('遷移先はパスに変換でき、生産計画のメニューに項目が出る', () {
    expect(const MrpModule().locationOf(const MrpDestination()), '/mrp');
    expect(
      const ProductionPlanModule().locationOf(const MrpDestination()),
      '/mrp',
    );
    for (final d in mrpDestinationSamples) {
      expect(const ProductionPlanModule().locationOf(d), isNotNull);
    }
  });

  test('結果の件数(提案・要判断・遅れ)', () {
    final result = MrpRunResult(
      executedAt: DateTime(2026, 10, 29),
      mode: MrpMode.order,
      suggestions: DemoMrpGateway.demoSuggestions,
    );
    expect(result.suggestionCount, 6);
    expect(result.pendingCount, 3);
    expect(result.lateCount, 1);
    expect(MrpMode.order.code, 1);
    expect(MrpMode.redo.code, 2);
    expect(MrpDecision.info.code, 9);
    expect(
      MrpSuggestionKind.ofCode('OUTSOURCE_OPTION'),
      MrpSuggestionKind.outsourceOption,
    );
  });

  testWidgets('実行前に確認の警告を出し、キャンセルでは実行しない', (tester) async {
    final gateway = DemoMrpGateway(duration: const Duration(seconds: 1));
    await _pump(tester, gateway);
    await tester.tap(find.byKey(const ValueKey('mrpRun')));
    await tester.pumpAndSettle();
    expect(find.text('MRPを実行しますか？'), findsOneWidget);
    expect(find.text('処理が重く、時間がかかります。'), findsOneWidget);
    expect(find.text('影響が広範囲で、他のユーザーの処理にも影響します。'), findsOneWidget);
    expect(find.text('実行中は操作も中断もできません。'), findsOneWidget);
    // 再MRPの警告は、チェックなしでは出ない
    expect(find.textContaining('すべての需要を作り直します。'), findsNothing);

    await tester.tap(find.byKey(const ValueKey('mrpCancel')));
    await tester.pumpAndSettle();
    expect(gateway.calls, isEmpty);
  });

  testWidgets('再MRPは、警告が増え、区分 2 で実行する。成功のお知らせと結果の表', (tester) async {
    final gateway = DemoMrpGateway(
      duration: const Duration(seconds: 1),
      now: () => DateTime(2026, 10, 29, 9, 5),
    );
    await _pump(tester, gateway);
    await tester.tap(find.byKey(const ValueKey('mrpRedo')));
    await tester.pump();
    await tester.tap(find.byKey(const ValueKey('mrpRun')));
    await tester.pumpAndSettle();
    expect(find.text('再MRPを実行しますか？'), findsOneWidget);
    expect(find.textContaining('すべての需要を作り直します。'), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('mrpGo')));
    await tester.pump();
    // 実行中: 画面全体の操作を止め、「計算中」と経過時間を出す
    expect(find.byKey(const ValueKey('busyBarrier')), findsOneWidget);
    expect(find.text('計算中'), findsOneWidget);
    expect(find.byKey(const ValueKey('busyElapsed')), findsOneWidget);
    // 実行ボタンも無効
    expect(
      tester
          .widget<ButtonStyleButton>(find.byKey(const ValueKey('mrpRun')))
          .onPressed,
      isNull,
    );
    await tester.pump(const Duration(seconds: 2));
    await tester.pumpAndSettle();

    expect(gateway.calls.single['mode'], 2);
    expect(gateway.calls.single['staffId'], 'staff-1');
    expect(find.byKey(const ValueKey('busyBarrier')), findsNothing);
    expect(find.text('MRPが成功しました'), findsOneWidget);
    expect(find.text('実行日時: 2026-10-29 09:05'), findsOneWidget);
    expect(find.text('実行区分: 再MRP'), findsOneWidget);
    expect(find.text('提案件数: 6件'), findsOneWidget);
    expect(find.text('要判断件数: 3件'), findsOneWidget);
    expect(find.text('遅れ件数: 1件'), findsOneWidget);
    // 結果の表
    expect(find.text('SUS304丸棒 φ20'), findsOneWidget);
    expect(find.text('発注（新規）'), findsWidgets);
  });

  testWidgets('判断での絞り込みと検索ができる', (tester) async {
    final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
    await _pump(tester, gateway);
    await tester.tap(find.byKey(const ValueKey('mrpRun')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('mrpGo')));
    await tester.pumpAndSettle();
    expect(find.text('SUS304丸棒 φ20'), findsOneWidget);

    // 判断: 要判断だけ
    await tester.tap(find.byKey(const ValueKey('mrpDecision:pending')));
    await tester.pumpAndSettle();
    expect(find.text('SUS304丸棒 φ20'), findsNothing);
    expect(find.text('A5052アルミ板 t3'), findsOneWidget);
    // 検索
    await tester.enterText(find.byKey(const ValueKey('mrpSearch')), 'カバー');
    await tester.pumpAndSettle();
    expect(find.text('A5052アルミ板 t3'), findsNothing);
    expect(find.text('カバー部品 B型'), findsOneWidget);
    // 該当なし
    await tester.enterText(find.byKey(const ValueKey('mrpSearch')), 'なし該当なし');
    await tester.pumpAndSettle();
    expect(find.text('該当する提案がありません'), findsOneWidget);
  });

  for (final code in [
    MrpFailure.timeout,
    MrpFailure.invalidArgument,
    'OTHER',
  ]) {
    testWidgets('失敗($code)は、エラーコードに関わらず同じ一般向けの警告。再実行できる', (tester) async {
      final gateway = DemoMrpGateway(
        duration: const Duration(milliseconds: 10),
        failure: code,
      );
      await _pump(tester, gateway);
      await tester.tap(find.byKey(const ValueKey('mrpRun')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('mrpGo')));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('mrpFailure')), findsOneWidget);
      expect(find.text('しばらく時間をおいて、もう一度実行してください。'), findsOneWidget);
      expect(find.text('エラーコード: $code'), findsOneWidget);
      expect(find.text('MRPが成功しました'), findsNothing);
      // 操作は元に戻り、再実行できる
      expect(find.byKey(const ValueKey('busyBarrier')), findsNothing);
      expect(
        tester
            .widget<ButtonStyleButton>(find.byKey(const ValueKey('mrpRun')))
            .onPressed,
        isNotNull,
      );
      await tester.tap(find.byKey(const ValueKey('mrpRun')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('mrpGo')));
      await tester.pumpAndSettle();
      expect(gateway.calls, hasLength(2));
    });
  }

  testWidgets('窓口が差し込まれていないときは、確かめていない結果を出さず警告にする', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1400, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      FeatureHost(
        title: '生産計画',
        modules: const [ProductionPlanModule()],
        entries: const [FeatureHostEntry('資材所要計算', MrpDestination())],
        logger: const NoopLoggerProvider(),
        overrides: [
          themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ],
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('資材所要計算'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('mrpRun')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('mrpGo')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('mrpFailure')), findsOneWidget);
    expect(find.text('MRPが成功しました'), findsNothing);
  });
}
