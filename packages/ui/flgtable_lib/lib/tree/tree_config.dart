/// 階層の関係線の線種。
enum TreeLineStyle { solid, dashed, dotted }

/// ツリー固有の設定。JSON でシリアライズ/デシリアライズできる。
class TreeConfig {
  const TreeConfig({
    this.indentChars = 2,
    this.showLines = true,
    this.lineStyle = TreeLineStyle.solid,
    this.lineWidth,
    this.childCountColumnKey,
  }) : assert(indentChars >= 1, 'indentChars は1以上');

  /// JSON から復元する。欠けた/不正な項目は既定値にする。
  factory TreeConfig.fromJson(Map<String, dynamic> json) {
    const d = TreeConfig();
    final indent = json['indentChars'];
    final width = json['lineWidth'];
    final key = json['childCountColumnKey'];
    return TreeConfig(
      indentChars: indent is int && indent >= 1 ? indent : d.indentChars,
      showLines: json['showLines'] is bool
          ? json['showLines'] as bool
          : d.showLines,
      lineStyle:
          TreeLineStyle.values
              .where((s) => s.name == json['lineStyle'])
              .firstOrNull ??
          d.lineStyle,
      lineWidth: width is num && width > 0 ? width.toDouble() : null,
      childCountColumnKey: key is String ? key : null,
    );
  }

  /// 1レベルあたりのインデント。1文字の幅を1とする(テーマの文字サイズに従う)。標準は2。
  final int indentChars;

  /// レベルの関係線を表示するか。
  final bool showLines;

  /// 関係線の線種。色はテーマの区切り線の色を使う。
  final TreeLineStyle lineStyle;

  /// 関係線の太さ。null はテーマ(`BorderField.borderWidth`)に従う。
  final double? lineWidth;

  /// 子の数を持つ列のキー。その列の値(整数)で子の有無を判断する。
  /// null のときは内部の非表示列を使い、初期値を1とする(CSV出力の対象外)。
  final String? childCountColumnKey;

  Map<String, dynamic> toJson() => {
    'indentChars': indentChars,
    'showLines': showLines,
    'lineStyle': lineStyle.name,
    'lineWidth': lineWidth,
    'childCountColumnKey': childCountColumnKey,
  };
}
