import 'package:pluto_grid/pluto_grid.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/helper/pluto_grid/pg_tree_data_loader.dart';

mixin PgTreeMixin<T extends StatefulWidget> on State<T> {
  late PlutoGridStateManager stateManager;

  /// ページ側で定義する getter
  String get idField;
  String get parentField;

  /// データローダー（DB/REST/ローカル）
  late PgTreeDataLoader loader;

  /// 現在表示中の行
  final List<PlutoRow> gridRows = [];

  /// PlutoGrid の columns をページ側で渡す
  List<PlutoColumn> get columns;

  /// PlutoGrid の rows を返す
  List<PlutoRow> get rows => gridRows;

  /// PlutoRow 生成（共通化）
  PlutoRow buildRow(Map<String, dynamic> json, {bool isLoadMore = false}) {
    return PlutoRow(
      cells: {
        for (final col in columns)
          col.field: PlutoCell(
            value: isLoadMore ? 'さらに読み込む...' : json[col.field],
          ),
        '_isLoadMore': PlutoCell(value: isLoadMore),
      },
    );
  }

  /// 初期ロード（最上位）
  Future<void> loadRoot() async {
    stateManager.setShowLoading(true);
    final roots = await loader.loadChildrenOf(null);

    final first10 = roots.take(10).toList();
    gridRows.addAll(first10.map((e) => buildRow(e)));

    if (roots.length > 10) {
      gridRows.add(buildRow({'id': 'root-load-more'}, isLoadMore: true));
    }
    stateManager.appendRows(rows);
    stateManager.setShowLoading(false);
  }

  /// 展開
  Future<void> expand(PlutoRow parentRow) async {
    final parentId = parentRow.cells[idField]!.value;

    final children = await loader.loadChildrenOf(parentId);
    final first10 = children.take(10).toList();

    final parentIndex = stateManager.refRows.indexOf(parentRow);

    final rowsToInsert = first10.map((e) => buildRow(e)).toList();
    stateManager.insertRows(parentIndex + 1, rowsToInsert);

    if (children.length > 10) {
      stateManager.insertRows(parentIndex + 1 + rowsToInsert.length, [
        buildRow({'id': '${parentId}-load-more'}, isLoadMore: true),
      ]);
    }
  }

  /// 折りたたみ（選択中の行が配下にいる場合は拒否）
  void collapse(PlutoRow parentRow) {
    final parentId = parentRow.cells[idField]!.value;

    // 1. 選択中の行が親の配下なら折りたたみ禁止
    final current = stateManager.currentRow;
    if (current != null) {
      final isDescendant = _isDescendantRow(
        childRow: current,
        ancestorId: parentId,
      );
      if (isDescendant) {
        // 必要なら SnackBar などで通知してもよい
        debugPrint('選択中の行が配下にあるため、折りたためません。');
        return;
      }
    }

    // 2. 実際の折りたたみ処理
    final toRemove = stateManager.refRows.where((r) {
      return r.cells[parentField]!.value == parentId &&
          r.cells[idField]!.value != parentId;
    }).toList();

    stateManager.removeRows(toRemove);
  }

  /// LoadMore
  Future<void> loadMore(PlutoRow loadMoreRow) async {
    final parentId = loadMoreRow.cells[parentField]!.value;

    final children = await loader.loadChildrenOf(parentId);

    final alreadyLoaded =
        stateManager.refRows
            .where((r) => r.cells[parentField]!.value == parentId)
            .length -
        1;

    final next = children.skip(alreadyLoaded).take(10).toList();
    final rowsToInsert = next.map((e) => buildRow(e)).toList();

    final index = stateManager.refRows.indexOf(loadMoreRow);
    stateManager.insertRows(index, rowsToInsert);

    if (alreadyLoaded + next.length >= children.length) {
      stateManager.removeRows([loadMoreRow]);
    }
  }

  /// ドラッグ＆ドロップで親子関係変更
  void onRowsMoved(PlutoGridOnRowsMovedEvent event) {
    // 移動された行（複数だが、ここでは先頭だけ扱う）
    final moved = event.rows.first;
    final movedId = moved.cells[idField]!.value;

    // 直前の行を新しい親とみなす（デモ用ルール）
    final index = stateManager.refRows.indexOf(moved);
    if (index > 0) {
      final newParent = stateManager.refRows[index - 1];
      final newParentId = newParent.cells[idField]!.value;

      loader.updateParent(movedId, newParentId);
    }
  }

  /// childRow が ancestorId の子孫かどうかを判定
  bool _isDescendantRow({
    required PlutoRow childRow,
    required dynamic ancestorId,
  }) {
    var current = childRow;

    while (true) {
      final currentId = current.cells[idField]!.value;
      final currentParentId = current.cells[parentField]!.value;

      // 自分自身が祖先なら true（理論上は起こらない想定ならここはスキップでもOK）
      if (currentId == ancestorId) return true;

      // 親が祖先なら true
      if (currentParentId == ancestorId) return true;

      // ルートに到達（parentId == id）したら終了
      if (currentParentId == currentId) return false;

      // さらに上の親を探す
      final parentRow = stateManager.refRows.firstWhere(
        (r) => r.cells[idField]!.value == currentParentId,
        orElse: () => current, // 見つからなければループ終了
      );
      if (identical(parentRow, current)) {
        return false;
      }
      current = parentRow;
    }
  }
}
