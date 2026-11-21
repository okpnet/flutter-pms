import 'package:flutter/material.dart';
import 'package:markdown_view/markdown_view.dart';

import '../model/manual_wiki.dart';

/// マニュアルの本文(Markdown)を出す。実体は `markdown_view`(テーマに沿った Markdown の閲覧)で、
/// この部品は、ページへのリンクの行き先(あるページは開く・無いページは作成へ)を、ページの一覧([wiki])から決めて渡すだけ。
///
/// - ページへのリンク(`[[ページ名]]`)は、あるページなら押して開き([onOpen])、無いページは赤い破線で示す
///   ([onMissing] があれば、押して作成へ進む。無ければ押せない)。
/// - 外部リンクは文字だけを出し([onExternal] があれば押せる)、アプリからは開かない。
/// - [headingKeys] を渡すと、見出しに GlobalKey を付ける(このページの目次からのスクロール用)。
class ManualContent extends StatelessWidget {
  const ManualContent({
    super.key,
    required this.md,
    required this.wiki,
    this.onOpen,
    this.onMissing,
    this.onExternal,
    this.headingKeys,
    this.emptyText = '',
  });

  final String md;
  final ManualWiki wiki;
  final void Function(String pageId)? onOpen;
  final void Function(String title)? onMissing;
  final void Function(String url)? onExternal;
  final Map<int, GlobalKey>? headingKeys;
  final String emptyText;

  /// ページへのリンクの行き先を、ページの一覧から決める。
  static WikiLinkResolver resolverOf(
    ManualWiki wiki, {
    void Function(String pageId)? onOpen,
    void Function(String title)? onMissing,
  }) => (target) {
    final page = wiki.byTitle(target);
    if (page != null) {
      return WikiLinkTarget.found(onTap: onOpen == null ? null : () => onOpen(page.id));
    }
    return WikiLinkTarget.missing(onTap: onMissing == null ? null : () => onMissing(target));
  };

  @override
  Widget build(BuildContext context) => MarkdownView(
    markdown: md,
    wikiLinkResolver: resolverOf(wiki, onOpen: onOpen, onMissing: onMissing),
    onExternalLink: onExternal,
    headingKeys: headingKeys,
    emptyText: emptyText,
  );
}
