// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_drag_drop_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(gridDragDropController)
final gridDragDropControllerProvider = GridDragDropControllerProvider._();

final class GridDragDropControllerProvider
    extends
        $FunctionalProvider<
          Raw<StreamController<TreeEvent<dynamic>>>,
          Raw<StreamController<TreeEvent<dynamic>>>,
          Raw<StreamController<TreeEvent<dynamic>>>
        >
    with $Provider<Raw<StreamController<TreeEvent<dynamic>>>> {
  GridDragDropControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridDragDropControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridDragDropControllerHash();

  @$internal
  @override
  $ProviderElement<Raw<StreamController<TreeEvent<dynamic>>>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Raw<StreamController<TreeEvent<dynamic>>> create(Ref ref) {
    return gridDragDropController(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Raw<StreamController<TreeEvent<dynamic>>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride:
          $SyncValueProvider<Raw<StreamController<TreeEvent<dynamic>>>>(value),
    );
  }
}

String _$gridDragDropControllerHash() =>
    r'c0d1422712ed3cff4f437c013d6da9f50531e3f3';
