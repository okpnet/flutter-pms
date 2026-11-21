import '../style/stamp_style.dart';

/// 用紙の上でのスタンプ 1 つの位置と大きさ(mm。左上が原点)。
class StampPlacement {
  const StampPlacement({
    required this.xMm,
    required this.yMm,
    required this.widthMm,
    required this.heightMm,
    required this.rotationDeg,
  });
  final double xMm;
  final double yMm;
  final double widthMm;
  final double heightMm;
  final double rotationDeg;

  @override
  bool operator ==(Object other) =>
      other is StampPlacement &&
      other.xMm == xMm &&
      other.yMm == yMm &&
      other.widthMm == widthMm &&
      other.heightMm == heightMm &&
      other.rotationDeg == rotationDeg;

  @override
  int get hashCode => Object.hash(xMm, yMm, widthMm, heightMm, rotationDeg);

  @override
  String toString() =>
      'StampPlacement($xMm, $yMm, $widthMm×$heightMm, $rotationDeg°)';
}

/// スタンプの配置の計算(画面の用紙のプレビューと PDF で同じ結果を使う)。
class StampLayout {
  const StampLayout({this.gapMm = 3});

  /// 複数のスタンプの間(mm)。
  final double gapMm;

  /// [count] 個のスタンプの配置。ページ [pageIndex](0 始まり)に出さないとき(`pages = first` の 2 ページ目以降)は空。
  /// 基準が右の角のとき、複数は左へ、左の角のとき右へ、中央のときは中央に横並び。
  List<StampPlacement> place(
    StampStyle style, {
    required double pageWidthMm,
    required double pageHeightMm,
    required int count,
    int pageIndex = 0,
  }) {
    if (count <= 0) return const [];
    if (style.position.pages == StampPages.first && pageIndex > 0) {
      return const [];
    }
    final w = style.shape.widthMm;
    final h = style.shape.heightMm;
    final pos = style.position;
    final total = count * w + (count - 1) * gapMm;
    final out = <StampPlacement>[];
    for (var i = 0; i < count; i++) {
      final step = i * (w + gapMm);
      final double x;
      final double y;
      switch (pos.anchor) {
        case StampAnchor.topLeft:
          x = pos.offsetXmm + step;
          y = pos.offsetYmm;
        case StampAnchor.topRight:
          x = pageWidthMm - pos.offsetXmm - w - step;
          y = pos.offsetYmm;
        case StampAnchor.bottomLeft:
          x = pos.offsetXmm + step;
          y = pageHeightMm - pos.offsetYmm - h;
        case StampAnchor.bottomRight:
          x = pageWidthMm - pos.offsetXmm - w - step;
          y = pageHeightMm - pos.offsetYmm - h;
        case StampAnchor.center:
          x = (pageWidthMm - total) / 2 + pos.offsetXmm + step;
          y = (pageHeightMm - h) / 2 + pos.offsetYmm;
      }
      out.add(
        StampPlacement(
          xMm: x,
          yMm: y,
          widthMm: w,
          heightMm: h,
          rotationDeg: style.shape.rotationDeg,
        ),
      );
    }
    return out;
  }
}
