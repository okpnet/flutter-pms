import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import '../model/count_container_spec.dart';
import '../model/count_source.dart';
import '../model/count_sources_provider.dart';
import '../settings/dashboard_container_providers.dart';

/// 配置の編集。コンテナと項目(タイル)の追加・削除、コンテナの並び替え・大きさを変える。
/// 変更はすぐに設定として保存する(`dashboardContainersProvider`)。
class DashboardContainerEditor extends ConsumerWidget {
  const DashboardContainerEditor({super.key});

  /// 1つのコンテナに並べられる項目の上限(Full で表示できる数)。
  static int get maxTiles => CountContainerSize.full.visibleTiles;

  static int _seq = 0;

  /// 識別子(コンテナ・項目)。保存した配置の識別子と重ならないよう、時刻を含める。
  static String newId(String prefix) =>
      '$prefix${DateTime.now().microsecondsSinceEpoch}-${_seq++}';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(dashboardContainerStringsProvider);
    final containers = ref.watch(dashboardContainersProvider);
    final sources = ref.watch(countSourcesProvider);
    final notifier = ref.read(dashboardContainersProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12,
      children: [
        if (containers.isEmpty) Text(t.edit.empty),
        for (final c in containers)
          _ContainerEditor(
            key: ValueKey('editor:${c.id}'),
            spec: c,
            sources: sources,
          ),
        Align(
          alignment: Alignment.centerLeft,
          child: FilledButton.icon(
            key: const ValueKey('addContainer'),
            icon: const Icon(Icons.add),
            label: Text(t.edit.addContainer),
            onPressed: sources.isEmpty
                ? null
                : () => notifier.addContainer(
                    CountContainerSpec(
                      id: newId('c'),
                      tiles: [
                        CountTileSpec(
                          id: newId('t'),
                          sourceKey: sources.first.key,
                          groupKey: sources.first.groups.firstOrNull?.key,
                        ),
                      ],
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

class _ContainerEditor extends ConsumerWidget {
  const _ContainerEditor({
    super.key,
    required this.spec,
    required this.sources,
  });

  final CountContainerSpec spec;
  final List<ICountSource> sources;

  String _sizeLabel(DashboardContainerStrings t, CountContainerSize s) =>
      switch (s) {
        CountContainerSize.full => t.edit.size.full,
        CountContainerSize.half => t.edit.size.half,
        CountContainerSize.quarter => t.edit.size.quarter,
      };

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(dashboardContainerStringsProvider);
    final notifier = ref.read(dashboardContainersProvider.notifier);
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: 8,
              children: [
                DropdownButton<CountContainerSize>(
                  key: ValueKey('size:${spec.id}'),
                  value: spec.size,
                  items: [
                    for (final s in CountContainerSize.values)
                      DropdownMenuItem(value: s, child: Text(_sizeLabel(t, s))),
                  ],
                  onChanged: (s) {
                    if (s != null) notifier.setSize(spec.id, s);
                  },
                ),
                const Spacer(),
                IconButton(
                  key: ValueKey('up:${spec.id}'),
                  tooltip: t.edit.moveUp,
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: () => notifier.moveContainer(spec.id, -1),
                ),
                IconButton(
                  key: ValueKey('down:${spec.id}'),
                  tooltip: t.edit.moveDown,
                  icon: const Icon(Icons.arrow_downward),
                  onPressed: () => notifier.moveContainer(spec.id, 1),
                ),
                IconButton(
                  key: ValueKey('delete:${spec.id}'),
                  tooltip: t.edit.delete,
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () => notifier.removeContainer(spec.id),
                ),
              ],
            ),
            for (var i = 0; i < spec.tiles.length; i++)
              _TileEditor(
                key: ValueKey('tile:${spec.tiles[i].id}'),
                containerId: spec.id,
                tiles: spec.tiles,
                index: i,
                visible: i < spec.size.visibleTiles,
                sources: sources,
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                key: ValueKey('addTile:${spec.id}'),
                icon: const Icon(Icons.add),
                label: Text(t.edit.addTile),
                onPressed:
                    sources.isEmpty ||
                        spec.tiles.length >= DashboardContainerEditor.maxTiles
                    ? null
                    : () => notifier.setTiles(spec.id, [
                        ...spec.tiles,
                        CountTileSpec(
                          id: DashboardContainerEditor.newId('t'),
                          sourceKey: sources.first.key,
                          groupKey: sources.first.groups.firstOrNull?.key,
                        ),
                      ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TileEditor extends ConsumerWidget {
  const _TileEditor({
    super.key,
    required this.containerId,
    required this.tiles,
    required this.index,
    required this.visible,
    required this.sources,
  });

  final String containerId;
  final List<CountTileSpec> tiles;
  final int index;
  final bool visible;
  final List<ICountSource> sources;

  CountTileSpec get tile => tiles[index];

  List<CountTileSpec> _replaced(CountTileSpec next) => [
    for (var i = 0; i < tiles.length; i++) i == index ? next : tiles[i],
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(dashboardContainerStringsProvider);
    final notifier = ref.read(dashboardContainersProvider.notifier);
    final source = sources.where((s) => s.key == tile.sourceKey).firstOrNull;
    final groups = source?.groups ?? const <CountFilterGroup>[];
    final groupKey = groups.any((g) => g.key == tile.groupKey)
        ? tile.groupKey
        : null;
    return Opacity(
      opacity: visible ? 1 : 0.5,
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Row(
          spacing: 8,
          children: [
            Expanded(
              child: DropdownButtonFormField<String>(
                key: ValueKey('source:${tile.id}'),
                initialValue: source?.key,
                decoration: InputDecoration(
                  labelText: t.edit.source,
                  helperText: visible ? null : t.edit.hiddenTile,
                ),
                items: [
                  for (final s in sources)
                    DropdownMenuItem(value: s.key, child: Text(s.label)),
                ],
                onChanged: (key) {
                  if (key == null) return;
                  final next = sources.firstWhere((s) => s.key == key);
                  notifier.setTiles(
                    containerId,
                    _replaced(
                      CountTileSpec(
                        id: tile.id,
                        sourceKey: key,
                        groupKey: next.groups.firstOrNull?.key,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: DropdownButtonFormField<String?>(
                key: ValueKey('group:${tile.id}:${tile.sourceKey}'),
                initialValue: groupKey,
                decoration: InputDecoration(labelText: t.edit.group),
                items: [
                  DropdownMenuItem<String?>(
                    value: null,
                    child: Text(t.edit.noGroup),
                  ),
                  for (final g in groups)
                    DropdownMenuItem<String?>(
                      value: g.key,
                      child: Text(g.label),
                    ),
                ],
                onChanged: (key) => notifier.setTiles(
                  containerId,
                  _replaced(
                    CountTileSpec(
                      id: tile.id,
                      sourceKey: tile.sourceKey,
                      groupKey: key,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              key: ValueKey('deleteTile:${tile.id}'),
              tooltip: t.edit.delete,
              icon: const Icon(Icons.close),
              onPressed: () => notifier.setTiles(containerId, [
                for (final x in tiles)
                  if (x.id != tile.id) x,
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
