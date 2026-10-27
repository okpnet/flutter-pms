import 'count_source.dart';

/// 集計値(金額・人数・率など)。生成モデルの型は含めず、数値と単位と内訳だけを持つ値オブジェクト(Value Object)。
class MetricValue {
  const MetricValue({
    required this.value,
    this.unit = '',
    this.breakdown = const {},
  });

  /// 主値(合計・率など)。
  final num value;

  /// 単位(例: `人`・`円`・`%`)。
  final String unit;

  /// 内訳(ラベル → 値)。1/2以上の幅のコンテナで並べて表示する。
  final Map<String, num> breakdown;

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'value': value,
    'unit': unit,
    'breakdown': breakdown,
  };

  @override
  String toString() => 'MetricValue(${toJson()})';
}

/// 集計値の元(従業員数・売り上げ実績など)。機能が提供し、`metricSourcesProvider` で差し込む(Strategy)。
///
/// 件数の元([ICountSource])と並ぶ。フィルタグループ・選択肢は件数の元と同じものを使う。
abstract interface class IMetricSource {
  String get key;

  /// 項目の名前。
  String get label;

  /// 対にできるフィルタグループ。
  List<CountFilterGroup> get groups;

  /// 集計値。[option] が null のときは条件なし。
  Future<MetricValue> metric(CountFilterOption? option);
}
