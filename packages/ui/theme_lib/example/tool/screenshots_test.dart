// usage.md 用のスクリーンショットを生成する。
//   flutter test tool/screenshots_test.dart
// 日本語表示のため Windows のフォントを読み込む(無ければスキップ)。
import 'dart:io';
import 'dart:ui' as ui;

import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

const _outDir = '../doc/contents/images';
const _sdkFonts = 'C:/flutterSDK/flutter/bin/cache/artifacts/material_fonts';

Future<void> _loadFont(String family, String path) async {
  final bytes = await File(path).readAsBytes();
  final loader = FontLoader(family)
    ..addFont(Future.value(ByteData.sublistView(bytes)));
  await loader.load();
}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await _loadFont('MaterialIcons', '$_sdkFonts/materialicons-regular.otf');
    await _loadFont('Roboto', 'C:/Windows/Fonts/NotoSansJP-VF.ttf');
  });

  Future<void> shot(
    WidgetTester tester,
    String name, {
    required ThemeMode mode,
    String? themeId,
    bool importSample = false,
  }) async {
    debugDisableShadows = false; // テスト既定だと影が黒い実線になる
    await binding.setSurfaceSize(const Size(1280, 800));
    tester.view.devicePixelRatio = 1;
    addTearDown(() => binding.setSurfaceSize(null));

    final container = ProviderContainer(
      overrides: [themeLoggerProvider.overrideWithValue(_NullLogger())],
    );
    addTearDown(container.dispose);
    final manager = container.read(themeManagerProvider.notifier)
      ..setMode(mode);
    if (importSample) manager.importJson(sampleThemeJson);
    if (themeId != null) manager.select(themeId);

    final key = GlobalKey();
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: RepaintBoundary(key: key, child: const ExampleApp()),
      ),
    );
    await tester.pumpAndSettle();
    await tester.runAsync(() async {
      final boundary =
          key.currentContext!.findRenderObject()! as RenderRepaintBoundary;
      final image = await boundary.toImage();
      final data = await image.toByteData(format: ui.ImageByteFormat.png);
      await File('$_outDir/$name.png').writeAsBytes(data!.buffer.asUint8List());
    });
    debugDisableShadows = true; // 不変条件のため元に戻す
  }

  testWidgets('light / default', (t) async {
    await shot(t, 'light-default', mode: ThemeMode.light);
  });
  testWidgets('dark / default', (t) async {
    await shot(t, 'dark-default', mode: ThemeMode.dark);
  });
  testWidgets('light / ocean', (t) async {
    await shot(t, 'light-ocean', mode: ThemeMode.light, themeId: 'ocean');
  });
  testWidgets('light / forest', (t) async {
    await shot(t, 'light-forest', mode: ThemeMode.light, themeId: 'forest');
  });
  testWidgets('light / imported sunset', (t) async {
    await shot(t, 'light-sunset', mode: ThemeMode.light, importSample: true);
  });
  testWidgets('dark / imported sunset', (t) async {
    await shot(t, 'dark-sunset', mode: ThemeMode.dark, importSample: true);
  });
}

class _NullLogger implements ILoggerProvider {
  @override
  int get level => 0;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void info(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void error(String message, {Object? ex, StackTrace? trace}) {}

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) {}
}
