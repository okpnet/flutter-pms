import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:organization/organization.dart';
import 'package:organization/organization_api.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser;

const _std = ApprovalPatternChoice(id: 'p-std', name: '標準(承認不要)');
const _qa = ApprovalPatternChoice(id: 'p-qa', name: '品質承認(2 段)');

Widget _app(InMemoryApprovalDefaultsGateway g) {
  final router = GoRouter(initialLocation: '/organization/approval-defaults', routes: const OrganizationModule().routes);
  return ProviderScope(
    overrides: [approvalDefaultsGatewayProvider.overrideWithValue(g)],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _open(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1300, 1500));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

Future<void> _choose(WidgetTester tester, String kind, String label) async {
  await tester.ensureVisible(find.byKey(Key('ad-$kind')));
  await tester.tap(find.byKey(Key('ad-$kind')));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label).last);
  await tester.pumpAndSettle();
}

String? _op(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

class _FakeLink extends Link {
  final List<Request> requests = [];

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final data = switch (_op(request)) {
      'ApprovalDefaultsPageRead' => {
        'allInfoApps': {
          'nodes': [
            {
              'infoAppId': 'app1',
              'documentApprovalPatternId': 'p-std',
              'orderApprovalPatternId': null,
              'purchaseApprovalPatternId': null,
              'unrecognizedApprovalPatternId': null,
              'shippingOrderApprovalPatternId': 'p-qa',
              'complaintApprovalPatternId': null,
              'disposalApprovalPatternId': null,
              'recurrencePreventionApprovalPatternId': null,
            },
          ],
        },
      },
      'ApprovalPatternOptionPageRead' => {
        'allMstrApprovalPatterns': {
          'nodes': [
            {
              'mstrApprovalPatternId': 'p-std',
              'labels': {
                'sharedDictionaryBySharedDictionaryNameId': {
                  'value': {
                    'nodes': [
                      {'dictionaryValue': '標準(承認不要)'},
                    ],
                  },
                },
              },
            },
            {'mstrApprovalPatternId': 'p-qa', 'labels': null},
          ],
        },
      },
      'ApprovalDefaultsPageEdit' => {
        'updateInfoAppByInfoAppId': {
          'infoApp': {'infoAppId': 'app1'},
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
  testWidgets('8 つの対象が並び、選んで保存すると取得元へ入る。文書が未設定のときは案内を出す', (tester) async {
    final g = InMemoryApprovalDefaultsGateway(choices: [_std, _qa]);
    await _open(tester, _app(g));
    for (final kind in approvalDefaultKinds) {
      expect(find.byKey(Key('ad-$kind')), findsOneWidget, reason: kind);
    }
    expect(find.byKey(const Key('ad-document-note')), findsOneWidget);
    expect(find.byKey(const Key('ad-unsaved')), findsNothing);

    await _choose(tester, 'document', '標準(承認不要)');
    await _choose(tester, 'order', '品質承認(2 段)');
    expect(find.byKey(const Key('ad-document-note')), findsNothing);
    expect(find.byKey(const Key('ad-unsaved')), findsOneWidget);

    await tester.tap(find.byKey(const Key('ad-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ad-saved')), findsOneWidget);
    expect(g.value.of('document'), 'p-std');
    expect(g.value.of('order'), 'p-qa');
    expect(g.value.of('purchase'), isNull);
    expect(find.byKey(const Key('ad-unsaved')), findsNothing);
  });

  testWidgets('「承認不要」を選ぶと null になる。「保存済みに戻す」で戻る', (tester) async {
    final g = InMemoryApprovalDefaultsGateway(
      value: const ApprovalDefaults({'document': 'p-std', 'order': 'p-qa'}),
      choices: [_std, _qa],
    );
    await _open(tester, _app(g));
    expect(find.text('品質承認(2 段)'), findsOneWidget); // 設定済みの値が選ばれている
    await _choose(tester, 'order', '承認不要(設定しない)');
    expect(find.byKey(const Key('ad-unsaved')), findsOneWidget);
    await tester.tap(find.byKey(const Key('ad-revert')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ad-unsaved')), findsNothing);
    expect(find.text('品質承認(2 段)'), findsOneWidget);

    await _choose(tester, 'order', '承認不要(設定しない)');
    await tester.tap(find.byKey(const Key('ad-save')));
    await tester.pumpAndSettle();
    expect(g.value.of('order'), isNull);
    expect(g.value.of('document'), 'p-std');
  });

  testWidgets('一覧に無い ID が設定されていても、消さずに残す', (tester) async {
    final g = InMemoryApprovalDefaultsGateway(value: const ApprovalDefaults({'purchase': 'gone'}), choices: [_std]);
    await _open(tester, _app(g));
    expect(find.text('(一覧に無いパターン) gone'), findsOneWidget);
    expect(find.byKey(const Key('ad-save')), findsOneWidget);
    expect(tester.widget<FilledButton>(find.byKey(const Key('ad-save'))).onPressed, isNull); // 変更が無ければ保存できない
  });

  testWidgets('承認パターンが無い・読み込みの失敗・保存の失敗は案内を出す', (tester) async {
    await _open(tester, _app(InMemoryApprovalDefaultsGateway()));
    expect(find.byKey(const Key('ad-empty')), findsOneWidget);

    await _open(tester, _app(InMemoryApprovalDefaultsGateway()..failing = true));
    expect(find.byKey(const Key('ad-load-failed')), findsOneWidget);

    final g = InMemoryApprovalDefaultsGateway(choices: [_std]);
    await _open(tester, _app(g));
    await _choose(tester, 'document', '標準(承認不要)');
    g.failing = true;
    await tester.tap(find.byKey(const Key('ad-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ad-save-failed')), findsOneWidget);
    expect(find.byKey(const Key('ad-unsaved')), findsOneWidget); // 保存できていない
  });

  test('遷移先はパスに変換できる', () {
    expect(const OrganizationModule().locationOf(const ApprovalDefaultsDestination()), '/organization/approval-defaults');
  });

  test('GraphQL 版: 読み込み(8 列)・選択肢(言語 ja の名称。名称が無ければ ID)', () async {
    final link = _FakeLink();
    final gw = GraphqlApprovalDefaultsGateway(GraphQLClient(link: link, cache: GraphQLCache()));
    final d = await gw.load();
    expect(d.of('document'), 'p-std');
    expect(d.of('shipping_order'), 'p-qa');
    expect(d.of('order'), isNull);
    final p = await gw.patterns();
    expect(p.map((e) => e.id), ['p-std', 'p-qa']);
    expect(p.first.name, '標準(承認不要)');
    expect(p.last.name, '');
    expect(link.requests.firstWhere((r) => _op(r) == 'ApprovalPatternOptionPageRead').variables['languageCodeId'], 'L');
  });

  test('GraphQL 版: 保存は 8 列をすべて送る(null も、キーを残したまま)。更新者つき', () async {
    final link = _FakeLink();
    final gw = GraphqlApprovalDefaultsGateway(
      GraphQLClient(link: link, cache: GraphQLCache()),
      auditUser: () async => const AuditUser(staffId: 'st1', staffHistoryId: 'sh1'),
    );
    await gw.save(const ApprovalDefaults({'document': 'p-std', 'recurrence_prevention': 'p-qa'}));
    final v = link.requests.singleWhere((r) => _op(r) == 'ApprovalDefaultsPageEdit').variables;
    expect(v['infoAppId'], 'app1'); // 保存の前に読み込んで、行の ID を覚える
    expect(v['documentApprovalPatternId'], 'p-std');
    expect(v['recurrencePreventionApprovalPatternId'], 'p-qa');
    for (final key in [
      'orderApprovalPatternId',
      'purchaseApprovalPatternId',
      'unrecognizedApprovalPatternId',
      'shippingOrderApprovalPatternId',
      'complaintApprovalPatternId',
      'disposalApprovalPatternId',
    ]) {
      expect(v.containsKey(key), isTrue, reason: key);
      expect(v[key], isNull, reason: key);
    }
    expect(v['updateUserId'], 'st1');
    expect(v['updateUserHistoryId'], 'sh1');
  });
}
