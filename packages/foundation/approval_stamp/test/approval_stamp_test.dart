import 'dart:convert';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:test/test.dart';

import 'db_default_settings.dart';

void main() {
  group('formatDate', () {
    final d = DateTime(2026, 11, 3, 4, 5, 6);
    test('基本の記号と、英字以外の文字', () {
      expect(formatDate(d, 'yyyy/MM/dd'), '2026/11/03');
      expect(formatDate(d, 'yyyy年M月d日 HH:mm'), '2026年11月3日 04:05');
      expect(formatDate(d, 'yy-M-d H:m:s'), '26-11-3 4:5:6');
    });
    test('引用符の中は文字として出す', () {
      expect(formatDate(d, "yyyy 'at' HH"), '2026 at 04');
      expect(formatDate(d, "''yy"), "'26");
    });
    test('和暦(元号と年)', () {
      expect(formatDate(DateTime(2026, 11, 3), 'G E年M月d日'), '令和 8年11月3日');
      expect(formatDate(DateTime(2019, 4, 30), 'G E'), '平成 31');
      expect(formatDate(DateTime(2019, 5, 1), 'G E'), '令和 1');
      expect(formatDate(DateTime(1989, 1, 7), 'G E'), '昭和 64');
    });
  });

  group('TemplateFormatter', () {
    const f = TemplateFormatter();
    final vars = <String, Object?>{
      'page': 3,
      'pages': 12,
      'title': '品質マニュアル',
      'approvedAt': DateTime(2026, 11, 3),
      'none': null,
      'var.company': 'ACME',
    };
    test('固定の文字と変数を混ぜる', () {
      expect(f.expand('{page} / {pages}', vars), '3 / 12');
      expect(f.expand('{title} p.{page}', vars), '品質マニュアル p.3');
      expect(f.expand('{var.company}', vars), 'ACME');
    });
    test('日時の書式・数値の 0 埋め', () {
      expect(f.expand('{approvedAt:yyyy年M月d日}', vars), '2026年11月3日');
      expect(f.expand('{approvedAt}', vars), '2026/11/03');
      expect(f.expand('{page:000}', vars), '003');
    });
    test('波括弧そのものは {{ と }}', () {
      expect(f.expand('{{page}} = {page}', vars), '{page} = 3');
    });
    test('未知の変数は空にして知らせる。null は空', () {
      final problems = <String>[];
      expect(
        f.expand('a{nothing}b{none}c', vars, onProblem: problems.add),
        'abc',
      );
      expect(problems, ['未知の変数: nothing']);
    });
    test('閉じていない { は文字として出す', () {
      final problems = <String>[];
      expect(f.expand('x {page', vars, onProblem: problems.add), 'x {page');
      expect(problems, hasLength(1));
    });
    test('使っている変数の一覧', () {
      expect(f.variablesIn('{page} / {pages} {approvedAt:yyyy} {page} {{x}}'), [
        'page',
        'pages',
        'approvedAt',
      ]);
    });
  });

  group('色', () {
    test('#RRGGBB・#AARRGGBB・\$変数', () {
      expect(parseHexColor('#C62828'), 0xFFC62828);
      expect(parseHexColor('#80FF0000'), 0x80FF0000);
      expect(parseHexColor('red'), isNull);
      expect(resolveColor(r'$accent', {'accent': '#0D47A1'}), 0xFF0D47A1);
      expect(resolveColor(r'$a', {'a': r'$b', 'b': '#000000'}), 0xFF000000);
    });
    test('解決できない・循環は fallback', () {
      expect(resolveColor(r'$none', {}, fallback: 1), 1);
      expect(resolveColor(r'$a', {'a': r'$a'}, fallback: 2), 2);
    });
    test('colorToHex', () {
      expect(colorToHex(0xFFC62828), '#C62828');
      expect(colorToHex(0x80FF0000), '#80FF0000');
    });
  });

  group('DB の既定値(info_app.settings)', () {
    test('標準の設定として読め、不備が無い', () {
      final problems = Problems();
      final s = AppSettings.parse(dbDefaultSettingsJson, problems: problems);
      expect(problems.messages, isEmpty);
      expect(s.version, 1);
      expect(s.stamp.position.anchor, StampAnchor.topRight);
      expect(s.stamp.opacity, 0.6);
      expect(s.stamp.items.map((e) => e.field), [
        'stamp_label',
        'approved_at',
        'approved_staff',
      ]);
      expect(s.pdf.page.size, PdfPageSize.a4);
      expect(s.pdf.theme.h1.pageBreakBefore, isTrue);
      expect(s.pdf.footer.center, '{page} / {pages}');
      expect(s.pdf.theme.color('heading'), 0xFF0D47A1); // $accent
    });
    test('読んで書き戻しても同じ(往復)', () {
      final s = AppSettings.parse(dbDefaultSettingsJson);
      expect(
        jsonDecode(jsonEncode(s.toJson())),
        jsonDecode(dbDefaultSettingsJson),
      );
    });
    test('コードの標準値(const)も DB の既定値と同じ', () {
      expect(
        jsonDecode(jsonEncode(AppSettings.standard.toJson())),
        jsonDecode(dbDefaultSettingsJson),
      );
    });
  });

  group('AppSettings の寛容な読み取り', () {
    test('null・不正な JSON・オブジェクトでない値は標準', () {
      final p = Problems();
      expect(AppSettings.parse(null).stamp.opacity, 0.6);
      expect(
        AppSettings.parse('{broken', problems: p).pdf.page.size,
        PdfPageSize.a4,
      );
      expect(AppSettings.parse(<int>[1], problems: p).version, 1);
      expect(p.messages, hasLength(2));
    });
    test('型の違う値は既定に戻し、問題に残す。読めた値は使う', () {
      final p = Problems();
      final s = AppSettings.parse({
        'stamp': {
          'opacity': 'x',
          'shape': {'widthMm': -1, 'kind': 'circle'},
          'position': {'anchor': 'nowhere'},
        },
        'pdf': {
          'page': {'size': 'Z9', 'orientation': 'landscape'},
        },
      }, problems: p);
      expect(s.stamp.opacity, 0.6);
      expect(s.stamp.shape.kind, StampShapeKind.circle);
      expect(s.stamp.shape.widthMm, 32);
      expect(s.stamp.position.anchor, StampAnchor.topRight);
      expect(s.pdf.page.orientation, PdfOrientation.landscape);
      expect(p.messages.length, greaterThanOrEqualTo(4));
    });
    test('不透明度は 0〜1 に収める', () {
      expect(
        AppSettings.parse({
          'stamp': {'opacity': 3},
        }).stamp.opacity,
        1,
      );
    });
    test('知らないキーは書き戻しても残る', () {
      final s = AppSettings.parse({
        'version': 1,
        'other': {'a': 1},
      });
      expect(s.toJson()['other'], {'a': 1});
    });
    test('新しい版は問題として知らせる(知っている項目は使う)', () {
      final p = Problems();
      AppSettings.parse({'version': 9}, problems: p);
      expect(p.messages.single, contains('新しい'));
    });
  });

  group('StampStyle.resolve(標準 + 承認パターンの上書き)', () {
    final base = StampStyle.standard.toJson();
    test('上書きは項目ごと。書いていない項目は標準', () {
      final s = StampStyle.resolve(base, {
        'position': {'anchor': 'bottomRight'},
        'opacity': 0.3,
      });
      expect(s.position.anchor, StampAnchor.bottomRight);
      expect(s.position.offsetXmm, 10); // 標準のまま
      expect(s.opacity, 0.3);
      expect(s.shape.kind, StampShapeKind.roundRect);
    });
    test('NULL(上書き無し)は標準そのもの', () {
      expect(StampStyle.resolve(base, null).toJson(), base);
    });
    test('items は渡したら全体を置き換える', () {
      final s = StampStyle.resolve(base, {
        'items': [
          {'field': 'stamp_label', 'size': 12},
        ],
      });
      expect(s.items, hasLength(1));
    });
  });

  group('StampContentBuilder', () {
    const b = StampContentBuilder();
    final approved = ApprovalStepInfo(
      approved: true,
      rejected: false,
      pending: false,
      stampLabelJa: '承認',
      stampLabelEn: 'Approval',
      priority: 1,
      approvedAt: DateTime(2026, 11, 3, 9, 30),
      approvedStaff: '田中 太郎',
      approvalName: '品質責任者',
    );
    const pending = ApprovalStepInfo(
      approved: false,
      rejected: false,
      pending: true,
      stampLabelJa: '承認待ち',
      stampLabelEn: 'Pending',
      priority: 2,
    );
    test('段が 0 件ならスタンプなし(承認不要)', () {
      expect(b.build(StampStyle.standard, const []), isEmpty);
    });
    test('標準: 承認の文字・日付・承認者の 3 行', () {
      final cards = b.build(StampStyle.standard, [approved]);
      expect(cards.single.state, StampState.approved);
      expect(cards.single.lines.map((e) => e.text), [
        '承認',
        '2026/11/03',
        '田中 太郎',
      ]);
      expect(cards.single.lines.map((e) => e.size), [14, 10, 10]);
    });
    test('承認待ちは、空の項目(日付・承認者)を出さない', () {
      final cards = b.build(StampStyle.standard, [pending]);
      expect(cards.single.state, StampState.pending);
      expect(cards.single.lines.map((e) => e.text), ['承認待ち']);
    });
    test('段ごとに順位の順で並べる(stages = all)', () {
      final cards = b.build(StampStyle.standard, [pending, approved]);
      expect(cards.map((e) => e.state), [
        StampState.approved,
        StampState.pending,
      ]);
    });
    test('stages = last は、最後に承認した 1 つ(承認済みが無ければ先頭)', () {
      final last = StampStyle.fromJson({'stages': 'last'});
      expect(
        b.build(last, [approved, pending]).single.state,
        StampState.approved,
      );
      expect(b.build(last, [pending]).single.state, StampState.pending);
    });
    test('言語・日時の書式・同じ行に並べる・項目の追加', () {
      final style = StampStyle.fromJson({
        'labelLanguage': 'en',
        'items': [
          {'field': 'stamp_label', 'size': 12, 'line': 1},
          {'field': 'approved_at', 'format': 'G E年M月d日', 'size': 8, 'line': 2},
          {'field': 'approval_name', 'size': 9, 'line': 2},
        ],
      });
      final cards = b.build(style, [approved]);
      expect(cards.single.lines.map((e) => e.text), [
        'Approval',
        '令和 8年11月3日 品質責任者',
      ]);
      expect(cards.single.lines[1].size, 9); // 同じ行は大きい方
    });
    test('未知の項目は、空にして知らせる', () {
      final problems = <String>[];
      final style = StampStyle.fromJson({
        'items': [
          {'field': 'unknown_col'},
        ],
      });
      expect(
        b.build(style, [approved], onProblem: problems.add).single.lines,
        isEmpty,
      );
      expect(problems, ['未知のスタンプの項目: unknown_col']);
    });
  });

  group('StampLayout', () {
    const layout = StampLayout();
    StampStyle style(
      String anchor, {
      double x = 10,
      double y = 10,
      String pages = 'first',
    }) => StampStyle.fromJson({
      'position': {
        'anchor': anchor,
        'offsetXmm': x,
        'offsetYmm': y,
        'pages': pages,
      },
      'shape': {'widthMm': 30, 'heightMm': 20, 'rotationDeg': 5},
    });
    test('右上: 右の端から 10mm・上から 10mm', () {
      final p = layout
          .place(
            style('topRight'),
            pageWidthMm: 210,
            pageHeightMm: 297,
            count: 1,
          )
          .single;
      expect(
        (p.xMm, p.yMm, p.widthMm, p.heightMm, p.rotationDeg),
        (170.0, 10.0, 30.0, 20.0, 5.0),
      );
    });
    test('四隅と中央', () {
      StampPlacement one(String a) => layout
          .place(style(a), pageWidthMm: 210, pageHeightMm: 297, count: 1)
          .single;
      expect((one('topLeft').xMm, one('topLeft').yMm), (10.0, 10.0));
      expect((one('bottomLeft').xMm, one('bottomLeft').yMm), (10.0, 267.0));
      expect((one('bottomRight').xMm, one('bottomRight').yMm), (170.0, 267.0));
      expect(
        (one('center').xMm, one('center').yMm),
        (90.0 + 10.0, 138.5 + 10.0),
      ); // 中央 + オフセット
    });
    test('複数は、右の基準なら左へ・左の基準なら右へ並ぶ', () {
      final r = layout.place(
        style('topRight'),
        pageWidthMm: 210,
        pageHeightMm: 297,
        count: 3,
      );
      expect(r.map((e) => e.xMm), [170.0, 137.0, 104.0]);
      final l = layout.place(
        style('topLeft'),
        pageWidthMm: 210,
        pageHeightMm: 297,
        count: 2,
      );
      expect(l.map((e) => e.xMm), [10.0, 43.0]);
    });
    test('pages = first は 2 ページ目以降に出さない。all は出す', () {
      expect(
        layout.place(
          style('topRight'),
          pageWidthMm: 210,
          pageHeightMm: 297,
          count: 1,
          pageIndex: 1,
        ),
        isEmpty,
      );
      expect(
        layout.place(
          style('topRight', pages: 'all'),
          pageWidthMm: 210,
          pageHeightMm: 297,
          count: 1,
          pageIndex: 5,
        ),
        hasLength(1),
      );
    });
    test('0 個は空', () {
      expect(
        layout.place(
          style('topRight'),
          pageWidthMm: 210,
          pageHeightMm: 297,
          count: 0,
        ),
        isEmpty,
      );
    });
  });

  group('PdfBandResolver(ヘッダ・フッタ)', () {
    final settings = AppSettings.parse(dbDefaultSettingsJson).pdf;
    final info = PdfDocumentInfo(
      title: '品質マニュアル',
      controlNumber: 'QM-001',
      versionCode: 'v1.2',
      statusLabel: '承認',
      printedAt: DateTime(2026, 11, 21),
    );
    test('標準のヘッダ・フッタを展開する', () {
      final r = PdfBandResolver(settings, info);
      final h = r.header(pageIndex: 0, pages: 5)!;
      expect((h.left, h.center, h.right), ('品質マニュアル', '', 'QM-001'));
      final f = r.footer(pageIndex: 2, pages: 5)!;
      expect((f.left, f.center, f.right), ('v1.2  承認', '3 / 5', '2026/11/21'));
    });
    test('firstPage = none は 1 ページ目に出さない。無効なら出さない', () {
      final s = PdfSettings.fromJson({
        'header': {'firstPage': 'none'},
        'footer': {'enabled': false},
      });
      final r = PdfBandResolver(s, info);
      expect(r.header(pageIndex: 0, pages: 2), isNull);
      expect(r.header(pageIndex: 1, pages: 2), isNotNull);
      expect(r.footer(pageIndex: 1, pages: 2), isNull);
    });
    test('章・利用者の変数({var.名前})・波括弧', () {
      final s = PdfSettings.fromJson({
        'header': {
          'left': '{var.company} {{memo}}',
          'center': '{chapter}',
          'right': '',
        },
        'custom': {'company': 'ACME'},
      });
      final h = PdfBandResolver(
        s,
        info,
      ).header(pageIndex: 0, pages: 1, chapter: '4 製造')!;
      expect((h.left, h.center), ('ACME {memo}', '4 製造'));
    });
    test('未知の変数は空にして知らせる(PDF の出力は止めない)', () {
      final problems = <String>[];
      final s = PdfSettings.fromJson({
        'header': {'left': 'a{zzz}b'},
      });
      final h = PdfBandResolver(
        s,
        info,
        onProblem: problems.add,
      ).header(pageIndex: 0, pages: 1)!;
      expect(h.left, 'ab');
      expect(problems, ['未知の変数: zzz']);
    });
    test('標準の書式の変数は、すべて既知', () {
      const f = TemplateFormatter();
      final known = {...PdfBandResolver.variableNames, 'var.company'};
      for (final t in [
        settings.header.left,
        settings.header.center,
        settings.header.right,
        settings.footer.left,
        settings.footer.center,
        settings.footer.right,
      ]) {
        expect(f.variablesIn(t).every(known.contains), isTrue, reason: t);
      }
    });
  });

  group('PdfSettings', () {
    test('用紙の向きを反映した幅・高さ', () {
      final p = PdfPage.fromJson({'size': 'A4', 'orientation': 'landscape'});
      expect((p.widthMm, p.heightMm), (297.0, 210.0));
      expect(PdfPage.fromJson({'size': 'b5'}).size, PdfPageSize.b5);
    });
    test('テーマの色: 変数の参照・見出しごとの色', () {
      final t = PdfTheme.fromJson({
        'vars': {'accent': '#FF0000'},
        'headings': {
          'h2': {'color': '#00FF00'},
        },
      });
      expect(t.color('heading'), 0xFFFF0000);
      expect(t.headingColor(t.h1), 0xFFFF0000);
      expect(t.headingColor(t.h2), 0xFF00FF00);
      expect(t.h2.size, 15); // 書いていない項目は標準
      expect(t.vars['muted'], '#616161'); // 書いていない変数も標準
    });
  });
}
