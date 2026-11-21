import 'dart:convert';

import 'package:manual_model/manual_model.dart';
import 'package:markdown_ast/markdown_ast.dart';

import '../data/manual_repository.dart';
import '../model/manual_page_record.dart';
import 'graphql_manual_client.dart';

/// マニュアルの GraphQL 版の取得元(DB の文書とつなぐ)。
///
/// - ルート = 文書(`mstr_document`)で、文書ツリーの親が NULL のもの(親のある文書は出さない)。ページ = 文書コンテンツ
///   (`mstr_document_content`)。文書コンテンツのツリーの親が NULL のものは、ルートの文書の直下。
/// - ページ名 = 呼称(`titles`)の言語 ja の名称。本文 = 共有テキスト(`contents`)の言語 ja の値(Markdown)。
///   書き込みは共通関数(`shared_appellation_save`・`shared_text_save`)で、渡した言語の値だけが入れ替わる(他の言語は残る)。
/// - 改訂・履歴・更新者は DB の履歴の表(`history_shared_text_value`)。履歴は、現在の版より前の版(新しい順に最大 10 件)。
///   ページ名の履歴は DB に版が無いため、履歴の各版のページ名は現在のページ名。
/// - ルートの文書は本文の列を持たない(`rootHasBody` = false)。ルートの編集はページ名だけ。
/// - ルートの文書の登録は、管理番号(利用者が決める)・文書階層(階層番号が最小のもの = ルートの階層)が要る。承認パターンは
///   DB のトリガーが `info_app.settings` から入れる(登録が申請)。
/// - 複数の表にまたがる登録(呼称 → 本体 → ツリー)は、順に呼ぶ(マスタは同時実行の影響が小さいため。孤児の呼称は許容する)。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [ManualPageRecord] を変換する)
class GraphqlManualRepository implements IManualRepository {
  GraphqlManualRepository(this.api);

  final ManualGraphqlClient api;

  static const _chunk = 100;

  @override
  bool get rootHasBody => false;

  @override
  bool get requiresControlNumber => true;

  // ---- 読み取り ----

  Future<String> _lang() => api.languageId(documentNodeQueryManualLanguagePageRead);

  /// 呼称の ID(ページ名)・本文の共有テキストの ID。一覧を読むたびに作り直す。
  final Map<String, String> _titleIds = {};
  final Map<String, String> _textIds = {};

  /// ページのうち、ルート(文書)の ID の集まり。
  final Set<String> _rootIds = {};

  @override
  Future<List<ManualPageRecord>> list() async {
    final lang = await _lang();
    _titleIds.clear();
    _textIds.clear();
    _rootIds.clear();

    final docs = await api.run(documentNodeQueryManualDocumentPageRead, {'first': 1000, 'languageCodeId': lang});
    final roots = <Map>[];
    for (final d in ManualGraphqlClient.nodesOf(docs, 'allMstrDocuments')) {
      final parents = ((d['parent'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>();
      if (parents.isEmpty || parents.first['parentMstrDocumentId'] == null) roots.add(d);
    }
    roots.sort((a, b) => '${a['code']}'.compareTo('${b['code']}'));
    for (final d in roots) {
      _rootIds.add('${d['mstrDocumentId']}');
    }

    final contents = <Map>[];
    for (var i = 0; i < roots.length; i += _chunk) {
      final ids = [for (final d in roots.skip(i).take(_chunk)) '${d['mstrDocumentId']}'];
      final data = await api.run(documentNodeQueryManualContentPageRead, {
        'first': 5000,
        'languageCodeId': lang,
        'filter': {
          'mstrDocumentId': {'in': ids},
        },
      });
      contents.addAll(ManualGraphqlClient.nodesOf(data, 'allMstrDocumentContents'));
    }

    final textIds = [for (final c in contents) '${c['contents']}'];
    final values = <String, Map>{}; // 共有テキストの ID → 現在の値
    final history = <String, List<Map>>{};
    for (var i = 0; i < textIds.length; i += _chunk) {
      final ids = textIds.skip(i).take(_chunk).toList();
      final filter = {
        'sharedTextId': {'in': ids},
        'sharedLanguageCodeId': {'equalTo': lang},
      };
      final now = await api.run(documentNodeQueryManualTextValuePageRead, {
        'first': 5000,
        'languageCodeId': lang,
        'filter': filter,
      });
      for (final v in ManualGraphqlClient.nodesOf(now, 'allSharedTextValues')) {
        values['${v['sharedTextId']}'] = v;
      }
      final past = await api.run(documentNodeQueryManualTextHistoryPageRead, {
        'first': 5000,
        'languageCodeId': lang,
        'filter': filter,
      });
      for (final h in ManualGraphqlClient.nodesOf(past, 'allHistorySharedTextValues')) {
        (history['${h['sharedTextId']}'] ??= []).add(h);
      }
    }

    final pages = <ManualPageRecord>[];
    for (var i = 0; i < roots.length; i++) {
      final d = roots[i];
      final id = '${d['mstrDocumentId']}';
      _titleIds[id] = '${d['titles']}';
      pages.add(
        ManualPageRecord(
          id: id,
          parentId: null,
          order: i + 1,
          title: ManualGraphqlClient.labelOf(d['labels']),
          md: '',
          rev: (d['revision'] as num?)?.toInt() ?? 1,
          updatedBy: ManualGraphqlClient.userNameOf(d['update_user']),
          updatedAt: ManualGraphqlClient.dateOf(d['updateAt']) ?? DateTime.fromMillisecondsSinceEpoch(0),
        ),
      );
    }

    // 同じ親の中の並び: 順序(sequence)→ コード
    final byParent = <String, List<Map>>{};
    for (final c in contents) {
      final tree = ((c['parent'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>();
      final parent = tree.isEmpty ? null : tree.first['parentMstrDocumentContentId'];
      final key = '${parent ?? c['mstrDocumentId']}';
      (byParent[key] ??= []).add({...c, '_parent': key});
    }
    for (final list in byParent.values) {
      list.sort((a, b) {
        final s = ((a['sequence'] as num?) ?? 0).compareTo((b['sequence'] as num?) ?? 0);
        return s != 0 ? s : '${a['code']}'.compareTo('${b['code']}');
      });
      for (var i = 0; i < list.length; i++) {
        final c = list[i];
        final id = '${c['mstrDocumentContentId']}';
        final textId = '${c['contents']}';
        _titleIds[id] = '${c['titles']}';
        _textIds[id] = textId;
        final v = values[textId];
        final rev = (v?['revision'] as num?)?.toInt() ?? (c['revision'] as num?)?.toInt() ?? 1;
        final title = ManualGraphqlClient.labelOf(c['labels']);
        final past = [...?history[textId]]..sort((a, b) => ((b['revision'] as num?) ?? 0).compareTo((a['revision'] as num?) ?? 0));
        pages.add(
          ManualPageRecord(
            id: id,
            parentId: c['_parent'] as String,
            order: i + 1,
            title: title,
            md: '${v?['textValue'] ?? ''}',
            rev: rev,
            updatedBy: ManualGraphqlClient.userNameOf(v?['update_user'] ?? c['update_user']),
            updatedAt:
                ManualGraphqlClient.dateOf(v?['updateAt'] ?? c['updateAt']) ?? DateTime.fromMillisecondsSinceEpoch(0),
            history: [
              for (final h in past.where((h) => ((h['revision'] as num?)?.toInt() ?? 0) < rev).take(ManualPageRecord.maxHistory))
                ManualVersion(
                  rev: (h['revision'] as num?)?.toInt() ?? 0,
                  title: title,
                  md: '${h['textValue'] ?? ''}',
                  updatedBy: ManualGraphqlClient.userNameOf(h['update_user']),
                  updatedAt: ManualGraphqlClient.dateOf(h['updateAt']) ?? DateTime.fromMillisecondsSinceEpoch(0),
                ),
            ],
          ),
        );
      }
    }
    return pages;
  }

  // ---- 書き込み ----

  void _guard(bool isAdmin) {
    if (!isAdmin) throw const ManualException(ManualError.notAdmin);
  }

  void _checkTitle(List<ManualPageRecord> pages, String title, {String? exceptId}) {
    if (title.isEmpty) throw const ManualException(ManualError.titleRequired);
    if (pages.any((p) => p.title == title && p.id != exceptId)) {
      throw const ManualException(ManualError.titleDuplicate);
    }
  }

  /// 担当者(省略すると、関数は JWT の担当者を使う)。
  Future<Map<String, dynamic>> _staffArgs() async {
    final u = await api.staff();
    return u == null ? const {} : {'pStaffId': u.staffId, 'pStaffHistoryId': u.staffHistoryId};
  }

  Future<Map<String, dynamic>> _updaterArgs() async {
    final u = await api.staff();
    return u == null ? const {} : {'updateUserId': u.staffId, 'updateUserHistoryId': u.staffHistoryId};
  }

  /// 呼称(ページ名)を作る・変える。呼称の ID を返す。
  Future<String> _saveTitle(String? appellationId, String title) async {
    final data = await api.run(documentNodeMutationManualAppellationSavePageCall, {
      'pAppellationId': ?appellationId,
      // PostGraphile v4 の JSON は文字列で渡す
      'pName': jsonEncode({api.languageCode: title}),
      ...await _staffArgs(),
    }, mutation: true);
    return '${((data['sharedAppellationSave'] as Map)['sharedAppellation'] as Map)['sharedAppellationsId']}';
  }

  /// 文章(本文)を作る・変える。共有テキストの ID を返す。
  Future<String> _saveBody(String? textId, String md) async {
    final data = await api.run(documentNodeMutationManualTextSavePageCall, {
      'pTextId': ?textId,
      'pValues': jsonEncode({api.languageCode: md}),
      ...await _staffArgs(),
    }, mutation: true);
    return '${((data['sharedTextSave'] as Map)['sharedText'] as Map)['sharedTextId']}';
  }

  /// ルートの文書の階層(階層番号が最小のもの)。
  Future<String> _rootTierId() async {
    final data = await api.run(documentNodeQueryManualTierPageRead, {'first': 200});
    String? best;
    var bestNumber = 1 << 30;
    for (final t in ManualGraphqlClient.nodesOf(data, 'allMstrDocumentTiers')) {
      final n = (t['tierNumber'] as num?)?.toInt() ?? 1 << 29;
      if (n < bestNumber) {
        bestNumber = n;
        best = '${t['mstrDocumentTierId']}';
      }
    }
    if (best == null) throw StateError('文書階層(mstr_document_tier)がありません');
    return best;
  }

  /// 登録に使う内部のコード(利用者には見せない。一意)。
  String _newCode(String prefix) => '$prefix-${DateTime.now().microsecondsSinceEpoch.toRadixString(36)}';

  @override
  Future<ManualPageRecord> create({
    required String? parentId,
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
    String? controlNumber,
  }) async {
    _guard(isAdmin);
    final name = title.trim();
    final pages = await list();
    _checkTitle(pages, name);
    ManualPageRecord? parent;
    if (parentId != null) {
      parent = pages.where((p) => p.id == parentId).firstOrNull;
      if (parent == null) throw const ManualException(ManualError.notFound);
    }
    final titles = await _saveTitle(null, name);
    final updater = await _updaterArgs();

    if (parent == null) {
      final number = controlNumber?.trim() ?? '';
      if (number.isEmpty) throw const ManualException(ManualError.controlNumberRequired);
      final doc = await api.run(documentNodeMutationManualDocumentPageCreate, {
        'code': _newCode('man'),
        'titles': titles,
        'controlNumber': number,
        'mstrDocumentTierId': await _rootTierId(),
        ...updater,
      }, mutation: true);
      final id = '${((doc['createMstrDocument'] as Map)['mstrDocument'] as Map)['mstrDocumentId']}';
      await api.run(documentNodeMutationManualDocumentTreePageCreate, {'mstrDocumentId': id, ...updater}, mutation: true);
      return _reloaded(id);
    }

    // 子のページ: 属する文書(ルート)と、文書コンテンツ上の親(ルート直下なら親なし)
    var rootId = parent.id;
    String? contentParent;
    if (!parent.isRoot) {
      contentParent = parent.id;
      var cursor = parent;
      while (!cursor.isRoot) {
        cursor = pages.firstWhere((p) => p.id == cursor.parentId);
      }
      rootId = cursor.id;
    }
    final text = await _saveBody(null, md);
    final siblings = pages.where((p) => p.parentId == parent!.id);
    final sequence = siblings.isEmpty ? 1 : siblings.map((p) => p.order).reduce((a, b) => a > b ? a : b) + 1;
    final content = await api.run(documentNodeMutationManualContentPageCreate, {
      'mstrDocumentId': rootId,
      'code': _newCode('page'),
      'titles': titles,
      'contents': text,
      'sequence': sequence,
      ...updater,
    }, mutation: true);
    final id = '${((content['createMstrDocumentContent'] as Map)['mstrDocumentContent'] as Map)['mstrDocumentContentId']}';
    await api.run(documentNodeMutationManualContentTreePageCreate, {
      'mstrDocumentContentId': id,
      'parentMstrDocumentContentId': ?contentParent,
      ...updater,
    }, mutation: true);
    return _reloaded(id);
  }

  Future<ManualPageRecord> _reloaded(String id) async {
    final pages = await list();
    return pages.where((p) => p.id == id).firstOrNull ?? (throw const ManualException(ManualError.notFound));
  }

  @override
  Future<ManualPageRecord> update(
    String id, {
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
  }) async {
    _guard(isAdmin);
    final pages = await list();
    final old = pages.where((p) => p.id == id).firstOrNull;
    if (old == null) throw const ManualException(ManualError.notFound);
    final newTitle = title.trim();
    _checkTitle(pages, newTitle, exceptId: id);
    final titleChanged = newTitle != old.title;
    // ルートの文書は本文を持たないため、本文の変更は無視する(画面もルートの本文は編集させない)
    final bodyChanged = !old.isRoot && md != old.md;
    if (!titleChanged && !bodyChanged) return old;

    if (titleChanged) await _saveTitle(_titleIds[id], newTitle);
    if (bodyChanged) await _saveBody(_textIds[id], md);
    if (titleChanged) {
      // ページ名を変えたら、ほかのページのリンクも追従させる(表示文字は残す)
      for (final p in pages) {
        if (p.id == id || p.isRoot) continue;
        final renamed = MarkdownParser.renameLink(p.md, old.title, newTitle);
        if (renamed != p.md) await _saveBody(_textIds[p.id], renamed);
      }
    }
    return _reloaded(id);
  }

  @override
  Future<ManualPageRecord> restore(
    String id,
    int rev, {
    required String updatedBy,
    required bool isAdmin,
  }) async {
    _guard(isAdmin);
    final pages = await list();
    final page = pages.where((p) => p.id == id).firstOrNull;
    if (page == null) throw const ManualException(ManualError.notFound);
    final version = page.history.where((h) => h.rev == rev).firstOrNull;
    if (version == null) throw const ManualException(ManualError.notFound);
    return update(id, title: page.title, md: version.md, updatedBy: updatedBy, isAdmin: isAdmin);
  }
}
