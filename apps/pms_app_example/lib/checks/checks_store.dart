import 'dart:io';
import 'dart:typed_data';

/// 画面の確認項目(`issue/checks/NNNN.md`)の1件。
class CheckItem {
  const CheckItem({
    required this.no,
    required this.place,
    required this.status,
    required this.paths,
    required this.criterion,
    required this.history,
    required this.file,
  });

  final int no;
  final String place;
  final String status;

  /// 対応する画面のパス(前方一致)。空なら、画面と結び付けない。
  final List<String> paths;
  final String criterion;

  /// 履歴の本文(「## 履歴」の後ろ)。
  final String history;
  final File file;

  /// 現在のパスがこの項目の画面か(パスの前方一致)。
  bool matches(String location) {
    final path = location.split('?').first;
    return paths.any((p) => p.isNotEmpty && path.startsWith(p));
  }
}

/// 確認項目のフォルダの読み書き(`issue/checks`)。
///
/// 履歴は追記だけで、書き換えるのは「状態」の行だけ。スクリーンショットは `img/NNNN_n.png`。
/// パターン: Repository(ファイルを取得元にする)。
class ChecksStore {
  ChecksStore(this.dir);

  final Directory dir;

  /// 状態の選択肢(`issue/checks/README_head.md` と同じ)。
  static const statuses = [
    '確認済',
    '不具合',
    '要再確認',
    '有提案',
    '未対応',
    '一部対応',
    '対応済',
    '未確認',
  ];

  /// `--dart-define=CHECKS_DIR=…` を優先し、無ければ実行場所から上へたどって `issue/checks` を探す。
  /// 見つからなければ null(保存できない)。
  static Directory? locate({String? defined, Directory? from}) {
    final d = defined ?? const String.fromEnvironment('CHECKS_DIR');
    if (d.isNotEmpty) {
      final dir = Directory(d);
      return dir.existsSync() ? dir : null;
    }
    var cur = (from ?? Directory.current).absolute;
    for (var i = 0; i < 6; i++) {
      final c = Directory('${cur.path}${Platform.pathSeparator}issue${Platform.pathSeparator}checks');
      if (c.existsSync()) return c;
      final parent = cur.parent;
      if (parent.path == cur.path) break;
      cur = parent;
    }
    return null;
  }

  static final _name = RegExp(r'^(\d+)\.md$');

  List<CheckItem> list() {
    final items = <CheckItem>[];
    for (final e in dir.listSync().whereType<File>()) {
      final base = e.uri.pathSegments.last;
      if (!_name.hasMatch(base)) continue;
      final item = _parse(e);
      if (item != null) items.add(item);
    }
    items.sort((a, b) => a.no.compareTo(b.no));
    return items;
  }

  List<CheckItem> forLocation(String location) =>
      list().where((i) => i.matches(location)).toList();

  CheckItem? _parse(File f) {
    final text = f.readAsStringSync().replaceAll('\r\n', '\n');
    final m = RegExp(r'^---\n([\s\S]*?)\n---').firstMatch(text);
    if (m == null) return null;
    String get(String key) {
      final r = RegExp('^$key:[ \t]*(.*)\$', multiLine: true).firstMatch(m.group(1)!);
      return (r?.group(1) ?? '').replaceAll(RegExp(r'\s+#.*$'), '').trim();
    }

    final no = int.tryParse(get('no'));
    if (no == null) return null;
    final crit = RegExp(r'## 基準\n([\s\S]*?)\n\n## 履歴').firstMatch(text);
    final hist = text.contains('## 履歴') ? text.split('## 履歴').last.trim() : '';
    return CheckItem(
      no: no,
      place: get('場所'),
      status: get('状態'),
      paths: get('パス').split(',').map((s) => s.trim()).where((s) => s.isNotEmpty).toList(),
      criterion: (crit?.group(1) ?? '').trim(),
      history: hist,
      file: f,
    );
  }

  static String _two(int n) => n.toString().padLeft(2, '0');
  static String today([DateTime? now]) {
    final d = now ?? DateTime.now();
    return '${d.year}-${_two(d.month)}-${_two(d.day)}';
  }

  static String _fileName(int no) => '${no.toString().padLeft(4, '0')}.md';

  /// 履歴に1件を追記し、状態を変える。スクリーンショットがあれば保存してリンクを付ける。
  /// 戻り値は追記した行。
  String append(
    CheckItem item, {
    required String status,
    required String comment,
    String? location,
    Uint8List? screenshot,
    DateTime? now,
  }) {
    var text = item.file.readAsStringSync().replaceAll('\r\n', '\n');
    // 状態の行だけを書き換える(前書きの中のものだけ)
    text = text.replaceFirstMapped(
      RegExp(r'^(---\n[\s\S]*?)^状態:.*$', multiLine: true),
      (m) => '${m.group(1)}状態: $status',
    );
    final lines = StringBuffer('- ${today(now)} 確認');
    if (location != null && location.isNotEmpty) lines.write('(画面: $location)');
    lines.write(': ');
    final body = comment.trim().isEmpty ? '(コメントなし)' : comment.trim();
    lines.write(body.replaceAll('\n', '\n  '));
    lines.write(' → $status');
    if (screenshot != null) {
      final img = Directory('${dir.path}${Platform.pathSeparator}img')..createSync();
      final prefix = '${item.no.toString().padLeft(4, '0')}_';
      final n = img
              .listSync()
              .map((e) => e.uri.pathSegments.last)
              .where((s) => s.startsWith(prefix) && s.endsWith('.png'))
              .length +
          1;
      final name = '$prefix$n.png';
      File('${img.path}${Platform.pathSeparator}$name').writeAsBytesSync(screenshot);
      lines.write('\n  ![画面](img/$name)');
    }
    if (!text.endsWith('\n')) text += '\n';
    text += '$lines\n';
    item.file.writeAsStringSync(text);
    return lines.toString();
  }

  /// 新しい項目を、次の番号で作る。
  CheckItem create({
    required String place,
    required String criterion,
    String path = '',
    String status = '未確認',
  }) {
    final no = list().fold<int>(0, (m, i) => i.no > m ? i.no : m) + 1;
    final f = File('${dir.path}${Platform.pathSeparator}${_fileName(no)}');
    final pathLine = path.isEmpty ? '' : 'パス: ${path.split('?').first}\n';
    f.writeAsStringSync(
      '---\nno: $no\n場所: $place\n$pathLine状態: $status\n---\n\n## 基準\n${criterion.trim()}\n\n## 履歴\n- (記録なし)\n',
    );
    return _parse(f)!;
  }

  /// 項目に画面のパスを結び付ける(前書きに `パス:` が無いときだけ足す)。
  void bindPath(CheckItem item, String location) {
    final p = location.split('?').first;
    if (p.isEmpty || item.paths.contains(p)) return;
    var text = item.file.readAsStringSync().replaceAll('\r\n', '\n');
    if (RegExp(r'^パス:', multiLine: true).hasMatch(text.split('\n---\n').first)) {
      text = text.replaceFirstMapped(RegExp(r'^パス:(.*)$', multiLine: true), (m) => 'パス:${m.group(1)}, $p');
    } else {
      text = text.replaceFirstMapped(RegExp(r'^状態:', multiLine: true), (m) => 'パス: $p\n状態:');
    }
    item.file.writeAsStringSync(text);
  }
}
