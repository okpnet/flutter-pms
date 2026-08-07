import '../../../constants/typedef.dart';
import '../../import.dart';
import '../../shared/shared.dart';
import 'events.dart';

///ドロップ前のイベント
class BeforeParentChangeEvent extends TreeEvent {
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final Key? parentRowKey;

  @override
  final Key rowKey;

  BeforeParentChangeEvent({
    required this.expanded,
    required this.attributes,
    this.parentRowKey,
    required this.rowKey,
  });

  factory BeforeParentChangeEvent.to(TrinaRow row) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return BeforeParentChangeEvent(
      attributes: json,
      expanded: isExpanded,
      rowKey: rowKey,
      parentRowKey: parentKey,
    );
  }
}

///ドロップ完了後のイベント
class AfterParentChangeEvent extends TreeEvent {
  final BeforeParentChangeEvent beforeEvent;
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final Key? parentRowKey;

  @override
  final Key rowKey;

  AfterParentChangeEvent({
    required this.beforeEvent,
    required this.expanded,
    required this.attributes,
    this.parentRowKey,
    required this.rowKey,
  });
  factory AfterParentChangeEvent.to(
    TrinaRow row,
    BeforeParentChangeEvent beforeEvent,
  ) {
    final rowKey = row.key;
    final parentKey = row.parent?.key;
    final isExpanded = row.isExpanded;
    final json = row.toJson();
    return AfterParentChangeEvent(
      beforeEvent: beforeEvent,
      attributes: json,
      expanded: isExpanded,
      rowKey: rowKey,
      parentRowKey: parentKey,
    );
  }
}
