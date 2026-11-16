import 'package:feature_shared/feature_shared.dart' show localeProvider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:pms_app/services/services.dart' show rootRouterProvider;
import 'package:pms_app_example/virtual/example_overrides.dart';
import 'package:pms_app_example/virtual/virtual_server.dart';
import 'package:theme_lib/theme_lib.dart'
    show darkThemeProvider, lightThemeProvider, themeModeProvider;

/// 評価用の起動(pms_app の実物のルーター・セッション・各機能 + 仮想のサーバー)。
class ExampleHarness {
  ExampleHarness._(this.tester, this.server, this.container, this.picker, this.saver);

  final WidgetTester tester;
  final VirtualServer server;
  final ProviderContainer container;
  final VirtualFilePicker picker;
  final VirtualFileSaver saver;

  GoRouter get router => container.read(rootRouterProvider);

  /// 現在のパス(クエリを含む)。
  String get location =>
      router.state.uri.toString();

  static Future<ExampleHarness> start(
    WidgetTester tester, {
    Size size = const Size(1400, 1000),
  }) async {
    await tester.binding.setSurfaceSize(size);
    addTearDown(() => tester.binding.setSurfaceSize(null));
    final server = VirtualServer();
    final picker = VirtualFilePicker();
    final saver = VirtualFileSaver();
    final overrides = (await tester.runAsync(
      () => exampleOverrides(
        server,
        const NoopLoggerProvider(),
        picker: picker,
        saver: saver,
      ),
    ))!;
    final container = ProviderContainer(overrides: overrides);
    addTearDown(container.dispose);
    // テストの言語は日本語に固定する(実行環境が英語でも文字列を探せるように)
    container.read(localeProvider.notifier).set(const Locale('ja'));
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: Consumer(
          builder: (context, ref, _) => MaterialApp.router(
            routerConfig: ref.read(rootRouterProvider),
            theme: ref.watch(lightThemeProvider),
            darkTheme: ref.watch(darkThemeProvider),
            themeMode: ref.watch(themeModeProvider),
          ),
        ),
      ),
    );
    final h = ExampleHarness._(tester, server, container, picker, saver);
    await h.settle();
    return h;
  }

  /// 画面が落ち着くまで待つ(ダッシュボードなど、周期の処理があっても止まるように回数を絞る)。
  Future<void> settle([int frames = 20]) async {
    for (var i = 0; i < frames; i++) {
      await tester.pump(const Duration(milliseconds: 100));
    }
  }

  /// ログイン画面でログインする(仮想のサーバーのユーザー)。
  Future<void> login(String id, String password) async {
    await tester.enterText(find.byType(TextField).at(0), id);
    await tester.enterText(find.byType(TextField).at(1), password);
    await tester.tap(find.text('ログイン'));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await settle();
  }

  /// ルーターで移動する(アプリの中の `context.go` と同じ)。
  Future<void> go(String path) async {
    router.go(path);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 50)));
    await settle();
  }
}
