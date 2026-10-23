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

/// 親の変更前。[newParent]はトップノードになる場合null。キャンセルできる。
class BeforeParentChangeEvent<T> extends CancelableEvent {
  BeforeParentChangeEvent({required this.item, required this.newParent});
  final T item;
  final T? newParent;
}

/// 親の変更後。[newParent]はトップノードになった場合null。
class AfterParentChangeEvent<T> {
  const AfterParentChangeEvent({required this.item, required this.newParent});
  final T item;
  final T? newParent;
}

/// 取り消し/やり直しの対象になる操作の種類。
enum TableOperation { cellEdit, delete, flag, reorder, parentChange }

/// 取り消し/やり直しを行った後に通知する。データの実体はアプリ側が持つため、
/// アプリはこの通知でデータを元に戻す(進める)。
///
/// [value]は、セル編集では適用後のセルの文字列。それ以外はnull。
/// [parent]は、ツリーの親の変更で、適用後の親(トップノードならnull)。
class UndoRedoEvent<T> {
  const UndoRedoEvent({
    required this.operation,
    required this.item,
    this.columnKey,
    this.value,
    this.parent,
  });
  final TableOperation operation;
  final T item;
  final String? columnKey;
  final String? value;

  /// 親の変更では、適用後の親(トップノードならnull)。
  final T? parent;
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
    this.onUndone,
    this.onRedone,
    this.onBeforeParentChange,
    this.onAfterParentChange,
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

  /// 取り消し/やり直しの後。アプリがデータを戻す/進めるために使う。
  final EventCallback<UndoRedoEvent<T>>? onUndone;
  final EventCallback<UndoRedoEvent<T>>? onRedone;

  /// ツリーの親変更の前後。
  final EventCallback<BeforeParentChangeEvent<T>>? onBeforeParentChange;
  final EventCallback<AfterParentChangeEvent<T>>? onAfterParentChange;
}
