import 'package:app_shell/app_shell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../data/manual_providers.dart';
import '../i18n/strings_provider.dart';
import '../model/manual_page_record.dart';
import '../model/manual_wiki.dart';
import 'manual_content.dart';
import 'manual_dialogs.dart';
import 'manual_editor.dart';
import 'manual_format.dart';
import 'manual_paths.dart';

/// マニュアル(Wiki)の閲覧・管理の画面。左に目次(番号つきのツリー)と検索、右にページ。
///
/// - 閲覧: パンくず・本文・このページの目次(見出しが 3 つ以上のとき)・このページの下(子ページ)・
///   このページへのリンク(被リンク)・更新者/更新日/改訂。モバイル・タブレットでは、目次は「目次・検索」の折りたたみ。
/// - 管理者だけが、編集・子ページの追加・ルートの追加・履歴の復元・未作成リンクからのページ作成ができる。
///   それ以外は閲覧と Markdown の書き出しだけ(「閲覧のみ」を表示)。
/// - ルート(親の無いページ)は複数作れる。
class ManualViewPage extends ConsumerStatefulWidget {
  const ManualViewPage({super.key, this.pageId, this.startEditing = false});

  final String? pageId;
  final bool startEditing;

  @override
  ConsumerState<ManualViewPage> createState() => _ManualViewPageState();
}

class _ManualViewPageState extends ConsumerState<ManualViewPage> {
  late bool _editing = widget.startEditing;
  final _search = TextEditingController();
  final _scroll = ScrollController();
  final _headingKeys = <int, GlobalKey>{};

  @override
  void dispose() {
    _search.dispose();
    _scroll.dispose();
    super.dispose();
  }

  void _open(String id) => context.go(ManualPaths.pageOf(id));

  Future<void> _addChild(ManualPageRecord parent) async {
    final s = ref.read(manualStringsProvider);
    final page = await showManualCreateDialog(
      context,
      parentId: parent.id,
      dialogTitle: s.create.titleChild,
    );
    if (page != null && mounted) context.go(ManualPaths.pageOf(page.id, edit: true));
  }

  Future<void> _addRoot() async {
    final s = ref.read(manualStringsProvider);
    final page = await showManualCreateDialog(
      context,
      parentId: null,
      dialogTitle: s.create.titleRoot,
    );
    if (page != null && mounted) context.go(ManualPaths.pageOf(page.id, edit: true));
  }

  Future<void> _createMissing(ManualPageRecord parent, String title) async {
    final s = ref.read(manualStringsProvider);
    final page = await showManualCreateDialog(
      context,
      parentId: parent.id,
      dialogTitle: s.create.titleMissing,
      initialName: title,
    );
    if (page != null && mounted) context.go(ManualPaths.pageOf(page.id, edit: true));
  }

  void _scrollTo(int headingIndex) {
    final ctx = _headingKeys[headingIndex]?.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(ctx, duration: const Duration(milliseconds: 250));
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = ref.watch(manualStringsProvider);
    final state = ref.watch(manualProvider);
    final admin = ref.watch(manualIsAdminProvider);
    final wiki = state.wiki;
    final page = widget.pageId != null
        ? wiki.byId(widget.pageId)
        : wiki.roots.firstOrNull;

    if (!state.loaded) {
      return ScreenScaffold(
        title: s.title,
        body: Center(child: Text(s.loading)),
      );
    }
    if (page == null) {
      return ScreenScaffold(
        title: s.title,
        actions: [
          if (admin)
            FilledButton.icon(
              key: const Key('manual-add-root'),
              onPressed: _addRoot,
              icon: const Icon(Icons.add),
              label: Text(s.view.addRoot),
            ),
        ],
        body: Center(child: Text(s.empty)),
      );
    }

    final editing = _editing && admin;
    return ScreenScaffold(
      title: page.title,
      breadcrumbs: [
        BreadcrumbItem(
          s.view.breadcrumbHome,
          onTap: () => context.go(ManualPaths.home),
        ),
        for (final a in wiki.ancestorsOf(page.id))
          BreadcrumbItem(a.title, onTap: () => _open(a.id)),
      ],
      actions: [
        if (!admin)
          Chip(
            key: const Key('manual-readonly'),
            avatar: const Icon(Icons.lock_outline, size: 16),
            label: Text(s.view.readOnly),
          ),
        if (admin && !editing) ...[
          FilledButton.icon(
            key: const Key('manual-edit'),
            onPressed: () => setState(() => _editing = true),
            icon: const Icon(Icons.edit_outlined),
            label: Text(s.view.edit),
          ),
          OutlinedButton.icon(
            key: const Key('manual-add-child'),
            onPressed: () => _addChild(page),
            icon: const Icon(Icons.add),
            label: Text(s.view.addChild),
          ),
          OutlinedButton.icon(
            key: const Key('manual-history'),
            onPressed: () => showManualHistoryDialog(context, pageId: page.id),
            icon: const Icon(Icons.history),
            label: Text(s.view.history),
          ),
        ],
        if (!editing)
          OutlinedButton.icon(
            key: const Key('manual-markdown'),
            onPressed: () => showManualExportDialog(context, pageId: page.id),
            icon: const Icon(Icons.description_outlined),
            label: Text(s.view.markdown),
          ),
      ],
      body: LayoutBuilder(
        builder: (context, c) {
          final wide = c.maxWidth >= 900;
          final toc = _Toc(
            wiki: wiki,
            currentId: page.id,
            search: _search,
            admin: admin,
            onChanged: () => setState(() {}),
            onOpen: _open,
            onAddRoot: _addRoot,
          );
          final content = editing
              ? ManualEditor(
                  key: ValueKey('edit-${page.id}'),
                  page: page,
                  onDone: (_) => setState(() => _editing = false),
                )
              : _PageBody(
                  page: page,
                  wiki: wiki,
                  admin: admin,
                  headingKeys: _headingKeys,
                  onOpen: _open,
                  onMissing: admin ? (t) => _createMissing(page, t) : null,
                  onHeading: _scrollTo,
                );
          if (wide) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(12),
                    child: toc,
                  ),
                ),
                const VerticalDivider(width: 1),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scroll,
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 860),
                        child: content,
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
          return SingleChildScrollView(
            controller: _scroll,
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: ExpansionTile(
                    key: const Key('manual-toc-fold'),
                    title: Text(s.view.tocFold),
                    childrenPadding: const EdgeInsets.all(12),
                    children: [toc],
                  ),
                ),
                const SizedBox(height: 12),
                content,
              ],
            ),
          );
        },
      ),
    );
  }
}

/// 目次(番号つきのツリー)と検索。検索中は、ページ名・本文に一致したページの一覧にする。
class _Toc extends ConsumerWidget {
  const _Toc({
    required this.wiki,
    required this.currentId,
    required this.search,
    required this.admin,
    required this.onChanged,
    required this.onOpen,
    required this.onAddRoot,
  });

  final ManualWiki wiki;
  final String currentId;
  final TextEditingController search;
  final bool admin;
  final VoidCallback onChanged;
  final void Function(String id) onOpen;
  final VoidCallback onAddRoot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final scheme = Theme.of(context).colorScheme;
    final numbering = wiki.numbering;
    final q = search.text.trim();

    Widget tile(ManualPageRecord p, int depth, {String? number}) => InkWell(
      key: Key('manual-toc-${p.id}'),
      onTap: () => onOpen(p.id),
      child: Container(
        padding: EdgeInsets.fromLTRB(8 + depth * 16.0, 7, 8, 7),
        decoration: BoxDecoration(
          color: p.id == currentId ? scheme.primaryContainer : null,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            if (number != null)
              SizedBox(
                width: 36,
                child: Text(
                  number,
                  style: TextStyle(color: scheme.onSurfaceVariant, fontSize: 12),
                ),
              ),
            Expanded(child: Text(p.title)),
          ],
        ),
      ),
    );

    final list = <Widget>[];
    if (q.isEmpty) {
      void walk(ManualPageRecord p, int depth) {
        list.add(tile(p, depth, number: numbering[p.id]));
        for (final c in wiki.childrenOf(p.id)) {
          walk(c, depth + 1);
        }
      }

      for (final r in wiki.roots) {
        walk(r, 0);
      }
    } else {
      final hits = wiki.search(q);
      if (hits.isEmpty) {
        list.add(
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(s.view.searchNone),
          ),
        );
      }
      for (final p in hits) {
        list.add(tile(p, 0));
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          key: const Key('manual-search'),
          controller: search,
          onChanged: (_) => onChanged(),
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: const Icon(Icons.search),
            hintText: s.view.searchHint,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 8),
        ...list,
        if (admin) ...[
          const SizedBox(height: 8),
          TextButton.icon(
            key: const Key('manual-toc-add-root'),
            onPressed: onAddRoot,
            icon: const Icon(Icons.add),
            label: Text(s.view.addRoot),
          ),
        ],
      ],
    );
  }
}

/// ページの本文と、その周り(このページの目次・子ページ・被リンク・更新の情報)。
class _PageBody extends ConsumerWidget {
  const _PageBody({
    required this.page,
    required this.wiki,
    required this.admin,
    required this.headingKeys,
    required this.onOpen,
    required this.onMissing,
    required this.onHeading,
  });

  final ManualPageRecord page;
  final ManualWiki wiki;
  final bool admin;
  final Map<int, GlobalKey> headingKeys;
  final void Function(String id) onOpen;
  final void Function(String title)? onMissing;
  final void Function(int headingIndex) onHeading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s = ref.watch(manualStringsProvider);
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final headings = ManualWiki.headingsOf(page.md);
    for (var i = 0; i < 64; i++) {
      headingKeys.putIfAbsent(i, GlobalKey.new);
    }
    final children = wiki.childrenOf(page.id);
    final backlinks = wiki.backlinksOf(page.id);

    Widget section(String title, Widget child) => Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.titleSmall?.copyWith(
              color: scheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 6),
          child,
        ],
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (page.isRoot)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Chip(
                  label: Text(s.view.rootBadge),
                  visualDensity: VisualDensity.compact,
                ),
              ),
            Expanded(
              child: Text(
                manualMetaText(s, page),
                key: const Key('manual-meta'),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        if (headings.length >= 3)
          Container(
            key: const Key('manual-page-toc'),
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  s.view.pageToc,
                  style: theme.textTheme.labelLarge,
                ),
                for (final h in headings)
                  InkWell(
                    onTap: () => onHeading(h.index),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        h.level == 3 ? 16 : 0,
                        4,
                        0,
                        4,
                      ),
                      child: Text(
                        h.text,
                        style: TextStyle(color: scheme.primary),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ManualContent(
          key: ValueKey('content-${page.id}-${page.rev}'),
          md: page.md,
          wiki: wiki,
          onOpen: onOpen,
          onMissing: onMissing,
          headingKeys: headingKeys,
          emptyText: s.view.noBody,
        ),
        if (children.isNotEmpty)
          section(
            s.view.children,
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final c in children)
                  ActionChip(
                    key: Key('manual-child-${c.id}'),
                    label: Text(c.title),
                    onPressed: () => onOpen(c.id),
                  ),
              ],
            ),
          ),
        if (backlinks.isNotEmpty)
          section(
            s.view.backlinks,
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final b in backlinks)
                  ActionChip(
                    key: Key('manual-backlink-${b.id}'),
                    label: Text(b.title),
                    onPressed: () => onOpen(b.id),
                  ),
              ],
            ),
          ),
      ],
    );
  }
}
