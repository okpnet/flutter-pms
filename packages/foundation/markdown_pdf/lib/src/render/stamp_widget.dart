import 'dart:math' as math;

import 'package:approval_stamp/approval_stamp.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

/// 承認スタンプ 1 つの PDF の部品(枠・文字。すかしと回転を含む)。
/// 形・色・すかしは [StampStyle]、枠の線は承認待ちのとき破線にできる。位置は [StampLayout] が決める。
pw.Widget buildStampWidget({
  required StampCard card,
  required StampStyle style,
  required Map<String, String> themeVars,
  required StampPlacement placement,
  required pw.Font regular,
  required pw.Font bold,
}) {
  const mm = PdfPageFormat.mm;
  final w = placement.widthMm * mm;
  final h = placement.heightMm * mm;
  final pending = card.state == StampState.pending;
  final rejected = card.state == StampState.rejected;
  final textArgb = pending
      ? (resolveColor(style.pending.color, themeVars) ?? 0xFF757575)
      : (resolveColor(style.color.text, themeVars) ?? 0xFFC62828);
  final frameArgb = pending
      ? (resolveColor(style.pending.color, themeVars) ?? 0xFF757575)
      : (resolveColor(style.color.frame, themeVars) ?? 0xFFC62828);
  final fillArgb = style.color.fill == null ? null : resolveColor(style.color.fill, themeVars);
  final dashed = pending && style.pending.dashed;
  final textColor = PdfColor.fromInt(textArgb);

  final lines = <pw.Widget>[
    for (var i = 0; i < card.lines.length; i++)
      pw.Text(
        card.lines[i].text,
        textAlign: pw.TextAlign.center,
        style: pw.TextStyle(
          font: regular,
          fontBold: bold,
          fontWeight: i == 0 ? pw.FontWeight.bold : pw.FontWeight.normal,
          fontSize: card.lines[i].size,
          color: textColor,
        ),
      ),
  ];

  final inner = pw.Padding(
    padding: const pw.EdgeInsets.all(2 * mm),
    child: pw.Center(
      child: pw.FittedBox(
        fit: pw.BoxFit.scaleDown,
        child: pw.Column(mainAxisSize: pw.MainAxisSize.min, children: lines),
      ),
    ),
  );

  final framed = pw.CustomPaint(
    size: PdfPoint(w, h),
    painter: (canvas, size) => _paintFrame(canvas, size, style.shape.kind, PdfColor.fromInt(frameArgb), fillArgb == null ? null : PdfColor.fromInt(fillArgb), dashed, rejected),
    child: pw.SizedBox(width: w, height: h, child: inner),
  );

  return pw.Opacity(
    opacity: style.opacity,
    child: pw.Transform.rotate(angle: -placement.rotationDeg * math.pi / 180, child: framed),
  );
}

void _paintFrame(PdfGraphics canvas, PdfPoint size, StampShapeKind kind, PdfColor frame, PdfColor? fill, bool dashed, bool rejected) {
  final w = size.x;
  final h = size.y;
  canvas
    ..setStrokeColor(frame)
    ..setLineWidth(rejected ? 1.6 : 1.2);
  if (dashed) {
    canvas.setLineDashPattern([4, 3]);
  } else {
    canvas.setLineDashPattern();
  }
  void shape(double inset, double radius) {
    switch (kind) {
      case StampShapeKind.circle:
        canvas.drawEllipse(w / 2, h / 2, w / 2 - inset, h / 2 - inset);
      case StampShapeKind.roundRect:
      case StampShapeKind.doubleFrame:
      case StampShapeKind.dateStamp:
        canvas.drawRRect(inset, inset, w - inset * 2, h - inset * 2, radius, radius);
    }
  }

  if (fill != null) {
    canvas.setFillColor(fill);
    shape(0.6, 4);
    canvas.fillPath();
  }
  shape(0.6, 4);
  canvas.strokePath();
  switch (kind) {
    case StampShapeKind.doubleFrame:
      shape(4.2, 2.5);
      canvas.strokePath();
    case StampShapeKind.dateStamp:
      // 上の欄(承認の文字)と下の欄(日付・承認者)を分ける線
      canvas
        ..moveTo(0.6, h * 0.62)
        ..lineTo(w - 0.6, h * 0.62)
        ..strokePath();
    case StampShapeKind.circle:
    case StampShapeKind.roundRect:
      break;
  }
}
