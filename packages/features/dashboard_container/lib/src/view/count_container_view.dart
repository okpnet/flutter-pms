import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../i18n/strings_provider.dart';
import '../model/count_container_spec.dart';
import '../model/count_source.dart';
import '../model/count_sources_provider.dart';
import '../settings/dashboard_container_providers.dart';

/// 件数のコンテナ。大きさ([CountContainerSize])に応じた数だけ、件数の項目を横に並べる
/// (Full は 3つ、1/2 は 2つ、1/4 は 1つ)。
class CountContainerView extends ConsumerWidget {
  const CountContainerView({super.key, required this.spec});

  final CountContainerSpec spec;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tiles = spec.visibleTiles;
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            for (final tile in tiles)
              Expanded(
                child: CountTileView(containerId: spec.id, tile: tile),
              ),
          ],
        ),
      ),
    );
  }
}

/// 件数の項目 1 つ。名前・レコード数の合計・対にするフィルタグループの選択。
class CountTileView extends ConsumerWidget {
  const CountTileView({
    super.key,
    required this.containerId,
    required this.tile,
  });

  final String containerId;
  final CountTileSpec tile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = ref.watch(dashboardContainerStringsProvider);
    final theme = Theme.of(context);
    final source = ref
        .watch(countSourcesProvider)
        .where((s) => s.key == tile.sourceKey)
        .firstOrNull;
    if (source == null) {
      return Text(t.unavailable, style: theme.textTheme.bodySmall);
    }
    final group = source.groups
        .where((g) => g.key == tile.groupKey)
        .firstOrNull;
    final count = ref.watch(countProvider(CountQuery.of(tile)));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          source.label,
          style: theme.textTheme.labelLarge,
          overflow: TextOverflow.ellipsis,
        ),
        count.when(
          data: (value) => Text(
            '${value ?? '-'}',
            key: ValueKey('count:${tile.id}'),
            style: theme.textTheme.headlineMedium,
          ),
          loading: () => Text(t.loading, style: theme.textTheme.bodySmall),
          error: (_, _) => Text(t.failed, style: theme.textTheme.bodySmall),
        ),
        if (group != null)
          _GroupSelector(
            containerId: containerId,
            tile: tile,
            group: group,
            allLabel: t.all,
            tooltip: t.filter,
          ),
      ],
    );
  }
}

/// フィルタグループの選択(「すべて」と各項目)。選んだ項目は設定として保存する。
class _GroupSelector extends ConsumerWidget {
  const _GroupSelector({
    required this.containerId,
    required this.tile,
    required this.group,
    required this.allLabel,
    required this.tooltip,
  });

  final String containerId;
  final CountTileSpec tile;
  final CountFilterGroup group;
  final String allLabel;
  final String tooltip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = group.optionOf(tile.optionKey);
    return PopupMenuButton<String?>(
      key: ValueKey('filter:${tile.id}'),
      tooltip: tooltip,
      onSelected: (optionKey) => ref
          .read(dashboardContainersProvider.notifier)
          .selectOption(
            containerId: containerId,
            tileId: tile.id,
            optionKey: optionKey,
          ),
      itemBuilder: (context) => [
        PopupMenuItem<String?>(value: null, child: Text(allLabel)),
        for (final o in group.options)
          PopupMenuItem<String?>(value: o.key, child: Text(o.label)),
      ],
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              '${group.label}: ${current?.label ?? allLabel}',
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(Icons.arrow_drop_down, size: 18),
        ],
      ),
    );
  }
}
