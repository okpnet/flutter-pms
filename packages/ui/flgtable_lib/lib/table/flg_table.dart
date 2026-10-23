part of 'table_core.dart';

/// ジェネリックなテーブル。[items] か [loader] のどちらかでデータを渡す。
///
/// ロガーは Riverpod の [loggerProvider] から取得するため、
/// 祖先に `ProviderScope` が必要。
class FlgTable<T> extends TableWidgetBase<T> {
  const FlgTable({
    super.key,
    required super.columns,
    super.items,
    super.loader,
    super.config,
    super.rowKey,
    super.events,
    super.labels,
    super.controller,
    super.pagination,
    super.loadingIndicator,
    super.mobileBuilder,
    super.undoStack,
    this.childTable,
  }) : assert(items != null || loader != null, 'items か loader が必要');

  /// 子テーブルの定義(1階層のみ)。
  final ChildTableDefinition<T, dynamic>? childTable;

  @override
  ConsumerState<FlgTable<T>> createState() => _FlgTableState<T>();
}

class _FlgTableState<T> extends _TableBaseState<T, FlgTable<T>> {
  @override
  ChildTableDefinition<T, dynamic>? get _childTable => widget.childTable;
}
