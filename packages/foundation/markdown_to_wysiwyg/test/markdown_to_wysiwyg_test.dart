import 'package:markdown_ast/markdown_ast.dart';
import 'package:markdown_to_wysiwyg/markdown_to_wysiwyg.dart';
import 'package:test/test.dart';

void main() {
  test('空行で区切ったブロックに分け、ブロックごとの区分を付ける', () {
    final doc = MarkdownToWysiwyg.convert(
      '## 見出し\n\n本文1\n本文2\n\n- a\n- b\n\n1. x\n\n> 引用\n\n| A | B |\n| --- | --- |\n| 1 | 2 |\n\n---',
    );
    expect(doc.blocks.map((b) => b.kind), [
      WysiwygBlockKind.heading,
      WysiwygBlockKind.paragraph,
      WysiwygBlockKind.bulletList,
      WysiwygBlockKind.numberedList,
      WysiwygBlockKind.quote,
      WysiwygBlockKind.table,
      WysiwygBlockKind.rule,
    ]);
    expect(doc[1].markdown, '本文1\n本文2'); // 段落の中の改行は保つ
  });

  test('コードの囲みの中の空行では分けない(コードは 1 ブロック)', () {
    final doc = MarkdownToWysiwyg.convert('前\n\n```\na\n\nb\n```\n\n後');
    expect(doc.length, 3);
    expect(doc[1].kind, WysiwygBlockKind.code);
    expect(doc[1].markdown, '```\na\n\nb\n```');
  });

  test('改行コード CRLF は LF にそろえる。連続する空行・前後の空白行は無視する', () {
    final doc = MarkdownToWysiwyg.convert('\r\n\r\nA\r\n\r\n\r\n\r\nB\r\n\r\n');
    expect(doc.blocks.map((b) => b.markdown), ['A', 'B']);
  });

  test('空・空白だけの入力は、空の文書', () {
    expect(MarkdownToWysiwyg.convert('').isEmpty, isTrue);
    expect(MarkdownToWysiwyg.convert('  \n\n \t\n').isEmpty, isTrue);
  });

  test('閉じていないコードの囲みは、最後まで 1 ブロック', () {
    final doc = MarkdownToWysiwyg.convert('```\nx\n\ny');
    expect(doc.length, 1);
    expect(doc[0].kind, WysiwygBlockKind.code);
  });

  test('ページへのリンク・書式を含む段落も、段落', () {
    final doc = MarkdownToWysiwyg.convert('**太字** と [[ページ|表示]] と [x](https://example.com)');
    expect(doc.length, 1);
    expect(doc[0].kind, WysiwygBlockKind.paragraph);
  });

  test('split は、区切りの文字だけを返す(区分は付けない)', () {
    expect(MarkdownToWysiwyg.split('a\n\nb'), ['a', 'b']);
  });
}
