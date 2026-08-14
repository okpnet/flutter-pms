// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_overlay_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AppOverlayController)
final appOverlayControllerProvider = AppOverlayControllerProvider._();

final class AppOverlayControllerProvider
    extends $NotifierProvider<AppOverlayController, bool> {
  AppOverlayControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appOverlayControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appOverlayControllerHash();

  @$internal
  @override
  AppOverlayController create() => AppOverlayController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$appOverlayControllerHash() =>
    r'e01ae352e4c36ea3a71a55770d069dd0827a0bbe';

abstract class _$AppOverlayController extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
