// 会社情報の概要の画面(画面案の「会社情報」)。サンプルの取得元で、概要・サマリ・事業所のタイル・部署の構成・提供を確認する。
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:organization/organization.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> _open(WidgetTester tester) async {
  tester.view.devicePixelRatio = 1.0;
  tester.view.physicalSize = const Size(1400, 2400);
  addTearDown(tester.view.reset);
  await tester.pumpWidget(
    FeatureHost(
      title: '会社情報',
      modules: const [OrganizationModule()],
      entries: const [FeatureHostEntry('会社情報へ', EntityListDestination('company'))],
      logger: const NoopLoggerProvider(),
      overrides: [themeLoggerProvider.overrideWithValue(const NoopLoggerProvider())],
    ),
  );
  await tester.pumpAndSettle();
  await tester.tap(find.text('会社情報へ'));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('会社の情報(DB の列)・サマリ・事業所のタイル・部署の構成・提供が、1 つの画面に出る', (tester) async {
    await _open(tester);
    // 会社の概要
    expect(find.byKey(const ValueKey('homeCompanyName')), findsOneWidget);
    expect(find.text('サンプル精工株式会社'), findsOneWidget);
    expect(find.text('山田 太郎'), findsOneWidget);
    // サマリ(件数)
    expect(find.byKey(const ValueKey('homeStaffCount')), findsOneWidget);
    expect(find.byKey(const ValueKey('homeSiteCount')), findsOneWidget);
    expect(find.byKey(const ValueKey('homeDepartmentCount')), findsOneWidget);
    // 事業所のタイル(6 拠点)
    expect(find.byWidgetPredicate((w) => w.key.toString().contains('homeSite:')), findsNWidgets(6));
    expect(find.text('本社'), findsWidgets);
    // 部署の構成・提供
    expect(find.byKey(const ValueKey('homeDepartments')), findsOneWidget);
    expect(find.byKey(const ValueKey('homeOfferings')), findsOneWidget);
    expect(find.text('提供サービス・製品'), findsOneWidget);
    // 編集・一覧への入口
    expect(find.byKey(const ValueKey('homeCompanyEdit')), findsOneWidget);
    expect(find.byKey(const ValueKey('homeSitesEdit')), findsOneWidget);
    expect(find.byKey(const ValueKey('homeApprovalEdit')), findsOneWidget);
  });

  testWidgets('事業所のタイルを押すと、その事業所の編集の画面へ進み、戻るボタンで概要に戻る', (tester) async {
    await _open(tester);
    await tester.tap(find.byKey(const ValueKey('homeSite:3791ee4e-0000-4000-8000-000000000001')));
    await tester.pumpAndSettle();
    expect(find.text('事業所情報の編集'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('screenBack')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('homeCompanyName')), findsOneWidget);
  });
  testWidgets('会社の編集は、会社の項目だけ。提供・役職は、概要から開く独立したページ', (tester) async {
    await _open(tester);
    await tester.tap(find.byKey(const ValueKey('homeCompanyEdit')));
    await tester.pumpAndSettle();
    expect(find.text('会社情報の編集'), findsOneWidget);
    // 子の台帳(提供・役割)の枠を、会社の編集の下に並べない
    expect(find.text('提供'), findsNothing);
    expect(find.text('役割(役職)'), findsNothing);
    await tester.tap(find.byKey(const ValueKey('screenBack')));
    await tester.pumpAndSettle();
    // 概要の「役職」の件数から、役職の台帳へ
    await tester.tap(find.byKey(const ValueKey('homePositionCount')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('listTitle')), findsOneWidget);
    expect(find.text('役割(役職)の一覧'), findsOneWidget);
  });
}
