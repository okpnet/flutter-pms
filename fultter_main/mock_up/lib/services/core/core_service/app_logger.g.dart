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
          AsyncValue<DefaultLoggerProvider>,
          DefaultLoggerProvider,
          FutureOr<DefaultLoggerProvider>
        >
    with
        $FutureModifier<DefaultLoggerProvider>,
        $FutureProvider<DefaultLoggerProvider> {
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
  $FutureProviderElement<DefaultLoggerProvider> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DefaultLoggerProvider> create(Ref ref) {
    return loggerService(ref);
  }
}

String _$loggerServiceHash() => r'09c0b014153f0e48c3de09f82ea4df2cef660fe6';
