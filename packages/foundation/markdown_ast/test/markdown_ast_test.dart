import 'package:markdown_ast/markdown_ast.dart';
import 'package:test/test.dart';

void main() {
  group('MarkdownParser', () {
    test('ブロック: 見出し・段落・箇条書き・番号付き・引用・コード・表・区切り線', () {
      final blocks = MarkdownParser.parse(
        '## 見出し\n\n本文1\n本文2\n\n- a\n- b\n\n1. x\n2. y\n\n> 引用\n\n```\ncode\n\nmore\n```\n\n| A | B |\n| --- | --- |\n| 1 | 2 |\n\n---\n',
      );
      expect(blocks[0], isA<MdHeading>().having((h) => h.level, 'level', 2));
      expect(blocks[1], isA<MdParagraph>().having((p) => p.text, 'text', '本文1\n本文2'));
      expect(blocks[2], isA<MdList>().having((l) => l.ordered, 'ordered', false));
      expect(blocks[3], isA<MdList>().having((l) => l.ordered, 'ordered', true));
      expect(blocks[4], isA<MdQuote>());
      expect(blocks[5], isA<MdCode>().having((c) => c.text, 'text', 'code\n\nmore'));
      expect(
        blocks[6],
        isA<MdTable>()
            .having((t) => t.header, 'header', ['A', 'B'])
            .having((t) => t.rows, 'rows', [
              ['1', '2'],
            ]),
      );
      expect(blocks[7], isA<MdRule>());
      expect(blocks, hasLength(8));
    });

    test('インライン: 太字・斜体・コード・ページへのリンク・外部リンク', () {
      final n = MarkdownParser.inlines('a **b** *c* `d` [[ページ]] [[ページ|表示]] [e](https://example.com/x)');
      expect(n.whereType<MdBold>(), hasLength(1));
      expect(n.whereType<MdItalic>(), hasLength(1));
      expect(n.whereType<MdInlineCode>().single.text, 'd');
      final links = n.whereType<MdWikiLink>().toList();
      expect(links.map((l) => '${l.target}/${l.label}'), ['ページ/ページ', 'ページ/表示']);
      expect(n.whereType<MdExternalLink>().single.url, 'https://example.com/x');
    });

    test('HTML は解釈しない(文字のまま)', () {
      expect(MarkdownParser.inlines('<script>x</script>').single, isA<MdText>());
    });

    test('wikiLinks は重複を除いて出現順、renameLink は表示文字を残す', () {
      const md = '[[A]] [[B|b]] [[A|a]]';
      expect(MarkdownParser.wikiLinks(md), ['A', 'B']);
      expect(MarkdownParser.renameLink(md, 'A', 'Z'), '[[Z]] [[B|b]] [[Z|a]]');
    });

    test('空の入力はブロックなし', () {
      expect(MarkdownParser.parse(''), isEmpty);
      expect(MarkdownParser.parse('\n\n  \n'), isEmpty);
    });
  });

  group('WysiwygDocument(不変の文書)', () {
    const a = WysiwygBlock('## A', WysiwygBlockKind.heading);
    const b = WysiwygBlock('本文');
    const c = WysiwygBlock('---', WysiwygBlockKind.rule);
    const doc = WysiwygDocument([a, b, c]);

    test('追加・挿入・置換・削除は、新しい文書を返し、元は変わらない', () {
      expect(doc.add(b).length, 4);
      expect(doc.insertAt(1, c).blocks, [a, c, b, c]);
      expect(doc.replaceAt(1, a).blocks, [a, a, c]);
      expect(doc.removeAt(0).blocks, [b, c]);
      expect(doc.length, 3);
    });

    test('move は上下に動かす。範囲外は動かさない', () {
      expect(doc.move(0, 1).blocks, [b, a, c]);
      expect(doc.move(2, -1).blocks, [a, c, b]);
      expect(doc.move(0, -1), same(doc));
      expect(doc.move(2, 1), same(doc));
    });

    test('等しさは中身で決まる', () {
      expect(const WysiwygDocument([a, b]), const WysiwygDocument([a, b]));
      expect(const WysiwygDocument([a, b]) == const WysiwygDocument([b, a]), isFalse);
      expect(WysiwygDocument.empty.isEmpty, isTrue);
    });
  });
}
