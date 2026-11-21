import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_view/markdown_view.dart';
import 'package:wysiwyg_editor/wysiwyg_editor.dart';

TextEditingValue _v(String t, int a, int b) => TextEditingValue(text: t, selection: TextSelection(baseOffset: a, extentOffset: b));

Widget _app(
  WysiwygEditorController c, {
  LinkPicker? pickLink,
  void Function(String)? onChanged,
  WikiLinkResolver? resolver,
  Size size = const Size(1200, 900),
}) => MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(size: size),
        child: Scaffold(
          body: SingleChildScrollView(
            child: WysiwygEditor(controller: c, pickLink: pickLink, onChanged: onChanged, wikiLinkResolver: resolver),
          ),
        ),
      ),
    );

Future<void> _pump(WidgetTester tester, Widget app) async {
  await tester.binding.setSurfaceSize(const Size(1400, 1000));
  addTearDown(() => tester.binding.setSurfaceSize(null));
  await tester.pumpWidget(app);
  await tester.pumpAndSettle();
}

void main() {
  group('MdTextOps(書式の挿入)', () {
    test('wrap: 選択を囲む / 選択なしはひな形', () {
      expect(MdTextOps.wrap(_v('abc', 1, 2), '**', '**').text, 'a**b**c');
      final b = MdTextOps.wrap(_v('', 0, 0), '**', '**', placeholder: '太字');
      expect(b.text, '**太字**');
      expect(b.selection.textInside(b.text), '太字');
    });

    test('prefixLines: 行頭の記号・番号付き', () {
      expect(MdTextOps.prefixLines(_v('a\nb', 0, 3), '- ').text, '- a\n- b');
      expect(MdTextOps.prefixLines(_v('a\nb', 0, 3), '', numbered: true).text, '1. a\n2. b');
      expect(MdTextOps.prefixLines(_v('x\ny', 3, 3), '## ').text, 'x\n## y');
    });

    test('insertBlock は前後を空行で区切る。insertText は選択を置き換える', () {
      expect(MdTextOps.insertBlock(_v('abc', 3, 3), '---').text, 'abc\n\n---\n');
      expect(MdTextOps.insertText(_v('x 表示 y', 2, 4), '[[A]]').text, 'x [[A]] y');
    });

    test('selectedText: 選択した文字(選択が無いときは空)', () {
      expect(MdTextOps.selectedText(_v('x 表示 y', 2, 4)), '表示');
      expect(MdTextOps.selectedText(const TextEditingValue(text: 'abc')), '');
    });
  });

  group('WysiwygEditorController', () {
    test('エディタにつなぐまでは初期の本文。つなぐと編集中の本文。外すと初期へ戻る', () {
      final c = WysiwygEditorController('A\n\nB');
      expect(c.markdown, 'A\n\nB');
      c.attach(() => 'X');
      expect(c.markdown, 'X');
      c.detach();
      expect(c.markdown, 'A\n\nB');
    });

    test('isDirty: 整えただけの差(空行・CRLF)は変更としない', () {
      final c = WysiwygEditorController('A\n\nB');
      c.attach(() => 'A\r\n\r\n\r\nB\r\n');
      expect(c.isDirty, isFalse);
      c.attach(() => 'A\n\nB!');
      expect(c.isDirty, isTrue);
      expect(c.normalizedMarkdown, 'A\n\nB!');
    });
  });

  testWidgets('既定はビジュアル。本文をブロックで出し、Markdown に切り替えても内容は変わらない', (tester) async {
    final c = WysiwygEditorController('## 見出し\n\n本文');
    await _pump(tester, _app(c));
    expect(find.byKey(const Key('wysiwyg-chunk-0')), findsOneWidget);
    expect(find.byKey(const Key('wysiwyg-chunk-1')), findsOneWidget);
    await tester.tap(find.text('Markdown'));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byKey(const Key('wysiwyg-edit-md'))).controller!.text, '## 見出し\n\n本文');
    // 広い画面では、プレビューが右に出る
    expect(find.text('プレビュー'), findsOneWidget);
    await tester.tap(find.text('ビジュアル'));
    await tester.pumpAndSettle();
    expect(c.markdown, '## 見出し\n\n本文');
  });

  testWidgets('Markdown で書くと、controller の本文が変わり、onChanged が呼ばれる', (tester) async {
    final c = WysiwygEditorController('');
    final changes = <String>[];
    await _pump(tester, _app(c, onChanged: changes.add));
    await tester.tap(find.text('Markdown'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('wysiwyg-edit-md')), '新しい本文');
    await tester.pumpAndSettle();
    expect(c.markdown, '新しい本文');
    expect(changes.last, '新しい本文');
    expect(c.isDirty, isTrue);
  });

  testWidgets('ビジュアル: ブロックを選んで直し、完了で反映。上へ・下へ・削除', (tester) async {
    final c = WysiwygEditorController('A\n\nB\n\nC');
    await _pump(tester, _app(c));
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-0')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('wysiwyg-chunk-field')), '## 直した');
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-done')));
    await tester.pumpAndSettle();
    expect(c.markdown, '## 直した\n\nB\n\nC');

    await tester.tap(find.byKey(const Key('wysiwyg-chunk-1'))); // B
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-down')));
    await tester.pumpAndSettle();
    expect(c.markdown, '## 直した\n\nC\n\nB');
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-up')));
    await tester.pumpAndSettle();
    expect(c.markdown, '## 直した\n\nB\n\nC');
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-delete')));
    await tester.pumpAndSettle();
    expect(c.markdown, '## 直した\n\nC');
  });

  testWidgets('編集中のブロックも、controller の本文に含まれる(完了を押さなくても)', (tester) async {
    final c = WysiwygEditorController('A');
    await _pump(tester, _app(c));
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-0')));
    await tester.pumpAndSettle();
    await tester.enterText(find.byKey(const Key('wysiwyg-chunk-field')), 'A と追記');
    expect(c.markdown, 'A と追記');
  });

  testWidgets('道具バー: どのブロックも選んでいないとき、ひな形のブロックを末尾に足して編集する', (tester) async {
    final c = WysiwygEditorController('本文');
    await _pump(tester, _app(c));
    await tester.tap(find.byKey(const Key('wysiwyg-tool-table')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('wysiwyg-chunk-field')), findsOneWidget);
    await tester.tap(find.byKey(const Key('wysiwyg-chunk-done')));
    await tester.pumpAndSettle();
    expect(c.markdown, '本文\n\n| 項目 | 内容 |\n| --- | --- |\n|  |  |');
  });

  testWidgets('道具バー: Markdown の入力欄で、見出し・太字を入れる', (tester) async {
    final c = WysiwygEditorController('行');
    await _pump(tester, _app(c));
    await tester.tap(find.text('Markdown'));
    await tester.pumpAndSettle();
    final field = find.byKey(const Key('wysiwyg-edit-md'));
    await tester.tap(field);
    final ctl = tester.widget<TextField>(field).controller!;
    ctl.selection = const TextSelection(baseOffset: 0, extentOffset: 1);
    await tester.tap(find.byKey(const Key('wysiwyg-tool-h2')));
    await tester.pumpAndSettle();
    expect(ctl.text, '## 行');
    await tester.tap(find.byKey(const Key('wysiwyg-tool-bold')));
    await tester.pumpAndSettle();
    expect(c.markdown, contains('**'));
  });

  testWidgets('リンク: pickLink が返した Markdown を、選択の位置へ入れる。取り消し(null)は何もしない。pickLink が無ければ道具を出さない', (tester) async {
    final c = WysiwygEditorController('参照: ');
    String? askedWith;
    await _pump(
      tester,
      _app(c, pickLink: (context, selected) async {
        askedWith = selected;
        return '[[工程管理]]';
      }),
    );
    await tester.tap(find.text('Markdown'));
    await tester.pumpAndSettle();
    final ctl = tester.widget<TextField>(find.byKey(const Key('wysiwyg-edit-md'))).controller!;
    ctl.selection = TextSelection.collapsed(offset: ctl.text.length);
    await tester.tap(find.byKey(const Key('wysiwyg-tool-link')));
    await tester.pumpAndSettle();
    expect(askedWith, '');
    expect(ctl.text, '参照:[[工程管理]]'); // ビジュアルからの切り替えで、後ろの空白は整う

    await tester.pumpWidget(_app(WysiwygEditorController('x'), pickLink: (_, _) async => null));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Markdown'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const Key('wysiwyg-tool-link')));
    await tester.pumpAndSettle();
    expect(tester.widget<TextField>(find.byKey(const Key('wysiwyg-edit-md'))).controller!.text, 'x');

    await tester.pumpWidget(_app(WysiwygEditorController('x')));
    await tester.pumpAndSettle();
    expect(find.byKey(const Key('wysiwyg-tool-link')), findsNothing);
  });

  testWidgets('ページへのリンクの行き先は resolver で決まる(ビジュアルの表示にも使う)', (tester) async {
    final c = WysiwygEditorController('[[無い]]');
    await _pump(tester, _app(c, resolver: (t) => const WikiLinkTarget.missing()));
    final spans = <TextSpan>[];
    void visit(InlineSpan s) {
      if (s is TextSpan) {
        if (s.text == '無い') spans.add(s);
        s.children?.forEach(visit);
      }
    }

    for (final w in tester.widgetList<RichText>(find.byType(RichText))) {
      visit(w.text);
    }
    expect(spans.single.style!.decorationStyle, TextDecorationStyle.dashed);
  });

  testWidgets('Key の接頭辞を変えられる', (tester) async {
    final c = WysiwygEditorController('A');
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      MaterialApp(home: Scaffold(body: SingleChildScrollView(child: WysiwygEditor(controller: c, keyPrefix: 'doc')))),
    );
    expect(find.byKey(const Key('doc-edit-mode')), findsOneWidget);
    expect(find.byKey(const Key('doc-chunk-0')), findsOneWidget);
    expect(find.byKey(const Key('doc-tool-h2')), findsOneWidget);
  });

  testWidgets('空の本文では、空のときの文字を出す。英語の文字も選べる', (tester) async {
    final c = WysiwygEditorController('');
    await tester.binding.setSurfaceSize(const Size(1400, 1000));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(child: WysiwygEditor(controller: c, labels: const WysiwygEditorLabels.en())),
        ),
      ),
    );
    expect(find.text('No content yet.'), findsOneWidget);
    expect(find.text('Visual'), findsOneWidget);
  });
}
