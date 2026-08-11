import '../../../constants/typedef.dart';
import 'events.dart';

///ドロップ前のイベント
class BeforeParentChangeEvent extends TreeEvent<dynamic> {
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final int idx;

  @override
  final dynamic parentRowData;

  @override
  final dynamic rowData;

  final Function() behavior;

  BeforeParentChangeEvent({
    required this.expanded,
    required this.attributes,
    required this.idx,
    required this.rowData,
    this.parentRowData,
    required this.behavior,
  });
}

///ドロップ完了後のイベント
class AfterParentChangeEvent extends TreeEvent<dynamic> {
  final BeforeParentChangeEvent beforeEvent;
  @override
  final GridExtensionMap attributes;

  @override
  final bool expanded;

  @override
  final int idx;

  @override
  final dynamic parentRowData;

  @override
  final dynamic rowData;

  final Function() behavior;

  AfterParentChangeEvent({
    required this.expanded,
    required this.attributes,
    required this.idx,
    required this.rowData,
    this.parentRowData,
    required this.beforeEvent,
    required this.behavior,
  });
}
