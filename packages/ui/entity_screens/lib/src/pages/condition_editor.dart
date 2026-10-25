import 'package:flutter/material.dart';

import '../condition.dart';
import '../i18n/strings.g.dart';

/// 条件(演算子 + 値)の入力。演算子はリストから選び、値は手で入力する。
/// 入力のたびに、[controller] へ JSON の文字列を書く(値が足りないときは空にする)。
class ConditionEditor extends StatefulWidget {
  const ConditionEditor({
    super.key,
    required this.controller,
    required this.strings,
    required this.label,
    this.errorText,
  });

  final TextEditingController controller;
  final EntityScreenStrings strings;
  final String label;
  final String? errorText;

  @override
  State<ConditionEditor> createState() => _ConditionEditorState();
}

class _ConditionEditorState extends State<ConditionEditor> {
  late ConditionOperator _operator;
  final _first = TextEditingController();
  final _second = TextEditingController();
  bool _yes = true;

  @override
  void initState() {
    super.initState();
    final current = ConditionValue.tryParse(widget.controller.text);
    _operator = current?.operator ?? ConditionOperator.equal;
    switch (current?.value) {
      case final bool b:
        _yes = b;
      case final List<String> range:
        _first.text = range[0];
        _second.text = range[1];
      case final String text:
        _first.text = text;
      default:
    }
  }

  @override
  void dispose() {
    _first.dispose();
    _second.dispose();
    super.dispose();
  }

  void _write() {
    final first = _first.text.trim();
    final second = _second.text.trim();
    widget.controller.text = switch (_operator) {
      ConditionOperator.yesNo => ConditionValue(_operator, _yes).toJsonString(),
      ConditionOperator.between =>
        first.isEmpty || second.isEmpty
            ? ''
            : ConditionValue(_operator, [first, second]).toJsonString(),
      _ => first.isEmpty ? '' : ConditionValue(_operator, first).toJsonString(),
    };
  }

  String _operatorLabel(ConditionOperator o) => switch (o) {
    ConditionOperator.between => widget.strings.condition.between,
    ConditionOperator.yesNo => widget.strings.condition.yesNo,
    _ => o.code,
  };

  @override
  Widget build(BuildContext context) {
    final t = widget.strings.condition;
    final theme = Theme.of(context);
    return InputDecorator(
      decoration: InputDecoration(
        labelText: widget.label,
        errorText: widget.errorText,
      ),
      child: Row(
        spacing: 12,
        children: [
          SizedBox(
            width: 140,
            child: DropdownButton<ConditionOperator>(
              isExpanded: true,
              value: _operator,
              items: [
                for (final o in ConditionOperator.values)
                  DropdownMenuItem(value: o, child: Text(_operatorLabel(o))),
              ],
              onChanged: (o) {
                if (o == null) return;
                setState(() => _operator = o);
                _write();
              },
            ),
          ),
          if (_operator == ConditionOperator.yesNo)
            SegmentedButton<bool>(
              segments: [
                ButtonSegment(value: true, label: Text(t.yes)),
                ButtonSegment(value: false, label: Text(t.no)),
              ],
              selected: {_yes},
              onSelectionChanged: (s) {
                setState(() => _yes = s.first);
                _write();
              },
            )
          else ...[
            Expanded(
              child: TextField(
                controller: _first,
                onChanged: (_) => _write(),
                decoration: InputDecoration(
                  hintText: _operator == ConditionOperator.between
                      ? t.lower
                      : t.value,
                ),
              ),
            ),
            if (_operator == ConditionOperator.between) ...[
              Text('〜', style: theme.textTheme.bodyLarge),
              Expanded(
                child: TextField(
                  controller: _second,
                  onChanged: (_) => _write(),
                  decoration: InputDecoration(hintText: t.upper),
                ),
              ),
            ],
          ],
        ],
      ),
    );
  }
}
