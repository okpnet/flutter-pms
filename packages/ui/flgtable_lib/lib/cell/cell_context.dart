/// セル描画に渡される情報。行にバインドされたオブジェクトと表示文字列を持つ。
///
/// パターン: Parameter Object
class CellContext<T> {
  const CellContext({
    required this.columnKey,
    required this.rowIndex,
    required this.item,
    required this.text,
  });

  final String columnKey;
  final int rowIndex;
  final T item;
  final String text;

  Map<String, dynamic> toJson() => {
        'columnKey': columnKey,
        'rowIndex': rowIndex,
        'text': text,
      };
}
