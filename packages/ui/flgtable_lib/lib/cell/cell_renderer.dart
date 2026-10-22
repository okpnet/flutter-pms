import 'package:flutter/widgets.dart';

import 'cell_context.dart';

/// セルの表示方法を差し替えるための契約。
///
/// 型別のセルを追加するときはこのインターフェイスを実装する。
/// パターン: Strategy
abstract interface class CellRenderer<T> {
  Widget build(BuildContext context, CellContext<T> cell);
}

/// 文字列をそのまま表示する標準のセル。
class TextCellRenderer<T> implements CellRenderer<T> {
  const TextCellRenderer({this.textAlign = TextAlign.start});

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context, CellContext<T> cell) {
    return Text(
      cell.text,
      textAlign: textAlign,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// 関数でセルを指定するための簡易実装。
class BuilderCellRenderer<T> implements CellRenderer<T> {
  const BuilderCellRenderer(this.builder);

  final Widget Function(BuildContext context, CellContext<T> cell) builder;

  @override
  Widget build(BuildContext context, CellContext<T> cell) =>
      builder(context, cell);
}
