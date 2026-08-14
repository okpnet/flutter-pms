// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_standard_time.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppStandardTime)
final appStandardTimeProvider = AppStandardTimeProvider._();

final class AppStandardTimeProvider
    extends $AsyncNotifierProvider<AppStandardTime, AppTimeState> {
  AppStandardTimeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStandardTimeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStandardTimeHash();

  @$internal
  @override
  AppStandardTime create() => AppStandardTime();
}

String _$appStandardTimeHash() => r'15957d191613b30696fdf580c013a7d862b88dfd';

abstract class _$AppStandardTime extends $AsyncNotifier<AppTimeState> {
  FutureOr<AppTimeState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AppTimeState>, AppTimeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AppTimeState>, AppTimeState>,
              AsyncValue<AppTimeState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
