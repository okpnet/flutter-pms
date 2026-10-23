import '../column/column_definition.dart';

/// 表示中の行をCSV文字列にする。UTF-8(BOM付き)で保存する前提の文字列を返す。
class CsvExporter {
  const CsvExporter._();

  static const bom = '﻿';

  /// 非表示の列、`exportable`が偽の列は出力しない。ヘッダは列の表示名。改行はCRLF。
  static String export<T>(
    List<ColumnDefinition<T>> columns,
    Iterable<T> items,
  ) {
    final visible = columns
        .where((c) => c.visible && c.exportable)
        .toList();
    final lines = [
      visible.map((c) => _escape(c.label)).join(','),
      for (final item in items)
        visible.map((c) => _escape(c.read(item))).join(','),
    ];
    return '$bom${lines.join('\r\n')}\r\n';
  }

  static String _escape(String v) {
    if (v.contains(RegExp(r'[",\r\n]'))) {
      return '"${v.replaceAll('"', '""')}"';
    }
    return v;
  }
}
