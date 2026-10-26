// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mock_autorize_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MockAutorizeService)
final mockAutorizeServiceProvider = MockAutorizeServiceProvider._();

final class MockAutorizeServiceProvider
    extends $NotifierProvider<MockAutorizeService, MockAuthState> {
  MockAutorizeServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'mockAutorizeServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$mockAutorizeServiceHash();

  @$internal
  @override
  MockAutorizeService create() => MockAutorizeService();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MockAuthState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MockAuthState>(value),
    );
  }
}

String _$mockAutorizeServiceHash() =>
    r'a13978f87c267b9516c1a3c046e357e89e8797d2';

abstract class _$MockAutorizeService extends $Notifier<MockAuthState> {
  MockAuthState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<MockAuthState, MockAuthState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<MockAuthState, MockAuthState>,
              MockAuthState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
