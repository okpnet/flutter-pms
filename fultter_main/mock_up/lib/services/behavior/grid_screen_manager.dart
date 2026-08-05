import 'package:grid_lib/grid_lib.dart';
import 'package:mock_up/imports.dart';

part 'grid_screen_manager.g.dart';

@riverpod
class GridScreenManager extends _$GridScreenManager {
  @override
  UndoRedoState<JsonMap> build() => UndoRedoState<JsonMap>();

  Future<void> commit() async {
    // 1. 本来はここでリポジトリを介してDBやAPIへ保存
    // 2. 成功したら、現在のデータを「新しい初期データ」として同期
    await Future.delayed(Duration(seconds: 2));
    state.clearAll();
  }
}
