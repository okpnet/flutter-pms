/// 日時の書式(スタンプ・ヘッダ・フッタで共通)。
///
/// 記号(連続した同じ文字): `yyyy` `yy` 年 / `MM` `M` 月 / `dd` `d` 日 / `HH` `H` 時 / `mm` `m` 分 / `ss` `s` 秒 /
/// `G` 和暦の元号(令和・平成・昭和・大正・明治) / `E` 和暦の年(1 年は「元」にしない。数字)。
/// 英字以外(`/`・`年`・空白など)はそのまま出す。`'…'` で囲むと英字も文字として出す(`''` はアポストロフィ)。
/// 例: `yyyy/MM/dd`・`yyyy年M月d日 HH:mm`・`G E年M月d日`。
String formatDate(DateTime value, String pattern) {
  final out = StringBuffer();
  var i = 0;
  while (i < pattern.length) {
    final c = pattern[i];
    if (c == "'") {
      if (i + 1 < pattern.length && pattern[i + 1] == "'") {
        out.write("'");
        i += 2;
        continue;
      }
      final end = pattern.indexOf("'", i + 1);
      if (end < 0) {
        out.write(pattern.substring(i + 1));
        break;
      }
      out.write(pattern.substring(i + 1, end));
      i = end + 1;
      continue;
    }
    if (!_isLetter(c)) {
      out.write(c);
      i++;
      continue;
    }
    var j = i;
    while (j < pattern.length && pattern[j] == c) {
      j++;
    }
    final n = j - i;
    out.write(_token(value, c, n));
    i = j;
  }
  return out.toString();
}

bool _isLetter(String c) {
  final u = c.codeUnitAt(0);
  return (u >= 0x41 && u <= 0x5A) || (u >= 0x61 && u <= 0x7A);
}

String _pad(int v, int width) => v.toString().padLeft(width, '0');

String _token(DateTime d, String c, int n) {
  switch (c) {
    case 'y':
      return n == 2 ? _pad(d.year % 100, 2) : _pad(d.year, n);
    case 'M':
      return _pad(d.month, n);
    case 'd':
      return _pad(d.day, n);
    case 'H':
      return _pad(d.hour, n);
    case 'm':
      return _pad(d.minute, n);
    case 's':
      return _pad(d.second, n);
    case 'G':
      return _era(d).name;
    case 'E':
      return _pad(d.year - _era(d).startYear + 1, n);
    default:
      return c * n; // 未知の記号は、そのまま出す
  }
}

class _Era {
  const _Era(this.name, this.startYear);
  final String name;
  final int startYear;
}

_Era _era(DateTime d) {
  final t = DateTime(d.year, d.month, d.day);
  if (!t.isBefore(DateTime(2019, 5, 1))) return const _Era('令和', 2019);
  if (!t.isBefore(DateTime(1989, 1, 8))) return const _Era('平成', 1989);
  if (!t.isBefore(DateTime(1926, 12, 25))) return const _Era('昭和', 1926);
  if (!t.isBefore(DateTime(1912, 7, 30))) return const _Era('大正', 1912);
  return const _Era('明治', 1868);
}
