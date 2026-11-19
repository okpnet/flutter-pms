// 画面の画像を出す確認用(通常の `flutter test` では実行しない)。
// 実行: 環境変数 PMS_SHOT_DIR に出力先を入れて `flutter test test/_shots_test.dart`(PowerShell: $env:PMS_SHOT_DIR='...')。
// 日本語の文字・記号は、Windows の NotoSansJP・Flutter の MaterialIcons を読み込んで描く(テストの既定の字形は四角になるため)。
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'support/example_harness.dart';

final _out = Platform.environment['PMS_SHOT_DIR'] ?? '';

Future<void> _loadFont(String family, String path) async {
  final bytes = await File(path).readAsBytes();
  final loader = FontLoader(family)
    ..addFont(Future.value(ByteData.view(bytes.buffer)));
  await loader.load();
}

Future<void> _shot(WidgetTester tester, String name) async {
  await tester.runAsync(() async {
    final view = tester.binding.renderViews.first;
    final layer = view.debugLayer! as OffsetLayer;
    final size = view.size;
    final image = await layer.toImage(Offset.zero & size, pixelRatio: 1);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    await File('$_out/flutter_$name.png').writeAsBytes(data!.buffer.asUint8List());
  });
}

void main() {
  testWidgets('会社情報の画面を画像にする', skip: Platform.environment['PMS_SHOT_DIR'] == null, (tester) async {
    await tester.runAsync(() async {
      for (final f in ['Meiryo', 'Yu Gothic UI', 'Hiragino Sans', 'Roboto']) {
        await _loadFont(f, r'C:\Windows\Fonts\NotoSansJP-VF.ttf');
      }
      await _loadFont(
        'MaterialIcons',
        r'C:\flutterSDK\flutter\bin\cache\artifacts\material_fonts\materialicons-regular.otf',
      );
    });
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(1400, 1100);
    addTearDown(tester.view.reset);
    final h = await ExampleHarness.start(tester);
    await h.login('admin', 'admin-pass');
    const targets = {
      'company': '/e/company',
      'company_edit': '/e/company/aa62e8bc-0000-4000-8000-000000000001',
      'site': '/e/site',
      'site_edit': '/e/site/3791ee4e-0000-4000-8000-000000000001',
      'department': '/e/department',
      'department_edit': '/e/department/cf3da547-0000-4000-8000-000000000001',
      'workcalendar': '/e/workcalendar',
      'settings': '/settings',
      'approval': '/e/approvalpattern',
      'approval_edit': '/e/approvalpattern/c1404734-0000-4000-8000-000000000001',
    };
    for (final e in targets.entries) {
      await h.go(e.value);
      await h.settle();
      await _shot(tester, e.key);
    }
  });
}
