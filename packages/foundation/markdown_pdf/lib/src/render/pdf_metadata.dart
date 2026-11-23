import 'dart:convert';
import 'dart:typed_data';

import 'package:approval_stamp/approval_stamp.dart';

/// PDF のメタデータに、出力に使った設定(`pdf`)を残す(キーワード `Keywords` に `pms-pdf-settings:v1:` + 設定の JSON)。
///
/// 承認の記録は追記のみで、設定を変えても承認の事実は変わらず、見た目だけが変わる。過去に出力した PDF が、どの設定で作られたかを
/// 後から確認・再現できるようにする(Issue 20261121_0001 の提案。2026-11-23 採択)。設定の変更は、DB の `info_app.settings` の履歴にも残る。
/// 日本語を含むと PDF の文字列は UTF-16 になるため、[read] は両方の形を読む。
abstract final class PdfSettingsMetadata {
  static const marker = 'pms-pdf-settings:v1:';

  /// メタデータに書く文字列。
  static String encode(PdfSettings settings) => '$marker${jsonEncode(settings.toJson())}';

  /// PDF のバイト列から、出力に使った設定を読む。メタデータが無い・読めないときは null。
  static PdfSettings? read(Uint8List pdf) {
    final text = latin1.decode(pdf, allowInvalid: true);
    final m = RegExp(r'/Keywords\s*([(<])').firstMatch(text);
    if (m == null) return null;
    final value = m[1] == '(' ? _literal(text, m.end) : _hex(text, m.end);
    if (value == null || !value.startsWith(marker)) return null;
    try {
      return PdfSettings.fromJson(jsonDecode(value.substring(marker.length)));
    } on FormatException {
      return null;
    }
  }

  /// `(` の次から `)` までの文字列(バックスラッシュのエスケープを戻す)。
  static String? _literal(String text, int start) {
    final out = StringBuffer();
    var depth = 1;
    for (var i = start; i < text.length; i++) {
      final c = text[i];
      if (c == r'\') {
        if (i + 1 >= text.length) return null;
        final n = text[++i];
        switch (n) {
          case 'n':
            out.write('\n');
          case 'r':
            out.write('\r');
          case 't':
            out.write('\t');
          default:
            out.write(n);
        }
      } else if (c == '(') {
        depth++;
        out.write(c);
      } else if (c == ')') {
        if (--depth == 0) return out.toString();
        out.write(c);
      } else {
        out.write(c);
      }
    }
    return null;
  }

  /// `<` の次から `>` までの 16 進の文字列(先頭が FEFF なら UTF-16BE)。
  static String? _hex(String text, int start) {
    final end = text.indexOf('>', start);
    if (end < 0) return null;
    final hex = text.substring(start, end).replaceAll(RegExp(r'\s'), '');
    if (hex.length.isOdd) return null;
    final bytes = [for (var i = 0; i < hex.length; i += 2) int.parse(hex.substring(i, i + 2), radix: 16)];
    if (bytes.length >= 2 && bytes[0] == 0xFE && bytes[1] == 0xFF) {
      final units = [for (var i = 2; i + 1 < bytes.length; i += 2) (bytes[i] << 8) | bytes[i + 1]];
      return String.fromCharCodes(units);
    }
    return latin1.decode(bytes);
  }
}
