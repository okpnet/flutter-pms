import 'package:feature_shared/feature_shared.dart' show userSummaryProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 自分宛ての通知 1 件。題名・本文は、登録時に DB へ言語別で直接持った値(アプリで文を組み立てない)。
/// 区分(`category`)は、DB の値のまま持つだけで、画面は区分で分岐しない。
class Announcement {
  const Announcement({
    required this.id,
    required this.title,
    this.message = '',
    this.category = '',
    this.isRead = false,
    this.expiresAt,
    this.targetSymbol,
    this.at,
  });

  final String id;
  final String title;
  final String message;
  final String category;
  final bool isRead;

  /// 期限。なしは null。
  final DateTime? expiresAt;

  /// 対象の表の `symbol`(外部キーではない)。対象の画面へ進む入口(symbol のショートカット。未実装)のため、いまは文字で出すだけ。
  final String? targetSymbol;

  /// 通知を作った日時(DB の更新日時)。
  final DateTime? at;

  Announcement copyWith({bool? isRead}) => Announcement(
    id: id,
    title: title,
    message: message,
    category: category,
    isRead: isRead ?? this.isRead,
    expiresAt: expiresAt,
    targetSymbol: targetSymbol,
    at: at,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'title': title,
    'message': message,
    'category': category,
    'isRead': isRead,
    'expiresAt': expiresAt?.toIso8601String(),
    'targetSymbol': targetSymbol,
    'at': at?.toIso8601String(),
  };
}

/// 通知の取得元(Strategy)。既定はメモリ上。アプリが GraphQL 版に差し替える。
abstract interface class IAnnouncementGateway {
  /// 自分宛ての通知(新しい順。削除済みを除く)。
  Future<List<Announcement>> mine();

  /// 自分宛ての通知を既読にする。他の人の通知・削除済みは例外。
  Future<void> markRead(String id);

  /// 監査の予定の通知を作る(冪等。ログイン時に呼ぶ)。作った件数。
  Future<int> notifyDue({int daysBefore = 3});
}

/// メモリ上の取得元(既定・テスト・example 用)。
class InMemoryAnnouncementGateway implements IAnnouncementGateway {
  InMemoryAnnouncementGateway([List<Announcement>? items]) : items = [...?items];

  final List<Announcement> items;
  int notifyCalls = 0;

  @override
  Future<List<Announcement>> mine() async => [...items];

  @override
  Future<void> markRead(String id) async {
    final i = items.indexWhere((e) => e.id == id);
    if (i < 0) throw StateError('通知が見つかりません ($id)');
    items[i] = items[i].copyWith(isRead: true);
  }

  @override
  Future<int> notifyDue({int daysBefore = 3}) async {
    notifyCalls++;
    return 0;
  }
}

final announcementGatewayProvider = Provider<IAnnouncementGateway>((ref) => InMemoryAnnouncementGateway());

/// ログインのたび(ログインユーザーが変わるたび)に、監査の予定の通知を作る。失敗しても通知の一覧は使える(作れなかっただけ)。
/// ユーザーがいない(ログイン前)ときは呼ばない。
final announcementNotifyProvider = FutureProvider<void>((ref) async {
  final user = ref.watch(userSummaryProvider);
  if (user == null) return;
  try {
    await ref.read(announcementGatewayProvider).notifyDue();
  } catch (_) {
    // 通知づくりの失敗は、一覧の表示を止めない(次のログインで、もう一度作る。冪等)
  }
});

/// 自分宛ての通知。ログイン直後は、先に監査の予定の通知を作ってから読む。
class AnnouncementsNotifier extends AsyncNotifier<List<Announcement>> {
  @override
  Future<List<Announcement>> build() async {
    final user = ref.watch(userSummaryProvider);
    if (user == null) return const [];
    await ref.watch(announcementNotifyProvider.future);
    return ref.read(announcementGatewayProvider).mine();
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(() => ref.read(announcementGatewayProvider).mine());
  }

  /// 既読にして、一覧に反映する。失敗は例外のまま(画面が表示する)。
  Future<void> markRead(String id) async {
    await ref.read(announcementGatewayProvider).markRead(id);
    final current = state.value;
    if (current == null) return;
    state = AsyncData([for (final a in current) a.id == id ? a.copyWith(isRead: true) : a]);
  }
}

final announcementsProvider = AsyncNotifierProvider<AnnouncementsNotifier, List<Announcement>>(AnnouncementsNotifier.new);

/// 未読の件数。
final unreadAnnouncementCountProvider = Provider<int>((ref) {
  final items = ref.watch(announcementsProvider).value ?? const <Announcement>[];
  return items.where((a) => !a.isRead).length;
});
