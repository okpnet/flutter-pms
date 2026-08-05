import 'package:grid_lib/grid_lib.dart';
import 'package:mock_up/imports.dart';

part 'grid_screen_manager.g.dart';

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可
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
