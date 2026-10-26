import 'editable_session_controller.dart';

import '../../../imports.dart';

part 'is_session_dirty.g.dart';

///編集が確定されているかを[EditableSessionController]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする
@riverpod
bool isSessionDirty(Ref ref) {
  // managerの状態をwatchすることで、履歴が変わるたびにこのProviderも自動で再計算される
  final undoRedoState = ref.watch(editableSessionControllerProvider);
  return undoRedoState.hasDirty;
}
