// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_maintenance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///メンテナンスモード問い合わせモック

@ProviderFor(MockMaintenanceProvider)
final mockMaintenanceProviderProvider = MockMaintenanceProviderProvider._();

///メンテナンスモード問い合わせモック
final class MockMaintenanceProviderProvider
    extends $NotifierProvider<MockMaintenanceProvider, MaintenanceStatus> {
  ///メンテナンスモード問い合わせモック
  MockMaintenanceProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockMaintenanceProviderProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockMaintenanceProviderHash();

  @$internal
  @override
  MockMaintenanceProvider create() => MockMaintenanceProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MaintenanceStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MaintenanceStatus>(value),
    );
  }
}

String _$mockMaintenanceProviderHash() =>
    r'83f09e2f79e1e1c94adf3a426530a978eb7bed72';

///メンテナンスモード問い合わせモック

abstract class _$MockMaintenanceProvider extends $Notifier<MaintenanceStatus> {
  MaintenanceStatus build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<MaintenanceStatus, MaintenanceStatus>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MaintenanceStatus, MaintenanceStatus>,
              MaintenanceStatus,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
