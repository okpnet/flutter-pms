import 'dart:convert';

import 'package:baton_lib/baton_lib.dart';
import 'package:feature_shared/feature_shared.dart' show EntityPickerDestination, commandBusProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';
import 'package:quality/src/page/audit_plan_page.dart';
import 'package:selection_result/selection_result.dart';

const _standards = [
  AuditPlanOption(id: 's1', name: '内部監査標準', code: 'STD-01'),
  AuditPlanOption(id: 's2', name: '工程監査標準', code: 'STD-02'),
];
const _staff = [
  AuditPlanOption(id: 'u1', name: '田中', code: 'E-01'),
  AuditPlanOption(id: 'u2', name: '佐藤', code: 'E-02'),
  AuditPlanOption(id: 'u3', name: '鈴木', code: 'E-03'),
];

InMemoryAuditPlanGateway _gateway() => InMemoryAuditPlanGateway(standardOptions: _standards, staffOptions: _staff);

/// 台帳の選択画面の代わりに、決まった選択を返す(取り消しは null)。
class _Bus implements CommandBus {
  final List<String> picked = [];
  bool cancel = false;

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    final c = command as Object;
    if (c is EntityPickerDestination) {
      picked.add(c.entityKey);
      if (cancel) return null as R;
      return Selection(entityKey: c.entityKey, id: 'id-${c.entityKey}', label: '選んだ ${c.entityKey}') as R;
    }
    throw UnimplementedError('$command');
  }
}

Widget _app(IAuditPlanGateway g, {_Bus? bus}) {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const AuditPlanPage()),
      GoRoute(path: '/quality/my-audits', builder: (context, state) => const Text('my-audits-page')),
    ],
  );
  return ProviderScope(
    overrides: [auditPlanGatewayProvider.overrideWithValue(g), if (bus != null) commandBusProvider.overrideWithValue(bus)],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, IAuditPlanGateway g, {_Bus? bus}) async {
  await tester.binding.setSurfaceSize(const Size(1000, 1600));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(_app(g, bus: bus));
  await tester.pumpAndSettle();
}

Future<void> _pickAuditors(WidgetTester tester, int line, List<String> ids) async {
  await tester.ensureVisible(find.byKey(Key('ap-pick-auditors-$line')));
  await tester.tap(find.byKey(Key('ap-pick-auditors-$line')));
  await tester.pumpAndSettle();
  for (final id in ids) {
    await tester.tap(find.byKey(Key('ap-option-$id')));
  }
  await tester.tap(find.byKey(const Key('ap-picker-ok')));
  await tester.pumpAndSettle();
}

Future<void> _chooseStandard(WidgetTester tester, String label) async {
  await tester.tap(find.byKey(const Key('ap-standard')));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

void main() {
  group('検査', () {
    test('題名・監査標準・行・チーム名・監査員・予定の前後を検査する', () {
      expect(validateAuditPlan(const AuditPlanInput()).map((e) => e.error), [
        AuditPlanError.titleRequired,
        AuditPlanError.standardRequired,
        AuditPlanError.linesRequired,
      ]);
      final bad = validateAuditPlan(
        AuditPlanInput(
          title: 'x',
          standardId: 's1',
          lines: [
            const AuditPlanLine(),
            AuditPlanLine(teamName: 't', auditorIds: const ['u1'], scheduledAt: DateTime(2026, 12, 2), expectedEndAt: DateTime(2026, 12, 1)),
          ],
        ),
      );
      expect([for (final e in bad) '${e.error.name}@${e.line}'], ['teamNameRequired@0', 'auditorRequired@0', 'periodInvalid@1']);
      expect(
        validateAuditPlan(AuditPlanInput(title: 'x', standardId: 's1', lines: [const AuditPlanLine(teamName: 't', auditorIds: ['u1'])])),
        isEmpty,
      );
    });
  });

  group('監査計画の登録の画面', () {
    testWidgets('題名・監査標準・チーム・監査員を入れて登録できる', (tester) async {
      final g = _gateway();
      await _open(tester, g);
      await tester.enterText(find.byKey(const Key('ap-title')), '2026 年度 内部監査');
      await tester.enterText(find.byKey(const Key('ap-details')), '年度計画');
      await _chooseStandard(tester, 'STD-01  内部監査標準');
      await tester.enterText(find.byKey(const Key('ap-team-0')), 'チームA');
      await _pickAuditors(tester, 0, ['u1', 'u3']);
      expect(find.byKey(const Key('ap-auditor-0-u1')), findsOneWidget);
      expect(find.text('鈴木'), findsOneWidget);
      await tester.ensureVisible(find.byKey(const Key('ap-register')));
      await tester.tap(find.byKey(const Key('ap-register')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ap-registered')), findsOneWidget);
      final p = g.registered.single;
      expect(p.title, '2026 年度 内部監査');
      expect(p.details, '年度計画');
      expect(p.standardId, 's1');
      expect(p.lines.single.teamName, 'チームA');
      expect(p.lines.single.auditorIds, ['u1', 'u3']);
      await tester.tap(find.byKey(const Key('ap-go-my')));
      await tester.pumpAndSettle();
      expect(find.text('my-audits-page'), findsOneWidget);
    });

    testWidgets('対象の部署・利害関係者は任意。選択画面で選ぶと登録に含まれ、消すと外れる', (tester) async {
      final g = _gateway();
      final bus = _Bus();
      await _open(tester, g, bus: bus);
      expect(find.text('指定なし'), findsNWidgets(2));
      await tester.tap(find.byKey(const Key('ap-pick-department')));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key('ap-pick-stakeholder')));
      await tester.pumpAndSettle();
      expect(bus.picked, ['department', 'stakeholder']);
      expect(find.text('選んだ department'), findsOneWidget);
      expect(find.text('選んだ stakeholder'), findsOneWidget);
      await tester.tap(find.byKey(const Key('ap-clear-stakeholder')));
      await tester.pumpAndSettle();
      expect(find.text('選んだ stakeholder'), findsNothing);
      await tester.enterText(find.byKey(const Key('ap-title')), 't');
      await _chooseStandard(tester, 'STD-01  内部監査標準');
      await tester.enterText(find.byKey(const Key('ap-team-0')), 'A');
      await _pickAuditors(tester, 0, ['u1']);
      await tester.ensureVisible(find.byKey(const Key('ap-register')));
      await tester.tap(find.byKey(const Key('ap-register')));
      await tester.pumpAndSettle();
      expect(g.registered.single.departmentId, 'id-department');
      expect(g.registered.single.stakeholderId, isNull);
    });

    testWidgets('選択画面を取り消すと、何も変わらない。指定しなくても登録できる', (tester) async {
      final g = _gateway();
      final bus = _Bus()..cancel = true;
      await _open(tester, g, bus: bus);
      await tester.tap(find.byKey(const Key('ap-pick-department')));
      await tester.pumpAndSettle();
      expect(find.text('指定なし'), findsNWidgets(2));
      await tester.enterText(find.byKey(const Key('ap-title')), 't');
      await _chooseStandard(tester, 'STD-01  内部監査標準');
      await tester.enterText(find.byKey(const Key('ap-team-0')), 'A');
      await _pickAuditors(tester, 0, ['u1']);
      await tester.ensureVisible(find.byKey(const Key('ap-register')));
      await tester.tap(find.byKey(const Key('ap-register')));
      await tester.pumpAndSettle();
      expect(g.registered.single.departmentId, isNull);
      expect(g.registered.single.stakeholderId, isNull);
    });

    testWidgets('入力が足りないときは、誤りを出して登録しない', (tester) async {
      final g = _gateway();
      await _open(tester, g);
      await tester.tap(find.byKey(const Key('ap-register')));
      await tester.pumpAndSettle();
      expect(find.text('題名を入れてください。'), findsOneWidget);
      expect(find.text('監査標準を選んでください。'), findsOneWidget);
      expect(find.text('チーム名を入れてください。'), findsOneWidget);
      expect(find.byKey(const Key('ap-err-auditor-0')), findsOneWidget);
      expect(g.registered, isEmpty);
    });

    testWidgets('行を追加・削除できる(削除すると、入力欄が作り直される)', (tester) async {
      final g = _gateway();
      await _open(tester, g);
      await tester.enterText(find.byKey(const Key('ap-team-0')), 'チームA');
      await tester.ensureVisible(find.byKey(const Key('ap-add-line')));
      await tester.tap(find.byKey(const Key('ap-add-line')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ap-team-1')), findsOneWidget);
      await tester.enterText(find.byKey(const Key('ap-team-1')), 'チームB');
      await tester.ensureVisible(find.byKey(const Key('ap-remove-0')));
      await tester.tap(find.byKey(const Key('ap-remove-0')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ap-team-1')), findsNothing);
      expect(tester.widget<TextFormField>(find.byKey(const Key('ap-team-0'))).initialValue, 'チームB');
      expect(find.byKey(const Key('ap-remove-0')), findsNothing); // 1 行だけのときは削除できない
    });

    testWidgets('登録に失敗したときは、その旨を出す。選択肢の読み込みの失敗も出す', (tester) async {
      final g = _gateway();
      await _open(tester, g);
      await tester.enterText(find.byKey(const Key('ap-title')), 't');
      await _chooseStandard(tester, 'STD-02  工程監査標準');
      await tester.enterText(find.byKey(const Key('ap-team-0')), 'A');
      await _pickAuditors(tester, 0, ['u2']);
      g.failing = true;
      await tester.ensureVisible(find.byKey(const Key('ap-register')));
      await tester.tap(find.byKey(const Key('ap-register')));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('ap-register-failed')), findsOneWidget);

      await _open(tester, _gateway()..failing = true);
      expect(find.byKey(const Key('ap-load-failed')), findsOneWidget);
    });
  });

  group('GraphQL 版', () {
    test('選択肢(監査標準・担当者)を読める。入力の検査は通信の前', () async {
      final link = _FakeLink();
      final gw = GraphqlAuditPlanGateway(GraphQLClient(link: link, cache: GraphQLCache()));
      final standards = await gw.standards();
      expect(standards.single.label, 'STD-01  内部監査標準');
      final staff = await gw.staff();
      expect(staff.single.name, '田中');
      await expectLater(gw.register(const AuditPlanInput()), throwsA(isA<AuditPlanException>()));
      expect(link.requests.map(_op), isNot(contains('AuditPlanRegisterPageCall')));
    });

    test('対象の部署・利害関係者は、指定したときだけ引数(pDepartmentId・pStakeholderId)に入る', () async {
      final link = _FakeLink();
      final gw = GraphqlAuditPlanGateway(GraphQLClient(link: link, cache: GraphQLCache()));
      const line = AuditPlanLine(teamName: 'A', auditorIds: ['u1']);
      await gw.register(const AuditPlanInput(title: 't', standardId: 's1', lines: [line]));
      await gw.register(const AuditPlanInput(title: 't', standardId: 's1', lines: [line], departmentId: 'd1', stakeholderId: 'k1'));
      final calls = link.requests.where((r) => _op(r) == 'AuditPlanRegisterPageCall').toList();
      expect(calls.first.variables.containsKey('pDepartmentId'), isFalse);
      expect(calls.first.variables.containsKey('pStakeholderId'), isFalse);
      expect(calls.last.variables['pDepartmentId'], 'd1');
      expect(calls.last.variables['pStakeholderId'], 'k1');
    });

    test('登録は、DB の関数 audit_plan_register を呼ぶ(題名・詳細・チーム名は言語別の JSON、行は JSON の配列)', () async {
      final link = _FakeLink();
      final gw = GraphqlAuditPlanGateway(
        GraphQLClient(link: link, cache: GraphQLCache()),
        auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'h1'),
      );
      final id = await gw.register(
        AuditPlanInput(
          title: ' 年度監査 ',
          details: '計画',
          standardId: 's1',
          lines: [
            AuditPlanLine(teamName: 'チームA', auditorIds: const ['u1', 'u2'], scheduledAt: DateTime(2026, 12, 1, 9), expectedEndAt: DateTime(2026, 12, 1, 17)),
            const AuditPlanLine(teamName: 'チームB', auditorIds: ['u3']),
          ],
        ),
      );
      expect(id, 'audit-1');
      final v = link.requests.firstWhere((r) => _op(r) == 'AuditPlanRegisterPageCall').variables;
      expect(v['pTitles'], '{"ja":"年度監査"}');
      expect(v['pDetails'], '{"ja":"計画"}');
      expect(v['pAuditStdId'], 's1');
      expect(v['pStaffId'], 'st1');
      expect(jsonDecode(v['pLines'] as String), [
        {
          'team_names': {'ja': 'チームA'},
          'auditor_ids': ['u1', 'u2'],
          'scheduled_at': '2026-12-01T09:00:00.000',
          'expected_end_at': '2026-12-01T17:00:00.000',
        },
        {
          'team_names': {'ja': 'チームB'},
          'auditor_ids': ['u3'],
        },
      ]);
    });
  });
}

class _FakeLink extends Link {
  final List<Request> requests = [];

  Map<String, dynamic> _names(String v) => {
    'sharedDictionaryBySharedDictionaryNameId': {
      'value': {
        'nodes': [
          {'dictionaryValue': v},
        ],
      },
    },
  };

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'AuditPlanStdOptionPageRead' => {
        'allMstrAuditStds': {
          'nodes': [
            {'mstrAuditStdId': 's1', 'code': 'STD-01', 'labels': _names('内部監査標準')},
          ],
        },
      },
      'AuditPlanRegisterPageCall' => {
        'auditPlanRegister': {
          'transAudit': {'transAuditId': 'audit-1'},
        },
      },
      'AuditPlanStaffOptionPageRead' => {
        'allInfoStaffs': {
          'nodes': [
            {'infoStaffId': 'u1', 'code': 'E-01', 'labels': _names('田中')},
          ],
        },
      },
      _ => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'L', 'code': 'JA'},
          ],
        },
      },
    };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}
