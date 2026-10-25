/* 各プロジェクトの example(Windows 向けのビジュアルテスト)の main.dart・テスト・pubspec を書く。
   gen.js から呼ばれる。example の枠(windows/ など)は flutter create で作ったものを使う。 */
'use strict';

const fs = require('fs');
const path = require('path');

module.exports = function writeExamples({ PROJECTS, rootsOf, dependsOn, features, write, dq }) {
  const moduleClass = {
    ...Object.fromEntries(Object.entries(PROJECTS).map(([k, p]) => [k, `${p.cls}Module`])),
    shared_master: 'SharedMasterModule',
  };

  for (const pkg of Object.keys(rootsOf)) {
    const dir = path.join(features, pkg, 'example');
    if (!fs.existsSync(path.join(dir, 'pubspec.yaml'))) continue;

    const roots = rootsOf[pkg];
    const deps = new Set(dependsOn[pkg]);
    if (pkg === 'sales') deps.add('shared_master'); // 受注の配送区分の選択肢
    const mods = [pkg, ...[...deps].sort()];
    const imports = mods.map((m) => `import 'package:${m}/${m}.dart';`);
    const entries = [];
    if (pkg === 'sales') {
      imports.push("import 'package:sales/sales_api.dart';");
      entries.push(
        "FeatureHostEntry('顧客台帳', CustomerListDestination())",
        "FeatureHostEntry('顧客を選択', CustomerPickerDestination())",
      );
    }
    for (const r of roots) {
      entries.push(`FeatureHostEntry(${dq(r.label)}, EntityListDestination(${dq(r.key)}))`);
    }
    const title = PROJECTS[pkg].title;
    const nl = '\n';

    const main = [
      "import 'package:feature_shared/feature_shared.dart';",
      "import 'package:flutter/material.dart';",
      "import 'package:logger_provider/logger_provider.dart';",
      ...imports.sort(),
      "import 'package:theme_lib/theme_lib.dart';",
      '',
      'Future<void> main() async {',
      '  WidgetsFlutterBinding.ensureInitialized();',
      '  final logger = await DefaultLoggerProvider.fromConfig(',
      '    const LoggerProviderConfig(),',
      '  );',
      '  runApp(ExampleApp(logger: logger));',
      '}',
      '',
      `/// ${title} を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。`,
      '/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。',
      'class ExampleApp extends StatelessWidget {',
      '  const ExampleApp({super.key, required this.logger});',
      '',
      '  final ILoggerProvider logger;',
      '',
      '  @override',
      '  Widget build(BuildContext context) => FeatureHost(',
      `    title: '${title} (example)',`,
      `    modules: const [${mods.map((m) => `${moduleClass[m]}()`).join(', ')}],`,
      `    entries: const [${entries.join(', ')}],`,
      '    logger: logger,',
      '    // flgtable_lib / theme_lib が使うテーマ側のロガー',
      '    overrides: [themeLoggerProvider.overrideWithValue(logger)],',
      '    themeOf: (ref) => ref.watch(lightThemeProvider),',
      '  );',
      '}',
      '',
    ].join(nl);
    write(path.join(dir, 'lib', 'main.dart'), main);

    const first = roots[0];
    const tapLabel = pkg === 'sales' ? '顧客台帳' : first.label;
    const expectText = pkg === 'sales' ? '東京精機' : first.first || first.label;
    const test = [
      "import 'package:flutter/material.dart' show Size;",
      "import 'package:flutter_test/flutter_test.dart';",
      "import 'package:logger_provider/logger_provider.dart';",
      `import 'package:${pkg}_example/main.dart';`,
      '',
      'void main() {',
      "  testWidgets('example が起動し、機能の台帳を開ける', (tester) async {",
      '    await tester.binding.setSurfaceSize(const Size(1200, 800));',
      '    addTearDown(() => tester.binding.setSurfaceSize(null));',
      '    await tester.pumpWidget(const ExampleApp(logger: NoopLoggerProvider()));',
      '    await tester.pumpAndSettle();',
      `    expect(find.text('${title} (example)'), findsOneWidget);`,
      `    await tester.tap(find.text(${dq(tapLabel)}));`,
      '    await tester.pumpAndSettle();',
      `    expect(find.text(${dq(expectText)}), findsWidgets);`,
      '  });',
      '}',
      '',
    ].join(nl);
    write(path.join(dir, 'test', 'widget_test.dart'), test);

    // pubspec に、同時に載せる機能のパスを足す
    const pubFile = path.join(dir, 'pubspec.yaml');
    let pub = fs.readFileSync(pubFile, 'utf8');
    for (const m of mods) {
      if (!new RegExp(`^  ${m}:`, 'm').test(pub)) {
        pub = pub.replace(/^dev_dependencies:/m, `  ${m}:${nl}    path: ../../${m}${nl}${nl}dev_dependencies:`);
      }
    }
    fs.writeFileSync(pubFile, pub);
  }
};
