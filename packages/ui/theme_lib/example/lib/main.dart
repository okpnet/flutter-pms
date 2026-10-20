import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

/// 起動引数(スクリーンショット撮影用)。
///   --mode=(system/light/dark)  --theme=(テーマid)  --import=(JSONファイルのパス)
Future<void> main(List<String> args) async {
  final options = {
    for (final a in args.where((a) => a.startsWith('--') && a.contains('=')))
      a.substring(2, a.indexOf('=')): a.substring(a.indexOf('=') + 1),
  };

  final container = ProviderContainer(
    overrides: [themeLoggerProvider.overrideWithValue(_ConsoleLogger())],
  );
  final manager = container.read(themeManagerProvider.notifier);
  final importPath = options['import'];
  if (importPath != null) {
    manager.importJson(await File(importPath).readAsString());
  }
  final themeId = options['theme'];
  if (themeId != null) manager.select(themeId);
  final mode = options['mode'];
  if (mode != null) {
    manager.setMode(ThemeMode.values.firstWhere((m) => m.name == mode));
  }

  runApp(
    UncontrolledProviderScope(container: container, child: const ExampleApp()),
  );
}

/// アプリ全体で使う想定のロガー(実アプリでは DefaultLoggerProvider を差し込む)。
class _ConsoleLogger implements ILoggerProvider {
  @override
  int get level => 0;

  @override
  void debug(String message, {Object? ex, StackTrace? trace}) =>
      debugPrint('[D] $message');

  @override
  void info(String message, {Object? ex, StackTrace? trace}) =>
      debugPrint('[I] $message');

  @override
  void warn(String message, {Object? ex, StackTrace? trace}) =>
      debugPrint('[W] $message');

  @override
  void error(String message, {Object? ex, StackTrace? trace}) =>
      debugPrint('[E] $message');

  @override
  void fatal(String message, {Object? ex, StackTrace? trace}) =>
      debugPrint('[F] $message');
}

/// 取り込みダイアログの初期値になるサンプルテーマ。
const sampleThemeJson = '''{
  "schemaVersion": 1,
  "id": "sunset",
  "name": "Sunset",
  "light": {
    "seedColor": "#E65100",
    "colors": { "primary": "#D84315" }
  },
  "dark": { "seedColor": "#FF8A65" },
  "metrics": {
    "spacing": 8,
    "radius": 16,
    "fullRadius": 24,
    "borderWidth": 1.5,
    "buttonHeight": 52
  }
}''';

class ExampleApp extends ConsumerWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp(
    title: 'theme_lib example',
    debugShowCheckedModeBanner: false,
    theme: ref.watch(lightThemeProvider),
    darkTheme: ref.watch(darkThemeProvider),
    themeMode: ref.watch(themeModeProvider),
    home: const ExamplePage(),
  );
}

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('theme_lib example')),
    body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 300, child: ControlPanel()),
        const VerticalDivider(width: 1),
        const Expanded(child: Showcase()),
      ],
    ),
  );
}

/// モード・テーマの切り替えとJSONの取り込み・書き出し。
class ControlPanel extends ConsumerWidget {
  const ControlPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(themeManagerProvider);
    final manager = ref.read(themeManagerProvider.notifier);
    return ListView(
      padding: context.spaceField.all * 2,
      children: [
        Text('モード', style: context.textStyleMode(size: (t) => t.titleSmall)),
        SegmentedButton<ThemeMode>(
          segments: const [
            ButtonSegment(value: ThemeMode.system, label: Text('System')),
            ButtonSegment(value: ThemeMode.light, label: Text('Light')),
            ButtonSegment(value: ThemeMode.dark, label: Text('Dark')),
          ],
          selected: {state.mode},
          onSelectionChanged: (s) => manager.setMode(s.first),
        ),
        const SizedBox(height: 16),
        Text('テーマ', style: context.textStyleMode(size: (t) => t.titleSmall)),
        RadioGroup<String>(
          groupValue: state.activeId,
          onChanged: (id) => manager.select(id!),
          child: Column(
            children: [
              for (final t in state.themes.values)
                RadioListTile<String>(value: t.id, title: Text(t.name)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        FilledButton(
          onPressed: () => _import(context, manager),
          child: const Text('JSONを取り込む'),
        ).toPrimary(context),
        const SizedBox(height: 8),
        FilledButton(
          onPressed: () => _export(context, manager, state.activeId),
          child: const Text('JSONを書き出す'),
        ).toSecondary(context),
      ],
    );
  }

  Future<void> _import(BuildContext context, ThemeManager manager) async {
    final controller = TextEditingController(text: sampleThemeJson);
    final source = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('テーマJSONを貼り付け'),
        content: SizedBox(
          width: 480,
          child: TextField(controller: controller, maxLines: 16),
        ),
        actions: [
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('キャンセル'),
          ).toTertiary(context),
          FilledButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: const Text('取り込む'),
          ).toPrimary(context),
        ],
      ),
    );
    if (source == null || !context.mounted) return;
    try {
      manager.importJson(source);
    } on ThemeLibException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message)));
    }
  }

  Future<void> _export(
    BuildContext context,
    ThemeManager manager,
    String id,
  ) async {
    final json = manager.exportJson(id);
    await showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('書き出し: $id'),
        content: SizedBox(
          width: 480,
          child: SingleChildScrollView(child: SelectableText(json)),
        ),
        actions: [
          FilledButton(
            onPressed: () => Clipboard.setData(ClipboardData(text: json)),
            child: const Text('コピー'),
          ).toSecondary(context),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('閉じる'),
          ).toPrimary(context),
        ],
      ),
    );
  }
}

/// テーマが効くウィジェットの一覧。
class Showcase extends StatefulWidget {
  const Showcase({super.key});

  @override
  State<Showcase> createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  int _radio = 1;
  double _slider = 20;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: context.spaceField.all * 2,
      child: Wrap(
        spacing: 16,
        runSpacing: 16,
        children: [
          _card('ボタン', [
            FilledButton(
              onPressed: () {},
              child: const Text('Primary'),
            ).toPrimary(context),
            FilledButton(
              onPressed: () {},
              child: const Text('Secondary'),
            ).toSecondary(context),
            FilledButton(
              onPressed: () {},
              child: const Text('Tertiary'),
            ).toTertiary(context),
            Row(
              spacing: context.spacing,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ).toPrimary(context),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_outlined),
                ).toSecondary(context),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home_max_rounded),
                ).toTertiary(context),
              ],
            ),
          ]),
          _card('入力', [
            TextFormField(decoration: const InputDecoration(label: Text('名前'))),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('エラー'),
                errorText: '必須です',
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                label: Text('検索'),
                prefixIcon: Icon(Icons.search),
              ),
            ).toSearch(context),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(label: Text('選択')),
              items: const [
                DropdownMenuItem(value: '1', child: Text('項目1')),
                DropdownMenuItem(value: '2', child: Text('項目2')),
              ],
              onChanged: (_) {},
            ),
          ]),
          _card('チェック・ラジオ・スイッチ', [
            Row(
              children: [
                Checkbox(value: true, onChanged: (_) {}).toPrimary(context),
                Checkbox(value: false, onChanged: (_) {}).toPrimary(context),
                Checkbox(value: true, onChanged: (_) {}).toSecondary(context),
                Checkbox(value: false, onChanged: (_) {}).toSecondary(context),
                Checkbox(value: true, onChanged: (_) {}).toTertiary(context),
                Checkbox(value: false, onChanged: (_) {}).toTertiary(context),
              ],
            ),
            RadioGroup<int>(
              groupValue: _radio,
              onChanged: (v) => setState(() => _radio = v ?? 0),
              child: Column(
                children: const [
                  RadioListTile<int>(value: 1, title: Text('ラジオ1')),
                  RadioListTile<int>(value: 2, title: Text('ラジオ2')),
                ],
              ),
            ),
            SwitchListTile(
              value: true,
              onChanged: (_) {},
              title: const Text('スイッチ'),
            ),
            Slider(
              value: _slider,
              max: 50,
              divisions: 10,
              label: '$_slider',
              onChanged: (v) => setState(() => _slider = v),
            ),
          ]),
          _card('文字・区切り・展開', [
            Text(
              'Headline',
              style: context.textStyleMode(size: (t) => t.headlineSmall),
            ),
            Text('本文テキスト', style: context.textStyleMode()),
            Text(
              '補足の説明文',
              style: context.textStyleMode(color: TextColorStyleMode.secondary),
            ),
            Text(
              'エラーメッセージ',
              style: context.textStyleMode(color: TextColorStyleMode.error),
            ),
            const Divider(),
            const ExpansionTile(
              title: Text('ExpansionTile'),
              initiallyExpanded: true,
              children: [Text('中身')],
            ),
          ]),
        ],
      ),
    );
  }

  Widget _card(String title, List<Widget> children) => SizedBox(
    width: 340,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: context.spacing * 2,
          children: [
            Text(
              title,
              style: context.textStyleMode(size: (t) => t.titleMedium),
            ),
            ...children,
          ],
        ),
      ),
    ),
  );
}
