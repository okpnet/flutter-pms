// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_data_strategy.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///データレポジトリへのアクセスを提供
///WidgetのCloseで初期化する

@ProviderFor(gridDataStrategy)
final gridDataStrategyProvider = GridDataStrategyProvider._();

///データレポジトリへのアクセスを提供
///WidgetのCloseで初期化する

final class GridDataStrategyProvider
    extends
        $FunctionalProvider<
          QueryState<dynamic>?,
          QueryState<dynamic>?,
          QueryState<dynamic>?
        >
    with $Provider<QueryState<dynamic>?> {
  ///データレポジトリへのアクセスを提供
  ///WidgetのCloseで初期化する
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
  $ProviderElement<QueryState<dynamic>?> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  QueryState<dynamic>? create(Ref ref) {
    return gridDataStrategy(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QueryState<dynamic>? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QueryState<dynamic>?>(value),
    );
  }
}

String _$gridDataStrategyHash() => r'32ec44eaa443bee910eb7bb60807b6d42f38d0fb';
