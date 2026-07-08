import 'package:undo_redo/lib.dart' as undo_redo;
import 'package:utility_widget/utiritiy_widget.dart';

class DataState<T> extends ChangeNotifier {
  final List<T> accepts = [];
  T? _current;
  undo_redo.Stack? _stack;

  /// UI が「何を戻すべきか」を知るためのイベント引数
  final List<DataEvent<T>> events = [];

  ///初期化
  ///acceptしていない現在の情報はクリアされる
  void init(T stateValue, undo_redo.Command<T> initialization) {
    clearCurrent();
    _current = stateValue;
    _stack = undo_redo.Stack(initialization);
    notifyListeners();
  }

  ///変更認定
  void accept() {
    if (_stack != null && _stack!.isUndo) {
      accepts.add(_current as T);
      events.add(DataEvent<T>(type: .accept, payload: _current as T));
      notifyListeners();
    }
    clearCurrent();
  }

  ///現在の状況をクリアする
  void clearCurrent() {
    _stack = null;
    _current = null;
  }

  ///全部クリアする
  void clearAll() {
    clearCurrent();
    accepts.clear();
  }

  void undo() {
    if (_stack != null) {
      _stack!.undo();
      events.add(DataEvent<T>(type: .undo, payload: _current as T));
      notifyListeners();
    }
  }

  void redo() {
    if (_stack != null) {
      _stack!.undo();
      events.add(DataEvent<T>(type: .redo, payload: _current as T));
      notifyListeners();
    }
  }
}

/// イベント引数
class DataEvent<T> {
  final DataEventType type;
  final T payload;

  DataEvent({required this.type, required this.payload});
}

enum DataEventType { undo, redo, accept }
