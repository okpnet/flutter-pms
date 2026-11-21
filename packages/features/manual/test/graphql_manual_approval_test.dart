import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gql/ast.dart' show OperationDefinitionNode;
import 'package:go_router/go_router.dart';
import 'package:graphql/client.dart';
import 'package:manual/manual.dart';
import 'package:approval_stamp/approval_stamp.dart' show AppSettings, StampAnchor, StampLayer, StampStyle;

class _FakeLink extends Link {
  final List<Request> requests = [];
  List<Map<String, dynamic>> publication = [];
  List<Map<String, dynamic>> steps = [];

  /// 承認パターンの様式の応答(null は、行が無い)。例外を入れると、様式の読み込みが失敗する。
  Object? style;
  bool styleFails = false;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);
    final op = request.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value;
    final data = switch (op) {
      'ManualLanguagePageRead' => {
        'allSharedLanguageCodes': {
          'nodes': [
            {'sharedLanguageCodeId': 'L', 'code': 'ja'},
            {'sharedLanguageCodeId': 'E', 'code': 'en'},
          ],
        },
      },
      'ManualPublicationPageRead' => {
        'allVDocumentPublications': {'nodes': publication},
      },
      'ManualApprovalStampPageRead' => {
        'allVDocumentApprovalStamps': {'nodes': steps},
      },
      'ManualApprovalStylePageRead' => styleFails
          ? throw StateError('style failed')
          : {
              'allTransApprovalPatterns': {
                'nodes': [
                  if (style != null)
                    {
                      'transApprovalPatternId': 't1',
                      'mstrApprovalPatternId': 'm1',
                      'pattern': {'mstrApprovalPatternId': 'm1', 'stampStyle': style},
                    },
                ],
              },
            },
      _ => throw StateError('想定外の操作: $op'),
    };
    return Stream.value(Response(data: {'__typename': 'Query', ...data}, response: const {}));
  }
}

Map<String, dynamic> _label(String v) => {
  'sharedDictionaryBySharedDictionaryNameId': {
    'value': {
      'nodes': [
        {'dictionaryValue': v},
      ],
    },
  },
};

GraphqlManualApprovalSource _source(_FakeLink l, {String language = 'ja'}) =>
    GraphqlManualApprovalSource(ManualGraphqlClient(GraphQLClient(link: l, cache: GraphQLCache()), languageCode: language));

void main() {
  test('承認の状態: ビューの値をそのまま詰める(公開の判定を持たない)。段は順位順', () async {
    final l = _FakeLink()
      ..publication = [
        {
          'mstrDocumentId': 'd1',
          'controlNumber': 'QM-001',
          'versionCode': 'A',
          'published': false,
          'pending': true,
          'readable': true,
          'stampVisible': true,
          'stampLabelJa': '承認待ち',
          'stampLabelEn': 'Pending',
        },
      ]
      ..steps = [
        {
          'approved': false,
          'rejected': false,
          'pending': true,
          'approvalPriority': 2,
          'stampLabelJa': '承認待ち',
          'stampLabelEn': 'Pending',
          'approval': {'labels': _label('品質責任者')},
        },
        {
          'approved': true,
          'rejected': false,
          'pending': false,
          'approvalPriority': 1,
          'approvedAt': '2026-11-20T10:00:00',
          'approved_staff': {'labels': _label('佐藤')},
          'approval': {'labels': _label('作成者')},
          'stampLabelJa': '承認',
          'stampLabelEn': 'Approval',
        },
      ];
    final a = await _source(l).of('d1');
    expect(a.published, isFalse);
    expect(a.pending, isTrue);
    expect(a.readable, isTrue);
    expect(a.statusLabel, '承認待ち');
    expect(a.controlNumber, 'QM-001');
    expect(a.versionCode, 'A');
    expect(a.steps.map((s) => s.priority), [1, 2]);
    expect(a.steps.first.approvedStaff, '佐藤');
    expect(a.steps.first.approvalName, '作成者');
    expect(a.steps.first.approved, isTrue);
  });

  Map<String, dynamic> pubRow() => {
    'transApprovalPatternId': 't1',
    'published': true,
    'pending': false,
    'readable': true,
    'stampVisible': true,
    'stampLabelJa': '承認',
    'stampLabelEn': 'Approval',
  };

  test('承認パターンごとのスタンプの様式: 承認の実行から元の承認パターンの stamp_style を読み、重ねる値として渡す', () async {
    final l = _FakeLink()
      ..publication = [pubRow()]
      ..style = {
        'position': {'anchor': 'bottomLeft'},
        'layer': 'foreground',
      };
    final a = await _source(l).of('d1');
    expect(a.stampStyleOverride, {
      'position': {'anchor': 'bottomLeft'},
      'layer': 'foreground',
    });
    // 標準に重ねる(書いた項目だけが標準を上書きする)
    final style = StampStyle.resolve(AppSettings.standard.stamp.toJson(), a.stampStyleOverride);
    expect(style.position.anchor, StampAnchor.bottomLeft);
    expect(style.position.offsetXmm, 10); // 書いていない項目は標準
    expect(style.layer, StampLayer.foreground);
    final request = l.requests.firstWhere((r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value == 'ManualApprovalStylePageRead');
    expect((request.variables['filter'] as Map)['transApprovalPatternId'], {'equalTo': 't1'});
  });

  test('様式が NULL(標準を使う)・行が無い・JSON の文字列・読み込みの失敗: 承認の状態は返し、様式は必要なときだけ', () async {
    final none = _FakeLink()..publication = [pubRow()];
    expect((await _source(none).of('d1')).stampStyleOverride, isNull); // 行が無い
    final nullStyle = _FakeLink()
      ..publication = [pubRow()]
      ..style = null;
    expect((await _source(nullStyle).of('d1')).stampStyleOverride, isNull);
    final asString = _FakeLink()
      ..publication = [pubRow()]
      ..style = '{"opacity":0.3}';
    expect((await _source(asString).of('d1')).stampStyleOverride, {'opacity': 0.3});
    final failing = _FakeLink()
      ..publication = [pubRow()]
      ..styleFails = true;
    final a = await _source(failing).of('d1');
    expect(a.published, isTrue); // 承認の状態は返る
    expect(a.stampStyleOverride, isNull); // 様式は標準
  });

  test('承認の実行が無い(承認不要)ときは、様式を読みにいかない', () async {
    final l = _FakeLink()..publication = [{...pubRow()}..remove('transApprovalPatternId')];
    expect((await _source(l).of('d1')).stampStyleOverride, isNull);
    expect(l.requests.where((r) => r.operation.document.definitions.whereType<OperationDefinitionNode>().first.name?.value == 'ManualApprovalStylePageRead'), isEmpty);
  });

  test('英語のときは、スタンプの文字も英語', () async {
    final l = _FakeLink()
      ..publication = [
        {'published': true, 'pending': false, 'readable': true, 'stampVisible': false, 'stampLabelJa': '承認', 'stampLabelEn': 'Approval'},
      ];
    final a = await _source(l, language: 'en').of('d1');
    expect(a.statusLabel, 'Approval');
    expect(a.steps, isEmpty); // スタンプを出さない(stamp_visible = false)
  });

  test('文書が無いときは、承認なし(公開)', () async {
    final a = await _source(_FakeLink()).of('none');
    expect(a.published, isTrue);
    expect(a.steps, isEmpty);
  });

  testWidgets('取得元が管理番号を要求するとき、ルートの作成に管理番号の欄が出て、空は断る', (tester) async {
    final repo = _RequiresNumberRepository();
    final router = GoRouter(initialLocation: '/manual', routes: const ManualModule().routes);
    await tester.binding.setSurfaceSize(const Size(1280, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          manualRepositoryProvider.overrideWithValue(repo),
          manualIsAdminProvider.overrideWithValue(true),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('manual-add-root')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-create-control-number')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('manual-create-name')), '新しい文書');
    await tester.tap(find.byKey(const Key('manual-create-ok')));
    await tester.pumpAndSettle();
    expect(find.text('管理番号を入力してください。'), findsOneWidget);
    await tester.enterText(find.byKey(const Key('manual-create-control-number')), 'QM-9');
    await tester.tap(find.byKey(const Key('manual-create-ok')));
    await tester.pumpAndSettle();
    expect(repo.lastControlNumber, 'QM-9');
  });

  testWidgets('本文を持たないルートの編集は、ページ名だけ(本文のエディタを出さない)', (tester) async {
    final repo = _RequiresNumberRepository(withRoot: true);
    final router = GoRouter(initialLocation: '/manual?id=r1&edit=1', routes: const ManualModule().routes);
    await tester.binding.setSurfaceSize(const Size(1280, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          manualRepositoryProvider.overrideWithValue(repo),
          manualIsAdminProvider.overrideWithValue(true),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('manual-edit-root-no-body')), findsOneWidget);
    expect(find.byKey(const Key('manual-edit-title')), findsOneWidget);
  });
}

/// 管理番号を要求し、ルートが本文を持たない取得元(DB 版と同じ条件。通信はしない)。
class _RequiresNumberRepository implements IManualRepository {
  _RequiresNumberRepository({bool withRoot = false})
    : _pages = [
        if (withRoot)
          ManualPageRecord(
            id: 'r1',
            parentId: null,
            order: 1,
            title: '文書',
            md: '',
            rev: 1,
            updatedBy: 'a',
            updatedAt: DateTime(2026, 11, 21),
          ),
      ];

  final List<ManualPageRecord> _pages;
  String? lastControlNumber;

  @override
  bool get rootHasBody => false;

  @override
  bool get requiresControlNumber => true;

  @override
  Future<List<ManualPageRecord>> list() async => List.of(_pages);

  @override
  Future<ManualPageRecord> create({
    required String? parentId,
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
    String? controlNumber,
  }) async {
    if (parentId == null && (controlNumber ?? '').isEmpty) {
      throw const ManualException(ManualError.controlNumberRequired);
    }
    lastControlNumber = controlNumber;
    final page = ManualPageRecord(
      id: 'n${_pages.length}',
      parentId: parentId,
      order: 1,
      title: title,
      md: md,
      rev: 1,
      updatedBy: updatedBy,
      updatedAt: DateTime(2026, 11, 21),
    );
    _pages.add(page);
    return page;
  }

  @override
  Future<ManualPageRecord> update(String id, {required String title, required String md, required String updatedBy, required bool isAdmin}) =>
      throw UnimplementedError();

  @override
  Future<ManualPageRecord> restore(String id, int rev, {required String updatedBy, required bool isAdmin}) => throw UnimplementedError();
}
