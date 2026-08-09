// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_data_strategy.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///データレポジトリへのアクセスを提供

@ProviderFor(GridDataStrategy)
final gridDataStrategyProvider = GridDataStrategyProvider._();

///データレポジトリへのアクセスを提供
final class GridDataStrategyProvider
    extends $NotifierProvider<GridDataStrategy, QueryState<dynamic>?> {
  ///データレポジトリへのアクセスを提供
  GridDataStrategyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridDataStrategyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridDataStrategyHash();

  @$internal
  @override
  GridDataStrategy create() => GridDataStrategy();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QueryState<dynamic>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QueryState<dynamic>?>(value),
    );
  }
}

String _$gridDataStrategyHash() => r'583c3f2c43d122956a69dc342b7c0081f790d607';

///データレポジトリへのアクセスを提供

abstract class _$GridDataStrategy extends $Notifier<QueryState<dynamic>?> {
  QueryState<dynamic>? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<QueryState<dynamic>?, QueryState<dynamic>?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QueryState<dynamic>?, QueryState<dynamic>?>,
              QueryState<dynamic>?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
