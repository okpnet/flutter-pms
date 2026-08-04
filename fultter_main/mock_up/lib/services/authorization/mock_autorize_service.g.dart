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
    extends $NotifierProvider<MockAutorizeService, AuthStateType> {
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
  Override overrideWithValue(AuthStateType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthStateType>(value),
    );
  }
}

String _$mockAutorizeServiceHash() =>
    r'e4856f44364b5a11c252d0273f1ccc8ca6119079';

abstract class _$MockAutorizeService extends $Notifier<AuthStateType> {
  AuthStateType build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AuthStateType, AuthStateType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthStateType, AuthStateType>,
              AuthStateType,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
