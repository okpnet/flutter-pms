import '../../imports.dart';
import 'grid_screen_manager.dart';

part 'grid_is_dirty.g.dart';

@riverpod
bool gridIsDirty(Ref ref) {
  // managerの状態をwatchすることで、履歴が変わるたびにこのProviderも自動で再計算される
  final undoRedoState = ref.watch(gridScreenManagerProvider);
  return undoRedoState.accepts.isNotEmpty;
}
