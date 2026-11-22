import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;
import 'package:quality/quality.dart';

Widget _app(IAuditNoticeSource source) {
  final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const Scaffold(body: AuditNoticeBanner())),
      GoRoute(path: '/quality/my-audits', builder: (context, state) => const Text('my-audits-page')),
      GoRoute(path: '/quality/audit-run', builder: (context, state) => Text('run-${state.uri.queryParameters['id']}')),
    ],
  );
  return ProviderScope(
    overrides: [auditNoticeSourceProvider.overrideWithValue(source)],
    child: MaterialApp.router(routerConfig: router),
  );
}

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Map<String, dynamic> _label(String v) => {
  'value': {
    'nodes': [
      {'labelValue': v},
    ],
  },
};

class _FakeLink extends Link {
  final List<Request> requests = [];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'AuditNotice' => {
        'auditNotice': {
          'nodes': [
            {'transAuditDetailsId': 'd2', 'scheduledAt': '2026-11-20T09:00:00', 'daysUntil': -3, 'isOverdue': true, 'isInProgress': false},
            {'transAuditDetailsId': 'd1', 'scheduledAt': '2026-12-03T09:00:00', 'daysUntil': 1, 'isOverdue': false, 'isInProgress': false},
          ],
        },
      },
      'AuditDetailPageRead' => {
        'allTransAuditDetails': {
          'nodes': [
            {'transAuditDetailsId': 'd1', 'labels': _label('第1製造棟')},
            {
              'transAuditDetailsId': 'd2',
              'labels': null,
              'audit': {'labels': _label('内部監査')},
            },
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

void main() {
  group('ダッシュボードの監査の通知', () {
    testWidgets('通知があるときだけ出し、件数・名称・日数を出す。行を押すと、その監査の実施へ', (tester) async {
      final source = InMemoryAuditNoticeSource([
        const AuditNotice(detailId: 'd1', title: '第1製造棟', daysUntil: 1),
        const AuditNotice(detailId: 'd2', title: '倉庫', daysUntil: -3, overdue: true),
        const AuditNotice(detailId: 'd3', title: '出荷', daysUntil: 0, inProgress: true),
        const AuditNotice(detailId: 'd9', title: '遠い予定', daysUntil: 30),
      ]);
      await tester.pumpWidget(_app(source));
      await tester.pumpAndSettle();
      expect(find.text('監査の予定が 3 件あります'), findsOneWidget); // 3 日より先の 1 件は含まない
      expect(find.textContaining('第1製造棟'), findsOneWidget);
      expect(find.textContaining('あと 1 日'), findsOneWidget);
      expect(find.textContaining('予定超過'), findsOneWidget);
      expect(find.textContaining('実施中'), findsOneWidget);
      expect(find.textContaining('遠い予定'), findsNothing);
      await tester.tap(find.byKey(const Key('audit-notice-d1')));
      await tester.pumpAndSettle();
      expect(find.text('run-d1'), findsOneWidget);
    });

    testWidgets('「自分の監査」へのリンクがある。多いときは一覧を 3 件に絞る', (tester) async {
      final source = InMemoryAuditNoticeSource([
        for (var i = 1; i <= 5; i++) AuditNotice(detailId: 'd$i', title: '監査$i', daysUntil: i % 3),
      ]);
      await tester.pumpWidget(_app(source));
      await tester.pumpAndSettle();
      expect(find.text('監査の予定が 5 件あります'), findsOneWidget);
      expect(find.byKey(const Key('audit-notice-d4')), findsNothing);
      await tester.tap(find.byKey(const Key('audit-notice-all')));
      await tester.pumpAndSettle();
      expect(find.text('my-audits-page'), findsOneWidget);
    });

    testWidgets('0 件のとき・取得に失敗したときは、何も出さない', (tester) async {
      await tester.pumpWidget(_app(InMemoryAuditNoticeSource()));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('audit-notice')), findsNothing);
      await tester.pumpWidget(_app(InMemoryAuditNoticeSource([const AuditNotice(detailId: 'd1', title: 'x')])..failing = true));
      await tester.pumpAndSettle();
      expect(find.byKey(const Key('audit-notice')), findsNothing);
    });
  });

  group('GraphQL 版', () {
    test('audit_notice を日数つきで呼び、名称は監査実施詳細から引く(詳細の名称が無いときは監査の名称)', () async {
      final link = _FakeLink();
      final src = GraphqlAuditNoticeSource(
        GraphQLClient(link: link, cache: GraphQLCache()),
        auditUser: () async => const AuditUser(staffId: 's', staffHistoryId: 'h'),
      );
      final list = await src.notices(daysBefore: 5);
      expect(link.requests.firstWhere((r) => _op(r) == 'AuditNotice').variables, {'days': 5});
      expect(link.requests.firstWhere((r) => _op(r) == 'AuditDetailPageRead').variables['filter'], {
        'transAuditDetailsId': {
          'in': ['d2', 'd1'],
        },
      });
      expect([for (final n in list) n.title], ['内部監査', '第1製造棟']);
      expect(list.first.overdue, isTrue);
      expect(list.first.daysUntil, -3);
      expect(list.last.daysUntil, 1);
    });

    test('ログインしていないとき(担当者が無い)は、通信せず空', () async {
      final link = _FakeLink();
      final src = GraphqlAuditNoticeSource(GraphQLClient(link: link, cache: GraphQLCache()));
      expect(await src.notices(), isEmpty);
      expect(link.requests, isEmpty);
    });
  });
}
