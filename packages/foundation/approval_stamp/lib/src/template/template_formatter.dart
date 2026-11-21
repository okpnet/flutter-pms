import 'date_format.dart';

/// 固定の文字と変数を混ぜた書式を展開する(ヘッダ・フッタ・スタンプの文字)。
///
/// 文法: `{変数}` または `{変数:書式}`。波括弧そのものは `{{`・`}}`。
/// 値が日時のとき、書式は [formatDate] の書式。数値のとき、書式の `0` の数だけ 0 埋め(`{page:00}` → `03`)。
/// それ以外の値は、書式を無視する。未知の変数(値が無い)は空にして、[onProblem] に知らせる(失敗させない)。
/// 閉じていない `{` は、そのまま文字として出す([onProblem] に知らせる)。
class TemplateFormatter {
  const TemplateFormatter();

  String expand(
    String template,
    Map<String, Object?> variables, {
    void Function(String problem)? onProblem,
  }) {
    final out = StringBuffer();
    var i = 0;
    while (i < template.length) {
      final c = template[i];
      if (c == '{') {
        if (i + 1 < template.length && template[i + 1] == '{') {
          out.write('{');
          i += 2;
          continue;
        }
        final end = template.indexOf('}', i + 1);
        if (end < 0) {
          onProblem?.call('閉じていない { があります: $template');
          out.write(template.substring(i));
          break;
        }
        out.write(
          _variable(template.substring(i + 1, end), variables, onProblem),
        );
        i = end + 1;
        continue;
      }
      if (c == '}') {
        if (i + 1 < template.length && template[i + 1] == '}') {
          i += 2;
        } else {
          onProblem?.call('対応する { が無い } があります: $template');
          i++;
        }
        out.write('}');
        continue;
      }
      out.write(c);
      i++;
    }
    return out.toString();
  }

  /// 書式の中の変数の名前の一覧(重複なし)。設定の画面で「使っている変数」を出すために使う。
  List<String> variablesIn(String template) {
    final names = <String>[];
    var i = 0;
    while (i < template.length) {
      if (template[i] == '{') {
        if (i + 1 < template.length && template[i + 1] == '{') {
          i += 2;
          continue;
        }
        final end = template.indexOf('}', i + 1);
        if (end < 0) break;
        final body = template.substring(i + 1, end);
        final name =
            (body.contains(':') ? body.substring(0, body.indexOf(':')) : body)
                .trim();
        if (name.isNotEmpty && !names.contains(name)) names.add(name);
        i = end + 1;
        continue;
      }
      i++;
    }
    return names;
  }

  String _variable(
    String body,
    Map<String, Object?> variables,
    void Function(String)? onProblem,
  ) {
    final colon = body.indexOf(':');
    final name = (colon < 0 ? body : body.substring(0, colon)).trim();
    final format = colon < 0 ? null : body.substring(colon + 1);
    if (!variables.containsKey(name)) {
      onProblem?.call('未知の変数: $name');
      return '';
    }
    final value = variables[name];
    if (value == null) return '';
    if (value is DateTime) return formatDate(value, format ?? 'yyyy/MM/dd');
    if (value is num &&
        format != null &&
        format.isNotEmpty &&
        format.split('').every((e) => e == '0')) {
      return value.toInt().toString().padLeft(format.length, '0');
    }
    return value.toString();
  }
}
