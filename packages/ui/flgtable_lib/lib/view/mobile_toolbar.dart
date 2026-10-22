import 'package:flutter/material.dart';

import '../data/conditions.dart';
import '../label/table_labels.dart';

/// モバイル表示で列ヘッダの代わりに出す検索・並び替えのバー。
class MobileToolbar extends StatefulWidget {
  const MobileToolbar({
    super.key,
    required this.labels,
    required this.filterColumns,
    required this.sortColumns,
    required this.sort,
    required this.onSearch,
    required this.onSort,
  });

  final TableLabels labels;

  /// 検索対象にできる列(キー, 表示名)。空なら検索欄を出さない。
  final List<(String, String)> filterColumns;
  final List<(String, String)> sortColumns;
  final SortCondition? sort;

  /// 列キーと検索文字列(空で解除)。
  final void Function(String columnKey, String text) onSearch;
  final ValueChanged<SortCondition> onSort;

  @override
  State<MobileToolbar> createState() => _MobileToolbarState();
}

class _MobileToolbarState extends State<MobileToolbar> {
  late String? _filterKey = widget.filterColumns.firstOrNull?.$1;
  final _text = TextEditingController();

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final labels = widget.labels;
    final sort = widget.sort;
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Column(
        children: [
          if (widget.filterColumns.isNotEmpty)
            Row(
              children: [
                DropdownButton<String>(
                  key: const Key('mobileFilterColumn'),
                  value: _filterKey,
                  items: [
                    for (final c in widget.filterColumns)
                      DropdownMenuItem(value: c.$1, child: Text(c.$2)),
                  ],
                  onChanged: (k) => setState(() => _filterKey = k),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    key: const Key('mobileSearch'),
                    controller: _text,
                    decoration: InputDecoration(
                      hintText: labels.search,
                      prefixIcon: const Icon(Icons.search),
                      isDense: true,
                    ),
                    onSubmitted: (v) => widget.onSearch(_filterKey!, v),
                  ),
                ),
              ],
            ),
          if (widget.sortColumns.isNotEmpty)
            Row(
              children: [
                Text(labels.sortBy),
                const SizedBox(width: 8),
                DropdownButton<String>(
                  key: const Key('mobileSortColumn'),
                  value: sort?.columnKey,
                  hint: Text(labels.sortBy),
                  items: [
                    for (final c in widget.sortColumns)
                      DropdownMenuItem(value: c.$1, child: Text(c.$2)),
                  ],
                  onChanged: (k) => widget.onSort(
                    SortCondition(k!, ascending: sort?.ascending ?? true),
                  ),
                ),
                IconButton(
                  key: const Key('mobileSortDirection'),
                  tooltip: (sort?.ascending ?? true)
                      ? labels.ascending
                      : labels.descending,
                  icon: Icon(
                    (sort?.ascending ?? true)
                        ? Icons.arrow_upward
                        : Icons.arrow_downward,
                  ),
                  onPressed: sort == null
                      ? null
                      : () => widget.onSort(sort.reversed),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
