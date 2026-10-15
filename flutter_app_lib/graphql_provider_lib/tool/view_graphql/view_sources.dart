// 分割されたview.yaml(source/views/ 以下の複数ファイル)を、1つのYAMLテキストに結合する(要件0052)。
//
// YAMLのアンカー(`&名前`)とエイリアス(`*名前`)は、1つのドキュメントの中でしか使えない。
// そこで、各ファイルをトップノード(列0のキー)の単位に分け、アンカーの依存関係に沿って並べ替えて
// 連結し、1つのドキュメントとして解析する。これにより、既存の`<<: *名前`をそのまま使える。
//   - 依存するノード(アンカーの定義元)が先に来るように並べる。ファイルをまたいでもよい。
//   - 依存の順序を守れる範囲で、元の順序(ファイルのパス順、ファイル内の記述順)を保つ。
//   - 同名のトップノード・同名のアンカー・未定義のアンカー・循環はエラーとする。
//   - 解析エラーは、結合後の行番号を元のファイルと行番号へ戻して報告する。

import 'dart:io';

import 'package:yaml/yaml.dart';

import 'yaml_loader.dart';

class ViewSourceException implements Exception {
  ViewSourceException(this.message);
  final String message;
  @override
  String toString() => message;
}

class _Block {
  _Block(this.name, this.file, this.lines, this.numbers);
  final String name;
  final String file;
  final List<String> lines;

  /// `lines`の各行の、ファイル内の行番号(1始まり)
  final List<int> numbers;

  /// ノードのキーの行(ファイル内の行番号)
  int get keyLine => numbers[lines.indexWhere((l) => _keyLine.hasMatch(l))];
  final anchors = <String>{};

  /// 参照するアンカー名 -> 最初に参照した行(ファイル内の行番号)
  final refs = <String, int>{};
}

class _Segment {
  _Segment(this.combinedStart, this.file, this.numbers);
  final int combinedStart;
  final String file;
  final List<int> numbers;
}

class CombinedViewSources {
  CombinedViewSources(this.text, this._segments, this.order);

  /// 結合後のYAMLテキスト
  final String text;
  final List<_Segment> _segments;

  /// 結合後のトップノードの並び(`ファイル: ノード名`)
  final List<String> order;

  /// 結合後の行番号(1始まり)を`ファイル:行`へ戻す。
  String locate(int combinedLine) {
    for (final s in _segments) {
      if (combinedLine >= s.combinedStart && combinedLine < s.combinedStart + s.numbers.length) {
        return '${s.file}:${s.numbers[combinedLine - s.combinedStart]}';
      }
    }
    // ドキュメントの末尾で検出されるエラー(閉じていない括弧等)は、最後のノードの末尾付近とする。
    if (_segments.isNotEmpty) {
      final last = _segments.last;
      return '${last.file}:${last.numbers.last}付近';
    }
    return '(結合後)$combinedLine行';
  }

  Map<String, dynamic> load() {
    try {
      return loadViewYaml(text);
    } on YamlException catch (e) {
      final line = e.span?.start.line;
      throw ViewSourceException('${line == null ? '' : '${locate(line + 1)}: '}${e.message}');
    }
  }
}

final _keyLine = RegExp(r'^([A-Za-z_]\w*)\s*:');
final _anchor = RegExp(r'(?:^|[\s\[,:\-])&([A-Za-z_]\w*)');
final _alias = RegExp(r'(?:^|[\s\[,:\-])\*([A-Za-z_]\w*)');
final _headerComment = RegExp(r'^#\s*yaml-language-server\s*:');

String _stripComment(String line) {
  if (line.startsWith('#')) return '';
  return line.replaceFirst(RegExp(r'\s#.*$'), '');
}

/// ファイルをトップノード(列0のキー)の単位に分ける。
/// ノードの直前にある列0のコメントと空行は、そのノードに付ける。
List<_Block> _splitBlocks(String file, String text) {
  final lines = text.replaceAll('\r\n', '\n').split('\n');
  final blocks = <_Block>[];
  var pending = <String>[];
  var pendingNos = <int>[];
  _Block? current;
  for (var i = 0; i < lines.length; i++) {
    final line = lines[i];
    if (_headerComment.hasMatch(line)) continue;
    final m = _keyLine.firstMatch(line);
    if (m != null) {
      // 直前のノードの末尾にある列0のコメント・空行は、次のノードに付け替える。
      final tail = <String>[];
      final tailNos = <int>[];
      if (current != null) {
        while (current.lines.length > 1 &&
            (current.lines.last.startsWith('#') || current.lines.last.trim().isEmpty)) {
          tail.insert(0, current.lines.removeLast());
          tailNos.insert(0, current.numbers.removeLast());
        }
      }
      final lead = [...pending, ...tail];
      final leadNos = [...pendingNos, ...tailNos];
      current = _Block(m.group(1)!, file, [...lead, line], [...leadNos, i + 1]);
      blocks.add(current);
      pending = [];
      pendingNos = [];
    } else if (current == null) {
      pending.add(line);
      pendingNos.add(i + 1);
    } else {
      current.lines.add(line);
      current.numbers.add(i + 1);
    }
  }
  // 先頭より前に、キー以外の内容(コメント・空行以外)があればエラーとする。
  for (final l in pending) {
    if (l.trim().isNotEmpty && !l.startsWith('#')) {
      throw ViewSourceException('$file: トップノード(列0のキー)の前に、解釈できない行があります: $l');
    }
  }
  for (final b in blocks) {
    for (var i = 0; i < b.lines.length; i++) {
      final s = _stripComment(b.lines[i]);
      for (final m in _anchor.allMatches(s)) {
        b.anchors.add(m.group(1)!);
      }
      for (final m in _alias.allMatches(s)) {
        b.refs.putIfAbsent(m.group(1)!, () => b.numbers[i]);
      }
    }
  }
  return blocks;
}

/// `files`(キー: `source/views`からの相対パス、値: 内容)を結合する。
CombinedViewSources combineViewSources(Map<String, String> files) {
  final paths = files.keys.toList()..sort();
  final blocks = <_Block>[];
  for (final p in paths) {
    blocks.addAll(_splitBlocks(p, files[p]!));
  }

  final nameAt = <String, _Block>{};
  final anchorAt = <String, _Block>{};
  for (final b in blocks) {
    final dup = nameAt[b.name];
    if (dup != null) {
      throw ViewSourceException(
          'トップノード「${b.name}」が重複しています: ${dup.file}:${dup.keyLine} と ${b.file}:${b.keyLine}');
    }
    nameAt[b.name] = b;
    for (final a in b.anchors) {
      final d = anchorAt[a];
      if (d != null) {
        throw ViewSourceException(
            'アンカー「&$a」が重複しています: ${d.file}(${d.name}) と ${b.file}(${b.name})');
      }
      anchorAt[a] = b;
    }
  }

  final deps = <_Block, Set<_Block>>{};
  for (final b in blocks) {
    final d = <_Block>{};
    for (final r in b.refs.entries) {
      if (b.anchors.contains(r.key)) continue;
      final target = anchorAt[r.key];
      if (target == null) {
        throw ViewSourceException('${b.file}:${r.value}(${b.name}): アンカー「*${r.key}」の定義がありません');
      }
      d.add(target);
    }
    deps[b] = d;
  }

  // 元の順序を保つ並べ替え: 依存先がすべて出力済みの先頭のノードを、順に選ぶ。
  final done = <_Block>{};
  final sorted = <_Block>[];
  while (sorted.length < blocks.length) {
    final next = blocks.cast<_Block?>().firstWhere(
          (b) => !done.contains(b) && deps[b]!.every(done.contains),
          orElse: () => null,
        );
    if (next == null) {
      final rest = blocks.where((b) => !done.contains(b)).map((b) => '${b.file}#${b.name}').join(', ');
      throw ViewSourceException('アンカーの参照が循環しています: $rest');
    }
    done.add(next);
    sorted.add(next);
  }

  final out = StringBuffer();
  final segments = <_Segment>[];
  var line = 1;
  for (final b in sorted) {
    segments.add(_Segment(line, b.file, b.numbers));
    for (final l in b.lines) {
      out.writeln(l);
    }
    line += b.lines.length;
  }
  return CombinedViewSources(out.toString(), segments, [for (final b in sorted) '${b.file}: ${b.name}']);
}

/// `dir`以下の`*.yaml`をすべて読み、結合する。
CombinedViewSources combineViewDirectory(String dir) {
  final root = Directory(dir);
  if (!root.existsSync()) {
    throw ViewSourceException('view.yamlの分割先ディレクトリがありません: $dir');
  }
  final prefix = root.absolute.path.replaceAll('\\', '/');
  final files = <String, String>{};
  for (final e in root.listSync(recursive: true).whereType<File>()) {
    final path = e.absolute.path.replaceAll('\\', '/');
    if (!path.endsWith('.yaml')) continue;
    files[path.substring(prefix.length + 1)] = e.readAsStringSync();
  }
  if (files.isEmpty) throw ViewSourceException('$dir に*.yamlがありません');
  return combineViewSources(files);
}

/// `dir`以下の分割されたview.yamlを読み込み、`<<`を解決したMapにする。
Map<String, dynamic> loadViewDirectory(String dir) => combineViewDirectory(dir).load();
