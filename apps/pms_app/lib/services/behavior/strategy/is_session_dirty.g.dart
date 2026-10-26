// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'is_session_dirty.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///編集が確定されているかを[EditableSessionController]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする

@ProviderFor(isSessionDirty)
final isSessionDirtyProvider = IsSessionDirtyProvider._();

///編集が確定されているかを[EditableSessionController]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする

final class IsSessionDirtyProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  ///編集が確定されているかを[EditableSessionController]をとおして監視
  ///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
  ///編集ビュートップ(上位)でWachする
  IsSessionDirtyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isSessionDirtyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isSessionDirtyHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isSessionDirty(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isSessionDirtyHash() => r'c6c5200c09b25fc37becbb61772f7f9e43e73bde';
