/// エディタの文字(切り替え・道具バーの説明・ひな形・プレビューの見出し)。アプリが言語ごとに用意して渡す。
class WysiwygEditorLabels {
  const WysiwygEditorLabels({
    required this.modeVisual,
    required this.modeMarkdown,
    required this.preview,
    required this.emptyText,
    required this.toolH2,
    required this.toolH3,
    required this.toolBold,
    required this.toolItalic,
    required this.toolBullets,
    required this.toolNumbered,
    required this.toolQuote,
    required this.toolCode,
    required this.toolTable,
    required this.toolRule,
    required this.toolLink,
    required this.headingTemplate,
    required this.boldPlaceholder,
    required this.italicPlaceholder,
    required this.itemTemplate,
    required this.quoteTemplate,
    required this.tableTemplate,
  });

  /// 日本語の既定。
  const WysiwygEditorLabels.ja()
    : modeVisual = 'ビジュアル',
      modeMarkdown = 'Markdown',
      preview = 'プレビュー',
      emptyText = 'まだ本文がありません。',
      toolH2 = '見出し 2',
      toolH3 = '見出し 3',
      toolBold = '太字',
      toolItalic = '斜体',
      toolBullets = '箇条書き',
      toolNumbered = '番号付き',
      toolQuote = '引用',
      toolCode = 'コード',
      toolTable = '表',
      toolRule = '区切り線',
      toolLink = 'リンク',
      headingTemplate = '見出し',
      boldPlaceholder = '太字',
      italicPlaceholder = '斜体',
      itemTemplate = '項目',
      quoteTemplate = '引用',
      tableTemplate = '| 項目 | 内容 |\n| --- | --- |\n|  |  |';

  /// English.
  const WysiwygEditorLabels.en()
    : modeVisual = 'Visual',
      modeMarkdown = 'Markdown',
      preview = 'Preview',
      emptyText = 'No content yet.',
      toolH2 = 'Heading 2',
      toolH3 = 'Heading 3',
      toolBold = 'Bold',
      toolItalic = 'Italic',
      toolBullets = 'Bulleted list',
      toolNumbered = 'Numbered list',
      toolQuote = 'Quote',
      toolCode = 'Code',
      toolTable = 'Table',
      toolRule = 'Divider',
      toolLink = 'Link',
      headingTemplate = 'Heading',
      boldPlaceholder = 'bold',
      italicPlaceholder = 'italic',
      itemTemplate = 'Item',
      quoteTemplate = 'Quote',
      tableTemplate = '| Item | Detail |\n| --- | --- |\n|  |  |';

  final String modeVisual;
  final String modeMarkdown;
  final String preview;
  final String emptyText;
  final String toolH2;
  final String toolH3;
  final String toolBold;
  final String toolItalic;
  final String toolBullets;
  final String toolNumbered;
  final String toolQuote;
  final String toolCode;
  final String toolTable;
  final String toolRule;
  final String toolLink;

  /// ひな形・書式を入れるときの仮の文字。
  final String headingTemplate;
  final String boldPlaceholder;
  final String italicPlaceholder;
  final String itemTemplate;
  final String quoteTemplate;
  final String tableTemplate;
}
