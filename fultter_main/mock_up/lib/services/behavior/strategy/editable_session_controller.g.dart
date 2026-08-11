// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editable_session_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可

@ProviderFor(EditableSessionController)
final editableSessionControllerProvider = EditableSessionControllerProvider._();

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可
final class EditableSessionControllerProvider
    extends $NotifierProvider<EditableSessionController, UndoTartgetStack> {
  ///編集に対するUndoRedoを提供する
  ///移動がある編集ビューの子で使用しても可
  EditableSessionControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'editableSessionControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$editableSessionControllerHash();

  @$internal
  @override
  EditableSessionController create() => EditableSessionController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UndoTartgetStack value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UndoTartgetStack>(value),
    );
  }
}

String _$editableSessionControllerHash() =>
    r'f3653619d7408cb228b9327d694f86c47f857104';

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可

abstract class _$EditableSessionController extends $Notifier<UndoTartgetStack> {
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
