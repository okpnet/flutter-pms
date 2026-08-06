import '../../imports.dart';
import 'grid_screen_manager.dart';

part 'grid_is_dirty.g.dart';

///編集が確定されているかを[GridScreenManager]をとおして監視
///UndoRedoを行う編集できるビューが、編集確定していない際に移動をブロックするために使用する
///編集ビュートップ(上位)でWachする
@riverpod
bool gridIsDirty(Ref ref) {
  // managerの状態をwatchすることで、履歴が変わるたびにこのProviderも自動で再計算される
  final undoRedoState = ref.watch(gridScreenManagerProvider);
  return undoRedoState.hasDirty;
}
