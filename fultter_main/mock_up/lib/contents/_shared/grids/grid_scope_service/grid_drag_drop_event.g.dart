// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_drag_drop_event.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gridDragDropListenable)
final gridDragDropListenableProvider = GridDragDropListenableProvider._();

final class GridDragDropListenableProvider
    extends
        $FunctionalProvider<
          Raw<Stream<TreeEvent<dynamic>>>,
          Raw<Stream<TreeEvent<dynamic>>>,
          Raw<Stream<TreeEvent<dynamic>>>
        >
    with $Provider<Raw<Stream<TreeEvent<dynamic>>>> {
  GridDragDropListenableProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridDragDropListenableProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridDragDropListenableHash();

  @$internal
  @override
  $ProviderElement<Raw<Stream<TreeEvent<dynamic>>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Raw<Stream<TreeEvent<dynamic>>> create(Ref ref) {
    return gridDragDropListenable(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<Stream<TreeEvent<dynamic>>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Raw<Stream<TreeEvent<dynamic>>>>(
        value,
      ),
    );
  }
}

String _$gridDragDropListenableHash() =>
    r'a94f4584ceb56257a6010f1b886f2bb78cebc1db';
