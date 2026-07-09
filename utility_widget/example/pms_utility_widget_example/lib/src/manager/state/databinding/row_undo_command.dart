import 'package:trina_grid/trina_grid.dart';
import 'package:undo_redo/lib.dart';
import 'package:utility_widget/utiritiy_widget.dart';
import 'package:utility_widget_example/extensions/pluto_grid/trina_row_extension.dart';

typedef TrinaRowCallback = void Function(RowModel);

///TrinaGridの行を操作したときのコマンド
class RowUndoCommand implements IUndoCommand {
  final TrinaRowCallback _execute;

  ///変更前のTrinaRowの状態
  final RowModel oldValue;

  ///変更後のTrinaRowの状態
  final RowModel newValue;

  ///コンストラクタ
  ///TrinaRowからモデルを生成する
  RowUndoCommand._(
    TrinaRow currentRow,
    TrinaRow newRow,
    TrinaRowCallback execute,
  ) : oldValue = RowModel.to(currentRow),
      newValue = RowModel.to(newRow),
      _execute = execute;

  RowUndoCommand({
    required this.oldValue,
    required this.newValue,
    required TrinaRowCallback execute,
  }) : _execute = execute;

  factory RowUndoCommand.fromRow(
    TrinaRow currentRow,
    TrinaRow newRow,
    TrinaRowCallback execute,
  ) {
    return ._(currentRow, newRow, execute);
  }

  @override
  void redo() => _execute(newValue);

  @override
  void undo() => _execute(oldValue);
}

///コマンドで使用する行モデル
class RowModel {
  final Key rowKey;
  final Key? parentRowKey;
  final bool expanded;
  final Map<String, dynamic> attributes;

  RowModel(this.rowKey, this.parentRowKey, this.expanded, this.attributes);

  factory RowModel.to(TrinaRow row) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return RowModel(rowKey, parentKey, isExpanded, json);
  }
}

///コマンドで使用するドラッグ行モデル
class RowDropModel extends RowModel {
  RowDropModel(
    super.rowKey,
    super.parentRowKey,
    super.expanded,
    super.attributes,
  );

  factory RowDropModel.to(TrinaRow row) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return RowDropModel(rowKey, parentKey, isExpanded, json);
  }
}
