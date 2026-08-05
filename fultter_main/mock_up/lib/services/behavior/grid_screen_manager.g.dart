// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_screen_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GridScreenManager)
final gridScreenManagerProvider = GridScreenManagerProvider._();

final class GridScreenManagerProvider
    extends $NotifierProvider<GridScreenManager, UndoRedoState<JsonMap>> {
  GridScreenManagerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridScreenManagerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridScreenManagerHash();

  @$internal
  @override
  GridScreenManager create() => GridScreenManager();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UndoRedoState<JsonMap> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UndoRedoState<JsonMap>>(value),
    );
  }
}

String _$gridScreenManagerHash() => r'd07cc196b4b275769fc5c59577656e7ec0ef92fe';

abstract class _$GridScreenManager extends $Notifier<UndoRedoState<JsonMap>> {
  UndoRedoState<JsonMap> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<UndoRedoState<JsonMap>, UndoRedoState<JsonMap>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UndoRedoState<JsonMap>, UndoRedoState<JsonMap>>,
              UndoRedoState<JsonMap>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
