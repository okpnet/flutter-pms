import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pms_app/services/services.dart' show rootRouterProvider;

import 'checks_store.dart';

/// 画面の確認項目の評価パネル(右端のオーバーレイ)。
///
/// 開いて、いまの画面に対応する項目の基準を見ながら、状態とコメント(と画面の画像)を
/// `issue/checks` へ追記する。アプリの画面・ルーターには手を入れず、画面の外側(`Stack` の上)に置く。
/// 開閉は右端のタブか Ctrl+Shift+E。
/// パターン: Observer(ルーターの変化を見て、いまの画面のパスを更新する)。
class ChecksPanel extends ConsumerStatefulWidget {
  const ChecksPanel({super.key, required this.store, required this.captureKey});

  /// 保存先。null のとき(`issue/checks` が見つからない)は、保存できない旨を出す。
  final ChecksStore? store;

  /// 画面の画像を撮る対象(アプリ本体を包んだ `RepaintBoundary` のキー)。
  final GlobalKey captureKey;

  @override
  ConsumerState<ChecksPanel> createState() => _ChecksPanelState();
}

class _ChecksPanelState extends ConsumerState<ChecksPanel> {
  bool _open = false;
  String _location = '';
  Listenable? _delegate;
  Timer? _wait;
  List<CheckItem> _candidates = [];
  bool _showAll = false;
  CheckItem? _selected;
  bool _creating = false;
  String _status = '確認済';
  final _comment = TextEditingController();
  final _place = TextEditingController();
  final _criterion = TextEditingController();
  Uint8List? _shot;
  String? _message;

  @override
  void initState() {
    super.initState();
    HardwareKeyboard.instance.addHandler(_onKey);
    _attach();
    // アプリが起動を終えて、ルーターができてから追従する(その前に読むと、起動の途中でルーターを作ってしまう)
    _wait = Timer.periodic(const Duration(milliseconds: 500), (_) => _attach());
  }

  @override
  void dispose() {
    HardwareKeyboard.instance.removeHandler(_onKey);
    _wait?.cancel();
    _delegate?.removeListener(_onRoute);
    _comment.dispose();
    _place.dispose();
    _criterion.dispose();
    super.dispose();
  }

  bool _onKey(KeyEvent e) {
    if (e is KeyDownEvent &&
        e.logicalKey == LogicalKeyboardKey.keyE &&
        HardwareKeyboard.instance.isControlPressed &&
        HardwareKeyboard.instance.isShiftPressed) {
      setState(() => _open = !_open);
      return true;
    }
    return false;
  }

  void _attach() {
    if (_delegate != null) return;
    if (!ref.exists(rootRouterProvider)) return;
    try {
      final d = ref.read(rootRouterProvider).routerDelegate;
      _delegate = d..addListener(_onRoute);
      _wait?.cancel();
      _onRoute();
    } on Object {
      // まだ使えない(次の周期で再び試す)
    }
  }

  void _onRoute() {
    final String loc;
    try {
      loc = ref.read(rootRouterProvider).state.uri.toString();
    } on Object {
      return;
    }
    if (loc == _location) return;
    _location = loc;
    _reload(keepSelection: false);
  }

  void _reload({bool keepSelection = true}) {
    final store = widget.store;
    final all = store?.list() ?? const <CheckItem>[];
    final matched = all.where((i) => i.matches(_location)).toList();
    final next = (_showAll || matched.isEmpty) ? all : matched;
    CheckItem? sel = keepSelection ? _selected : null;
    if (sel != null) {
      sel = all.where((i) => i.no == sel!.no).firstOrNull;
    }
    sel ??= matched.firstOrNull;
    if (mounted) {
      setState(() {
        _candidates = next;
        _selected = sel;
        if (sel != null && !keepSelection) _status = '確認済';
      });
    }
  }

  Future<void> _capture() async {
    final b = widget.captureKey.currentContext?.findRenderObject();
    if (b is! RenderRepaintBoundary) return;
    final image = await b.toImage(pixelRatio: 1);
    final data = await image.toByteData(format: ui.ImageByteFormat.png);
    if (data == null) return;
    setState(() {
      _shot = data.buffer.asUint8List();
      _message = '画面を撮りました(保存で添付されます)';
    });
  }

  void _save() {
    final store = widget.store;
    if (store == null) return;
    try {
      CheckItem? item = _selected;
      if (_creating) {
        if (_place.text.trim().isEmpty || _criterion.text.trim().isEmpty) {
          setState(() => _message = '場所と基準を入れてください');
          return;
        }
        item = store.create(
          place: _place.text.trim(),
          criterion: _criterion.text,
          path: _location,
        );
      }
      if (item == null) {
        setState(() => _message = '項目を選んでください');
        return;
      }
      if (!_creating) store.bindPath(item, _location);
      store.append(
        item,
        status: _status,
        comment: _comment.text,
        location: _location,
        screenshot: _shot,
      );
      _comment.clear();
      _place.clear();
      _criterion.clear();
      final no = item.no;
      _creating = false;
      _shot = null;
      _selected = null;
      _message = 'No.$no に保存しました';
      _reload();
      setState(() => _selected = _candidates.where((i) => i.no == no).firstOrNull);
    } on Object catch (e) {
      setState(() => _message = '保存できませんでした: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // アプリのテーマとは別の見た目にする(評価の対象に混ぜない)
    // 閉じているときは、タブの大きさだけ(下のアプリの操作をふさがない)
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: _open ? 380 : 28,
        height: _open ? double.infinity : 64,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
          home: _open ? _panel(context) : _tab(),
        ),
      ),
    );
  }

  Widget _tab() => Material(
    color: Colors.indigo,
    borderRadius: const BorderRadius.horizontal(left: Radius.circular(8)),
    child: InkWell(
      onTap: () => setState(() => _open = true),
      borderRadius: const BorderRadius.horizontal(left: Radius.circular(8)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 14),
        child: Text('評価', style: TextStyle(color: Colors.white, fontSize: 12)),
      ),
    ),
  );

  Widget _panel(BuildContext context) {
    final theme = Theme.of(context);
    final item = _selected;
    return Material(
      elevation: 8,
      color: theme.colorScheme.surface,
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Text('画面の評価', style: theme.textTheme.titleMedium)),
                  IconButton(
                    tooltip: '閉じる(Ctrl+Shift+E)',
                    icon: const Icon(Icons.close),
                    onPressed: () => setState(() => _open = false),
                  ),
                ],
              ),
              if (widget.store == null)
                Text(
                  '保存先(issue/checks)が見つかりません。--dart-define=CHECKS_DIR=… で指定してください。',
                  style: TextStyle(color: theme.colorScheme.error),
                ),
              SelectableText('いまの画面: $_location', style: theme.textTheme.bodySmall),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SwitchListTile(
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        title: const Text('新しい項目を作る'),
                        value: _creating,
                        onChanged: (v) => setState(() => _creating = v),
                      ),
                      if (_creating) ...[
                        TextField(
                          controller: _place,
                          decoration: const InputDecoration(labelText: '場所(メニュー・画面の名前)', isDense: true),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          controller: _criterion,
                          minLines: 2,
                          maxLines: 6,
                          decoration: const InputDecoration(labelText: '基準(これが満たされればOK)', isDense: true),
                        ),
                      ] else ...[
                        if (_candidates.isEmpty)
                          const Text('項目がありません。「新しい項目を作る」で足せます。')
                        else
                          DropdownButtonFormField<int>(
                            isExpanded: true,
                            initialValue: _candidates.any((i) => i.no == item?.no) ? item?.no : null,
                            decoration: const InputDecoration(labelText: '項目', isDense: true),
                            items: [
                              for (final i in _candidates)
                                DropdownMenuItem(
                                  value: i.no,
                                  child: Text('${i.no}  ${i.place}', overflow: TextOverflow.ellipsis),
                                ),
                            ],
                            onChanged: (n) => setState(
                              () => _selected = _candidates.where((i) => i.no == n).firstOrNull,
                            ),
                          ),
                        CheckboxListTile(
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: const Text('すべての項目から選ぶ'),
                          value: _showAll,
                          onChanged: (v) {
                            _showAll = v ?? false;
                            _reload();
                          },
                        ),
                        if (item != null) ...[
                          Text('状態: ${item.status}', style: theme.textTheme.labelMedium),
                          const SizedBox(height: 4),
                          Text('基準', style: theme.textTheme.labelMedium),
                          SelectableText(item.criterion),
                          const SizedBox(height: 8),
                          ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            title: const Text('履歴'),
                            children: [SelectableText(item.history, style: theme.textTheme.bodySmall)],
                          ),
                        ],
                      ],
                      const Divider(),
                      DropdownButtonFormField<String>(
                        initialValue: _status,
                        decoration: const InputDecoration(labelText: '評価(状態)', isDense: true),
                        items: [for (final s in ChecksStore.statuses) DropdownMenuItem(value: s, child: Text(s))],
                        onChanged: (v) => setState(() => _status = v ?? _status),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _comment,
                        minLines: 4,
                        maxLines: 10,
                        decoration: const InputDecoration(
                          labelText: 'コメント(複数行可)',
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          OutlinedButton.icon(
                            onPressed: _capture,
                            icon: const Icon(Icons.photo_camera_outlined, size: 18),
                            label: Text(_shot == null ? '画面を撮る' : '撮り直す'),
                          ),
                          if (_shot != null)
                            TextButton(onPressed: () => setState(() => _shot = null), child: const Text('添付しない')),
                        ],
                      ),
                      if (_shot != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.memory(_shot!, height: 90, fit: BoxFit.contain),
                        ),
                    ],
                  ),
                ),
              ),
              if (_message != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text(_message!, style: theme.textTheme.bodySmall),
                ),
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: widget.store == null ? null : _save,
                  child: const Text('保存(履歴に追記)'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
