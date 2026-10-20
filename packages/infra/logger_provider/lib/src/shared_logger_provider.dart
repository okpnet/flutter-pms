import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'i_logger_provider.dart';
import 'noop_logger_provider.dart';

/// アプリと各ライブラリが共有する [ILoggerProvider] の Provider。
///
/// - アプリ: `loggerProvider.overrideWithValue(await DefaultLoggerProvider.fromConfig(...))`
/// - 各ライブラリ: `ref.watch(loggerProvider)` で受け取り、そのまま呼び出す。
///
/// 未登録の場合は何もしない [NoopLoggerProvider] を返すため、利用側で null 判定は不要。
final loggerProvider = Provider<ILoggerProvider>(
  (ref) => const NoopLoggerProvider(),
);
