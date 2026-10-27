import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'metric_source.dart';

/// 集計値の元の一覧。機能・アプリが提供して差し込む。既定は空。
final metricSourcesProvider = Provider<List<IMetricSource>>((ref) => const []);
