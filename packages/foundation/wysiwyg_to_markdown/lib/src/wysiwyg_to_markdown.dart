import 'package:markdown_ast/markdown_ast.dart';

/// WYSIWYG の文書 → Markdown。
///
/// ブロックを空行 1 つで結合する。空のブロック(空白だけ)は出さない。ブロックの前後の空行は取り除く。
/// ブロックの中の改行・字下げは保つ。コードの囲み(```)が閉じていないブロックは、閉じる(後ろのブロックを巻き込まないため)。
///
/// パターン: Adapter(編集の画面のブロックの並びを、保存する Markdown の文字に合わせる)
abstract final class WysiwygToMarkdown {
  static String convert(WysiwygDocument document) => fromBlocks([for (final b in document.blocks) b.markdown]);

  /// ブロックの文字の一覧から、Markdown にする。
  static String fromBlocks(List<String> blocks) {
    final out = <String>[];
    for (final raw in blocks) {
      final text = _trimBlankLines(raw.replaceAll('\r\n', '\n'));
      if (text.trim().isEmpty) continue;
      out.add(_closeFence(text));
    }
    return out.join('\n\n');
  }

  /// 前後の空行(と、後ろの空白)を取り除く。先頭の字下げは保つ。
  static String _trimBlankLines(String s) {
    final lines = s.split('\n');
    while (lines.isNotEmpty && lines.first.trim().isEmpty) {
      lines.removeAt(0);
    }
    while (lines.isNotEmpty && lines.last.trim().isEmpty) {
      lines.removeLast();
    }
    return lines.join('\n').trimRight();
  }

  /// コードの囲みが閉じていなければ、最後に閉じを足す。
  static String _closeFence(String s) {
    final fences = s.split('\n').where((l) => l.trimLeft().startsWith('```')).length;
    return fences.isOdd ? '$s\n```' : s;
  }
}
