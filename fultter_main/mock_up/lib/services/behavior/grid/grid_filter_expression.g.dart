// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_filter_expression.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///TrinaGridのフィルタからQuery生成

@ProviderFor(GridFilterExpression)
final gridFilterExpressionProvider = GridFilterExpressionProvider._();

///TrinaGridのフィルタからQuery生成
final class GridFilterExpressionProvider
    extends
        $NotifierProvider<
          GridFilterExpression,
          IFilterExpressionAdapter<Map<String, dynamic>>
        > {
  ///TrinaGridのフィルタからQuery生成
  GridFilterExpressionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridFilterExpressionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridFilterExpressionHash();

  @$internal
  @override
  GridFilterExpression create() => GridFilterExpression();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
    IFilterExpressionAdapter<Map<String, dynamic>> value,
  ) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<IFilterExpressionAdapter<Map<String, dynamic>>>(
            value,
          ),
    );
  }
}

String _$gridFilterExpressionHash() =>
    r'e520359714a47209e2dfb6abd6dbdd114c642a0d';

///TrinaGridのフィルタからQuery生成

abstract class _$GridFilterExpression
    extends $Notifier<IFilterExpressionAdapter<Map<String, dynamic>>> {
  IFilterExpressionAdapter<Map<String, dynamic>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              IFilterExpressionAdapter<Map<String, dynamic>>,
              IFilterExpressionAdapter<Map<String, dynamic>>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                IFilterExpressionAdapter<Map<String, dynamic>>,
                IFilterExpressionAdapter<Map<String, dynamic>>
              >,
              IFilterExpressionAdapter<Map<String, dynamic>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
