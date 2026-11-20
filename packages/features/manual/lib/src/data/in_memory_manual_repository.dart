import '../model/manual_markdown.dart';
import '../model/manual_page_record.dart';
import 'manual_repository.dart';
import 'manual_seed.dart';

/// メモリ上の取得元(サンプル・テスト用)。アプリを閉じると初期データに戻る。
class InMemoryManualRepository implements IManualRepository {
  InMemoryManualRepository({
    List<ManualPageRecord>? initial,
    DateTime Function()? clock,
  }) : _pages = List.of(initial ?? manualSeedPages()),
       _clock = clock ?? DateTime.now;

  final List<ManualPageRecord> _pages;
  final DateTime Function() _clock;
  int _nextId = 1000;

  @override
  Future<List<ManualPageRecord>> list() async => List.unmodifiable(_pages);

  void _guard(bool isAdmin) {
    if (!isAdmin) throw const ManualException(ManualError.notAdmin);
  }

  int _indexOf(String id) {
    final i = _pages.indexWhere((p) => p.id == id);
    if (i < 0) throw const ManualException(ManualError.notFound);
    return i;
  }

  void _checkTitle(String title, {String? exceptId}) {
    final t = title.trim();
    if (t.isEmpty) throw const ManualException(ManualError.titleRequired);
    if (_pages.any((p) => p.title == t && p.id != exceptId)) {
      throw const ManualException(ManualError.titleDuplicate);
    }
  }

  @override
  Future<ManualPageRecord> create({
    required String? parentId,
    required String title,
    required String md,
    required String updatedBy,
    required bool isAdmin,
  }) async {
    _guard(isAdmin);
    if (parentId != null) _indexOf(parentId);
    _checkTitle(title);
    final siblings = _pages.where((p) => p.parentId == parentId);
    final order = siblings.isEmpty
        ? 1
        : siblings.map((p) => p.order).reduce((a, b) => a > b ? a : b) + 1;
    final page = ManualPageRecord(
      id: 'm${_nextId++}',
      parentId: parentId,
      order: order,
      title: title.trim(),
      md: md,
      rev: 1,
      updatedBy: updatedBy,
      updatedAt: _clock(),
    );
    _pages.add(page);
    return page;
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
    final i = _indexOf(id);
    final old = _pages[i];
    final newTitle = title.trim();
    _checkTitle(newTitle, exceptId: id);
    if (newTitle == old.title && md == old.md) return old; // 変更なし
    final history = [
      ManualVersion(
        rev: old.rev,
        title: old.title,
        md: old.md,
        updatedBy: old.updatedBy,
        updatedAt: old.updatedAt,
      ),
      ...old.history,
    ].take(ManualPageRecord.maxHistory).toList();
    final saved = old.copyWith(
      title: newTitle,
      md: md,
      rev: old.rev + 1,
      updatedBy: updatedBy,
      updatedAt: _clock(),
      history: history,
    );
    _pages[i] = saved;
    if (newTitle != old.title) {
      // ページ名を変えたら、ほかのページのリンクも追従させる(改訂は上げない)
      for (var k = 0; k < _pages.length; k++) {
        if (k == i) continue;
        final renamed = ManualMarkdown.renameLink(
          _pages[k].md,
          old.title,
          newTitle,
        );
        if (renamed != _pages[k].md) _pages[k] = _pages[k].copyWith(md: renamed);
      }
    }
    return saved;
  }

  @override
  Future<ManualPageRecord> restore(
    String id,
    int rev, {
    required String updatedBy,
    required bool isAdmin,
  }) async {
    _guard(isAdmin);
    final page = _pages[_indexOf(id)];
    final version = page.history.where((h) => h.rev == rev).firstOrNull;
    if (version == null) throw const ManualException(ManualError.notFound);
    return update(
      id,
      title: version.title,
      md: version.md,
      updatedBy: updatedBy,
      isAdmin: isAdmin,
    );
  }
}
