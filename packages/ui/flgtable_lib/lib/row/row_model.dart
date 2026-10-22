/// 行。元のオブジェクトを保持する。
class RowModel<T> {
  RowModel(this.item, {this.flagged = false, this.draggable = true});

  final T item;
  bool flagged;
  final bool draggable;

  Map<String, dynamic> toJson() => {
        'item': item.toString(),
        'flagged': flagged,
        'draggable': draggable,
      };
}
