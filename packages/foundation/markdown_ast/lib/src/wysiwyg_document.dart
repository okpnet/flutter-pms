/// WYSIWYG の文書のブロックの種類(見た目の区分)。Markdown からの変換([MarkdownToWysiwyg])が決める。
/// 判定に使うのではなく、編集の画面が見た目(アイコン・書式の既定)を決めるために持つ。
enum WysiwygBlockKind { heading, paragraph, bulletList, numberedList, quote, code, table, rule }

/// WYSIWYG の文書の 1 ブロック(段落・見出し・表・リスト…)。中身は Markdown の文字(そのブロックだけ)。
class WysiwygBlock {
  const WysiwygBlock(this.markdown, [this.kind = WysiwygBlockKind.paragraph]);

  final String markdown;
  final WysiwygBlockKind kind;

  WysiwygBlock withMarkdown(String value, [WysiwygBlockKind? kind]) => WysiwygBlock(value, kind ?? this.kind);

  @override
  bool operator ==(Object other) => other is WysiwygBlock && other.markdown == markdown && other.kind == kind;

  @override
  int get hashCode => Object.hash(markdown, kind);

  @override
  String toString() => 'WysiwygBlock(${kind.name}: $markdown)';
}

/// WYSIWYG の文書。ブロックの並び(上から下)。変更は新しい文書を返す(不変)。
///
/// 画面(`wysiwyg_editor`)はブロックを選んで直し、Markdown との相互の変換は
/// `markdown_to_wysiwyg`(Markdown → 文書)と `wysiwyg_to_markdown`(文書 → Markdown)が行う。
class WysiwygDocument {
  const WysiwygDocument(this.blocks);

  static const WysiwygDocument empty = WysiwygDocument([]);

  final List<WysiwygBlock> blocks;

  int get length => blocks.length;
  bool get isEmpty => blocks.isEmpty;

  WysiwygBlock operator [](int index) => blocks[index];

  WysiwygDocument insertAt(int index, WysiwygBlock block) =>
      WysiwygDocument([...blocks.sublist(0, index), block, ...blocks.sublist(index)]);

  WysiwygDocument add(WysiwygBlock block) => WysiwygDocument([...blocks, block]);

  WysiwygDocument replaceAt(int index, WysiwygBlock block) =>
      WysiwygDocument([...blocks.sublist(0, index), block, ...blocks.sublist(index + 1)]);

  WysiwygDocument removeAt(int index) => WysiwygDocument([...blocks.sublist(0, index), ...blocks.sublist(index + 1)]);

  /// [index] のブロックを [delta] だけ動かす(範囲外は動かさない)。
  WysiwygDocument move(int index, int delta) {
    final to = index + delta;
    if (index < 0 || index >= length || to < 0 || to >= length) return this;
    final list = [...blocks];
    final item = list.removeAt(index);
    list.insert(to, item);
    return WysiwygDocument(list);
  }

  @override
  bool operator ==(Object other) =>
      other is WysiwygDocument && other.length == length && Iterable<int>.generate(length).every((i) => other.blocks[i] == blocks[i]);

  @override
  int get hashCode => Object.hashAll(blocks);

  @override
  String toString() => 'WysiwygDocument($blocks)';
}
