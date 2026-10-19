import 'package:trina_grid/trina_grid.dart';
import 'package:undo_redo/lib.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/src/lib/constants/constant.dart';

import '../../../undoredo/undo_redo.dart';
import 'grid_edit_behavior.dart';

///TrinaColumnのタイプ別にWidgetを管理
final class GridEditerRepository {
  ///UndoRedo状態管理
  ///Commitするときに追加する
  final IUndoRedoState _undoRedoState;

  ///タイプ別のWidget保管
  final Map<Type, IEditerInvoker> _registry = {};

  GridEditerRepository(IUndoRedoState undoRedoState)
    : _undoRedoState = undoRedoState;

  ///widgetの登録
  ///上書きできる
  void register<T extends TrinaColumnType>(GridEditBehavior<T> wrapper) {
    _registry[T] = ConcreteEditorInvoker<T>(wrapper);
  }

  /// ダイアログから呼ばれるWidget生成メソッド
  /// [context]ダイアログコンテキスト
  /// [parentModel]ダイアログがもつコピーされた編集モデルのMap参照
  /// [column]グリッドの列
  /// [initialValue]初期値
  Widget buildEditor({
    required BuildContext context,
    required JsonMap parentModel,

    ///ダイアログ
    required TrinaColumn column,
    required dynamic initialValue,
  }) {
    final type = column.type;
    final wrapper = _registry[type.runtimeType];
    if (wrapper == null) return Text('No ${type.runtimeType} type editor');

    return wrapper.invoke(
      context: context,
      typeInstance: type,
      initialValue: initialValue,
      field: column.field,
      title: column.title,
      // 💡 ここが最大のポイント：
      // プログラマが実行する `onCommit(newValue)` をキャプチャし、
      // ライブラリ側で自動的にUndoRedoコマンドを生成してPushする。
      onCommit: (newValue) {
        if (initialValue == newValue) return; // 変更がなければ何もしない

        // 前と後の状態からコマンドを作成（以前作成されたビヘイビアインターフェイスを通す）
        final command = ValueUndoCommand(
          currentValue: initialValue,
          valueToApply: newValue,
          execute: (value) => parentModel[column.field] = value,
        );

        // 隠蔽されたレポジトリに安全にPush
        _undoRedoState.push(command);
      },
    );
  }
}
