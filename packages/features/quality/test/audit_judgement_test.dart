import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:quality/quality.dart';
import 'package:quality/src/audit_run/audit_judgement.dart';

ConditionValue? _e(String op, Object value) => AuditJudgement.parseExpr({'operator': op, 'value': value});

void main() {
  group('式からの合否の判定(式の JSON だけで判定する)', () {
    test('DB の arg_class は、オブジェクト・文字列・値が数のものを読める。式が無い・読めないときは null', () {
      expect(AuditJudgement.parseExpr({'operator': '<=', 'value': 0.5})?.display, '<= 0.5');
      expect(AuditJudgement.parseExpr('{"operator":"between","value":[1,5]}')?.display, '1 〜 5');
      expect(AuditJudgement.parseExpr({'operator': 'yesno', 'value': true})?.display, 'Yes');
      expect(AuditJudgement.parseExpr(null), isNull);
      expect(AuditJudgement.parseExpr({'x': 1}), isNull);
      expect(AuditJudgement.parseExpr('bad'), isNull);
    });

    test('数の比較・範囲・はい/いいえ・文字', () {
      expect(AuditJudgement.judge(_e('<=', 0.5), '0.4'), isTrue);
      expect(AuditJudgement.judge(_e('<=', 0.5), '0.6'), isFalse);
      expect(AuditJudgement.judge(_e('>', 3), '3'), isFalse);
      expect(AuditJudgement.judge(_e('>=', 3), '3'), isTrue);
      expect(AuditJudgement.judge(_e('between', [1, 5]), '5'), isTrue);
      expect(AuditJudgement.judge(_e('between', [1, 5]), '5.1'), isFalse);
      expect(AuditJudgement.judge(_e('yesno', true), 'true'), isTrue);
      expect(AuditJudgement.judge(_e('yesno', true), 'false'), isFalse);
      expect(AuditJudgement.judge(_e('=', '合格'), '合格'), isTrue);
      expect(AuditJudgement.judge(_e('≠', '合格'), '合格'), isFalse);
      expect(AuditJudgement.judge(_e('=', 10), '10.0'), isTrue); // 数どうしは数で比べる
    });

    test('判定しない(null): 式なし・値が空・数でない値に大小の比較・はい/いいえでない値', () {
      expect(AuditJudgement.judge(null, '1'), isNull);
      expect(AuditJudgement.judge(_e('<=', 1), ''), isNull);
      expect(AuditJudgement.judge(_e('<=', 1), 'abc'), isNull);
      expect(AuditJudgement.judge(_e('yesno', true), 'はい'), isNull);
      expect(AuditJudgement.isNumeric(_e('between', [1, 5])), isTrue);
      expect(AuditJudgement.isNumeric(_e('=', '合格')), isFalse);
      expect(AuditJudgement.isNumeric(_e('yesno', true)), isFalse);
    });
  });

  group('監査の実施の値の入力欄(式の種類ごと)', () {
    final gateway = InMemoryAuditRunGateway(
      assignments: [AuditAssignment(id: 'd', auditName: '内部監査', name: '品質保証部', scheduledAt: DateTime(2026, 11, 30, 9), performedDate: DateTime(2026, 11, 30))],
      items: {
        'd': [
          AuditItem(id: 'n', detailId: 'd', name: '温度', code: 'T1', expr: _e('<=', 0.5)!.toJsonString()),
          AuditItem(id: 'y', detailId: 'd', name: '掲示', code: 'T2', expr: _e('yesno', true)!.toJsonString()),
          const AuditItem(id: 'f', detailId: 'd', name: '自由', code: 'T3'),
        ],
      },
    );

    testWidgets('数は数の入力と合否、はい/いいえは選択、式なしは文字のまま。保存する値は文字', (tester) async {
      await tester.binding.setSurfaceSize(const Size(1000, 1600));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final router = GoRouter(
        initialLocation: '/quality/audit-run?id=d',
        routes: [...const QualityModule().routes.where((r) => r is GoRoute && r.path == '/quality/audit-run')],
      );
      await tester.pumpWidget(ProviderScope(overrides: [auditRunGatewayProvider.overrideWithValue(gateway)], child: MaterialApp.router(routerConfig: router)));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('ar-expr-n')), findsOneWidget);
      expect(find.text('基準: <= 0.5'), findsOneWidget);
      expect(find.byKey(const Key('ar-expr-f')), findsNothing); // 式なしは基準を出さない
      expect(find.byType(SegmentedButton<String>), findsOneWidget);

      await tester.enterText(find.byKey(const Key('ar-value-n')), '0.7');
      await tester.pump();
      expect(find.descendant(of: find.byKey(const Key('ar-judge-n')), matching: find.text('不適合')), findsOneWidget);
      await tester.enterText(find.byKey(const Key('ar-value-n')), '0.3');
      await tester.pump();
      expect(find.descendant(of: find.byKey(const Key('ar-judge-n')), matching: find.text('適合')), findsOneWidget);

      await tester.tap(find.descendant(of: find.byKey(const Key('ar-value-y')), matching: find.text('はい')));
      await tester.pump();
      expect(find.descendant(of: find.byKey(const Key('ar-judge-y')), matching: find.text('適合')), findsOneWidget);
      await tester.tap(find.byKey(const Key('ar-save-y')));
      await tester.pumpAndSettle();
      expect((await gateway.items('d')).firstWhere((i) => i.id == 'y').value, 'true');
    });
  });
}
