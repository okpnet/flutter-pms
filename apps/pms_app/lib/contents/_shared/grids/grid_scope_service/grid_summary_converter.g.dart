// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_summary_converter.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(resultConvert)
final resultConvertProvider = ResultConvertProvider._();

final class ResultConvertProvider
    extends
        $FunctionalProvider<
          GridSummaryConverter,
          GridSummaryConverter,
          GridSummaryConverter
        >
    with $Provider<GridSummaryConverter> {
  ResultConvertProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resultConvertProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resultConvertHash();

  @$internal
  @override
  $ProviderElement<GridSummaryConverter> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GridSummaryConverter create(Ref ref) {
    return resultConvert(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GridSummaryConverter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GridSummaryConverter>(value),
    );
  }
}

String _$resultConvertHash() => r'32555d7f1b50ba80da8962be79a005d26aa93ca4';
