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

String _$authControllerHash() => r'e57a748e24378552754dd4a3bb8a4f7d456b9c45';

abstract class _$AuthController extends $Notifier<AuthStateType> {
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
