import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter_riverpod/misc.dart' show Override;

import '../../imports.dart';

/// 件数の元(暫定のモック)。当日出荷・進捗遅延・受注の件数と、区分・利害関係者のフィルタグループを持つ。
///
/// GraphQL の `totalCount`(`ShippingTodayPage`・`WorkPlanDelayPage`)を返す取得元ができたら、
/// `RepositoryCountSource`(`IDataRepository<int>`)へ置き換える。
class MockCountSource implements ICountSource {
  const MockCountSource(this.key, this.label, this.counts);

  @override
  final String key;

  @override
  final String label;

  /// フィルタの項目のキー(null は条件なし)→ 件数。
  final Map<String?, int> counts;

  @override
  List<CountFilterGroup> get groups => const [
    CountFilterGroup(
      key: 'kind',
      label: '区分',
      options: [
        CountFilterOption(key: 'product', label: '製品'),
        CountFilterOption(key: 'part', label: '部品'),
      ],
    ),
    CountFilterGroup(
      key: 'stakeholder',
      label: '利害関係者',
      options: [
        CountFilterOption(key: 'customer', label: '顧客'),
        CountFilterOption(key: 'supplier', label: '外部'),
      ],
    ),
  ];

  @override
  Future<int> count(CountFilterOption? option) async =>
      counts[option?.key] ?? counts[null] ?? 0;
}

const mockCountSources = <ICountSource>[
  MockCountSource('shippingToday', '当日出荷', {
    null: 12,
    'product': 7,
    'part': 5,
    'customer': 9,
    'supplier': 3,
  }),
  MockCountSource('workPlanDelay', '進捗遅延', {
    null: 4,
    'product': 3,
    'part': 1,
    'customer': 2,
    'supplier': 2,
  }),
  MockCountSource('order', '受注', {null: 40, 'product': 25, 'part': 15}),
];

/// 保存された配置が無いときの初期の配置(Full・1/2・1/4)。
List<CountContainerSpec> defaultDashboardLayout() => const [
  CountContainerSpec(
    id: 'full',
    size: CountContainerSize.full,
    tiles: [
      CountTileSpec(id: 'f1', sourceKey: 'shippingToday', groupKey: 'kind'),
      CountTileSpec(
        id: 'f2',
        sourceKey: 'workPlanDelay',
        groupKey: 'stakeholder',
      ),
      CountTileSpec(id: 'f3', sourceKey: 'order', groupKey: 'kind'),
    ],
  ),
  CountContainerSpec(
    id: 'half',
    size: CountContainerSize.half,
    tiles: [
      CountTileSpec(
        id: 'h1',
        sourceKey: 'shippingToday',
        groupKey: 'stakeholder',
      ),
      CountTileSpec(id: 'h2', sourceKey: 'workPlanDelay', groupKey: 'kind'),
    ],
  ),
  CountContainerSpec(
    id: 'quarter',
    size: CountContainerSize.quarter,
    tiles: [CountTileSpec(id: 'q1', sourceKey: 'order', groupKey: 'kind')],
  ),
];

/// ダッシュボードの件数の元(アプリが差し込む)。
List<Override> dashboardOverrides() => [
  countSourcesProvider.overrideWithValue(mockCountSources),
];
