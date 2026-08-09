// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_screen_manager.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可

@ProviderFor(GridScreenManager)
final gridScreenManagerProvider = GridScreenManagerProvider._();

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可
final class GridScreenManagerProvider
    extends $NotifierProvider<GridScreenManager, UndoTartgetStack> {
  ///編集に対するUndoRedoを提供する
  ///移動がある編集ビューの子で使用しても可
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
  Override overrideWithValue(UndoTartgetStack value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UndoTartgetStack>(value),
    );
  }
}

String _$gridScreenManagerHash() => r'65c3e7a32309f729f4c1e8dc1cf088227c4d6794';

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可

abstract class _$GridScreenManager extends $Notifier<UndoTartgetStack> {
  UndoTartgetStack build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<UndoTartgetStack, UndoTartgetStack>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<UndoTartgetStack, UndoTartgetStack>,
              UndoTartgetStack,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
