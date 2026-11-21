import 'package:markdown_ast/markdown_ast.dart';
import 'package:markdown_to_wysiwyg/markdown_to_wysiwyg.dart';
import 'package:test/test.dart';
import 'package:wysiwyg_to_markdown/wysiwyg_to_markdown.dart';

void main() {
  test('ブロックを空行 1 つで結合する。空のブロックは出さない', () {
    const doc = WysiwygDocument([
      WysiwygBlock('## 見出し', WysiwygBlockKind.heading),
      WysiwygBlock('   '),
      WysiwygBlock('本文'),
      WysiwygBlock(''),
      WysiwygBlock('---', WysiwygBlockKind.rule),
    ]);
    expect(WysiwygToMarkdown.convert(doc), '## 見出し\n\n本文\n\n---');
  });

  test('ブロックの前後の空行は取り除き、中の改行・字下げは保つ', () {
    expect(WysiwygToMarkdown.fromBlocks(['\n\n  - a\n  - b  \n\n']), '  - a\n  - b');
    expect(WysiwygToMarkdown.fromBlocks(['a\nb\n\nc']), 'a\nb\n\nc'); // 中の空行は、そのブロックのもの
  });

  test('閉じていないコードの囲みは閉じる(後ろのブロックを巻き込まない)', () {
    expect(WysiwygToMarkdown.fromBlocks(['```\ncode', '次']), '```\ncode\n```\n\n次');
    expect(WysiwygToMarkdown.fromBlocks(['```\ncode\n```', '次']), '```\ncode\n```\n\n次');
  });

  test('CRLF は LF にそろえる', () {
    expect(WysiwygToMarkdown.fromBlocks(['a\r\nb']), 'a\nb');
  });

  test('空の文書は空の文字', () {
    expect(WysiwygToMarkdown.convert(WysiwygDocument.empty), '');
  });

  group('往復(Markdown → 文書 → Markdown)', () {
    String round(String md) => WysiwygToMarkdown.convert(MarkdownToWysiwyg.convert(md));

    test('整った Markdown はそのまま戻る', () {
      const md = '## 見出し\n\n本文 **太字** [[ページ|表示]]\n\n- a\n- b\n\n1. x\n2. y\n\n> 引用\n\n```\ncode\n\nmore\n```\n\n| A | B |\n| --- | --- |\n| 1 | 2 |\n\n---';
      expect(round(md), md);
    });

    test('余分な空行・CRLF は整う。もう一度往復しても変わらない(冪等)', () {
      const messy = '\r\n\r\nA\r\n\r\n\r\n\r\nB\r\n\r\n';
      final once = round(messy);
      expect(once, 'A\n\nB');
      expect(round(once), once);
    });

    test('ブロックを入れ替えた文書は、その順の Markdown になる', () {
      final doc = MarkdownToWysiwyg.convert('A\n\nB\n\nC').move(0, 2);
      expect(WysiwygToMarkdown.convert(doc), 'B\n\nC\n\nA');
    });
  });
}
