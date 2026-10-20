import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger_provider/logger_provider.dart';

/// アプリ全体で共通のロガー。アプリ側が`overrideWithValue`で実体を差し込む。
///
/// Widgetは使わず`Ref`だけで解決できるため、`ProviderContainer`からも読める。
final commandLoggerProvider = Provider<ILoggerProvider>(
  (ref) => throw StateError(
    'commandLoggerProvider is not overridden. '
    'Override it with the application-wide ILoggerProvider.',
  ),
);
