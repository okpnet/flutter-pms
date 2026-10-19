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
    extends $NotifierProvider<AppStandardTime, AppTimeState> {
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

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppTimeState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppTimeState>(value),
    );
  }
}

String _$appStandardTimeHash() => r'77fcb4ad65dce1f0de299160f075e9eaa9595134';

abstract class _$AppStandardTime extends $Notifier<AppTimeState> {
  AppTimeState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AppTimeState, AppTimeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AppTimeState, AppTimeState>,
              AppTimeState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
