import 'package:approval/approval.dart';
import 'package:approval/approval_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

class _Verifier implements IPasswordVerifier {
  _Verifier(this.password);
  final String password;
  final List<String> asked = [];
  bool throwing = false;

  @override
  Future<bool> verify(String p) async {
    asked.add(p);
    if (throwing) throw StateError('network');
    return p == password;
  }
}

List<PendingApproval> _sample() => [
      PendingApproval(preapprovalId: 'p-o1', kind: 'order', targetId: 'o1', reference: 'SO-1', subject: '北斗機械 受注', detail: '納期 2026-11-10', applicant: '小林 恵子', appliedAt: DateTime(2026, 10, 2), stepPriority: 1),
      PendingApproval(preapprovalId: 'p-o2', kind: 'order', targetId: 'o2', reference: 'SO-2', subject: 'みなと精密 受注', detail: '納期 2026-11-20', applicant: '吉田 裕子', appliedAt: DateTime(2026, 10, 8), stepPriority: 2, stepName: '部長'),
      PendingApproval(preapprovalId: 'p-s1', kind: 'shipping_order', targetId: 's1', reference: 'SP-1', subject: '出荷予定 SP-1', detail: '2026-11-08', applicant: '渡辺 真由美', appliedAt: DateTime(2026, 11, 5)),
      PendingApproval(preapprovalId: 'p-d1', kind: 'document', targetId: 'm4', subject: '工程管理(改訂 3)', detail: 'ページの改訂', applicant: '高橋 美咲', appliedAt: DateTime(2026, 11, 19)),
      PendingApproval(preapprovalId: 'p-c1', kind: 'complaint', targetId: 'c1', subject: '寸法不良', detail: '', applicant: '田中 誠', appliedAt: DateTime(2026, 10, 12)),
    ];

Widget _app({
  required InMemoryApprovalGateway gateway,
  required _Verifier verifier,
  String initial = '/approval/sales',
  Widget? home,
}) {
  final router = GoRouter(
    initialLocation: initial,
    routes: [
      ...const ApprovalModule().routes,
      GoRoute(path: '/dash', builder: (_, _) => Scaffold(body: home ?? const ApprovalAlertBanner())),
      GoRoute(path: '/target/:id', builder: (_, s) => Scaffold(body: Text('対象 ${s.pathParameters['id']}'))),
    ],
  );
  return ProviderScope(
    overrides: [
      approvalGatewayProvider.overrideWithValue(gateway),
      approvalPasswordVerifierProvider.overrideWithValue(verifier),
      approvalTargetLocatorProvider.overrideWithValue((kind, id) => kind == 'document' ? null : '/target/$id'),
      approvalClockProvider.overrideWithValue(() => DateTime(2026, 11, 21, 9, 5)),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1400, 900));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('営業の承認一覧: 区分ごとのタブ(件数つき)に、承認待ちの表が出る', (tester) async {
    await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw')));
    expect(find.text('営業 › 承認一覧'), findsOneWidget);
    expect(find.text('受注(2)'), findsOneWidget);
    expect(find.text('出荷(1)'), findsOneWidget);
    expect(find.byKey(const Key('approval-table-order')), findsOneWidget);
    expect(find.text('SO-1 北斗機械 受注'), findsOneWidget);
    expect(find.text('第1段階'), findsOneWidget);
    expect(find.text('第2段階 部長'), findsOneWidget);
    // 別のメニュー(文書・異常)の行は出ない
    expect(find.text('工程管理(改訂 3)'), findsNothing);
  });

  testWidgets('検索と並べ替え: 件名・内容・申請者で絞り込む', (tester) async {
    await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw')));
    await tester.enterText(find.byKey(const Key('approval-search')), '吉田');
    await tester.pumpAndSettle();
    expect(find.text('SO-2 みなと精密 受注'), findsOneWidget);
    expect(find.text('SO-1 北斗機械 受注'), findsNothing);
    await tester.enterText(find.byKey(const Key('approval-search')), '');
    await tester.pumpAndSettle();
    // 申請日の昇順(既定): SO-1(10/2)が先
    final first = tester.getTopLeft(find.text('SO-1 北斗機械 受注')).dy;
    final second = tester.getTopLeft(find.text('SO-2 みなと精密 受注')).dy;
    expect(first, lessThan(second));
    await tester.tap(find.text('申請日'));
    await tester.pumpAndSettle(); // 降順
    expect(tester.getTopLeft(find.text('SO-2 みなと精密 受注')).dy, lessThan(tester.getTopLeft(find.text('SO-1 北斗機械 受注')).dy));
  });

  testWidgets('行を押して選ぶ(複数可)。すべて選択・選択を解除。承認ボタンは選んだ件数つき。選択はタブごと', (tester) async {
    await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw')));
    FilledButton approve() => tester.widget<FilledButton>(find.byKey(const Key('approval-approve')));
    expect(approve().onPressed, isNull);
    await tester.tap(find.text('SO-1 北斗機械 受注'));
    await tester.pumpAndSettle();
    expect(find.text('承認する(1)'), findsOneWidget);
    await tester.tap(find.byKey(const Key('approval-select-all')));
    await tester.pumpAndSettle();
    expect(find.text('承認する(2)'), findsOneWidget);
    expect(find.text('2 件を選択中'), findsOneWidget);
    await tester.tap(find.text('出荷(1)'));
    await tester.pumpAndSettle();
    expect(find.text('承認する(0)'), findsOneWidget); // 出荷のタブは未選択
    await tester.tap(find.text('受注(2)'));
    await tester.pumpAndSettle();
    expect(find.text('承認する(2)'), findsOneWidget); // 戻ると受注の選択が残っている
    await tester.tap(find.byKey(const Key('approval-clear')));
    await tester.pumpAndSettle();
    expect(find.text('承認する(0)'), findsOneWidget);
  });

  testWidgets('承認: 内容を確認し、パスワードが違うとその場でエラー(承認は登録されない)。合っていれば登録して結果を出す', (tester) async {
    final gw = InMemoryApprovalGateway(_sample());
    final v = _Verifier('correct');
    await _pump(tester, _app(gateway: gw, verifier: v));
    await tester.tap(find.byKey(const Key('approval-select-all')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('approval-approve')));
    await tester.pumpAndSettle();
    expect(find.text('承認の確認'), findsOneWidget);
    expect(find.byKey(const Key('approval-confirm-table')), findsOneWidget);

    await tester.enterText(find.byKey(const Key('approval-password')), 'wrong');
    await tester.tap(find.byKey(const Key('approval-confirm')));
    await tester.pumpAndSettle();
    expect(find.text('パスワードが違います。承認は登録されていません。'), findsOneWidget);
    expect(gw.approveCalls, isEmpty);

    await tester.enterText(find.byKey(const Key('approval-password')), 'correct');
    await tester.tap(find.byKey(const Key('approval-confirm')));
    await tester.pumpAndSettle();
    expect(find.text('承認 2 件を登録しました。'), findsOneWidget);
    expect(find.text('承認日時: 2026/11/21 09:05'), findsOneWidget);
    expect(gw.approveCalls.single.toSet(), {'p-o1', 'p-o2'});

    await tester.tap(find.byKey(const Key('approval-close')));
    await tester.pumpAndSettle();
    // 承認した行は一覧から消え、タブの件数も減る
    expect(find.byKey(const Key('approval-empty')), findsOneWidget);
    expect(find.text('受注(0)'), findsOneWidget);
    expect(find.text('出荷(1)'), findsOneWidget);
  });

  testWidgets('一部が失敗(前の段階が未承認など)しても、他の行は承認され、失敗した行の理由が出る', (tester) async {
    final gw = InMemoryApprovalGateway(_sample())..failures['p-o2'] = '前の段階が承認されていません';
    await _pump(tester, _app(gateway: gw, verifier: _Verifier('pw')));
    await tester.tap(find.byKey(const Key('approval-select-all')));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('approval-approve')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('approval-password')), 'pw');
    await tester.tap(find.byKey(const Key('approval-confirm')));
    await tester.pumpAndSettle();
    expect(find.text('承認 1 件を登録しました。'), findsOneWidget);
    expect(find.text('1 件は承認できませんでした。'), findsOneWidget);
    expect(find.text('みなと精密 受注: 前の段階が承認されていません。'), findsOneWidget);
    await tester.tap(find.byKey(const Key('approval-close')));
    await tester.pumpAndSettle();
    expect(find.text('SO-2 みなと精密 受注'), findsOneWidget); // 失敗した行は残る
    expect(find.text('SO-1 北斗機械 受注'), findsNothing);
  });

  testWidgets('パスワードを確認できない(通信の失敗)ときは案内を出し、承認しない。キャンセルで閉じる', (tester) async {
    final gw = InMemoryApprovalGateway(_sample());
    final v = _Verifier('pw')..throwing = true;
    await _pump(tester, _app(gateway: gw, verifier: v));
    await tester.tap(find.text('SO-1 北斗機械 受注'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('approval-approve')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('approval-password')), 'pw');
    await tester.tap(find.byKey(const Key('approval-confirm')));
    await tester.pumpAndSettle();
    expect(find.text('パスワードを確認できませんでした。しばらくしてからやり直してください。'), findsOneWidget);
    expect(gw.approveCalls, isEmpty);
    await tester.tap(find.byKey(const Key('approval-cancel')));
    await tester.pumpAndSettle();
    expect(find.text('承認の確認'), findsNothing);
  });

  testWidgets('参照: 対象の画面へ移る(参照先が無い区分には出ない)', (tester) async {
    await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw')));
    await tester.tap(find.byKey(const Key('approval-refer-p-o1')));
    await tester.pumpAndSettle();
    expect(find.text('対象 o1'), findsOneWidget);
  });

  testWidgets('文書の承認一覧: 参照先が無い区分は、参照のボタンを出さない', (tester) async {
    await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw'), initial: '/approval/operations'));
    expect(find.text('文書(1)'), findsOneWidget);
    expect(find.byKey(const Key('approval-refer-p-d1')), findsNothing);
  });

  testWidgets('読み込みに失敗したら案内を出す', (tester) async {
    final gw = InMemoryApprovalGateway(_sample())..failingLoad = true;
    await _pump(tester, _app(gateway: gw, verifier: _Verifier('pw')));
    expect(find.byKey(const Key('approval-load-failed')), findsOneWidget);
  });

  group('ダッシュボードの通知', () {
    testWidgets('承認待ちが N 件あるとき、メニューごとの承認一覧へのリンク(区分ごとの件数つき)を出す。押すとその一覧へ', (tester) async {
      await _pump(tester, _app(gateway: InMemoryApprovalGateway(_sample()), verifier: _Verifier('pw'), initial: '/dash'));
      expect(find.text('承認待ちが 5 件あります'), findsOneWidget);
      expect(find.text('営業の承認一覧(受注(2)・出荷(1))'), findsOneWidget);
      expect(find.text('運用と改善の承認一覧(文書(1)・異常(1))'), findsOneWidget);
      expect(find.byKey(const Key('approval-alert-link-purchasing')), findsNothing); // 購買は 0 件
      await tester.tap(find.byKey(const Key('approval-alert-link-sales')));
      await tester.pumpAndSettle();
      expect(find.text('営業 › 承認一覧'), findsOneWidget);
    });

    testWidgets('0 件のときは出さない。承認すると件数が減る', (tester) async {
      final gw = InMemoryApprovalGateway([]);
      await _pump(tester, _app(gateway: gw, verifier: _Verifier('pw'), initial: '/dash'));
      expect(find.byKey(const Key('approval-alert')), findsNothing);
    });
  });

  test('モジュール: メニューは 4 グループの末尾の「承認一覧」。遷移先はパスに変換できる', () {
    const m = ApprovalModule();
    expect(m.locationOf(const ApprovalListDestination('sales')), '/approval/sales');
    expect(ApprovalMenus.menus, ['operations', 'sales', 'purchasing']);
    expect(ApprovalMenus.menuOf('shipping_order'), 'sales');
    expect(ApprovalMenus.menuOf('unrecognized'), 'purchasing');
    expect(ApprovalMenus.kindsOf('operations'), ['document', 'complaint', 'disposal', 'recurrence_prevention']);
    for (final d in approvalDestinationSamples) {
      expect(m.locationOf(d), isNotNull);
    }
  });
}
