import 'package:undo_redo/lib.dart';
import 'package:utility_widget/utiritiy_widget.dart';

///単一の[T]型を返すUndo/Redoを持つUndoStackを管理
///acceptで
class DataState<T> extends ChangeNotifier {
  ///変更を加えたリスト
  final List<T> accepts = [];

  /// UI が「何を戻すべきか」を知るためのイベント引数
  DataEvent<T>? _events;

  final UndoValueStack _stack = UndoValueStack();

  DataEvent<T>? get event => _events;

  ///初期化
  ///acceptしていない現在の情報はクリアされる
  void init(T stateValue) {
    clearAll();
    // notifyListeners();
  }

  ///変更認定
  void push(T value, IUndoCommand command) {
    if (!accepts.contains(value)) {
      accepts.add(value);
    }
    _stack.push(value, command);
    _events = DataEvent<T>(type: .observe, payload: value);
    notifyListeners();
  }

  ///変更があったインスタンスのリスト
  List<T> accept() => accepts.where((t) => _stack.hasValue(t)).toList();

  ///全部クリアする
  void clearAll() {
    accepts.clear();
    _stack.clear();
  }

  ///もどす
  void undo() {
    final undoValue = _stack.undo<T>();
    _events = DataEvent<T>(type: .undo, payload: undoValue!);
    notifyListeners();
  }

  ///すすむ
  void redo() {
    final redoValue = _stack.redo<T>();
    _events = DataEvent<T>(type: .redo, payload: redoValue!);
    notifyListeners();
  }
}

/// イベント引数
class DataEvent<T> {
  final DataEventType type;
  final T payload;

  DataEvent({required this.type, required this.payload});
}

enum DataEventType { undo, redo, observe }
