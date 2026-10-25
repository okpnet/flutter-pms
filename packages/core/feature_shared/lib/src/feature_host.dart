import 'package:baton_lib/baton_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';

import 'command_bus_provider.dart';
import 'feature_module.dart';
import 'go_router_destination_navigator.dart';

/// 例題(example)の1行。押すと [destination] へ CommandBus 経由で遷移する。
class FeatureHostEntry {
  const FeatureHostEntry(this.label, this.destination);

  final String label;
  final PageDestination<Object?> destination;
}

/// 機能パッケージを単体で確認するための最小のアプリ(Windows 向けの example 用)。
///
/// 本番のアプリ(pms_app)と同じ配線(GoRouter・CommandBus・ハンドラ登録)で
/// 指定した [modules] だけを載せ、[entries] の遷移先を並べたホームを表示する。
///
/// パターン: Facade(アプリの配線を1つの Widget にまとめる)
class FeatureHost extends StatefulWidget {
  const FeatureHost({
    super.key,
    required this.title,
    required this.modules,
    required this.entries,
    this.overrides = const [],
    this.themeOf,
    this.logger,
  });

  final String title;
  final List<FeatureModule> modules;
  final List<FeatureHostEntry> entries;

  /// 機能が使うほかの Provider の差し替え(取得元のテスト実装など)。
  final List<Override> overrides;

  /// テーマ。省略時は Material の既定。
  final ThemeData Function(WidgetRef ref)? themeOf;

  /// 省略時は何も出力しない。
  final ILoggerProvider? logger;

  @override
  State<FeatureHost> createState() => _FeatureHostState();
}

class _FeatureHostState extends State<FeatureHost> {
  late final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>
            _HostHome(title: widget.title, entries: widget.entries),
      ),
      for (final module in widget.modules) ...module.routes,
    ],
  );

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final logger = widget.logger ?? const NoopLoggerProvider();
    return ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(logger),
        commandBusProvider.overrideWith((ref) {
          final registry = CommandHandlerRegistry();
          for (final module in widget.modules) {
            module.registerHandlers(registry, ref);
          }
          return DefaultCommandBus(
            handlers: registry,
            logger: ref.watch(loggerProvider),
            navigator: GoRouterDestinationNavigator(
              router: _router,
              modules: widget.modules,
            ),
          );
        }),
        ...widget.overrides,
      ],
      child: Consumer(
        builder: (context, ref, _) => MaterialApp.router(
          title: widget.title,
          debugShowCheckedModeBanner: false,
          theme: widget.themeOf?.call(ref),
          routerConfig: _router,
        ),
      ),
    );
  }
}

class _HostHome extends ConsumerWidget {
  const _HostHome({required this.title, required this.entries});

  final String title;
  final List<FeatureHostEntry> entries;

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
    appBar: AppBar(title: Text(title)),
    body: entries.isEmpty
        ? const Center(child: Text('まだ画面がありません'))
        : ListView(
            children: [
              for (final e in entries)
                ListTile(
                  title: Text(e.label),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () =>
                      ref.read(commandBusProvider).execute(e.destination),
                ),
            ],
          ),
  );
}
