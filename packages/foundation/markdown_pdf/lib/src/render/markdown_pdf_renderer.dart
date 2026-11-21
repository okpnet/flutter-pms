import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';
import 'package:markdown_ast/markdown_ast.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../fonts/pdf_fonts.dart';

import 'stamp_widget.dart';

const double _mm = PdfPageFormat.mm;

/// Markdown を PDF にする(Markdown → ブロック → `pdf` の部品)。
///
/// 設定(`info_app.settings.pdf` の [PdfSettings])のテーマ・用紙・ヘッダ/フッタと、承認スタンプ([StampCard])を適用する。
/// 見出し H1 を章として扱い(テーマで改ページ)、ヘッダ/フッタの `{chapter}` に今の章を入れる(章の位置は、
/// 1 回目の描画で調べて、2 回目で使う。書式に `{chapter}` が無いときは 1 回で終える)。
/// 設定の不備・未知の変数は [onProblem] に知らせ、出力は止めない。
class MarkdownPdfRenderer {
  const MarkdownPdfRenderer();

  Future<Uint8List> render({
    required String markdown,
    required PdfSettings settings,
    required PdfDocumentInfo info,
    required PdfFonts fonts,
    StampStyle stampStyle = StampStyle.standard,
    List<StampCard> stamps = const [],
    void Function(String problem)? onProblem,
    void Function(int page, String bandText)? onBandForTest,
  }) async {
    const formatter = TemplateFormatter();
    final usesChapter = [
      settings.header.left, settings.header.center, settings.header.right,
      settings.footer.left, settings.footer.center, settings.footer.right,
    ].any((t) => formatter.variablesIn(t).contains('chapter'));

    var chapterByPage = <int, String>{};
    if (usesChapter) {
      final starts = <int, String>{};
      await _build(markdown, settings, info, fonts, stampStyle, stamps, onProblem: (_) {}, chapterByPage: const {}, starts: starts);
      chapterByPage = _spread(starts);
    }
    return _build(markdown, settings, info, fonts, stampStyle, stamps,
        onProblem: onProblem, chapterByPage: chapterByPage, starts: null, onBandForTest: onBandForTest);
  }

  /// 章が始まるページ(1 始まり)→ 各ページの今の章(章が始まらないページは前のページの章)。
  Map<int, String> _spread(Map<int, String> starts) {
    if (starts.isEmpty) return {};
    final last = starts.keys.reduce((a, b) => a > b ? a : b);
    final out = <int, String>{};
    var current = '';
    for (var p = 1; p <= last + 1000 && p <= 100000; p++) {
      if (starts.containsKey(p)) current = starts[p]!;
      out[p] = current;
      if (p > last + 500) break;
    }
    return out;
  }

  Future<Uint8List> _build(
    String markdown,
    PdfSettings settings,
    PdfDocumentInfo info,
    PdfFonts fonts,
    StampStyle stampStyle,
    List<StampCard> stamps, {
    required void Function(String)? onProblem,
    required Map<int, String> chapterByPage,
    required Map<int, String>? starts,
    void Function(int page, String bandText)? onBandForTest,
  }) async {
    final doc = pw.Document(title: info.title, creator: 'PMS', compress: true);
    final regular = pw.Font.ttf(ByteData.sublistView(fonts.regular));
    final bold = pw.Font.ttf(ByteData.sublistView(fonts.bold));
    final theme = settings.theme;
    final resolver = PdfBandResolver(settings, info, onProblem: onProblem);
    const layout = StampLayout();
    final pageFmt = PdfPageFormat(
      settings.page.widthMm * _mm,
      settings.page.heightMm * _mm,
    );
    final m = settings.page.margins;
    final margin = pw.EdgeInsets.fromLTRB(m.left * _mm, m.top * _mm, m.right * _mm, m.bottom * _mm);

    PdfColor color(String name) => PdfColor.fromInt(theme.color(name));
    final text = color('text');

    pw.TextStyle base({double? size, PdfColor? c, bool isBold = false}) => pw.TextStyle(
          font: regular,
          fontBold: bold,
          fontSize: size ?? theme.font.baseSize,
          color: c ?? text,
          lineSpacing: (size ?? theme.font.baseSize) * (theme.font.lineHeight - 1.0),
          fontWeight: isBold ? pw.FontWeight.bold : pw.FontWeight.normal,
        );

    // ---- インライン ----
    List<pw.InlineSpan> spans(List<MdInline> inlines, {bool isBold = false, PdfColor? c, double? size}) {
      final out = <pw.InlineSpan>[];
      for (final i in inlines) {
        switch (i) {
          case MdText(:final text):
            out.add(pw.TextSpan(text: text, style: base(size: size, c: c, isBold: isBold)));
          case MdBold(:final children):
            out.addAll(spans(children, isBold: true, c: c, size: size));
          case MdItalic(:final children):
            out.addAll(spans(children, isBold: isBold, c: c, size: size)); // 斜体のフォントは同梱しない(通常の字体)
          case MdInlineCode(:final text):
            out.add(pw.TextSpan(
              text: text,
              style: base(size: theme.codeSize, c: c, isBold: isBold).copyWith(background: pw.BoxDecoration(color: color('codeBackground'))),
            ));
          case MdWikiLink(:final label):
            out.add(pw.TextSpan(text: label, style: base(size: size, c: color('link'), isBold: isBold)));
          case MdExternalLink(:final url, :final label):
            out.add(pw.TextSpan(
              text: label,
              style: base(size: size, c: color('link'), isBold: isBold).copyWith(decoration: pw.TextDecoration.underline),
              annotation: pw.AnnotationUrl(url),
            ));
        }
      }
      return out;
    }

    pw.Widget rich(String t, {bool isBold = false, PdfColor? c, double? size}) => pw.RichText(
          text: pw.TextSpan(children: spans(MarkdownParser.inlines(t), isBold: isBold, c: c, size: size)),
        );

    // ---- ブロック ----
    final widgets = <pw.Widget>[];
    var first = true;
    for (final b in MarkdownParser.parse(markdown)) {
      switch (b) {
        case MdHeading(:final level, :final text):
          final h = level <= 1 ? theme.h1 : (level == 2 ? theme.h2 : theme.h3);
          final headingColor = PdfColor.fromInt(theme.headingColor(h));
          if (level <= 1 && h.pageBreakBefore && !first) widgets.add(pw.NewPage());
          final title = text;
          widgets.add(
            pw.Padding(
              padding: pw.EdgeInsets.only(top: first || (level <= 1 && h.pageBreakBefore) ? 0 : h.spaceBeforeMm * _mm, bottom: h.spaceAfterMm * _mm),
              child: _Marker(
                onPaint: level <= 1 && starts != null ? (page) => starts.putIfAbsent(page, () => title) : null,
                child: pw.Text(text, style: base(size: h.size, c: headingColor, isBold: h.bold)),
              ),
            ),
          );
        case MdParagraph(:final text):
          widgets.add(pw.Padding(padding: pw.EdgeInsets.only(bottom: theme.paragraphSpaceAfterMm * _mm), child: rich(text)));
        case MdList(:final items, :final ordered):
          widgets.add(
            pw.Padding(
              padding: pw.EdgeInsets.only(bottom: theme.paragraphSpaceAfterMm * _mm),
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  for (var n = 0; n < items.length; n++)
                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.SizedBox(width: 7 * _mm, child: pw.Text(ordered ? '${n + 1}.' : '•', style: base())),
                        pw.Expanded(child: rich(items[n])),
                      ],
                    ),
                ],
              ),
            ),
          );
        case MdQuote(:final text):
          widgets.add(
            pw.Padding(
              padding: pw.EdgeInsets.only(bottom: theme.paragraphSpaceAfterMm * _mm),
              child: pw.Container(
                padding: pw.EdgeInsets.only(left: 3 * _mm),
                decoration: pw.BoxDecoration(border: pw.Border(left: pw.BorderSide(color: color('tableBorder'), width: 2))),
                child: rich(text, c: color('quote')),
              ),
            ),
          );
        case MdCode(:final text):
          widgets.add(
            pw.Padding(
              padding: pw.EdgeInsets.only(bottom: theme.paragraphSpaceAfterMm * _mm),
              child: pw.Container(
                width: double.infinity,
                color: color('codeBackground'),
                padding: pw.EdgeInsets.all(2 * _mm),
                child: pw.Text(text, style: base(size: theme.codeSize)),
              ),
            ),
          );
        case MdTable(:final header, :final rows):
          final cols = header.length;
          pw.Widget cell(String t, {bool head = false}) => pw.Padding(
                padding: pw.EdgeInsets.all(theme.tableCellPaddingMm * _mm),
                child: rich(t, isBold: head && theme.tableHeaderBold),
              );
          widgets.add(
            pw.Padding(
              padding: pw.EdgeInsets.only(bottom: theme.paragraphSpaceAfterMm * _mm),
              child: pw.Table(
                border: pw.TableBorder.all(color: color('tableBorder'), width: theme.tableBorderWidth),
                children: [
                  pw.TableRow(
                    decoration: pw.BoxDecoration(color: color('tableHeaderBackground')),
                    children: [for (final h in header) cell(h, head: true)],
                  ),
                  for (final r in rows)
                    pw.TableRow(children: [for (var c = 0; c < cols; c++) cell(c < r.length ? r[c] : '')]),
                ],
              ),
            ),
          );
        case MdRule():
          widgets.add(pw.Padding(padding: pw.EdgeInsets.symmetric(vertical: 2 * _mm), child: pw.Divider(color: color('tableBorder'), thickness: 0.5)));
      }
      first = false;
    }
    if (widgets.isEmpty) widgets.add(pw.SizedBox());

    // ---- ヘッダ・フッタ ----
    pw.Widget band(PdfBand b, PdfBandText t, {required bool top}) {
      final bandColor = PdfColor.fromInt(resolveColor(b.color, theme.vars) ?? 0xFF616161);
      pw.Widget cellText(String s, pw.Alignment a) => pw.Expanded(
            child: pw.Align(alignment: a, child: pw.Text(s, style: base(size: b.size, c: bandColor))),
          );
      return pw.Container(
        height: b.heightMm * _mm,
        alignment: pw.Alignment.center,
        decoration: b.border
            ? pw.BoxDecoration(
                border: top
                    ? pw.Border(bottom: pw.BorderSide(color: color('tableBorder'), width: 0.5))
                    : pw.Border(top: pw.BorderSide(color: color('tableBorder'), width: 0.5)),
              )
            : null,
        child: pw.Row(children: [
          cellText(t.left, pw.Alignment.centerLeft),
          cellText(t.center, pw.Alignment.center),
          cellText(t.right, pw.Alignment.centerRight),
        ]),
      );
    }

    pw.Widget bandBuilder(pw.Context ctx, PdfBand b, bool isHeader) {
      final page = ctx.pageNumber;
      final chapter = chapterByPage[page];
      final t = isHeader
          ? resolver.header(pageIndex: page - 1, pages: ctx.pagesCount, chapter: chapter)
          : resolver.footer(pageIndex: page - 1, pages: ctx.pagesCount, chapter: chapter);
      if (t == null) return pw.SizedBox();
      onBandForTest?.call(page, '${isHeader ? 'H' : 'F'}|${t.left}|${t.center}|${t.right}');
      return band(b, t, top: isHeader);
    }

    // ---- 承認スタンプ(前景。ページごとに位置を計算) ----
    pw.Widget foreground(pw.Context ctx) {
      final places = layout.place(
        stampStyle,
        pageWidthMm: settings.page.widthMm,
        pageHeightMm: settings.page.heightMm,
        count: stamps.length,
        pageIndex: ctx.pageNumber - 1,
      );
      if (places.isEmpty) return pw.SizedBox();
      return pw.FullPage(
        ignoreMargins: true,
        child: pw.Stack(
          children: [
            for (var i = 0; i < places.length; i++)
              pw.Positioned(
                left: places[i].xMm * _mm,
                top: places[i].yMm * _mm,
                child: buildStampWidget(
                  card: stamps[i],
                  style: stampStyle,
                  themeVars: theme.vars,
                  placement: places[i],
                  regular: regular,
                  bold: bold,
                ),
              ),
          ],
        ),
      );
    }

    doc.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          pageFormat: pageFmt,
          margin: margin,
          theme: pw.ThemeData.withFont(base: regular, bold: bold),
          // 重ね方: 透かし(本文の後ろ。既定)か、本文の前
          buildBackground: stamps.isEmpty || stampStyle.layer != StampLayer.background ? null : foreground,
          buildForeground: stamps.isEmpty || stampStyle.layer != StampLayer.foreground ? null : foreground,
        ),
        header: settings.header.enabled ? (ctx) => bandBuilder(ctx, settings.header, true) : null,
        footer: settings.footer.enabled ? (ctx) => bandBuilder(ctx, settings.footer, false) : null,
        build: (ctx) => widgets,
      ),
    );
    return doc.save();
  }
}

/// 描画された(ページが決まった)ことを知らせる、大きさの無い印(章がどのページから始まるかを調べる)。
class _Marker extends pw.SingleChildWidget {
  _Marker({required this.onPaint, required pw.Widget child}) : super(child: child);

  final void Function(int page)? onPaint;

  @override
  void paint(pw.Context context) {
    super.paint(context);
    paintChild(context);
    onPaint?.call(context.pageNumber);
  }
}
