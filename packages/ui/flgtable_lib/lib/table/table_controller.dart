import '../data/conditions.dart';

/// テーブル側が実装する操作の窓口。
abstract interface class TableControllerHost<T> {
  String exportCsv();
  Future<void> reload();
  List<T> get visibleItems;
  SortCondition? get sort;
  List<FilterCondition> get filters;
  void setFilters(List<FilterCondition> filters);
  void setSort(SortCondition? sort);
  bool get canUndo;
  bool get canRedo;
  bool undo();
  bool redo();
}

/// テーブルをアプリ側から操作するためのコントローラ。
///
/// パターン: Bridge(操作の窓口と実装の分離)
class FlgTableController<T> {
  TableControllerHost<T>? _host;

  bool get isAttached => _host != null;

  // ignore: use_setters_to_change_properties
  void attach(TableControllerHost<T> host) => _host = host;

  void detach(TableControllerHost<T> host) {
    if (identical(_host, host)) _host = null;
  }

  TableControllerHost<T> get _h {
    final h = _host;
    if (h == null) throw StateError('FlgTable に接続されていません');
    return h;
  }

  /// 表示中(読み込み済み)の行をCSV文字列にする。保存はアプリ側で行う。
  String exportCsv() => _h.exportCsv();

  Future<void> reload() => _h.reload();

  List<T> get visibleItems => _h.visibleItems;
  SortCondition? get sort => _h.sort;
  List<FilterCondition> get filters => _h.filters;

  void setFilters(List<FilterCondition> filters) => _h.setFilters(filters);
  void setSort(SortCondition? sort) => _h.setSort(sort);

  /// 取り消し/やり直しができるか。
  bool get canUndo => _h.canUndo;
  bool get canRedo => _h.canRedo;

  /// 直前の操作を取り消す。取り消せたときtrue。
  bool undo() => _h.undo();

  /// 取り消した操作をやり直す。やり直せたときtrue。
  bool redo() => _h.redo();
}
