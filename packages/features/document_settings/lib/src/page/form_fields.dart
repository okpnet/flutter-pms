import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 設定の JSON(`Map`)の値を、パスで読み書きするフォームの入力欄。
/// 入力欄は [generation] が変わると作り直す(元に戻す・標準に戻す・JSON の反映のあと、値を入れ直すため)。
typedef JsonSetter = void Function(List<String> path, Object? value);

Object? valueAt(Map<String, dynamic> json, List<String> path) {
  Object? cur = json;
  for (final k in path) {
    if (cur is Map) {
      cur = cur[k];
    } else {
      return null;
    }
  }
  return cur;
}

class FormSection extends StatelessWidget {
  const FormSection({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }
}

/// 数値の入力欄。正しい数値のときだけ値を直す(途中の入力は保つ)。
class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    required this.json,
    required this.path,
    required this.label,
    required this.onSet,
    required this.generation,
    this.integer = false,
    this.width = 150,
  });

  final Map<String, dynamic> json;
  final List<String> path;
  final String label;
  final JsonSetter onSet;
  final int generation;
  final bool integer;
  final double width;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  late final TextEditingController _c = TextEditingController(text: _text());

  String _text() {
    final v = valueAt(widget.json, widget.path);
    if (v is num) {
      return widget.integer || v == v.roundToDouble() ? v.toInt().toString() : v.toString();
    }
    return '';
  }

  @override
  void didUpdateWidget(NumberField old) {
    super.didUpdateWidget(old);
    if (old.generation != widget.generation) _c.text = _text();
  }

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        width: widget.width,
        child: TextField(
          key: Key('f-${widget.path.join('.')}'),
          controller: _c,
          decoration: InputDecoration(labelText: widget.label, isDense: true, border: const OutlineInputBorder()),
          keyboardType: const TextInputType.numberWithOptions(decimal: true, signed: true),
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9.\-]'))],
          onChanged: (t) {
            final n = widget.integer ? int.tryParse(t) : double.tryParse(t);
            if (n != null) widget.onSet(widget.path, n);
          },
        ),
      );
}

/// 文字列の入力欄。[nullIfEmpty] が true のとき、空は null にする。
class TextValueField extends StatefulWidget {
  const TextValueField({
    super.key,
    required this.json,
    required this.path,
    required this.label,
    required this.onSet,
    required this.generation,
    this.nullIfEmpty = false,
    this.width,
    this.onFocus,
    this.minLines,
    this.monospace = false,
  });

  final Map<String, dynamic> json;
  final List<String> path;
  final String label;
  final JsonSetter onSet;
  final int generation;
  final bool nullIfEmpty;
  final double? width;

  /// この欄にフォーカスが当たったとき(変数を入れる先を覚える)。
  final void Function(TextEditingController controller, VoidCallback commit)? onFocus;
  final int? minLines;
  final bool monospace;

  @override
  State<TextValueField> createState() => _TextValueFieldState();
}

class _TextValueFieldState extends State<TextValueField> {
  late final TextEditingController _c = TextEditingController(text: _text());
  late final FocusNode _focus = FocusNode()..addListener(_onFocus);

  String _text() => (valueAt(widget.json, widget.path) ?? '').toString();

  void _commit() {
    final t = _c.text;
    widget.onSet(widget.path, widget.nullIfEmpty && t.isEmpty ? null : t);
  }

  void _onFocus() {
    if (_focus.hasFocus) widget.onFocus?.call(_c, _commit);
  }

  @override
  void didUpdateWidget(TextValueField old) {
    super.didUpdateWidget(old);
    if (old.generation != widget.generation) _c.text = _text();
  }

  @override
  void dispose() {
    _focus.dispose();
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final field = TextField(
      key: Key('f-${widget.path.join('.')}'),
      controller: _c,
      focusNode: _focus,
      minLines: widget.minLines,
      maxLines: widget.minLines == null ? 1 : null,
      style: widget.monospace ? const TextStyle(fontFamily: 'monospace', fontSize: 13) : null,
      decoration: InputDecoration(labelText: widget.label, isDense: true, border: const OutlineInputBorder()),
      onChanged: (_) => _commit(),
    );
    return widget.width == null ? field : SizedBox(width: widget.width, child: field);
  }
}

class DropField extends StatelessWidget {
  const DropField({
    super.key,
    required this.json,
    required this.path,
    required this.label,
    required this.onSet,
    required this.options,
    this.width = 190,
  });

  final Map<String, dynamic> json;
  final List<String> path;
  final String label;
  final JsonSetter onSet;

  /// 値(JSON の文字列)→ 表示。
  final Map<String, String> options;
  final double width;

  @override
  Widget build(BuildContext context) {
    final v = valueAt(json, path);
    final current = options.containsKey(v) ? v as String : options.keys.first;
    return SizedBox(
      width: width,
      child: DropdownButtonFormField<String>(
        key: Key('f-${path.join('.')}-$current'),
        initialValue: current,
        isExpanded: true,
        decoration: InputDecoration(labelText: label, isDense: true, border: const OutlineInputBorder()),
        items: [for (final e in options.entries) DropdownMenuItem(value: e.key, child: Text(e.value))],
        onChanged: (n) {
          if (n != null) onSet(path, n);
        },
      ),
    );
  }
}

class SwitchField extends StatelessWidget {
  const SwitchField({super.key, required this.json, required this.path, required this.label, required this.onSet});

  final Map<String, dynamic> json;
  final List<String> path;
  final String label;
  final JsonSetter onSet;

  @override
  Widget build(BuildContext context) => SwitchListTile(
        key: Key('f-${path.join('.')}'),
        dense: true,
        contentPadding: EdgeInsets.zero,
        title: Text(label),
        value: valueAt(json, path) == true,
        onChanged: (v) => onSet(path, v),
      );
}

/// 項目を横に並べる(狭いときは折り返す)。
class FieldRow extends StatelessWidget {
  const FieldRow({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Wrap(spacing: 10, runSpacing: 10, crossAxisAlignment: WrapCrossAlignment.center, children: children),
      );
}
