import 'dart:convert';

import 'package:flgtable_lib/flgtable_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

import 'feature_cases.dart';
import 'tree_cases.dart';

void main() {
  final logger = ConsoleLogger();
  runApp(
    ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(logger),
        themeLoggerProvider.overrideWithValue(logger),
      ],
      child: const ExampleApp(),
    ),
  );
}

/// サンプル用のコンソールロガー(実アプリでは DefaultLoggerProvider を差し込む)。
class ConsoleLogger implements ILoggerProvider {
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

class Person {
  Person(this.id, this.name, this.age, this.city);
  final int id;
  String name;
  int age;
  final String city;

  @override
  String toString() => 'Person($id)';
}

final people = [
  for (var i = 1; i <= 60; i++)
    Person(i, '社員$i', 20 + i % 30, const ['東京', '大阪', '名古屋'][i % 3]),
];

List<ColumnDefinition<Person>> baseColumns() => [
  ColumnDefinition<Person>(
    key: 'id',
    label: 'ID',
    getter: (p) => '${p.id}',
    width: 80,
  ),
  ColumnDefinition<Person>(
    key: 'name',
    label: '名前',
    getter: (p) => p.name,
    setter: (p, v) {
      p.name = v;
      return true;
    },
  ),
  ColumnDefinition<Person>(key: 'age', label: '年齢', getter: (p) => '${p.age}'),
  ColumnDefinition<Person>(key: 'city', label: '都市', getter: (p) => p.city),
];

class ExampleApp extends ConsumerWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => MaterialApp(
    title: 'flgtable_lib example',
    debugShowCheckedModeBanner: false,
    theme: ref.watch(lightThemeProvider),
    darkTheme: ref.watch(darkThemeProvider),
    themeMode: ref.watch(themeModeProvider),
    home: const ExamplePage(),
  );
}

/// 実装済みの各機能を1画面ずつ確認するページ。
class ExamplePage extends ConsumerWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(themeManagerProvider);
    final manager = ref.read(themeManagerProvider.notifier);
    final cases = <(String, Widget)>[
      ('基本表示(静的データ・縦スクロール)', const BasicCase()),
      ('非同期ローダーとローディング', const LoaderCase()),
      ('ローダーのエラー', const ErrorCase()),
      ('横スクロール(列合計が親より広い)', const WideCase()),
      ('親幅いっぱい(列が少ない)', const NarrowCase()),
      ('カスタムセル・取得失敗時の標準値', const CustomCellCase()),
      ('設定のJSON往復', const ConfigJsonCase()),
      ('ソート・フィルタ', const SortFilterCase()),
      ('ページネーション', const PaginationCase()),
      ('無限スクロール', const InfiniteCase()),
      ('行操作・選択・セル編集・イベント', const RowOperationCase()),
      ('ドラッグドロップ(2テーブル)', const DragDropCase()),
      ('グルーピング', const GroupingCase()),
      ('子テーブル', const ChildTableCase()),
      ('列固定', const FrozenCase()),
      ('モバイル表示', const MobileCase()),
      ('CSVエクスポート', const ExportCase()),
      ('ローディング種別', const LoadingKindCase()),
      ('セル配置・件数表示', const DisplayOptionsCase()),
      ('ツリー', const TreeCase()),
      ('取り消し/やり直し', const UndoCase()),
    ];
    return DefaultTabController(
      length: cases.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('flgtable_lib example'),
          actions: [
            ValueListenableBuilder<bool>(
              valueListenable: exampleEnglish,
              builder: (context, en, _) => TextButton(
                key: const Key('langToggle'),
                onPressed: () => exampleEnglish.value = !en,
                child: Text(en ? 'English' : '日本語'),
              ),
            ),
            DropdownButton<String>(
              value: state.activeId,
              items: [
                for (final t in state.themes.values)
                  DropdownMenuItem(value: t.id, child: Text(t.name)),
              ],
              onChanged: (id) => manager.select(id!),
            ),
            IconButton(
              tooltip: 'ライト/ダーク切替',
              icon: const Icon(Icons.brightness_6),
              onPressed: () => manager.setMode(
                state.mode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
              ),
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [for (final c in cases) Tab(text: c.$1)],
          ),
        ),
        body: ValueListenableBuilder<bool>(
          valueListenable: exampleEnglish,
          builder: (context, en, child) => LabelScope(
            labels: en ? TableLabels.english : const TableLabels(),
            child: child!,
          ),
          child: TabBarView(
            children: [
              for (final c in cases)
                Padding(padding: context.spaceField.all * 2, child: c.$2),
            ],
          ),
        ),
      ),
    );
  }
}

class BasicCase extends StatelessWidget {
  const BasicCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: baseColumns(),
    items: people,
  );
}

class LoaderCase extends StatelessWidget {
  const LoaderCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: baseColumns(),
    config: const TableConfig(pageSize: 20),
    loader: (q) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      final items = people.take(q.count ?? 50).toList();
      return LoadResult(
        items: items,
        totalCount: people.length,
        filteredCount: people.length,
        start: q.start ?? 0,
        count: items.length,
      );
    },
  );
}

class ErrorCase extends StatelessWidget {
  const ErrorCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: baseColumns(),
    loader: (q) async => throw Exception('読み込みに失敗しました'),
  );
}

class WideCase extends StatelessWidget {
  const WideCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: [
      for (var i = 0; i < 8; i++)
        ColumnDefinition<Person>(
          key: 'c$i',
          label: '列$i',
          getter: (p) => '${p.name}-$i',
        ),
    ],
    items: people,
  );
}

class NarrowCase extends StatelessWidget {
  const NarrowCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: [
      ColumnDefinition<Person>(
        key: 'id',
        label: 'ID',
        getter: (p) => '${p.id}',
        width: 80,
      ),
      ColumnDefinition<Person>(
        key: 'name',
        label: '名前',
        getter: (p) => p.name,
        width: 120,
      ),
    ],
    items: people.take(5).toList(),
    config: const TableConfig(rowHeight: 48),
  );
}

class CustomCellCase extends StatelessWidget {
  const CustomCellCase({super.key});

  @override
  Widget build(BuildContext context) => FlgTable<Person>(
    labels: LabelScope.of(context),
    columns: [
      ...baseColumns().take(2),
      ColumnDefinition<Person>(
        key: 'adult',
        label: 'カスタムセル',
        getter: (p) => p.age >= 40 ? 'ベテラン' : '若手',
        renderer: BuilderCellRenderer(
          (context, cell) => Chip(
            label: Text(cell.text),
            visualDensity: VisualDensity.compact,
          ),
        ),
      ),
      ColumnDefinition<Person>(
        key: 'bad',
        label: '取得失敗',
        getter: (p) => throw StateError('NG'),
        defaultValue: '(標準値)',
      ),
    ],
    items: people.take(10).toList(),
  );
}

/// 設定をJSONに書き出し、編集して適用(デシリアライズ)する。
class ConfigJsonCase extends StatefulWidget {
  const ConfigJsonCase({super.key});

  @override
  State<ConfigJsonCase> createState() => _ConfigJsonCaseState();
}

class _ConfigJsonCaseState extends State<ConfigJsonCase> {
  late final _controller = TextEditingController(
    text: const JsonEncoder.withIndent(
      '  ',
    ).convert(const TableConfig(rowHeight: 56).toJson()),
  );
  TableConfig _config = const TableConfig(rowHeight: 56);
  String? _error;

  void _apply() {
    try {
      final json = jsonDecode(_controller.text) as Map<String, dynamic>;
      setState(() {
        _config = TableConfig.fromJson(json);
        _error = null;
      });
    } catch (e) {
      setState(() => _error = '$e');
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        width: 280,
        child: Column(
          children: [
            TextField(
              key: const Key('configJson'),
              controller: _controller,
              maxLines: 8,
              decoration: InputDecoration(errorText: _error),
            ),
            FilledButton(
              key: const Key('applyConfig'),
              onPressed: _apply,
              child: const Text('適用'),
            ),
          ],
        ),
      ),
      const SizedBox(width: 16),
      Expanded(
        child: FlgTable<Person>(
          labels: LabelScope.of(context),
          key: ValueKey(jsonEncode(_config.toJson())),
          columns: baseColumns(),
          items: people.take(8).toList(),
          config: _config,
        ),
      ),
    ],
  );
}
