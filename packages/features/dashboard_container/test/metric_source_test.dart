import 'package:dashboard_container/dashboard_container_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

class _Fixed implements IMetricSource {
  @override
  String get key => 'fixed';
  @override
  String get label => '固定';
  @override
  List<CountFilterGroup> get groups => const [];
  @override
  Future<MetricValue> metric(CountFilterOption? option) async =>
      const MetricValue(value: 3, unit: '人', breakdown: {'a': 1, 'b': 2});
}

void main() {
  test('集計値の元は既定で空で、差し込める', () async {
    expect(ProviderContainer().read(metricSourcesProvider), isEmpty);
    final container = ProviderContainer(
      overrides: [metricSourcesProvider.overrideWithValue([_Fixed()])],
    );
    addTearDown(container.dispose);
    final source = container.read(metricSourcesProvider).single;
    final value = await source.metric(null);
    expect(value.value, 3);
    expect(value.toJson(), {
      'value': 3,
      'unit': '人',
      'breakdown': {'a': 1, 'b': 2},
    });
  });
}
