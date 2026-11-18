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
    // 種類・判断は boolean の列。対象はちょうど 1 つ、判断もちょうど 1 つ true
    for (final s in DemoMrpGateway.demoSuggestions) {
      expect(
        [s.isPurchase, s.isProduction, s.isOutsource, s.isPlan, s.isException, s.isSupplyRequest]
            .where((v) => v)
            .length,
        1,
      );
      expect([s.undecided, s.adopted, s.rejected, s.isInfo].where((v) => v).length, 1);
    }
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
    // 対象・動き・判断は、列の名前とチェック(文は組み立てない)
    expect(find.text('発注'), findsWidgets);
    expect(find.text('✓'), findsWidgets);
    // 提案の symbol
    expect(find.text('MS-0001'), findsOneWidget);
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
    await tester.tap(find.byKey(const ValueKey('mrpDecision:undecided')));
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

  group('手続き(調査 → 評価 → 判断 → 確定・破棄)', () {
    Future<void> tapKey(WidgetTester tester, String key) async {
      final f = find.byKey(ValueKey(key));
      await tester.ensureVisible(f);
      await tester.pumpAndSettle();
      await tester.tap(f);
      await tester.pumpAndSettle();
    }

    Future<void> calculate(WidgetTester tester) async {
      await tapKey(tester, 'mrpCalc');
      await tapKey(tester, 'mrpGo');
    }

    testWidgets('調査: マスタの不備を調べる。何も変えず、結果を出す', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      expect(find.byKey(const ValueKey('mrpCheckCard')), findsOneWidget);
      await tapKey(tester, 'mrpCheck');
      expect(gateway.operations, ['check:']);
      expect(find.text('不備の件数: 2件'), findsOneWidget);
      expect(find.textContaining('S-3001'), findsOneWidget);
      expect(find.textContaining('品目工程運用明細の工程運用明細または工程が削除されています'), findsOneWidget);
      // 計算・確定はしていない
      expect(gateway.calls, isEmpty);
    });

    testWidgets('調査: 不備が無いときは、無いと出す', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10))
        ..issues = const [];
      await _pump(tester, gateway);
      await tapKey(tester, 'mrpCheck');
      expect(find.byKey(const ValueKey('mrpCheckNone')), findsOneWidget);
    });

    testWidgets('評価: 計算だけして確定待ちにする。要判断が残る間は、確定できない', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      expect(gateway.calls.single['op'], 'calculate');
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsOneWidget);
      expect(find.text('状態: 確定待ち'), findsOneWidget);
      expect(find.text('判断が残っている提案: 3件'), findsOneWidget);
      // 要判断が残っているので、確定は押せない
      expect(
        tester.widget<ButtonStyleButton>(find.byKey(const ValueKey('mrpCommit'))).onPressed,
        isNull,
      );
      expect(find.byKey(const ValueKey('mrpCommitForce')), findsOneWidget);
    });

    testWidgets('判断: 表示中の要判断をまとめて採用し、確定する', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      await tapKey(tester, 'mrpAdoptAll');
      expect(gateway.operations.single, startsWith('decide:demo-run-1:adopt:'));
      expect(find.text('判断が残っている提案: 0件'), findsOneWidget);
      expect(
        tester.widget<ButtonStyleButton>(find.byKey(const ValueKey('mrpCommit'))).onPressed,
        isNotNull,
      );
      // 確定(確認のあと)
      await tapKey(tester, 'mrpCommit');
      expect(find.text('確定しますか？'), findsOneWidget);
      await tapKey(tester, 'mrpStepOk');
      expect(gateway.operations.last, 'commit:demo-run-1:force=false');
      expect(find.text('状態: 確定済み'), findsOneWidget);
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsNothing);
    });

    testWidgets('判断: 検索で絞った提案だけを却下できる', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      await tester.enterText(find.byKey(const ValueKey('mrpSearch')), 'カバー');
      await tester.pumpAndSettle();
      await tapKey(tester, 'mrpRejectAll');
      // 1 件だけ(カバー部品)が却下になり、残りは要判断のまま
      expect(gateway.operations.single, contains(':reject:'));
      expect(gateway.operations.single.split(':').last.split(',').length, 1);
      expect(find.text('判断が残っている提案: 2件'), findsOneWidget);
    });

    testWidgets('実行: 要判断を却下として確定(force)できる', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      await tapKey(tester, 'mrpCommitForce');
      expect(find.text('要判断を却下して確定しますか？'), findsOneWidget);
      await tapKey(tester, 'mrpStepOk');
      expect(gateway.operations.last, 'commit:demo-run-1:force=true');
      expect(find.text('状態: 確定済み'), findsOneWidget);
    });

    testWidgets('実行: 確認でやめると、確定しない', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      await tapKey(tester, 'mrpCommitForce');
      await tapKey(tester, 'mrpStepCancel');
      expect(gateway.operations, isEmpty);
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsOneWidget);
    });

    testWidgets('実行: 破棄すると、結果を消す(計画データは変わらない)', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await _pump(tester, gateway);
      await calculate(tester);
      await tapKey(tester, 'mrpDiscard');
      expect(find.text('この結果を破棄しますか？'), findsOneWidget);
      await tapKey(tester, 'mrpStepOk');
      expect(gateway.operations.single, 'discard:demo-run-1');
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsNothing);
      expect(find.text('まだ実行していません'), findsOneWidget);
    });

    for (final c in [
      ('MRP01', '要判断の提案が残っています。採用か却下を決めてから確定してください。'),
      ('MRP03', '計算のあとにデータが更新された、または新しく計算したため、この結果は確定できません。もう一度計算してください。'),
    ]) {
      testWidgets('確定の失敗(${c.$1})は、取れる対応が分かる文を出す。確定待ちは残る', (tester) async {
        final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
        await _pump(tester, gateway);
        await calculate(tester);
        gateway.commitFailure = c.$1;
        await tapKey(tester, 'mrpCommitForce');
        await tapKey(tester, 'mrpStepOk');
        expect(find.text(c.$2), findsOneWidget);
        expect(find.text('エラーコード: ${c.$1}'), findsOneWidget);
        expect(find.byKey(const ValueKey('mrpAwaiting')), findsOneWidget);
      });
    }

    testWidgets('前回の計算の確定待ちを、開いたときに引き継ぐ', (tester) async {
      final gateway = DemoMrpGateway(duration: const Duration(milliseconds: 10));
      await tester.runAsync(() => gateway.calculate(mode: MrpMode.order, staffId: 'staff-1'));
      await _pump(tester, gateway);
      expect(find.byKey(const ValueKey('mrpResumed')), findsOneWidget);
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsOneWidget);
      expect(find.text('状態: 確定待ち'), findsOneWidget);
    });

    testWidgets('MRPを実行: 要判断が無ければ、そのまま確定済みになる(確定待ちを出さない)', (tester) async {
      final gateway = DemoMrpGateway(
        duration: const Duration(milliseconds: 10),
        suggestions: [DemoMrpGateway.demoSuggestions.first],
      );
      await _pump(tester, gateway);
      await tapKey(tester, 'mrpRun');
      await tapKey(tester, 'mrpGo');
      expect(find.text('状態: 確定済み'), findsOneWidget);
      expect(find.byKey(const ValueKey('mrpAwaiting')), findsNothing);
    });
  });
}
