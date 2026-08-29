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
    extends $FunctionalProvider<AsyncValue<Logger>, Logger, FutureOr<Logger>>
    with $FutureModifier<Logger>, $FutureProvider<Logger> {
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
  $FutureProviderElement<Logger> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Logger> create(Ref ref) {
    return loggerService(ref);
  }
}

String _$loggerServiceHash() => r'7c2f3e30531de076974ed85c35c2b5bbf9993bda';
