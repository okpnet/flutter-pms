import 'package:markdown_ast/markdown_ast.dart';
import 'manual_page_record.dart';

/// 本文の見出し(このページの目次の 1 項目)。
class ManualHeadingRef {
  const ManualHeadingRef(this.level, this.text, this.index);
  final int level;
  final String text;

  /// 本文の見出しの通し番号(0 から)。スクロール先の特定に使う。
  final int index;
}

/// ページの集まり(Wiki)に対する問い合わせ。読み取りだけで、状態を持たない。
///
/// ルートは複数ある(`parentId == null` のページ)。ページ名は全体で一意。
///
/// パターン: Facade(ツリー・リンク・検索・書き出しの問い合わせを 1 か所にまとめる)
class ManualWiki {
  ManualWiki(Iterable<ManualPageRecord> pages)
    : pages = List.unmodifiable(pages) {
    for (final p in this.pages) {
      _byId[p.id] = p;
      _byTitle[p.title] = p;
      (_children[p.parentId] ??= []).add(p);
    }
    for (final list in _children.values) {
      list.sort((a, b) => a.order.compareTo(b.order));
    }
  }

  final List<ManualPageRecord> pages;
  final _byId = <String, ManualPageRecord>{};
  final _byTitle = <String, ManualPageRecord>{};
  final _children = <String?, List<ManualPageRecord>>{};

  ManualPageRecord? byId(String? id) => id == null ? null : _byId[id];
  ManualPageRecord? byTitle(String title) => _byTitle[title.trim()];

  /// ルートのページ(並び順)。
  List<ManualPageRecord> get roots => _children[null] ?? const [];

  List<ManualPageRecord> childrenOf(String id) => _children[id] ?? const [];

  /// ルートから [id] の親までのページ(自分を含まない)。
  List<ManualPageRecord> ancestorsOf(String id) {
    final out = <ManualPageRecord>[];
    var cur = byId(id)?.parentId;
    while (cur != null) {
      final p = byId(cur);
      if (p == null) break;
      out.insert(0, p);
      cur = p.parentId;
    }
    return out;
  }

  /// [id] と、その下のすべてのページ(目次の順)。
  List<ManualPageRecord> subtreeOf(String id) {
    final root = byId(id);
    if (root == null) return const [];
    final out = <ManualPageRecord>[];
    void walk(ManualPageRecord p) {
      out.add(p);
      for (final c in childrenOf(p.id)) {
        walk(c);
      }
    }

    walk(root);
    return out;
  }

  /// 目次の番号(「1」「1.2」「1.2.3」)。ルートごとに 1 から数える。
  Map<String, String> get numbering {
    final out = <String, String>{};
    void walk(List<ManualPageRecord> list, String prefix) {
      for (var i = 0; i < list.length; i++) {
        final n = prefix.isEmpty ? '${i + 1}' : '$prefix.${i + 1}';
        out[list[i].id] = n;
        walk(childrenOf(list[i].id), n);
      }
    }

    walk(roots, '');
    return out;
  }

  /// [id] へリンクしているページ(被リンク。自分自身を除く)。
  List<ManualPageRecord> backlinksOf(String id) {
    final title = byId(id)?.title;
    if (title == null) return const [];
    return [
      for (final p in pages)
        if (p.id != id && MarkdownParser.wikiLinks(p.md).contains(title)) p,
    ];
  }

  /// ページ名・本文に [query] を含むページ(大文字小文字を区別しない)。空なら全ページ。
  List<ManualPageRecord> search(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return pages;
    return [
      for (final p in pages)
        if (p.title.toLowerCase().contains(q) || p.md.toLowerCase().contains(q))
          p,
    ];
  }

  /// 本文の見出し(H2・H3)。「このページの目次」に使う。
  static List<ManualHeadingRef> headingsOf(String md) {
    final out = <ManualHeadingRef>[];
    var i = 0;
    for (final b in MarkdownParser.parse(md)) {
      if (b is MdHeading) {
        if (b.level >= 2 && b.level <= 3) {
          out.add(ManualHeadingRef(b.level, b.text, i));
        }
        i++;
      }
    }
    return out;
  }

  /// ページ名が使えるか(空でなく、他のページと重ならない)。
  bool isTitleFree(String title, {String? exceptId}) {
    final t = title.trim();
    if (t.isEmpty) return false;
    final p = _byTitle[t];
    return p == null || p.id == exceptId;
  }

  // ---- Markdown の書き出し ----

  /// 1 ページの Markdown。ページ名を H1 にし、他のページへのリンクは文字だけにする。
  String exportPage(String id) {
    final p = byId(id);
    if (p == null) return '';
    return '# ${p.title}\n\n${_plainLinks(p.md).trim()}\n';
  }

  /// 文書全体(または [rootId] の下)の Markdown。章の順に結合し、見出しの階層を合わせ、
  /// ページ間のリンクを文書内のリンク(`[表示](#id)`)に直す。範囲の外のページへのリンクは文字だけにする。
  String exportAll({String? rootId}) {
    final list = rootId == null
        ? [for (final r in roots) ...subtreeOf(r.id)]
        : subtreeOf(rootId);
    final inScope = {for (final p in list) p.title: p};
    final buf = StringBuffer();
    final baseDepth = rootId == null ? 0 : ancestorsOf(rootId).length;
    for (final p in list) {
      final depth = ancestorsOf(p.id).length - baseDepth;
      final level = (depth + 1).clamp(1, 6);
      buf.writeln('<a id="${p.id}"></a>');
      buf.writeln();
      buf.writeln('${'#' * level} ${p.title}');
      buf.writeln();
      buf.writeln(_shiftHeadings(_scopedLinks(p.md, inScope), level).trim());
      buf.writeln();
    }
    return '${buf.toString().trimRight()}\n';
  }

  static String _plainLinks(String md) => md.replaceAllMapped(
    RegExp(r'\[\[([^\]|\n]+?)(?:\|([^\]\n]+?))?\]\]'),
    (m) => (m.group(2) ?? m.group(1)!).trim(),
  );

  static String _scopedLinks(String md, Map<String, ManualPageRecord> inScope) =>
      md.replaceAllMapped(
        RegExp(r'\[\[([^\]|\n]+?)(?:\|([^\]\n]+?))?\]\]'),
        (m) {
          final target = m.group(1)!.trim();
          final label = (m.group(2) ?? target).trim();
          final page = inScope[target];
          return page == null ? label : '[$label](#${page.id})';
        },
      );

  /// 本文の見出しを、ページの階層([level])の下に収まるようにずらす(H2 → level + 1)。
  static String _shiftHeadings(String md, int level) {
    var inCode = false;
    return md
        .split('\n')
        .map((line) {
          if (line.trimLeft().startsWith('```')) inCode = !inCode;
          if (inCode) return line;
          final m = RegExp(r'^(#{1,6})(\s+.*)$').firstMatch(line);
          if (m == null) return line;
          final shifted = (m.group(1)!.length - 1 + level).clamp(1, 6);
          return '${'#' * shifted}${m.group(2)}';
        })
        .join('\n');
  }
}
