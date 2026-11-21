/// 本文の編集の画面の部品。「ビジュアル」と「Markdown」を切り替えて書く。
///
/// - [WysiwygEditor]: エディタ本体(道具バー・ビジュアルのブロック・Markdown の入力欄とプレビュー)
/// - [WysiwygEditorController]: いまの本文と、変更があるかの窓口
/// - [WysiwygEditorLabels]: 文字(日本語・英語の既定つき)
/// - [MdTextOps]: 入力欄への書式の挿入(純粋な関数)
/// 変換は `markdown_to_wysiwyg`・`wysiwyg_to_markdown`、閲覧の見た目は `markdown_view`。
library;

export 'src/md_text_ops.dart';
export 'src/wysiwyg_editor.dart';
export 'src/wysiwyg_editor_controller.dart';
export 'src/wysiwyg_editor_labels.dart';
