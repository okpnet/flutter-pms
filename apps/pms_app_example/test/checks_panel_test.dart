import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/services.dart' show rootRouterProvider;
import 'package:pms_app_example/checks/checks_panel.dart';
import 'package:pms_app_example/checks/checks_store.dart';

import 'support/example_harness.dart';

/// 評価パネル(右端のオーバーレイ)。アプリの実物のルーターに重ねて、画面のパスの追従・保存を確認する。
void main() {
  testWidgets('パネル: 画面に対応する項目を出し、評価とコメントを履歴へ追記する。閉じていると操作をふさがない', (tester) async {
    final dir = Directory.systemTemp.createTempSync('checks_panel_');
    addTearDown(() => dir.deleteSync(recursive: true));
    File('${dir.path}/0001.md').writeAsStringSync(
      '---\nno: 1\n場所: ログイン\nパス: /auth/login\n状態: 未確認\n---\n\n## 基準\nログインできる\n\n## 履歴\n- (記録なし)\n',
    );
    final h = await ExampleHarness.start(tester);
    final key = GlobalKey();
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: h.container,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              RepaintBoundary(
                key: key,
                child: Consumer(
                  builder: (context, ref, _) => MaterialApp.router(routerConfig: ref.read(rootRouterProvider)),
                ),
              ),
              Positioned.fill(child: ChecksPanel(store: ChecksStore(dir), captureKey: key)),
            ],
          ),
        ),
      ),
    );
    await h.settle();

    // 閉じている間は、右端のタブだけ(アプリの入力欄は操作できる)
    expect(find.text('評価'), findsOneWidget);
    expect(find.text('画面の評価'), findsNothing);
    await tester.tap(find.text('評価'));
    await h.settle(3);
    expect(find.text('画面の評価'), findsOneWidget);
    expect(find.textContaining('いまの画面: /auth/login'), findsOneWidget);
    expect(find.text('ログインできる'), findsOneWidget);

    await tester.enterText(find.widgetWithText(TextField, 'コメント(複数行可)'), '1行目\n2行目');
    await tester.tap(find.text('保存(履歴に追記)'));
    await h.settle(3);

    final text = File('${dir.path}/0001.md').readAsStringSync();
    expect(text, contains('状態: 確認済'));
    expect(text, contains('1行目\n  2行目 → 確認済'));
    expect(text, contains('(画面: /auth/login)'));
    expect(find.text('No.1 に保存しました'), findsOneWidget);
  });

  testWidgets('パネル: アプリの起動前(ルーターが無い間)は、ルーターを作らず、落ちない', (tester) async {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final key = GlobalKey();
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              RepaintBoundary(key: key, child: const SizedBox()),
              Positioned.fill(child: ChecksPanel(store: null, captureKey: key)),
            ],
          ),
        ),
      ),
    );
    await tester.pump(const Duration(seconds: 2));
    expect(find.text('評価'), findsOneWidget);
    expect(container.exists(rootRouterProvider), isFalse);
    expect(tester.takeException(), isNull);
  });
}
