import 'package:markdown_to_wysiwyg/markdown_to_wysiwyg.dart';
import 'package:wysiwyg_to_markdown/wysiwyg_to_markdown.dart';

/// エディタの本文(Markdown)の窓口。親(保存の画面)が、いまの本文と、変更があるかを読む。
///
/// 初期の本文は [initialMarkdown]。エディタの画面([WysiwygEditor])がつながっている間は、編集中の本文を返す。
class WysiwygEditorController {
  WysiwygEditorController(this.initialMarkdown);

  /// 編集を始めたときの本文。
  final String initialMarkdown;

  String Function()? _read;

  /// エディタの画面がつなぐ(画面だけが呼ぶ)。
  void attach(String Function() read) => _read = read;

  void detach() => _read = null;

  /// いまの本文(ビジュアルで編集中のブロックも含む)。
  String get markdown => _read?.call() ?? initialMarkdown;

  /// 空行・改行コードの違いを整えた本文。保存・変更の比較に使う。
  String get normalizedMarkdown => normalize(markdown);

  /// 変更がある(整えた本文が、初期の本文と違う)。整えただけの差は、変更としない。
  bool get isDirty => normalizedMarkdown != normalize(initialMarkdown);

  /// Markdown → 文書 → Markdown で整える。
  static String normalize(String md) => WysiwygToMarkdown.convert(MarkdownToWysiwyg.convert(md));
}
