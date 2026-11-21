/// 色の指定: `"#RRGGBB"`・`"#AARRGGBB"`、または `"$変数名"`(テーマの変数 `vars` の値。変数が別の変数を指してもよい。循環は止める)。
/// 解決した値は ARGB の整数(0xAARRGGBB)。解決できないときは [fallback]。
int? resolveColor(String? spec, Map<String, String> vars, {int? fallback}) {
  var s = spec;
  for (var depth = 0; s != null && s.startsWith(r'$'); depth++) {
    if (depth > 8) return fallback;
    s = vars[s.substring(1)];
  }
  if (s == null) return fallback;
  return parseHexColor(s) ?? fallback;
}

/// `#RRGGBB`・`#AARRGGBB`(大文字小文字は区別しない)を ARGB の整数にする。不正なら null。
int? parseHexColor(String s) {
  final t = s.trim();
  if (!t.startsWith('#')) return null;
  final hex = t.substring(1);
  if (hex.length != 6 && hex.length != 8) return null;
  final v = int.tryParse(hex, radix: 16);
  if (v == null) return null;
  return hex.length == 6 ? (0xFF000000 | v) : v;
}

/// ARGB の整数を `#RRGGBB`(不透明)または `#AARRGGBB` にする。
String colorToHex(int argb) {
  final a = (argb >> 24) & 0xFF;
  final rgb = (argb & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase();
  return a == 0xFF
      ? '#$rgb'
      : '#${a.toRadixString(16).padLeft(2, '0').toUpperCase()}$rgb';
}
