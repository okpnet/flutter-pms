// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_router.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///GoRouterのメイン
///[controller]は$appRoutesへのアクセスを提供するが、そのまま使用するとどのappRoutesを使用するかわからないため
///別名アクセスをしてコントローラーにアクセスしてappRoutesを使用する

@ProviderFor(rootRouter)
final rootRouterProvider = RootRouterProvider._();

///GoRouterのメイン
///[controller]は$appRoutesへのアクセスを提供するが、そのまま使用するとどのappRoutesを使用するかわからないため
///別名アクセスをしてコントローラーにアクセスしてappRoutesを使用する

final class RootRouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  ///GoRouterのメイン
  ///[controller]は$appRoutesへのアクセスを提供するが、そのまま使用するとどのappRoutesを使用するかわからないため
  ///別名アクセスをしてコントローラーにアクセスしてappRoutesを使用する
  RootRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rootRouterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rootRouterHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return rootRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$rootRouterHash() => r'19c2d67558e5978ecaab526b2b60154f0be52e08';
