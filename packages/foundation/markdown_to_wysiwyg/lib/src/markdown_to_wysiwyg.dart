import 'package:markdown_ast/markdown_ast.dart';

/// Markdown → WYSIWYG の文書。
///
/// 本文を、空行で区切ったブロック(段落・見出し・表・リスト・コード…)に分け、ブロックごとに見た目の区分
/// ([WysiwygBlockKind])を付ける。コードの囲み(```)の中の空行では分けない。改行コードは `\n` にそろえる。
///
/// パターン: Adapter(Markdown の文字を、編集の画面が扱うブロックの並びに合わせる)
abstract final class MarkdownToWysiwyg {
  /// [markdown] を文書にする。空・空白だけの入力は空の文書。
  static WysiwygDocument convert(String markdown) => WysiwygDocument([
        for (final chunk in split(markdown)) WysiwygBlock(chunk, kindOf(chunk)),
      ]);

  /// 空行で区切ったブロックの文字の一覧(コードの囲みの中の空行では分けない)。
  static List<String> split(String markdown) {
    final out = <String>[];
    var cur = <String>[];
    var inCode = false;
    void flush() {
      if (cur.isNotEmpty) out.add(cur.join('\n'));
      cur = [];
    }

    for (final line in markdown.replaceAll('\r\n', '\n').split('\n')) {
      if (line.trimLeft().startsWith('```')) inCode = !inCode;
      if (!inCode && line.trim().isEmpty) {
        flush();
      } else {
        cur.add(line);
      }
    }
    flush();
    return out;
  }

  /// 1 ブロックの見た目の区分。先頭の構文で決める(読み取れない・複数にまたがるときは段落)。
  static WysiwygBlockKind kindOf(String chunk) {
    final blocks = MarkdownParser.parse(chunk);
    if (blocks.isEmpty) return WysiwygBlockKind.paragraph;
    return switch (blocks.first) {
      MdHeading() => WysiwygBlockKind.heading,
      MdParagraph() => WysiwygBlockKind.paragraph,
      MdList(:final ordered) => ordered ? WysiwygBlockKind.numberedList : WysiwygBlockKind.bulletList,
      MdQuote() => WysiwygBlockKind.quote,
      MdCode() => WysiwygBlockKind.code,
      MdTable() => WysiwygBlockKind.table,
      MdRule() => WysiwygBlockKind.rule,
    };
  }
}
