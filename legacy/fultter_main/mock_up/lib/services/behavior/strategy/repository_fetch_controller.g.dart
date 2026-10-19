// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_fetch_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(repositoryFetchController)
final repositoryFetchControllerProvider = RepositoryFetchControllerFamily._();

final class RepositoryFetchControllerProvider<R>
    extends $FunctionalProvider<QueryState<R>, QueryState<R>, QueryState<R>>
    with $Provider<QueryState<R>> {
  RepositoryFetchControllerProvider._({
    required RepositoryFetchControllerFamily super.from,
  }) : super(
         argument: null,
         retry: null,
         name: r'repositoryFetchControllerProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$repositoryFetchControllerHash();

  @override
  String toString() {
    return r'repositoryFetchControllerProvider'
        '<${R}>'
        '()';
  }

  @$internal
  @override
  $ProviderElement<QueryState<R>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  QueryState<R> create(Ref ref) {
    return repositoryFetchController<R>(ref);
  }

  $R _captureGenerics<$R>($R Function<R>() cb) {
    return cb<R>();
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QueryState<R> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QueryState<R>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryFetchControllerProvider &&
        other.runtimeType == runtimeType &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, argument);
  }
}

String _$repositoryFetchControllerHash() =>
    r'15da5cc0a17f8bb3a00cb181787144ebf1a4ee5c';

final class RepositoryFetchControllerFamily extends $Family {
  RepositoryFetchControllerFamily._()
    : super(
        retry: null,
        name: r'repositoryFetchControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  RepositoryFetchControllerProvider<R> call<R>() =>
      RepositoryFetchControllerProvider<R>._(from: this);

  @override
  String toString() => r'repositoryFetchControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(QueryState<R> Function<R>(Ref ref) create) =>
      $FamilyOverride(
        from: this,
        createElement: (pointer) {
          final provider = pointer.origin as RepositoryFetchControllerProvider;
          return provider._captureGenerics(<R>() {
            provider as RepositoryFetchControllerProvider<R>;
            return provider.$view(create: create<R>).$createElement(pointer);
          });
        },
      );
}
