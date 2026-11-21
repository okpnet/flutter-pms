import 'dart:math' as math;

import 'package:approval_stamp/approval_stamp.dart';
import 'package:flutter/material.dart';

/// 承認スタンプ 1 つ(枠・文字・すかし・回転)。PDF のスタンプ(`markdown_pdf`)と同じ様式で描く。
///
/// [pxPerMm] は 1mm を何論理ピクセルで描くか(画面の表示は 3.78 前後、用紙のプレビューは小さくする)。
class ApprovalStampView extends StatelessWidget {
  const ApprovalStampView({
    super.key,
    required this.card,
    required this.style,
    this.themeVars = const {},
    this.pxPerMm = 3.78,
    this.rotationDeg,
  });

  final StampCard card;
  final StampStyle style;

  /// PDF のテーマの変数(色の `$名前` の参照先)。
  final Map<String, String> themeVars;
  final double pxPerMm;

  /// 回転(度)。null は様式の値。
  final double? rotationDeg;

  @override
  Widget build(BuildContext context) {
    final pending = card.state == StampState.pending;
    Color c(String? spec, int fallback) => Color(resolveColor(spec, themeVars, fallback: fallback) ?? fallback);
    final textColor = pending ? c(style.pending.color, 0xFF757575) : c(style.color.text, 0xFFC62828);
    final frameColor = pending ? c(style.pending.color, 0xFF757575) : c(style.color.frame, 0xFFC62828);
    final fill = style.color.fill == null ? null : c(style.color.fill, 0x00FFFFFF);
    final w = style.shape.widthMm * pxPerMm;
    final h = style.shape.heightMm * pxPerMm;
    final deg = rotationDeg ?? style.shape.rotationDeg;
    return Semantics(
      label: card.lines.map((e) => e.text).join(' '),
      child: Opacity(
        opacity: style.opacity,
        child: Transform.rotate(
          angle: deg * math.pi / 180,
          child: CustomPaint(
            size: Size(w, h),
            painter: _FramePainter(
              kind: style.shape.kind,
              color: frameColor,
              fill: fill,
              dashed: pending && style.pending.dashed,
              strokeWidth: math.max(1, pxPerMm * 0.4),
            ),
            child: SizedBox(
              width: w,
              height: h,
              child: Padding(
                padding: EdgeInsets.all(2 * pxPerMm),
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (var i = 0; i < card.lines.length; i++)
                          Text(
                            card.lines[i].text,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: textColor,
                              fontSize: card.lines[i].size * pxPerMm / 3.78 * (96 / 72),
                              fontWeight: i == 0 ? FontWeight.bold : FontWeight.normal,
                              height: 1.25,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FramePainter extends CustomPainter {
  _FramePainter({
    required this.kind,
    required this.color,
    required this.fill,
    required this.dashed,
    required this.strokeWidth,
  });

  final StampShapeKind kind;
  final Color color;
  final Color? fill;
  final bool dashed;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final stroke = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = strokeWidth;
    final r = size.shortestSide * 0.12;
    Path shape(double inset, double radius) {
      final rect = Rect.fromLTWH(inset, inset, size.width - inset * 2, size.height - inset * 2);
      return kind == StampShapeKind.circle
          ? (Path()..addOval(rect))
          : (Path()..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius))));
    }

    final outer = shape(strokeWidth / 2, r);
    if (fill != null) canvas.drawPath(outer, Paint()..color = fill!);
    _draw(canvas, outer, stroke);
    if (kind == StampShapeKind.doubleFrame) {
      _draw(canvas, shape(strokeWidth * 2.4, r * 0.6), stroke);
    } else if (kind == StampShapeKind.dateStamp) {
      final y = size.height * 0.62;
      canvas.drawLine(Offset(0, y), Offset(size.width, y), stroke);
    }
  }

  void _draw(Canvas canvas, Path path, Paint paint) {
    if (!dashed) {
      canvas.drawPath(path, paint);
      return;
    }
    final on = strokeWidth * 3.5;
    final off = strokeWidth * 2.5;
    for (final metric in path.computeMetrics()) {
      var d = 0.0;
      while (d < metric.length) {
        canvas.drawPath(metric.extractPath(d, math.min(d + on, metric.length)), paint);
        d += on + off;
      }
    }
  }

  @override
  bool shouldRepaint(_FramePainter old) =>
      old.kind != kind || old.color != color || old.fill != fill || old.dashed != dashed || old.strokeWidth != strokeWidth;
}

/// 用紙の上のスタンプの位置のプレビュー(設定の画面・文書の表示)。
/// [settings] の用紙・余白・ヘッダ/フッタの有無と、[style]・[cards] の位置を縮尺 [pxPerMm] で描く。
class StampPagePreview extends StatelessWidget {
  const StampPagePreview({
    super.key,
    required this.settings,
    required this.style,
    required this.cards,
    this.pageIndex = 0,
    this.pxPerMm = 1.3,
    this.headerText,
    this.footerText,
  });

  final PdfSettings settings;
  final StampStyle style;
  final List<StampCard> cards;
  final int pageIndex;
  final double pxPerMm;

  /// ヘッダ・フッタに出す文字(展開済み。null は出さない)。
  final PdfBandText? headerText;
  final PdfBandText? footerText;

  @override
  Widget build(BuildContext context) {
    final page = settings.page;
    final w = page.widthMm * pxPerMm;
    final h = page.heightMm * pxPerMm;
    final m = page.margins;
    final places = const StampLayout().place(
      style,
      pageWidthMm: page.widthMm,
      pageHeightMm: page.heightMm,
      count: cards.length,
      pageIndex: pageIndex,
    );
    final scheme = Theme.of(context).colorScheme;
    TextStyle small(double mmSize) => TextStyle(fontSize: mmSize * pxPerMm * 0.9, color: scheme.outline);
    Widget band(PdfBandText t, double heightMm, bool top) => Container(
          height: heightMm * pxPerMm,
          decoration: BoxDecoration(
            border: Border(
              top: top ? BorderSide.none : BorderSide(color: scheme.outlineVariant),
              bottom: top ? BorderSide(color: scheme.outlineVariant) : BorderSide.none,
            ),
          ),
          child: Row(
            children: [
              Expanded(child: Text(t.left, style: small(3), overflow: TextOverflow.clip, maxLines: 1)),
              Expanded(child: Text(t.center, style: small(3), textAlign: TextAlign.center, maxLines: 1)),
              Expanded(child: Text(t.right, style: small(3), textAlign: TextAlign.right, maxLines: 1)),
            ],
          ),
        );
    return Semantics(
      label: 'page-preview',
      child: Container(
        key: const Key('page-preview'),
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: scheme.shadow.withValues(alpha: 0.25), blurRadius: 6, offset: const Offset(0, 2))],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: m.left * pxPerMm,
              right: m.right * pxPerMm,
              top: m.top * pxPerMm,
              bottom: m.bottom * pxPerMm,
              child: Column(
                children: [
                  if (headerText != null) band(headerText!, settings.header.heightMm, true),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3 * pxPerMm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (var i = 0; i < 9; i++)
                            Container(
                              margin: EdgeInsets.only(bottom: 2.2 * pxPerMm),
                              height: 1.2 * pxPerMm,
                              width: (i % 4 == 3 ? 0.55 : 1.0) * double.infinity,
                              color: const Color(0xFFE0E0E0),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (footerText != null) band(footerText!, settings.footer.heightMm, false),
                ],
              ),
            ),
            for (var i = 0; i < places.length; i++)
              Positioned(
                left: places[i].xMm * pxPerMm,
                top: places[i].yMm * pxPerMm,
                child: ApprovalStampView(
                  key: Key('stamp-preview-$i'),
                  card: cards[i],
                  style: style,
                  themeVars: settings.theme.vars,
                  pxPerMm: pxPerMm,
                  rotationDeg: places[i].rotationDeg,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
