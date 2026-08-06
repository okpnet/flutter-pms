// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_is_dirty.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///編集が確定されているかを[GridScreenManager]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする

@ProviderFor(gridIsDirty)
final gridIsDirtyProvider = GridIsDirtyProvider._();

///編集が確定されているかを[GridScreenManager]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする

final class GridIsDirtyProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  ///編集が確定されているかを[GridScreenManager]をとおして監視
  ///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
  ///編集ビュートップ(上位)でWachする
  GridIsDirtyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gridIsDirtyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gridIsDirtyHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return gridIsDirty(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$gridIsDirtyHash() => r'0bdb6d00ab5108e268c898af6266bb02654544e3';
