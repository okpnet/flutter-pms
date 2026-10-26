// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_filter_expression.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///TrinaGridのフィルタRowからQuery生成する
///[R]の型に応じて生成する

@ProviderFor(gridFilterExpression)
final gridFilterExpressionProvider = GridFilterExpressionFamily._();

///TrinaGridのフィルタRowからQuery生成する
///[R]の型に応じて生成する

final class GridFilterExpressionProvider<R>
    extends
        $FunctionalProvider<
          IFilterExpressionAdapter<R>,
          IFilterExpressionAdapter<R>,
          IFilterExpressionAdapter<R>
        >
    with $Provider<IFilterExpressionAdapter<R>> {
  ///TrinaGridのフィルタRowからQuery生成する
  ///[R]の型に応じて生成する
  GridFilterExpressionProvider._({
    required GridFilterExpressionFamily super.from,
  }) : super(
         argument: null,
         retry: null,
         name: r'gridFilterExpressionProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$gridFilterExpressionHash();

  @override
  String toString() {
    return r'gridFilterExpressionProvider'
        '<${R}>'
        '()';
  }

  @$internal
  @override
  $ProviderElement<IFilterExpressionAdapter<R>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IFilterExpressionAdapter<R> create(Ref ref) {
    return gridFilterExpression<R>(ref);
  }

  $R _captureGenerics<$R>($R Function<R>() cb) {
    return cb<R>();
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IFilterExpressionAdapter<R> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IFilterExpressionAdapter<R>>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is GridFilterExpressionProvider &&
        other.runtimeType == runtimeType &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, argument);
  }
}

String _$gridFilterExpressionHash() =>
    r'ee4835813489704625eb8b7b15af626a147e2bad';

///TrinaGridのフィルタRowからQuery生成する
///[R]の型に応じて生成する

final class GridFilterExpressionFamily extends $Family {
  GridFilterExpressionFamily._()
    : super(
        retry: null,
        name: r'gridFilterExpressionProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ///TrinaGridのフィルタRowからQuery生成する
  ///[R]の型に応じて生成する

  GridFilterExpressionProvider<R> call<R>() =>
      GridFilterExpressionProvider<R>._(from: this);

  @override
  String toString() => r'gridFilterExpressionProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    IFilterExpressionAdapter<R> Function<R>(Ref ref) create,
  ) => $FamilyOverride(
    from: this,
    createElement: (pointer) {
      final provider = pointer.origin as GridFilterExpressionProvider;
      return provider._captureGenerics(<R>() {
        provider as GridFilterExpressionProvider<R>;
        return provider.$view(create: create<R>).$createElement(pointer);
      });
    },
  );
}
