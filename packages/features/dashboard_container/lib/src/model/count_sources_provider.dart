import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'count_source.dart';

/// 件数の元の一覧。機能・アプリが提供して差し込む。既定は空。
final countSourcesProvider = Provider<List<ICountSource>>((ref) => const []);
