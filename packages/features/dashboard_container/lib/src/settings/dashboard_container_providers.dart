import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';

import '../model/count_container_spec.dart';
import '../model/count_sources_provider.dart';
import 'dashboard_container_settings.dart';

/// ダッシュボードに置いたコンテナ。変更は設定として保存する。
final dashboardContainersProvider =
    NotifierProvider<DashboardContainersNotifier, List<CountContainerSpec>>(
      DashboardContainersNotifier.new,
    );

class DashboardContainersNotifier extends Notifier<List<CountContainerSpec>> {
  @override
  List<CountContainerSpec> build() => const [];

  DashboardContainerOriginator get _originator => DashboardContainerOriginator(
    read: () => state,
    apply: (containers) => state = containers,
  );

  /// 保存された配置を読み込む(ダッシュボードを表示するタイミングで呼ぶ)。保存が無いときは変えない。
  Future<bool> restore() =>
      ref.read(pageSettingsMediatorProvider).restore(_originator);

  /// 配置を置き換えて保存する(部品の追加・削除・並び替え・大きさ)。
  Future<void> replace(List<CountContainerSpec> containers) async {
    state = containers;
    await ref.read(pageSettingsMediatorProvider).save(_originator);
  }

  /// コンテナを末尾へ追加して保存する。
  Future<void> addContainer(CountContainerSpec container) =>
      replace([...state, container]);

  /// コンテナを削除して保存する。
  Future<void> removeContainer(String containerId) => replace([
    for (final c in state)
      if (c.id != containerId) c,
  ]);

  /// コンテナを [delta] だけ並び替えて保存する(-1 で前へ、1 で後ろへ)。範囲外は動かさない。
  Future<void> moveContainer(String containerId, int delta) {
    final list = [...state];
    final from = list.indexWhere((c) => c.id == containerId);
    final to = from + delta;
    if (from < 0 || to < 0 || to >= list.length) return Future.value();
    list.insert(to, list.removeAt(from));
    return replace(list);
  }

  /// コンテナの大きさを変えて保存する。
  Future<void> setSize(String containerId, CountContainerSize size) => replace([
    for (final c in state)
      if (c.id == containerId) c.copyWith(size: size) else c,
  ]);

  /// コンテナの項目(タイル)を置き換えて保存する。
  Future<void> setTiles(String containerId, List<CountTileSpec> tiles) =>
      replace([
        for (final c in state)
          if (c.id == containerId) c.copyWith(tiles: tiles) else c,
      ]);

  /// タイルの絞り込みの項目を変えて保存する。
  Future<void> selectOption({
    required String containerId,
    required String tileId,
    required String? optionKey,
  }) => replace([
    for (final c in state)
      if (c.id == containerId)
        c.copyWith(
          tiles: [
            for (final t in c.tiles)
              if (t.id == tileId) t.withOption(optionKey) else t,
          ],
        )
      else
        c,
  ]);
}

/// 件数を数える対象(件数の元・フィルタグループの項目)。
class CountQuery {
  const CountQuery({required this.sourceKey, this.groupKey, this.optionKey});

  factory CountQuery.of(CountTileSpec tile) => CountQuery(
    sourceKey: tile.sourceKey,
    groupKey: tile.groupKey,
    optionKey: tile.optionKey,
  );

  final String sourceKey;
  final String? groupKey;
  final String? optionKey;

  @override
  bool operator ==(Object other) =>
      other is CountQuery &&
      other.sourceKey == sourceKey &&
      other.groupKey == groupKey &&
      other.optionKey == optionKey;

  @override
  int get hashCode => Object.hash(sourceKey, groupKey, optionKey);
}

/// 件数。元が無いとき(`countSourcesProvider` に無い)は null。
final countProvider = FutureProvider.autoDispose.family<int?, CountQuery>((
  ref,
  query,
) async {
  final source = ref
      .watch(countSourcesProvider)
      .where((s) => s.key == query.sourceKey)
      .firstOrNull;
  if (source == null) return null;
  final option = source.groups
      .where((g) => g.key == query.groupKey)
      .firstOrNull
      ?.optionOf(query.optionKey);
  return source.count(option);
});
