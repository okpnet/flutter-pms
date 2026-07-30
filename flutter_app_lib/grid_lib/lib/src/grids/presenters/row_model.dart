import 'package:flutter/foundation.dart';
import 'package:trina_grid/trina_grid.dart';

import '../../constants/constant.dart';
import '../extenssions/extensions.dart';

///コマンドで使用する行モデル
class RowModel {
  final Key rowKey;
  final Key? parentRowKey;
  final bool expanded;
  final JsonMap attributes;

  RowModel(this.rowKey, this.parentRowKey, this.expanded, this.attributes);

  factory RowModel.to(TrinaRow row) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return RowModel(rowKey, parentKey, isExpanded, json);
  }
}

///コマンドで使用する行モデル
class DropRowModel extends RowModel {
  final int index;
  DropRowModel(
    this.index,
    super.rowKey,
    super.parentRowKey,
    super.expanded,
    super.attributes,
  );

  factory DropRowModel.to(int index, TrinaRow row) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return DropRowModel(index, rowKey, parentKey, isExpanded, json);
  }
}
