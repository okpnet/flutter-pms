import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/manual_page_record.dart';
import '../model/manual_wiki.dart';
import 'in_memory_manual_repository.dart';
import 'manual_repository.dart';

/// 取得元。既定はメモリ上のサンプル。アプリが GraphQL 版などに差し替える。
final manualRepositoryProvider = Provider<IManualRepository>(
  (ref) => InMemoryManualRepository(),
);

/// 現在のユーザーが管理者か。既定は閲覧のみ(false)。アプリが認証の結果で差し替える。
/// 編集・子ページの追加・履歴の復元・未作成リンクからのページ作成は、管理者だけ。
final manualIsAdminProvider = Provider<bool>((ref) => false);

/// 更新者として記録する名前。既定はログインユーザーの表示名(無ければ空)。
final manualEditorNameProvider = Provider<String>(
  (ref) => ref.watch(userSummaryProvider)?.name ?? '',
);

/// ページの一覧の状態。読み込みが終わるまで [loaded] は false。
class ManualState {
  const ManualState({this.pages = const [], this.loaded = false});
  final List<ManualPageRecord> pages;
  final bool loaded;

  ManualWiki get wiki => ManualWiki(pages);
}

/// ページの一覧を持ち、保存・作成・復元のあとに取得元から読み直す。
/// メニュー(ルートごとの項目)と画面が、同じ状態を見る。
class ManualNotifier extends Notifier<ManualState> {
  @override
  ManualState build() {
    final repo = ref.watch(manualRepositoryProvider);
    repo.list().then((pages) {
      if (ref.mounted) state = ManualState(pages: pages, loaded: true);
    });
    return const ManualState();
  }

  Future<void> reload() async {
    final pages = await ref.read(manualRepositoryProvider).list();
    if (ref.mounted) state = ManualState(pages: pages, loaded: true);
  }

  bool get _admin => ref.read(manualIsAdminProvider);
  String get _by => ref.read(manualEditorNameProvider);

  Future<ManualPageRecord> create({
    required String? parentId,
    required String title,
    String md = '',
  }) async {
    final page = await ref
        .read(manualRepositoryProvider)
        .create(
          parentId: parentId,
          title: title,
          md: md,
          updatedBy: _by,
          isAdmin: _admin,
        );
    await reload();
    return page;
  }

  Future<ManualPageRecord> save(
    String id, {
    required String title,
    required String md,
  }) async {
    final page = await ref
        .read(manualRepositoryProvider)
        .update(id, title: title, md: md, updatedBy: _by, isAdmin: _admin);
    await reload();
    return page;
  }

  Future<ManualPageRecord> restore(String id, int rev) async {
    final page = await ref
        .read(manualRepositoryProvider)
        .restore(id, rev, updatedBy: _by, isAdmin: _admin);
    await reload();
    return page;
  }
}

final manualProvider = NotifierProvider<ManualNotifier, ManualState>(
  ManualNotifier.new,
);
