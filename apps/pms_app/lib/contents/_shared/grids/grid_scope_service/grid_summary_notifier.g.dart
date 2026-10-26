// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_summary_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GridSummaryNotifier)
final gridSummaryProvider = GridSummaryNotifierProvider._();

final class GridSummaryNotifierProvider
    extends $NotifierProvider<GridSummaryNotifier, SummaryModel?> {
  GridSummaryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridSummaryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridSummaryNotifierHash();

  @$internal
  @override
  GridSummaryNotifier create() => GridSummaryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SummaryModel? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SummaryModel?>(value),
    );
  }
}

String _$gridSummaryNotifierHash() =>
    r'88ec4068633840afe78b671ffedc0a564e85e7ef';

abstract class _$GridSummaryNotifier extends $Notifier<SummaryModel?> {
  SummaryModel? build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<SummaryModel?, SummaryModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SummaryModel?, SummaryModel?>,
              SummaryModel?,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
