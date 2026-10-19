///メディアサイズ
enum MediaBreakPoint {
  mobile(767.0),
  tablet(1024.0),
  pc(double.infinity);

  final double mediaSize;

  const MediaBreakPoint(this.mediaSize);

  ///サイズからタイプ生成
  static MediaBreakPoint of(double size) {
    if (MediaBreakPoint.mobile.mediaSize > size) {
      return .mobile;
    }
    if (MediaBreakPoint.tablet.mediaSize > size) {
      return .tablet;
    }
    return .pc;
  }
}
