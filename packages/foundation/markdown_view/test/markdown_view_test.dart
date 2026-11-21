import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_view/markdown_view.dart';

Widget _app(Widget child, {ThemeData? theme}) => MaterialApp(
      theme: theme,
      home: Scaffold(body: SingleChildScrollView(child: child)),
    );

TextSpan? _span(WidgetTester tester, String label) {
  TextSpan? found;
  void visit(InlineSpan s) {
    if (s is TextSpan) {
      if (s.text == label) found = s;
      s.children?.forEach(visit);
    }
  }

  for (final w in tester.widgetList<RichText>(find.byType(RichText))) {
    visit(w.text);
  }
  return found;
}

void main() {
  testWidgets('見出し・段落・箇条書き・番号付き・引用・コード・表・区切り線を、部品にして出す', (tester) async {
    await tester.pumpWidget(
      _app(
        const MarkdownView(
          markdown: '## 見出し\n\n本文 **太字**\n\n- a\n- b\n\n1. x\n\n> 引用\n\n```\ncode\n```\n\n| A | B |\n| --- | --- |\n| 1 | 2 |\n\n---',
        ),
      ),
    );
    expect(find.text('見出し'), findsOneWidget);
    expect(find.textContaining('本文', findRichText: true), findsOneWidget);
    expect(find.text('•'), findsNWidgets(2));
    expect(find.text('1.'), findsOneWidget);
    expect(find.text('引用', findRichText: true), findsOneWidget);
    expect(find.text('code'), findsOneWidget); // SelectableText
    expect(find.byType(Table), findsOneWidget);
    expect(find.byType(Divider), findsOneWidget);
    expect(_span(tester, '太字')!.style!.fontWeight, FontWeight.w700);
  });

  testWidgets('空のときは、空のときの文字を出す', (tester) async {
    await tester.pumpWidget(_app(const MarkdownView(markdown: '  \n', emptyText: 'まだ本文がありません。')));
    expect(find.text('まだ本文がありません。'), findsOneWidget);
  });

  testWidgets('テーマ: 既定はアプリのテーマ(配色)から。MarkdownViewTheme で上書きできる', (tester) async {
    final scheme = ColorScheme.fromSeed(seedColor: Colors.teal);
    await tester.pumpWidget(_app(const MarkdownView(markdown: '[x](https://example.com)'), theme: ThemeData(colorScheme: scheme)));
    expect(_span(tester, 'x')!.style!.color, scheme.primary);

    await tester.pumpWidget(
      Builder(
        builder: (context) => _app(
          MarkdownView(
            markdown: '[x](https://example.com)',
            theme: MarkdownViewTheme.of(context).copyWith(linkColor: Colors.deepOrange),
          ),
        ),
      ),
    );
    expect(_span(tester, 'x')!.style!.color, Colors.deepOrange);
  });

  testWidgets('ページへのリンク: あるページは押して開く、無いページは破線(押せるのは onTap があるときだけ)', (tester) async {
    final opened = <String>[];
    final missing = <String>[];
    final scheme = ColorScheme.fromSeed(seedColor: Colors.indigo);
    await tester.pumpWidget(
      _app(
        MarkdownView(
          markdown: '[[ある]] と [[無い|表示]] と [[押せない]]',
          wikiLinkResolver: (t) => switch (t) {
            'ある' => WikiLinkTarget.found(onTap: () => opened.add(t)),
            '無い' => WikiLinkTarget.missing(onTap: () => missing.add(t)),
            _ => const WikiLinkTarget.missing(),
          },
        ),
        theme: ThemeData(colorScheme: scheme),
      ),
    );
    final exist = _span(tester, 'ある')!;
    expect(exist.style!.color, scheme.primary);
    (exist.recognizer! as TapGestureRecognizer).onTap!();
    expect(opened, ['ある']);

    final gone = _span(tester, '表示')!;
    expect(gone.style!.color, scheme.error);
    expect(gone.style!.decorationStyle, TextDecorationStyle.dashed);
    (gone.recognizer! as TapGestureRecognizer).onTap!();
    expect(missing, ['無い']);

    expect(_span(tester, '押せない')!.recognizer, isNull);
  });

  testWidgets('リゾルバが無いとき、ページへのリンクはすべて「あるページ」(押せない)', (tester) async {
    await tester.pumpWidget(_app(const MarkdownView(markdown: '[[A]]')));
    expect(_span(tester, 'A')!.recognizer, isNull);
  });

  testWidgets('外部リンクは文字だけ。onExternalLink があれば押せる', (tester) async {
    final urls = <String>[];
    await tester.pumpWidget(_app(MarkdownView(markdown: '[x](https://example.com/a)', onExternalLink: urls.add)));
    (_span(tester, 'x')!.recognizer! as TapGestureRecognizer).onTap!();
    expect(urls, ['https://example.com/a']);
    await tester.pumpWidget(_app(const MarkdownView(markdown: '[y](https://example.com/b)')));
    expect(_span(tester, 'y')!.recognizer, isNull);
  });

  testWidgets('見出しに GlobalKey を付ける(ページの目次からのスクロール用)', (tester) async {
    final keys = {0: GlobalKey(), 1: GlobalKey()};
    await tester.pumpWidget(_app(MarkdownView(markdown: '## A\n\n本文\n\n### B', headingKeys: keys)));
    expect(find.byKey(keys[0]!), findsOneWidget);
    expect(find.byKey(keys[1]!), findsOneWidget);
  });

  testWidgets('HTML は解釈せず、文字として出す', (tester) async {
    await tester.pumpWidget(_app(const MarkdownView(markdown: '<b>x</b>')));
    expect(find.text('<b>x</b>', findRichText: true), findsOneWidget);
  });
}
