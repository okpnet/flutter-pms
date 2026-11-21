import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:quality_document/quality_document.dart';
import 'package:quality_document/quality_document_api.dart';

class _FakeLink extends Link {
  final List<Request> requests = [];
  Map<String, dynamic> Function(Request) respond = (_) => {};

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    return Stream.value(Response(data: respond(request), response: const {}));
  }
}

String? _name(Request r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;

Widget _app({required bool admin, InMemoryDocumentBodyGateway? gateway, String initial = '/quality-document/body?id=c1'}) {
  final g =
      gateway ??
      InMemoryDocumentBodyGateway(
        bodies: {'c1': const DocumentBody(contentId: 'c1', title: '適用範囲', markdown: '## 目的\n\nこの文書の目的。')},
      );
  final router = GoRouter(initialLocation: initial, routes: const QualityDocumentModule().routes);
  return ProviderScope(
    overrides: [
      documentBodyGatewayProvider.overrideWithValue(g),
      documentBodyIsAdminProvider.overrideWithValue(admin),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1280, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  test('遷移先はパスに変換できる', () {
    const m = QualityDocumentModule();
    expect(m.locationOf(const DocumentBodyDestination('c1')), '/quality-document/body?id=c1');
    expect(m.locationOf(const DocumentBodyDestination('c1', edit: true)), '/quality-document/body?id=c1&edit=1');
  });

  testWidgets('閲覧のみ: 本文が出て、編集の操作は出ない', (tester) async {
    await _pump(tester, _app(admin: false));
    expect(find.text('適用範囲'), findsWidgets);
    expect(find.byKey(const Key('body-view')), findsOneWidget);
    expect(find.byKey(const Key('body-edit')), findsNothing);
    expect(find.text('閲覧のみ'), findsOneWidget);
  });

  testWidgets('管理者: 編集して保存すると、取得元の本文が変わる', (tester) async {
    final g = InMemoryDocumentBodyGateway(
      bodies: {'c1': const DocumentBody(contentId: 'c1', title: '適用範囲', markdown: '元の本文')},
    );
    await _pump(tester, _app(admin: true, gateway: g));
    await tester.tap(find.byKey(const Key('body-edit')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('body-edit-mode')).hitTestable().first);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown').first);
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('body-edit-md')), '新しい本文');
    await tester.pump();
    await tester.tap(find.byKey(const Key('body-save')));
    await tester.pumpAndSettle();
    expect((await g.load('c1')).markdown, '新しい本文');
    expect(find.byKey(const Key('body-view')), findsOneWidget);
  });

  testWidgets('管理者: 変更が無いまま保存しても取得元は変わらない', (tester) async {
    await _pump(tester, _app(admin: true, initial: '/quality-document/body?id=c1&edit=1'));
    await tester.tap(find.byKey(const Key('body-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('body-view')), findsOneWidget);
  });

  testWidgets('見つからない本文は案内を出す', (tester) async {
    await _pump(tester, _app(admin: false, initial: '/quality-document/body?id=none'));
    expect(find.text('文書コンテンツが見つかりません。'), findsOneWidget);
  });

  test('GraphQL 版: 本文を読み、保存は ja の値だけを JSON の文字列で渡す', () async {
    final link = _FakeLink();
    link.respond = (r) {
      switch (_name(r)) {
        case 'DocumentBodyContent':
          return {
            'mstrDocumentContentByMstrDocumentContentId': {
              'mstrDocumentContentId': 'c1',
              'contents': 't1',
              'code': 'A',
              'titleText': {
                'sharedDictionaryBySharedDictionaryNameId': {
                  'value': {
                    'nodes': [
                      {'dictionaryValue': '適用範囲'},
                    ],
                  },
                },
              },
            },
          };
        case 'DocumentContentBodyPageRead':
          return {
            'allSharedTextValues': {
              'nodes': [
                {'sharedTextValueId': 'v1', 'sharedTextId': 't1', 'textValue': '本文'},
              ],
            },
          };
        case 'DocumentContentTextSavePageCall':
          return {
            'sharedTextSave': {
              'sharedText': {'sharedTextId': 't1'},
            },
          };
        default:
          return {
            'allSharedLanguageCodes': {
              'nodes': [
                {'sharedLanguageCodeId': 'lang-ja', 'code': 'JA'},
              ],
            },
          };
      }
    };
    final gw = GraphqlDocumentBodyGateway(GraphQLClient(link: link, cache: GraphQLCache()));
    final b = await gw.load('c1');
    expect(b.title, '適用範囲');
    expect(b.markdown, '本文');

    await gw.save('c1', '# 新');
    final save = link.requests.firstWhere((r) => _name(r) == 'DocumentContentTextSavePageCall');
    expect(save.variables['pTextId'], 't1');
    expect(jsonDecode(save.variables['pValues'] as String), {'ja': '# 新'});
  });

  test('GraphQL 版: 文書コンテンツが無ければ DocumentBodyNotFound', () async {
    final link = _FakeLink()
      ..respond = (r) => _name(r) == 'DocumentBodyContent'
          ? {'mstrDocumentContentByMstrDocumentContentId': null}
          : {
              'allSharedLanguageCodes': {
                'nodes': [
                  {'sharedLanguageCodeId': 'lang-ja', 'code': 'ja'},
                ],
              },
            };
    final gw = GraphqlDocumentBodyGateway(GraphQLClient(link: link, cache: GraphQLCache()));
    expect(gw.load('x'), throwsA(isA<DocumentBodyNotFound>()));
  });
}
