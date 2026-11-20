import 'package:flutter/widgets.dart' show TextEditingValue, TextSelection;

/// 本文(Markdown)への書式の挿入。選択範囲とカーソルに対して、新しい値を返す純粋な関数の集まり。
/// 「Markdown」の入力欄と、「ビジュアル」のブロック編集の入力欄の、どちらの道具バーも同じものを使う。
abstract final class ManualMdEdit {
  /// 選択範囲を [prefix] と [suffix] で囲む(選択が無いときは [placeholder] を入れて選択する)。
  static TextEditingValue wrap(
    TextEditingValue v,
    String prefix,
    String suffix, {
    String placeholder = '',
  }) {
    final sel = _selection(v);
    final selected = v.text.substring(sel.start, sel.end);
    final inner = selected.isEmpty ? placeholder : selected;
    final text = v.text.replaceRange(sel.start, sel.end, '$prefix$inner$suffix');
    final start = sel.start + prefix.length;
    return TextEditingValue(
      text: text,
      selection: TextSelection(
        baseOffset: start,
        extentOffset: start + inner.length,
      ),
    );
  }

  /// 選択範囲(カーソルのある行)の各行の先頭に [prefix] を付ける。[numbered] なら 1. 2. … にする。
  static TextEditingValue prefixLines(
    TextEditingValue v,
    String prefix, {
    bool numbered = false,
  }) {
    final sel = _selection(v);
    final from = sel.start == 0 ? 0 : v.text.lastIndexOf('\n', sel.start - 1) + 1;
    var to = v.text.indexOf('\n', sel.end);
    if (to < 0) to = v.text.length;
    final lines = v.text.substring(from, to).split('\n');
    final out = [
      for (var i = 0; i < lines.length; i++)
        '${numbered ? '${i + 1}. ' : prefix}${lines[i]}',
    ].join('\n');
    final text = v.text.replaceRange(from, to, out);
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: from + out.length),
    );
  }

  /// カーソルの位置に、独立したブロック([block])を入れる(前後を空行で区切る)。
  static TextEditingValue insertBlock(TextEditingValue v, String block) {
    final sel = _selection(v);
    final before = v.text.substring(0, sel.start);
    final after = v.text.substring(sel.end);
    final lead = before.isEmpty
        ? ''
        : before.endsWith('\n\n')
        ? ''
        : before.endsWith('\n')
        ? '\n'
        : '\n\n';
    final tail = after.isEmpty
        ? '\n'
        : after.startsWith('\n\n')
        ? ''
        : after.startsWith('\n')
        ? '\n'
        : '\n\n';
    final inserted = '$lead$block$tail';
    return TextEditingValue(
      text: '$before$inserted$after',
      selection: TextSelection.collapsed(offset: before.length + inserted.length),
    );
  }

  /// カーソルの位置に、そのまま [text] を入れる(ページへのリンクなど)。
  static TextEditingValue insertText(TextEditingValue v, String text) {
    final sel = _selection(v);
    return TextEditingValue(
      text: v.text.replaceRange(sel.start, sel.end, text),
      selection: TextSelection.collapsed(offset: sel.start + text.length),
    );
  }

  /// ページへのリンクを入れる。選択した文字があれば、表示文字にする(`[[ページ名|選択した文字]]`)。
  static TextEditingValue insertPageLink(TextEditingValue v, String pageTitle) {
    final sel = _selection(v);
    final selected = v.text.substring(sel.start, sel.end).trim();
    final link = selected.isEmpty || selected == pageTitle
        ? '[[$pageTitle]]'
        : '[[$pageTitle|$selected]]';
    return insertText(v, link);
  }

  static const tableTemplate = '| 項目 | 内容 |\n| --- | --- |\n|  |  |';
  static const codeTemplate = '```\n\n```';
  static const ruleTemplate = '---';

  static TextSelection _selection(TextEditingValue v) {
    final s = v.selection;
    if (!s.isValid) return TextSelection.collapsed(offset: v.text.length);
    return TextSelection(
      baseOffset: s.start.clamp(0, v.text.length),
      extentOffset: s.end.clamp(0, v.text.length),
    );
  }

  /// 本文を、空行で区切ったブロック(段落・表・リスト・コード…)に分ける。コードの囲みの中の空行では分けない。
  static List<String> chunks(String md) {
    final out = <String>[];
    var cur = <String>[];
    var inCode = false;
    void flush() {
      if (cur.isNotEmpty) out.add(cur.join('\n'));
      cur = [];
    }

    for (final line in md.replaceAll('\r\n', '\n').split('\n')) {
      if (line.trimLeft().startsWith('```')) inCode = !inCode;
      if (!inCode && line.trim().isEmpty) {
        flush();
      } else {
        cur.add(line);
      }
    }
    flush();
    return out;
  }

  /// [chunks] の逆。ブロックを空行 1 つで結合する。
  static String join(List<String> chunks) =>
      chunks.where((c) => c.trim().isNotEmpty).join('\n\n');
}
