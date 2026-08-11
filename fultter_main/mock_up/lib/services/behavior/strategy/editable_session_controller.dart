import 'package:mock_up/imports.dart';
import 'package:undo_redo/lib.dart';

part 'editable_session_controller.g.dart';

///編集に対するUndoRedoを提供する
///移動がある編集ビューの子で使用しても可
@riverpod
class EditableSessionController extends _$EditableSessionController {
  @override
  UndoTartgetStack build() => UndoTartgetStack();

  Future<void> commit() async {
    // 1. 本来はここでリポジトリを介してDBやAPIへ保存
    // 2. 成功したら、現在のデータを「新しい初期データ」として同期
    await Future.delayed(Duration(seconds: 2));
    state.clear();
  }
}
