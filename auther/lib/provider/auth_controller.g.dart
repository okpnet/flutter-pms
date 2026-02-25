// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AuthController)
final authControllerProvider = AuthControllerProvider._();

final class AuthControllerProvider
    extends $NotifierProvider<AuthController, AuthStateType> {
  AuthControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authControllerHash();

  @$internal
  @override
  AuthController create() => AuthController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthStateType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthStateType>(value),
    );
  }
}

String _$authControllerHash() => r'41434b000d9605787a97d367070379c2689ac122';

abstract class _$AuthController extends $Notifier<AuthStateType> {
  AuthStateType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AuthStateType, AuthStateType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AuthStateType, AuthStateType>,
              AuthStateType,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
