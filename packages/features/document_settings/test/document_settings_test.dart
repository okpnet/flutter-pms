import 'dart:convert';

import 'package:document_settings/document_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

Widget _app({required bool admin, InMemoryAppSettingsGateway? gateway}) {
  final g = gateway ?? InMemoryAppSettingsGateway();
  final router = GoRouter(
    initialLocation: DocumentSettingsPaths.home,
    routes: const DocumentSettingsModule().routes,
  );
  return ProviderScope(
    overrides: [
      documentSettingsGatewayProvider.overrideWithValue(g),
      documentSettingsIsAdminProvider.overrideWithValue(admin),
    ],
    child: MaterialApp.router(routerConfig: router),
  );
}

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1500, 1100));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

Offset _stampTopLeft(WidgetTester tester, [int i = 0]) => tester.getTopLeft(find.byKey(Key('stamp-preview-$i')));

TextEditingController _controller(WidgetTester tester, String key) =>
    tester.widget<TextField>(find.byKey(Key(key))).controller!;

void main() {
  testWidgets('標準の設定でプレビューが出る(右上に 2 つのスタンプ・ヘッダ・フッタの文字)', (tester) async {
    await _pump(tester, _app(admin: true));
    expect(find.byKey(const Key('ds-preview')), findsOneWidget);
    expect(find.byKey(const Key('stamp-preview-0')), findsOneWidget);
    expect(find.byKey(const Key('stamp-preview-1')), findsOneWidget);
    expect(find.text('QM-001'), findsWidgets); // ヘッダの右
    expect(find.text('1 / 2'), findsOneWidget); // フッタの中央
    expect(find.byKey(const Key('ds-unsaved')), findsNothing);
  });

  testWidgets('管理者でなければ閲覧のみ(保存は出ず、入力もできない)', (tester) async {
    await _pump(tester, _app(admin: false));
    expect(find.byKey(const Key('ds-readonly')), findsOneWidget);
    expect(find.byKey(const Key('ds-save')), findsNothing);
    // 入力欄は、押しても受け付けない(AbsorbPointer)
    final absorb = tester.widget<AbsorbPointer>(find.ancestor(of: find.byKey(const Key('f-stamp.position.offsetXmm')), matching: find.byType(AbsorbPointer)).first);
    expect(absorb.absorbing, isTrue);
  });

  testWidgets('位置を変えるとプレビューが動き、未保存の帯が出る。保存すると取得元へ入る', (tester) async {
    final g = InMemoryAppSettingsGateway();
    await _pump(tester, _app(admin: true, gateway: g));
    final before = _stampTopLeft(tester);
    await tester.enterText(find.byKey(const Key('f-stamp.position.offsetYmm')), '40');
    await tester.pumpAndSettle();
    expect(_stampTopLeft(tester).dy, greaterThan(before.dy)); // 上からの距離が増えた
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget);

    await tester.tap(find.byKey(const Key('ds-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-saved')), findsOneWidget);
    expect(g.saveCount, 1);
    final saved = g.value as Map;
    expect(((saved['stamp'] as Map)['position'] as Map)['offsetYmm'], 40);
    expect(saved['version'], 1);
    expect((saved['pdf'] as Map).keys, containsAll(['page', 'theme', 'header', 'footer']));
  });

  testWidgets('元に戻す・標準に戻す', (tester) async {
    final g = InMemoryAppSettingsGateway({
      'version': 1,
      'stamp': {
        'position': {'offsetYmm': 33},
      },
    });
    await _pump(tester, _app(admin: true, gateway: g));
    final saved = _stampTopLeft(tester);
    await tester.enterText(find.byKey(const Key('f-stamp.position.offsetYmm')), '5');
    await tester.pumpAndSettle();
    expect(_stampTopLeft(tester).dy, lessThan(saved.dy));
    await tester.tap(find.byKey(const Key('ds-revert')));
    await tester.pumpAndSettle();
    expect(_stampTopLeft(tester), saved);
    expect(_controller(tester, 'f-stamp.position.offsetYmm').text, '33');

    await tester.tap(find.byKey(const Key('ds-defaults')));
    await tester.pumpAndSettle();
    expect(_controller(tester, 'f-stamp.position.offsetYmm').text, '10');
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget); // 保存した 33 から変わった
  });

  testWidgets('基準を左上に変えると、スタンプが左へ移る。ページ 2 では出ない(先頭のページだけ)', (tester) async {
    await _pump(tester, _app(admin: true));
    final right = _stampTopLeft(tester).dx;
    await tester.tap(find.byKey(const Key('f-stamp.position.anchor-topRight')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('左上').last);
    await tester.pumpAndSettle();
    expect(_stampTopLeft(tester).dx, lessThan(right));

    await tester.tap(find.text('2 ページ目'));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('stamp-preview-0')), findsNothing);
  });

  testWidgets('重ね方を変えて保存すると、JSON の layer に入る(既定は background)', (tester) async {
    final g = InMemoryAppSettingsGateway();
    await _pump(tester, _app(admin: true, gateway: g));
    await tester.tap(find.byKey(const Key('f-stamp.layer-background')));
    await tester.pumpAndSettle();
    await tester.tap(find.text('本文の前').last);
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('ds-save')));
    await tester.pumpAndSettle();
    expect(((g.value as Map)['stamp'] as Map)['layer'], 'foreground');
  });

  testWidgets('表示項目の追加・削除がプレビューの行に反映される', (tester) async {
    await _pump(tester, _app(admin: true));
    expect(find.byKey(const Key('ds-item-2')), findsOneWidget);
    expect(find.text('田中 太郎'), findsOneWidget);
    await tester.ensureVisible(find.byKey(const Key('ds-item-remove-2')));
    await tester.tap(find.byKey(const Key('ds-item-remove-2'))); // 承認者の行を消す
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-item-2')), findsNothing);
    expect(find.text('田中 太郎'), findsNothing);

    await tester.ensureVisible(find.byKey(const Key('ds-item-add')));
    await tester.tap(find.byKey(const Key('ds-item-add')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-item-2')), findsOneWidget);
  });

  testWidgets('PDF: ヘッダの書式に変数を入れる(ボタンで挿入)と、プレビューのヘッダに出る', (tester) async {
    await _pump(tester, _app(admin: true));
    await tester.tap(find.text('PDF'));
    await tester.pumpAndSettle();
    final field = find.byKey(const Key('f-pdf.header.center'));
    await tester.ensureVisible(field);
    await tester.tap(field);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const Key('ds-var-chapter')));
    await tester.tap(find.byKey(const Key('ds-var-chapter')));
    await tester.pumpAndSettle();
    expect(_controller(tester, 'f-pdf.header.center').text, '{chapter}');
    expect(find.text('1. 目的'), findsOneWidget); // プレビューのヘッダの中央
    await tester.enterText(field, 'ヘッダ {title} p.{page}');
    await tester.pumpAndSettle();
    expect(find.text('ヘッダ 品質マニュアル p.1'), findsOneWidget);
  });

  testWidgets('PDF: 利用者の変数の追加', (tester) async {
    await _pump(tester, _app(admin: true));
    await tester.tap(find.text('PDF'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.byKey(const Key('ds-custom-add')));
    await tester.tap(find.byKey(const Key('ds-custom-add')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-custom-var2')), findsOneWidget); // company がある → var2
    expect(find.byKey(const Key('ds-var-var.var2')), findsOneWidget);
  });

  testWidgets('JSON: 反映するとフォームとプレビューが変わる。不正な JSON は誤りを示す', (tester) async {
    await _pump(tester, _app(admin: true));
    await tester.tap(find.text('JSON'));
    await tester.pumpAndSettle();
    final box = find.byKey(const Key('ds-json-0'));
    await tester.enterText(box, '{ broken');
    await tester.ensureVisible(find.byKey(const Key('ds-json-apply')));
    await tester.tap(find.byKey(const Key('ds-json-apply')));
    await tester.pumpAndSettle();
    expect(find.text('JSON として読めません。'), findsOneWidget);

    await tester.enterText(
      box,
      jsonEncode({
        'version': 1,
        'stamp': {
          'shape': {'kind': 'circle'},
          'position': {'anchor': 'bottomLeft'},
        },
      }),
    );
    await tester.ensureVisible(find.byKey(const Key('ds-json-apply')));
    await tester.tap(find.byKey(const Key('ds-json-apply')));
    await tester.pumpAndSettle();
    expect(find.text('JSON として読めません。'), findsNothing);
    expect(find.byKey(const Key('ds-unsaved')), findsOneWidget);
    // 左下に移った(用紙の下半分)
    expect(_stampTopLeft(tester).dy, greaterThan(tester.getCenter(find.byKey(const Key('page-preview'))).dy));
  });

  testWidgets('読み取れない項目は、標準の値で表示し、問題として一覧に出す', (tester) async {
    await _pump(
      tester,
      _app(
        admin: true,
        gateway: InMemoryAppSettingsGateway({
          'stamp': {
            'opacity': 'x',
            'shape': {'kind': 'hexagon'},
          },
        }),
      ),
    );
    expect(find.byKey(const Key('stamp-preview-0')), findsOneWidget); // 標準の値で出る
  });

  testWidgets('読み込みに失敗したら標準の設定と案内を出す。保存に失敗したら案内を出す', (tester) async {
    final g = InMemoryAppSettingsGateway()..failing = true;
    await _pump(tester, _app(admin: true, gateway: g));
    expect(find.byKey(const Key('ds-load-failed')), findsOneWidget);
    expect(find.byKey(const Key('stamp-preview-0')), findsOneWidget);
    await tester.enterText(find.byKey(const Key('f-stamp.position.offsetXmm')), '20');
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('ds-save')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('ds-save-failed')), findsOneWidget);
  });
}
