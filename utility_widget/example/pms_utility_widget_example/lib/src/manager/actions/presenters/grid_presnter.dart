import '../../state/databinding/databinding.dart';

abstract class IGridPresenter {
  /// 行編集ダイアログを開く
  void openEditDialog(RowModel row);

  /// 行編集ダイアログを閉じる
  void closeEditDialog();

  /// Grid の行を更新する（編集内容を反映）
  void updateGridRow(RowModel row);

  /// Grid の行を追加する
  void insertGridRow(RowModel row);

  /// Grid の行を削除する
  void removeGridRow(RowModel row);

  /// Grid の行を移動する（ドラッグ＆ドロップ）
  void moveGridRow({
    required RowModel row,
    required String newParentId,
    required int newIndex,
  });

  /// 行をハイライトする（Undo/Redo後の視覚的フィードバック）
  void highlightRow(RowModel row);

  /// 行へスクロールする（Undo/Redo後の視覚的フィードバック）
  void scrollToRow(RowModel row);
}

class GridPresnter implements IGridPresenter {
  final BuildContext context;
  final TrinaGridController grid;

  GridPresnter(this.context, this.grid);

  @override
  void openEditDialog(RowModel row) {
    showDialog(
      context: context,
      builder: (_) => DepartmentEditDialog(row: row),
    );
  }

  @override
  void closeEditDialog() {
    Navigator.of(context).pop();
  }

  @override
  void updateGridRow(RowModel row) {
    grid.updateRow(row);
  }

  @override
  void insertGridRow(RowModel row) {
    grid.insertRow(row);
  }

  @override
  void removeGridRow(RowModel row) {
    grid.removeRow(row.id);
  }

  @override
  void moveGridRow({
    required RowModel row,
    required String newParentId,
    required int newIndex,
  }) {
    grid.moveRow(row.id, newParentId, newIndex);
  }

  @override
  void highlightRow(RowModel row) {
    grid.highlight(row.id);
  }

  @override
  void scrollToRow(RowModel row) {
    grid.scrollTo(row.id);
  }
}
