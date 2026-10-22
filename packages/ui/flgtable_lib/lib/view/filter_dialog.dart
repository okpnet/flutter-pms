import 'package:flutter/material.dart';

import '../data/condition_matcher.dart';
import '../data/conditions.dart';
import '../label/table_labels.dart';

/// フィルタ条件の編集結果。[conditions]はその列の全条件(空なら解除)。
class FilterDialogResult {
  const FilterDialogResult(this.conditions);
  final List<FilterCondition> conditions;
}

/// 列のフィルタ条件(複数可)を編集するダイアログを開く。キャンセル時は null。
Future<FilterDialogResult?> showFilterDialog(
  BuildContext context, {
  required String columnKey,
  required String columnLabel,
  required ColumnType type,
  required TableLabels labels,
  List<FilterCondition> current = const [],
}) {
  return showDialog<FilterDialogResult>(
    context: context,
    builder: (_) => _FilterDialog(
      columnKey: columnKey,
      columnLabel: columnLabel,
      type: type,
      labels: labels,
      current: current,
    ),
  );
}

/// 1条件分の入力欄。
class _Row {
  _Row(this.operator, String first, String second)
    : first = TextEditingController(text: first),
      second = TextEditingController(text: second);

  FilterOperator operator;
  final TextEditingController first;
  final TextEditingController second;

  void dispose() {
    first.dispose();
    second.dispose();
  }
}

class _FilterDialog extends StatefulWidget {
  const _FilterDialog({
    required this.columnKey,
    required this.columnLabel,
    required this.type,
    required this.labels,
    required this.current,
  });

  final String columnKey;
  final String columnLabel;
  final ColumnType type;
  final TableLabels labels;
  final List<FilterCondition> current;

  @override
  State<_FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<_FilterDialog> {
  final _rows = <_Row>[];

  @override
  void initState() {
    super.initState();
    for (final c in widget.current) {
      _rows.add(_fromCondition(c));
    }
    if (_rows.isEmpty) _rows.add(_blank());
  }

  _Row _blank() => _Row(FilterOperator.of(widget.type).first, '', '');

  String _text(Object? v) => v is DateTime ? v.toIso8601String() : '$v';

  _Row _fromCondition(FilterCondition c) {
    final v = c.values;
    if (c.operator.isList) {
      return _Row(c.operator, v.map(_text).join(','), '');
    }
    return _Row(
      c.operator,
      v.isNotEmpty ? _text(v[0]) : '',
      v.length > 1 ? _text(v[1]) : '',
    );
  }

  @override
  void dispose() {
    for (final r in _rows) {
      r.dispose();
    }
    super.dispose();
  }

  /// 入力から条件を作る。入力が空、または型に変換できないときは null。
  FilterCondition? _build(_Row r) {
    final raw = r.operator.isList
        ? r.first.text.split(',')
        : r.operator == FilterOperator.between
        ? [r.first.text, r.second.text]
        : [r.first.text];
    final values = <Object?>[];
    for (final s in raw) {
      if (s.trim().isEmpty && widget.type != ColumnType.string) return null;
      final v = ConditionMatcher.parseValue(s, widget.type);
      if (v == null) return null;
      values.add(v);
    }
    if (values.isEmpty || (values.length == 1 && '${values[0]}'.isEmpty)) {
      return null;
    }
    return FilterCondition(widget.columnKey, r.operator, values);
  }

  void _apply() {
    final built = [for (final r in _rows) _build(r)];
    if (built.contains(null)) return;
    Navigator.pop(context, FilterDialogResult([...built.nonNulls]));
  }

  Widget _rowEditor(int i, _Row r) {
    final labels = widget.labels;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: DropdownButton<FilterOperator>(
              key: Key('filterOperator.$i'),
              isExpanded: true,
              value: r.operator,
              items: [
                for (final op in FilterOperator.of(widget.type))
                  DropdownMenuItem(
                    value: op,
                    child: Text(
                      labels.operatorLabel(op),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
              onChanged: (op) => setState(() => r.operator = op!),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              children: [
                TextField(
                  key: Key('filterValue1.$i'),
                  controller: r.first,
                  decoration: InputDecoration(
                    labelText: labels.value,
                    hintText: r.operator.isList ? labels.listHint : null,
                    isDense: true,
                  ),
                ),
                if (r.operator == FilterOperator.between)
                  TextField(
                    key: Key('filterValue2.$i'),
                    controller: r.second,
                    decoration: InputDecoration(
                      labelText: labels.valueTo,
                      isDense: true,
                    ),
                  ),
              ],
            ),
          ),
          IconButton(
            key: Key('filterRemove.$i'),
            tooltip: labels.removeCondition,
            icon: const Icon(Icons.remove_circle_outline),
            onPressed: () => setState(() => _rows.removeAt(i).dispose()),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final labels = widget.labels;
    return AlertDialog(
      title: Text('${labels.filter}: ${widget.columnLabel}'),
      content: SizedBox(
        width: 460,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var i = 0; i < _rows.length; i++) _rowEditor(i, _rows[i]),
              TextButton.icon(
                key: const Key('filterAdd'),
                onPressed: () => setState(() => _rows.add(_blank())),
                icon: const Icon(Icons.add),
                label: Text(labels.addCondition),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          key: const Key('filterClear'),
          onPressed: () => Navigator.pop(context, const FilterDialogResult([])),
          child: Text(labels.clear),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(labels.cancel),
        ),
        FilledButton(
          key: const Key('filterApply'),
          onPressed: _apply,
          child: Text(labels.apply),
        ),
      ],
    );
  }
}
