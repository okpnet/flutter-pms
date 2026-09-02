// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_logger.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(loggerService)
final loggerServiceProvider = LoggerServiceProvider._();

final class LoggerServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<ILoggerProvider>,
          ILoggerProvider,
          FutureOr<ILoggerProvider>
        >
    with $FutureModifier<ILoggerProvider>, $FutureProvider<ILoggerProvider> {
  LoggerServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loggerServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loggerServiceHash();

  @$internal
  @override
  $FutureProviderElement<ILoggerProvider> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ILoggerProvider> create(Ref ref) {
    return loggerService(ref);
  }
}

String _$loggerServiceHash() => r'1b8939cfb01d7700eb55aec2e45e416caa277862';
