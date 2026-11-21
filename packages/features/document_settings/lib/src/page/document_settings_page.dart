import 'dart:convert';

import 'package:app_shell/app_shell.dart';
import 'package:approval_stamp/approval_stamp.dart';
import 'package:approval_stamp_view/approval_stamp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/settings_draft.dart';
import '../data/settings_file_picker.dart';
import '../i18n/strings_provider.dart';
import 'form_fields.dart';

/// 承認スタンプ・PDF の設定(`info_app.settings`)の編集画面。左にフォーム(承認スタンプ・PDF・JSON)、右に用紙のプレビュー。
/// 変えられるのは管理者だけ(それ以外は閲覧のみ)。
class DocumentSettingsPage extends ConsumerStatefulWidget {
  const DocumentSettingsPage({super.key});

  @override
  ConsumerState<DocumentSettingsPage> createState() => _DocumentSettingsPageState();
}

class _DocumentSettingsPageState extends ConsumerState<DocumentSettingsPage> {
  var _previewPage = 0;

  /// 変数を入れる先(最後にフォーカスが当たったヘッダ・フッタの欄)。
  TextEditingController? _activeController;
  VoidCallback? _activeCommit;

  void _onFocus(TextEditingController c, VoidCallback commit) {
    _activeController = c;
    _activeCommit = commit;
  }

  void _insertVariable(String name) {
    final c = _activeController;
    if (c == null) return;
    final sel = c.selection;
    final at = sel.isValid ? sel.start : c.text.length;
    final end = sel.isValid ? sel.end : c.text.length;
    final text = '{$name}';
    c.value = TextEditingValue(
      text: c.text.replaceRange(at, end, text),
      selection: TextSelection.collapsed(offset: at + text.length),
    );
    _activeCommit?.call();
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(documentSettingsStringsProvider);
    final admin = ref.watch(documentSettingsIsAdminProvider);
    final draft = ref.watch(settingsDraftProvider);
    final notifier = ref.read(settingsDraftProvider.notifier);
    final scheme = Theme.of(context).colorScheme;

    if (!draft.loaded) {
      return ScreenScaffold(title: s.title, body: Center(child: Text(s.loading)));
    }

    final problems = Problems();
    final settings = draft.settings(problems);

    final form = DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TabBar(
            key: const Key('ds-tabs'),
            tabs: [Tab(text: s.tabs.stamp), Tab(text: s.tabs.pdf), Tab(text: s.tabs.json)],
          ),
          const SizedBox(height: 12),
          Expanded(
            child: AbsorbPointer(
              absorbing: !admin,
              child: TabBarView(
                children: [
                  _scroll(_StampForm(draft: draft, set: notifier.set, s: s)),
                  _scroll(_PdfForm(draft: draft, set: notifier.set, s: s, onFocus: _onFocus, onInsert: _insertVariable, customNames: settings.pdf.custom.keys.toList())),
                  _scroll(_JsonForm(draft: draft, s: s, onApply: notifier.applyJson)),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    final preview = _Preview(settings: settings, page: _previewPage, onPage: (p) => setState(() => _previewPage = p), s: s);

    return ScreenScaffold(
      title: s.title,
      actions: [
        if (!admin)
          Chip(key: const Key('ds-readonly'), avatar: const Icon(Icons.lock_outline, size: 16), label: Text(s.adminOnly)),
        if (admin) ...[
          OutlinedButton(
            key: const Key('ds-defaults'),
            onPressed: notifier.resetDefaults,
            child: Text(s.actions.resetDefaults),
          ),
          OutlinedButton(
            key: const Key('ds-revert'),
            onPressed: draft.dirty ? notifier.revert : null,
            child: Text(s.actions.revert),
          ),
          FilledButton.icon(
            key: const Key('ds-save'),
            onPressed: draft.dirty && !draft.saving ? notifier.save : null,
            icon: const Icon(Icons.save_outlined),
            label: Text(s.actions.save),
          ),
        ],
      ],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (draft.loadFailed) _Banner(key: const Key('ds-load-failed'), text: s.loadFailed, color: scheme.errorContainer, onColor: scheme.onErrorContainer),
          if (draft.notice == DraftNotice.saved) _Banner(key: const Key('ds-saved'), text: s.saved, color: scheme.primaryContainer, onColor: scheme.onPrimaryContainer),
          if (draft.notice == DraftNotice.saveFailed) _Banner(key: const Key('ds-save-failed'), text: s.saveFailed, color: scheme.errorContainer, onColor: scheme.onErrorContainer),
          if (draft.dirty && draft.notice == null) _Banner(key: const Key('ds-unsaved'), text: s.unsaved, color: scheme.tertiaryContainer, onColor: scheme.onTertiaryContainer),
          if (!problems.isEmpty)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: ExpansionTile(
                key: const Key('ds-problems'),
                title: Text('${s.problemsTitle} (${problems.messages.length})'),
                dense: true,
                children: [for (final m in problems.messages) ListTile(dense: true, title: Text(m))],
              ),
            ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, c) {
                if (c.maxWidth >= 1000) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: form),
                      const SizedBox(width: 16),
                      SizedBox(width: 460, child: SingleChildScrollView(child: preview)),
                    ],
                  );
                }
                return Column(
                  children: [
                    Expanded(flex: 3, child: form),
                    const Divider(),
                    Expanded(flex: 2, child: SingleChildScrollView(child: preview)),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _scroll(Widget child) => SingleChildScrollView(padding: const EdgeInsets.only(right: 8, bottom: 24), child: child);
}

class _Banner extends StatelessWidget {
  const _Banner({super.key, required this.text, required this.color, required this.onColor});
  final String text;
  final Color color;
  final Color onColor;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(6)),
        child: Text(text, style: TextStyle(color: onColor)),
      );
}

// ---------------------------------------------------------------------------------------------
// 承認スタンプ
// ---------------------------------------------------------------------------------------------

class _StampForm extends StatelessWidget {
  const _StampForm({required this.draft, required this.set, required this.s});

  final SettingsDraft draft;
  final JsonSetter set;
  final DocumentSettingsStrings s;

  @override
  Widget build(BuildContext context) {
    final j = draft.json;
    final g = draft.generation;
    final items = (valueAt(j, ['stamp', 'items']) as List?) ?? const [];

    Widget nf(List<String> p, String label, {bool integer = false, double width = 150}) =>
        NumberField(json: j, path: p, label: label, onSet: set, generation: g, integer: integer, width: width);
    Widget text(List<String> p, String label, {bool nullIfEmpty = false, double width = 150}) =>
        TextValueField(json: j, path: p, label: label, onSet: set, generation: g, nullIfEmpty: nullIfEmpty, width: width);
    Widget drop(List<String> p, String label, Map<String, String> options, {double width = 190}) =>
        DropField(json: j, path: p, label: label, onSet: set, options: options, width: width);

    final opacity = (valueAt(j, ['stamp', 'opacity']) as num?)?.toDouble() ?? 0.6;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormSection(
          title: s.stamp.position,
          children: [
            FieldRow(children: [
              drop(['stamp', 'position', 'anchor'], s.stamp.anchor, {
                'topLeft': s.stamp.anchors.topLeft,
                'topRight': s.stamp.anchors.topRight,
                'bottomLeft': s.stamp.anchors.bottomLeft,
                'bottomRight': s.stamp.anchors.bottomRight,
                'center': s.stamp.anchors.center,
              }),
              nf(['stamp', 'position', 'offsetXmm'], s.stamp.offsetX),
              nf(['stamp', 'position', 'offsetYmm'], s.stamp.offsetY),
              drop(['stamp', 'position', 'pages'], s.stamp.pages, {
                'first': s.stamp.pagesValues.first,
                'all': s.stamp.pagesValues.all,
              }, width: 220),
            ]),
          ],
        ),
        FormSection(
          title: s.stamp.look,
          children: [
            Row(
              children: [
                SizedBox(width: 150, child: Text('${s.stamp.opacity}: ${(opacity * 100).round()}%')),
                Expanded(
                  child: Slider(
                    key: const Key('f-stamp.opacity'),
                    value: opacity.clamp(0.0, 1.0),
                    min: 0,
                    max: 1,
                    divisions: 20,
                    onChanged: (v) => set(['stamp', 'opacity'], double.parse(v.toStringAsFixed(2))),
                  ),
                ),
              ],
            ),
            FieldRow(children: [
              drop(['stamp', 'layer'], s.stamp.layer, {
                'background': s.stamp.layers.background,
                'foreground': s.stamp.layers.foreground,
              }, width: 230),
              drop(['stamp', 'shape', 'kind'], s.stamp.shape, {
                'circle': s.stamp.shapes.circle,
                'roundRect': s.stamp.shapes.roundRect,
                'doubleFrame': s.stamp.shapes.doubleFrame,
                'dateStamp': s.stamp.shapes.dateStamp,
              }),
              nf(['stamp', 'shape', 'widthMm'], s.stamp.width),
              nf(['stamp', 'shape', 'heightMm'], s.stamp.height),
              nf(['stamp', 'shape', 'rotationDeg'], s.stamp.rotation),
            ]),
            Text(s.stamp.colors, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            FieldRow(children: [
              text(['stamp', 'color', 'text'], s.stamp.colorText),
              text(['stamp', 'color', 'frame'], s.stamp.colorFrame),
              text(['stamp', 'color', 'fill'], s.stamp.colorFill, nullIfEmpty: true, width: 190),
            ]),
          ],
        ),
        FormSection(
          title: s.stamp.content,
          children: [
            FieldRow(children: [
              drop(['stamp', 'labelLanguage'], s.stamp.labelLanguage, {'ja': '日本語 (ja)', 'en': 'English (en)'}),
              drop(['stamp', 'stages'], s.stamp.stages, {
                'all': s.stamp.stagesValues.all,
                'last': s.stamp.stagesValues.last,
              }, width: 260),
            ]),
          ],
        ),
        FormSection(
          title: s.stamp.items,
          children: [
            for (var i = 0; i < items.length; i++)
              FieldRow(
                key: Key('ds-item-$i'),
                children: [
                  DropField(
                    json: j,
                    path: ['stamp', 'items', '$i', 'field'],
                    label: s.stamp.itemField,
                    onSet: (_, v) => _setItem(i, 'field', v),
                    options: {for (final f in StampContentBuilder.fields) f: _fieldLabel(f)},
                    width: 230,
                  ),
                  _itemText(i, 'format', s.stamp.itemFormat, g, items),
                  _itemNum(i, 'size', s.stamp.itemSize, g, items, integer: false),
                  _itemNum(i, 'line', s.stamp.itemLine, g, items, integer: true, width: 90),
                  IconButton(
                    key: Key('ds-item-remove-$i'),
                    tooltip: s.pdf.remove,
                    onPressed: () => _removeItem(i, items),
                    icon: const Icon(Icons.delete_outline),
                  ),
                ],
              ),
            OutlinedButton.icon(
              key: const Key('ds-item-add'),
              onPressed: () => _addItem(items),
              icon: const Icon(Icons.add),
              label: Text(s.stamp.addItem),
            ),
          ],
        ),
        FormSection(
          title: s.stamp.pending,
          children: [
            SwitchField(json: j, path: const ['stamp', 'pending', 'dashed'], label: s.stamp.pendingDashed, onSet: set),
            FieldRow(children: [text(['stamp', 'pending', 'color'], s.stamp.pendingColor)]),
          ],
        ),
      ],
    );
  }

  String _fieldLabel(String f) => switch (f) {
        'stamp_label' => s.stamp.fields.stamp_label,
        'approved_at' => s.stamp.fields.approved_at,
        'approved_staff' => s.stamp.fields.approved_staff,
        'approval_name' => s.stamp.fields.approval_name,
        'version_code' => s.stamp.fields.version_code,
        'control_number' => s.stamp.fields.control_number,
        'document_revision' => s.stamp.fields.document_revision,
        'approved_remarks' => s.stamp.fields.approved_remarks,
        _ => f,
      };

  List<Object?> _copyItems(List items) => [for (final e in items) Map<String, dynamic>.from(e as Map)];

  void _setItem(int i, String key, Object? value) {
    final items = _copyItems((valueAt(draft.json, ['stamp', 'items']) as List?) ?? const []);
    final m = items[i] as Map<String, dynamic>;
    if (value == null || (value is String && value.isEmpty && key == 'format')) {
      m.remove(key);
    } else {
      m[key] = value;
    }
    set(['stamp', 'items'], items);
  }

  void _addItem(List items) {
    final next = _copyItems(items)..add({'field': 'stamp_label', 'size': 10, 'line': items.length + 1});
    set(['stamp', 'items'], next);
  }

  void _removeItem(int i, List items) {
    final next = _copyItems(items)..removeAt(i);
    set(['stamp', 'items'], next);
  }

  Widget _itemText(int i, String key, String label, int g, List items) => _ItemText(
        key: Key('ds-item-$i-$key-$g'),
        initial: ((items[i] as Map)[key] ?? '').toString(),
        label: label,
        onChanged: (t) => _setItem(i, key, t),
      );

  Widget _itemNum(int i, String key, String label, int g, List items, {required bool integer, double width = 110}) => _ItemText(
        key: Key('ds-item-$i-$key-$g'),
        initial: ((items[i] as Map)[key] ?? '').toString().replaceAll(RegExp(r'\.0$'), ''),
        label: label,
        width: width,
        number: true,
        onChanged: (t) {
          final n = integer ? int.tryParse(t) : double.tryParse(t);
          if (n != null) _setItem(i, key, n);
        },
      );
}

class _ItemText extends StatelessWidget {
  const _ItemText({super.key, required this.initial, required this.label, required this.onChanged, this.width = 170, this.number = false});

  final String initial;
  final String label;
  final void Function(String) onChanged;
  final double width;
  final bool number;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: width,
        child: TextFormField(
          initialValue: initial,
          decoration: InputDecoration(labelText: label, isDense: true, border: const OutlineInputBorder()),
          keyboardType: number ? const TextInputType.numberWithOptions(decimal: true) : null,
          onChanged: onChanged,
        ),
      );
}

// ---------------------------------------------------------------------------------------------
// PDF
// ---------------------------------------------------------------------------------------------

class _PdfForm extends StatefulWidget {
  const _PdfForm({
    required this.draft,
    required this.set,
    required this.s,
    required this.onFocus,
    required this.onInsert,
    required this.customNames,
  });

  final SettingsDraft draft;
  final JsonSetter set;
  final DocumentSettingsStrings s;
  final void Function(TextEditingController, VoidCallback) onFocus;
  final void Function(String name) onInsert;
  final List<String> customNames;

  @override
  State<_PdfForm> createState() => _PdfFormState();
}

class _PdfFormState extends State<_PdfForm> {
  DocumentSettingsStrings get s => widget.s;

  @override
  Widget build(BuildContext context) {
    final j = widget.draft.json;
    final g = widget.draft.generation;
    final set = widget.set;

    Widget nf(List<String> p, String label, {double width = 130}) =>
        NumberField(json: j, path: p, label: label, onSet: set, generation: g, width: width);
    Widget text(List<String> p, String label, {double width = 150, bool nullIfEmpty = false}) =>
        TextValueField(json: j, path: p, label: label, onSet: set, generation: g, width: width, nullIfEmpty: nullIfEmpty);
    Widget drop(List<String> p, String label, Map<String, String> o, {double width = 170}) =>
        DropField(json: j, path: p, label: label, onSet: set, options: o, width: width);

    Widget band(String name, String title) => FormSection(
          title: title,
          children: [
            SwitchField(json: j, path: ['pdf', name, 'enabled'], label: s.pdf.bandEnabled, onSet: set),
            FieldRow(children: [
              nf(['pdf', name, 'heightMm'], s.pdf.bandHeight),
              nf(['pdf', name, 'size'], s.pdf.bandSize),
              text(['pdf', name, 'color'], s.pdf.bandColor),
              drop(['pdf', name, 'firstPage'], s.pdf.bandFirstPage, {'same': s.pdf.firstSame, 'none': s.pdf.firstNone}, width: 200),
            ]),
            SwitchField(json: j, path: ['pdf', name, 'border'], label: s.pdf.bandBorder, onSet: set),
            for (final pos in ['left', 'center', 'right'])
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextValueField(
                  json: j,
                  path: ['pdf', name, pos],
                  label: switch (pos) {
                    'left' => s.pdf.bandLeft,
                    'center' => s.pdf.bandCenter,
                    _ => s.pdf.bandRight,
                  },
                  onSet: set,
                  generation: g,
                  onFocus: widget.onFocus,
                ),
              ),
          ],
        );

    final headings = ['h1', 'h2', 'h3'];
    final custom = (valueAt(j, ['pdf', 'custom']) as Map?) ?? const {};
    final vars = (valueAt(j, ['pdf', 'theme', 'vars']) as Map?) ?? const {};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FormSection(
          title: s.pdf.page,
          children: [
            FieldRow(children: [
              drop(['pdf', 'page', 'size'], s.pdf.size, {for (final z in ['A3', 'A4', 'A5', 'B4', 'B5', 'LETTER']) z: z}, width: 140),
              drop(['pdf', 'page', 'orientation'], s.pdf.orientation, {'portrait': s.pdf.portrait, 'landscape': s.pdf.landscape}, width: 120),
            ]),
            Text(s.pdf.margins, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            FieldRow(children: [
              nf(['pdf', 'page', 'marginMm', 'top'], s.pdf.marginTop, width: 100),
              nf(['pdf', 'page', 'marginMm', 'right'], s.pdf.marginRight, width: 100),
              nf(['pdf', 'page', 'marginMm', 'bottom'], s.pdf.marginBottom, width: 100),
              nf(['pdf', 'page', 'marginMm', 'left'], s.pdf.marginLeft, width: 100),
            ]),
          ],
        ),
        FormSection(
          title: s.pdf.theme,
          children: [
            Text(s.pdf.vars, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            FieldRow(children: [
              for (final k in vars.keys) text(['pdf', 'theme', 'vars', '$k'], '$k', width: 140),
            ]),
            Text(s.pdf.fonts, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            FieldRow(children: [
              text(['pdf', 'theme', 'font', 'family'], s.pdf.fontFamily, width: 200),
              nf(['pdf', 'theme', 'font', 'baseSize'], s.pdf.baseSize),
              nf(['pdf', 'theme', 'font', 'lineHeight'], s.pdf.lineHeight),
            ]),
            Text(s.pdf.colors, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            FieldRow(children: [
              text(['pdf', 'theme', 'colors', 'text'], s.pdf.colorText),
              text(['pdf', 'theme', 'colors', 'heading'], s.pdf.colorHeading),
              text(['pdf', 'theme', 'colors', 'link'], s.pdf.colorLink),
              text(['pdf', 'theme', 'colors', 'quote'], s.pdf.colorQuote),
              text(['pdf', 'theme', 'colors', 'codeBackground'], s.pdf.colorCodeBackground),
              text(['pdf', 'theme', 'colors', 'tableBorder'], s.pdf.colorTableBorder),
              text(['pdf', 'theme', 'colors', 'tableHeaderBackground'], s.pdf.colorTableHeader),
            ]),
            Text(s.pdf.headings, style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 6),
            for (final h in headings)
              FieldRow(children: [
                SizedBox(width: 30, child: Text(h.toUpperCase())),
                nf(['pdf', 'theme', 'headings', h, 'size'], s.pdf.headingSize),
                if (h == 'h1')
                  SizedBox(
                    width: 240,
                    child: SwitchField(json: j, path: const ['pdf', 'theme', 'headings', 'h1', 'pageBreakBefore'], label: s.pdf.headingBreak, onSet: set),
                  ),
              ]),
          ],
        ),
        band('header', s.pdf.header),
        band('footer', s.pdf.footer),
        FormSection(
          title: s.pdf.variablesTitle,
          children: [
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final v in PdfBandResolver.variableNames)
                  ActionChip(key: Key('ds-var-$v'), label: Text(v), onPressed: () => widget.onInsert(v)),
                for (final v in widget.customNames) ActionChip(key: Key('ds-var-var.$v'), label: Text('var.$v'), onPressed: () => widget.onInsert('var.$v')),
              ],
            ),
            const SizedBox(height: 6),
            Text(s.pdf.variablesHint, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        FormSection(
          title: s.pdf.custom,
          children: [
            for (final k in custom.keys)
              FieldRow(key: Key('ds-custom-$k'), children: [
                SizedBox(width: 140, child: Text('$k')),
                text(['pdf', 'custom', '$k'], s.pdf.customValue, width: 260),
                IconButton(
                  key: Key('ds-custom-remove-$k'),
                  tooltip: s.pdf.remove,
                  icon: const Icon(Icons.delete_outline),
                  onPressed: () {
                    final next = Map<String, dynamic>.from(custom.cast<String, dynamic>())..remove(k);
                    set(['pdf', 'custom'], next);
                  },
                ),
              ]),
            OutlinedButton.icon(
              key: const Key('ds-custom-add'),
              icon: const Icon(Icons.add),
              label: Text(s.pdf.addCustom),
              onPressed: () {
                var n = custom.length + 1;
                while (custom.containsKey('var$n')) {
                  n++;
                }
                final next = Map<String, dynamic>.from(custom.cast<String, dynamic>())..['var$n'] = '';
                set(['pdf', 'custom'], next);
              },
            ),
          ],
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------------------------
// JSON
// ---------------------------------------------------------------------------------------------

class _JsonForm extends ConsumerStatefulWidget {
  const _JsonForm({required this.draft, required this.s, required this.onApply});

  final SettingsDraft draft;
  final DocumentSettingsStrings s;

  /// スキーマで検査して、誤りが無ければ取り込む。誤りを返す(空なら取り込んだ)。
  final List<SettingsSchemaIssue> Function(Object? json) onApply;

  @override
  ConsumerState<_JsonForm> createState() => _JsonFormState();
}

class _JsonFormState extends ConsumerState<_JsonForm> {
  /// スキーマの誤りの一覧に出す件数の上限(残りは「ほか N 件」)。
  static const _maxIssues = 30;

  late final TextEditingController _c = TextEditingController(text: _pretty());
  String? _error;
  List<SettingsSchemaIssue> _issues = const [];
  String? _imported;
  int _gen = 0;

  String _pretty() => const JsonEncoder.withIndent('  ').convert(widget.draft.json);

  @override
  void didUpdateWidget(_JsonForm old) {
    super.didUpdateWidget(old);
    // フォームの変更を、JSON の欄にも反映する(この欄で入力中でないとき)
    if (!_focused && jsonEncode(old.draft.json) != jsonEncode(widget.draft.json)) {
      _c.text = _pretty();
    }
    if (old.draft.generation != widget.draft.generation) _gen = widget.draft.generation;
  }

  var _focused = false;

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  /// 読み込んだ JSON を、スキーマで検査して取り込む。取り込めたとき true。
  bool _applyValue(Object? v) {
    if (v is! Map) {
      setState(() {
        _error = widget.s.json.invalid;
        _issues = const [];
        _imported = null;
      });
      return false;
    }
    final issues = widget.onApply(v);
    setState(() {
      _error = null;
      _issues = issues;
      _imported = null;
    });
    if (issues.isEmpty) _c.text = _pretty();
    return issues.isEmpty;
  }

  void _apply() {
    try {
      _applyValue(jsonDecode(_c.text));
    } on FormatException {
      setState(() {
        _error = widget.s.json.invalid;
        _issues = const [];
      });
    }
  }

  /// JSON ファイルを選んで、スキーマで検査して取り込む(取り込んだ設定は未保存)。
  Future<void> _import() async {
    final picked = await ref.read(documentSettingsFilePickerProvider).pick();
    if (picked == null || !mounted) return;
    Object? value;
    try {
      var bytes = picked.bytes;
      if (bytes.length >= 3 && bytes[0] == 0xEF && bytes[1] == 0xBB && bytes[2] == 0xBF) bytes = bytes.sublist(3); // BOM
      value = jsonDecode(utf8.decode(bytes));
    } on FormatException {
      setState(() {
        _error = widget.s.json.invalid;
        _issues = const [];
        _imported = null;
      });
      return;
    }
    if (_applyValue(value)) setState(() => _imported = picked.name);
  }

  @override
  Widget build(BuildContext context) {
    final s = widget.s;
    final scheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(s.json.hint, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 4),
        Text(s.json.schemaHint, style: Theme.of(context).textTheme.bodySmall),
        const SizedBox(height: 8),
        Focus(
          onFocusChange: (f) => _focused = f,
          child: TextField(
            key: Key('ds-json-$_gen'),
            controller: _c,
            minLines: 18,
            maxLines: null,
            style: const TextStyle(fontFamily: 'monospace', fontSize: 12.5),
            decoration: InputDecoration(border: const OutlineInputBorder(), errorText: _error),
          ),
        ),
        if (_issues.isNotEmpty) ...[
          const SizedBox(height: 8),
          Container(
            key: const Key('ds-json-issues'),
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: scheme.errorContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.json.schemaErrors(count: _issues.length),
                  style: TextStyle(fontWeight: FontWeight.w700, color: scheme.onErrorContainer),
                ),
                const SizedBox(height: 4),
                for (final i in _issues.take(_maxIssues))
                  Text(i.toString(), style: TextStyle(fontSize: 12.5, color: scheme.onErrorContainer)),
                if (_issues.length > _maxIssues)
                  Text(
                    s.json.schemaMore(count: _issues.length - _maxIssues),
                    style: TextStyle(fontSize: 12.5, color: scheme.onErrorContainer),
                  ),
              ],
            ),
          ),
        ],
        if (_imported != null) ...[
          const SizedBox(height: 8),
          Text(key: const Key('ds-json-imported'), s.json.imported(name: _imported!), style: TextStyle(color: scheme.primary)),
        ],
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.centerRight,
          child: Wrap(
            spacing: 8,
            children: [
              OutlinedButton.icon(
                key: const Key('ds-json-import'),
                onPressed: _import,
                icon: const Icon(Icons.file_open_outlined),
                label: Text(s.json.import),
              ),
              FilledButton(key: const Key('ds-json-apply'), onPressed: _apply, child: Text(s.actions.apply)),
            ],
          ),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------------------------
// プレビュー
// ---------------------------------------------------------------------------------------------

class _Preview extends StatelessWidget {
  const _Preview({required this.settings, required this.page, required this.onPage, required this.s});

  final AppSettings settings;
  final int page;
  final void Function(int) onPage;
  final DocumentSettingsStrings s;

  @override
  Widget build(BuildContext context) {
    final steps = [
      ApprovalStepInfo(
        approved: true,
        rejected: false,
        pending: false,
        stampLabelJa: '承認',
        stampLabelEn: 'Approval',
        priority: 1,
        approvedAt: DateTime(2026, 11, 3, 9, 30),
        approvedStaff: '田中 太郎',
        approvalName: '品質責任者',
        versionCode: 'v1.2',
        controlNumber: 'QM-001',
        documentRevision: 3,
      ),
      const ApprovalStepInfo(
        approved: false,
        rejected: false,
        pending: true,
        stampLabelJa: '承認待ち',
        stampLabelEn: 'Pending',
        priority: 2,
        approvalName: '製造責任者',
      ),
    ];
    final style = settings.stamp;
    final cards = const StampContentBuilder().build(style, steps);
    final info = PdfDocumentInfo(
      title: '品質マニュアル',
      controlNumber: 'QM-001',
      versionCode: 'v1.2',
      revision: 3,
      statusLabel: '承認待ち',
      approvedAt: DateTime(2026, 11, 3, 9, 30),
      approvedBy: '田中 太郎',
      printedAt: DateTime(2026, 11, 21),
      printedBy: '鈴木 一郎',
    );
    final resolver = PdfBandResolver(settings.pdf, info);
    final header = resolver.header(pageIndex: page, pages: 2, chapter: page == 0 ? '1. 目的' : '2. 手順');
    final footer = resolver.footer(pageIndex: page, pages: 2, chapter: page == 0 ? '1. 目的' : '2. 手順');
    final scheme = Theme.of(context).colorScheme;
    // 用紙の向きに依らず、幅 400px 程度に収める
    final pxPerMm = 400 / settings.pdf.page.widthMm;

    return Column(
      key: const Key('ds-preview'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(s.preview.title, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
            const Spacer(),
            SegmentedButton<int>(
              key: const Key('ds-preview-page'),
              showSelectedIcon: false,
              segments: [
                ButtonSegment(value: 0, label: Text(s.preview.pageFirst)),
                ButtonSegment(value: 1, label: Text(s.preview.pageSecond)),
              ],
              selected: {page},
              onSelectionChanged: (v) => onPage(v.first),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(s.preview.sampleNote, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: scheme.onSurfaceVariant)),
        const SizedBox(height: 10),
        Center(
          child: StampPagePreview(
            settings: settings.pdf,
            style: style,
            cards: cards,
            pageIndex: page,
            pxPerMm: pxPerMm,
            headerText: header,
            footerText: footer,
          ),
        ),
      ],
    );
  }
}
