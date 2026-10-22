import '../data/conditions.dart';

/// キャンセルできるイベントの基底。[cancel]を true にすると処理を中止する。
abstract class CancelableEvent {
  bool cancel = false;
}

class BeforeDeleteEvent<T> extends CancelableEvent {
  BeforeDeleteEvent(this.item);
  final T item;
}

class BeforeSortEvent extends CancelableEvent {
  BeforeSortEvent(this.sort);
  final SortCondition sort;
}

class AfterSortEvent {
  const AfterSortEvent(this.sort);
  final SortCondition sort;
}

/// ドラッグドロップ前のイベント。[index]は行のインデックス(上半分+0、下半分+1)。
class BeforeDropEvent<T> extends CancelableEvent {
  BeforeDropEvent({
    required this.index,
    required this.item,
    required this.fromOtherTable,
  });
  final int index;
  final T item;
  final bool fromOtherTable;
}

class AfterDropEvent<T> {
  const AfterDropEvent({
    required this.index,
    required this.item,
    required this.fromOtherTable,
  });
  final int index;
  final T item;
  final bool fromOtherTable;
}

/// ドラッグオーバー中のイベント。[canDrop]はドロップ可能かの判定結果。
class DragOverEvent<T> {
  const DragOverEvent({
    required this.index,
    required this.item,
    required this.canDrop,
  });
  final int index;
  final T item;
  final bool canDrop;
}

class CellChangedEvent<T> {
  const CellChangedEvent({
    required this.item,
    required this.columnKey,
    required this.value,
  });
  final T item;
  final String columnKey;
  final String value;
}

class FlagLimitExceededEvent<T> {
  const FlagLimitExceededEvent({required this.item, required this.limit});
  final T item;
  final int limit;
}

typedef EventCallback<E> = void Function(E event);

/// テーブルが通知するイベントのコールバック群。
///
/// パターン: Observer(コールバック登録)
class TableEvents<T> {
  const TableEvents({
    this.onBeforeDelete,
    this.onAfterDelete,
    this.onBeforeSort,
    this.onAfterSort,
    this.onRowActivated,
    this.onBeforeDrop,
    this.onAfterDrop,
    this.onDragOver,
    this.onCellChanged,
    this.onFlagLimitExceeded,
    this.onFlagChanged,
  });

  final EventCallback<BeforeDeleteEvent<T>>? onBeforeDelete;
  final EventCallback<T>? onAfterDelete;
  final EventCallback<BeforeSortEvent>? onBeforeSort;
  final EventCallback<AfterSortEvent>? onAfterSort;

  /// 左ダブルクリック/ロングタップ。
  final EventCallback<T>? onRowActivated;
  final EventCallback<BeforeDropEvent<T>>? onBeforeDrop;
  final EventCallback<AfterDropEvent<T>>? onAfterDrop;
  final EventCallback<DragOverEvent<T>>? onDragOver;
  final EventCallback<CellChangedEvent<T>>? onCellChanged;
  final EventCallback<FlagLimitExceededEvent<T>>? onFlagLimitExceeded;
  final EventCallback<T>? onFlagChanged;
}
