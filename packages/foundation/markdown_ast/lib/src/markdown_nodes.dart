// Markdown の構文木(ブロック・インライン)と、読み取り(MarkdownParser)。依存を持たない純 Dart。

/// Markdown の構文木(ブロック)。
///
/// 対応する書式: H2・H3(H1 はページ名のため本文では使わない)・段落・箇条書き・番号付き・引用・
/// コード・表・区切り線。インラインは 太字・斜体・コード・ページへのリンク(`[[ページ名]]`・`[[ページ名|表示文字]]`)・
/// 外部リンク(`[表示文字](https://…)`)。HTML は解釈しない(文字として出す)。
sealed class MdBlock {
  const MdBlock();
}

class MdHeading extends MdBlock {
  const MdHeading(this.level, this.text);
  final int level;
  final String text;
}

class MdParagraph extends MdBlock {
  const MdParagraph(this.text);
  final String text;
}

class MdList extends MdBlock {
  const MdList(this.items, {required this.ordered});
  final List<String> items;
  final bool ordered;
}

class MdQuote extends MdBlock {
  const MdQuote(this.text);
  final String text;
}

class MdCode extends MdBlock {
  const MdCode(this.text);
  final String text;
}

class MdTable extends MdBlock {
  const MdTable(this.header, this.rows);
  final List<String> header;
  final List<List<String>> rows;
}

class MdRule extends MdBlock {
  const MdRule();
}

/// インライン(段落・項目・セルの中の書式)。
sealed class MdInline {
  const MdInline();
}

class MdText extends MdInline {
  const MdText(this.text);
  final String text;
}

class MdBold extends MdInline {
  const MdBold(this.children);
  final List<MdInline> children;
}

class MdItalic extends MdInline {
  const MdItalic(this.children);
  final List<MdInline> children;
}

class MdInlineCode extends MdInline {
  const MdInlineCode(this.text);
  final String text;
}

/// ページへのリンク。[target] はページ名、[label] は表示文字(無ければページ名)。
class MdWikiLink extends MdInline {
  const MdWikiLink(this.target, this.label);
  final String target;
  final String label;
}

class MdExternalLink extends MdInline {
  const MdExternalLink(this.url, this.label);
  final String url;
  final String label;
}

/// Markdown の読み取りと、インラインの分解。依存を持たない純 Dart。
///
/// パターン: Interpreter(小さな文法を構文木にする)
abstract final class MarkdownParser {
  static final _heading = RegExp(r'^(#{1,6})\s+(.*)$');
  static final _bullet = RegExp(r'^\s*[-*+]\s+(.*)$');
  static final _numbered = RegExp(r'^\s*\d+[.)]\s+(.*)$');
  static final _rule = RegExp(r'^\s*([-*_])(\s*\1){2,}\s*$');
  static final _tableSeparator = RegExp(
    r'^\s*\|?\s*:?-{2,}:?\s*(\|\s*:?-{2,}:?\s*)*\|?\s*$',
  );

  /// [md] をブロックに分ける。
  static List<MdBlock> parse(String md) {
    final lines = md.replaceAll('\r\n', '\n').split('\n');
    final blocks = <MdBlock>[];
    var i = 0;
    while (i < lines.length) {
      final line = lines[i];
      if (line.trim().isEmpty) {
        i++;
        continue;
      }
      if (line.trimLeft().startsWith('```')) {
        final code = <String>[];
        i++;
        while (i < lines.length && !lines[i].trimLeft().startsWith('```')) {
          code.add(lines[i]);
          i++;
        }
        i++; // 閉じの ```(無ければ最後まで)
        blocks.add(MdCode(code.join('\n')));
        continue;
      }
      final h = _heading.firstMatch(line);
      if (h != null) {
        blocks.add(MdHeading(h.group(1)!.length, h.group(2)!.trim()));
        i++;
        continue;
      }
      if (_rule.hasMatch(line)) {
        blocks.add(const MdRule());
        i++;
        continue;
      }
      if (line.contains('|') &&
          i + 1 < lines.length &&
          lines[i + 1].contains('-') &&
          _tableSeparator.hasMatch(lines[i + 1])) {
        final header = _cells(line);
        i += 2;
        final rows = <List<String>>[];
        while (i < lines.length &&
            lines[i].trim().isNotEmpty &&
            lines[i].contains('|')) {
          rows.add(_cells(lines[i]));
          i++;
        }
        blocks.add(MdTable(header, rows));
        continue;
      }
      if (line.trimLeft().startsWith('>')) {
        final quote = <String>[];
        while (i < lines.length && lines[i].trimLeft().startsWith('>')) {
          quote.add(lines[i].trimLeft().substring(1).trim());
          i++;
        }
        blocks.add(MdQuote(quote.join('\n')));
        continue;
      }
      if (_bullet.hasMatch(line)) {
        final items = <String>[];
        while (i < lines.length && _bullet.hasMatch(lines[i])) {
          items.add(_bullet.firstMatch(lines[i])!.group(1)!.trim());
          i++;
        }
        blocks.add(MdList(items, ordered: false));
        continue;
      }
      if (_numbered.hasMatch(line)) {
        final items = <String>[];
        while (i < lines.length && _numbered.hasMatch(lines[i])) {
          items.add(_numbered.firstMatch(lines[i])!.group(1)!.trim());
          i++;
        }
        blocks.add(MdList(items, ordered: true));
        continue;
      }
      final para = <String>[];
      while (i < lines.length &&
          lines[i].trim().isNotEmpty &&
          !_startsBlock(lines, i)) {
        para.add(lines[i].trim());
        i++;
      }
      if (para.isEmpty) {
        para.add(line.trim());
        i++;
      }
      blocks.add(MdParagraph(para.join('\n')));
    }
    return blocks;
  }

  static bool _startsBlock(List<String> lines, int i) {
    final l = lines[i];
    return _heading.hasMatch(l) ||
        l.trimLeft().startsWith('```') ||
        l.trimLeft().startsWith('>') ||
        _bullet.hasMatch(l) ||
        _numbered.hasMatch(l) ||
        _rule.hasMatch(l);
  }

  static List<String> _cells(String line) {
    var s = line.trim();
    if (s.startsWith('|')) s = s.substring(1);
    if (s.endsWith('|')) s = s.substring(0, s.length - 1);
    return s.split('|').map((c) => c.trim()).toList();
  }

  static final _inline = RegExp(
    r'\[\[([^\]|\n]+?)(?:\|([^\]\n]+?))?\]\]'
    r'|\[([^\]\n]+?)\]\((https?://[^)\s]+)\)'
    r'|`([^`\n]+?)`'
    r'|\*\*(.+?)\*\*'
    r'|\*([^*\n]+?)\*',
  );

  /// 1 つの文字列を、インラインに分ける。
  static List<MdInline> inlines(String text) {
    final out = <MdInline>[];
    var pos = 0;
    for (final m in _inline.allMatches(text)) {
      if (m.start > pos) out.add(MdText(text.substring(pos, m.start)));
      if (m.group(1) != null) {
        final target = m.group(1)!.trim();
        final label = (m.group(2) ?? '').trim();
        out.add(MdWikiLink(target, label.isEmpty ? target : label));
      } else if (m.group(3) != null) {
        out.add(MdExternalLink(m.group(4)!, m.group(3)!));
      } else if (m.group(5) != null) {
        out.add(MdInlineCode(m.group(5)!));
      } else if (m.group(6) != null) {
        out.add(MdBold(inlines(m.group(6)!)));
      } else {
        out.add(MdItalic(inlines(m.group(7)!)));
      }
      pos = m.end;
    }
    if (pos < text.length) out.add(MdText(text.substring(pos)));
    return out;
  }

  /// 本文の中のページへのリンク(ページ名)を、出てくる順に返す(重複は除く)。
  static List<String> wikiLinks(String md) {
    final found = <String>[];
    for (final m in RegExp(
      r'\[\[([^\]|\n]+?)(?:\|[^\]\n]+?)?\]\]',
    ).allMatches(md)) {
      final t = m.group(1)!.trim();
      if (!found.contains(t)) found.add(t);
    }
    return found;
  }

  /// ページ名を [from] から [to] に変えたとき、本文のリンクを書き換える(表示文字は残す)。
  static String renameLink(String md, String from, String to) =>
      md.replaceAllMapped(
        RegExp(r'\[\[\s*' + RegExp.escape(from) + r'\s*(\|[^\]\n]+?)?\]\]'),
        (m) => '[[$to${m.group(1) ?? ''}]]',
      );
}
