import '../../../constants/typedef.dart';
import '../../import.dart';
import '../../shared/shared.dart';
import 'events.dart';

///ドロップ前のイベント
class BeforeParentChangeEvent<T> extends TreeEvent<T> {
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final int idx;

  @override
  final T? parentRowData;

  @override
  final T rowData;

  BeforeParentChangeEvent({
    required this.expanded,
    required this.attributes,
    required this.idx,
    required this.rowData,
    this.parentRowData,
  });

  factory BeforeParentChangeEvent.to(int index, TrinaRow row) {
    final rowData = row.data;
    final parentData = row.parent?.data;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return BeforeParentChangeEvent(
      attributes: json,
      expanded: isExpanded,
      rowData: rowData,
      parentRowData: parentData,
      idx: index,
    );
  }
}

///ドロップ完了後のイベント
class AfterParentChangeEvent<T> extends TreeEvent<T> {
  final BeforeParentChangeEvent beforeEvent;
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final int idx;

  @override
  final T? parentRowData;

  @override
  final T rowData;

  AfterParentChangeEvent({
    required this.expanded,
    required this.attributes,
    required this.idx,
    required this.rowData,
    this.parentRowData,
    required this.beforeEvent,
  });
  factory AfterParentChangeEvent.to(
    int index,
    TrinaRow row,
    BeforeParentChangeEvent beforeEvent,
  ) {
    final rowData = row.data;
    final parentData = row.parent?.data;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return AfterParentChangeEvent(
      attributes: json,
      expanded: isExpanded,
      rowData: rowData,
      parentRowData: parentData,
      idx: index,
      beforeEvent: beforeEvent,
    );
  }
}
