import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 監査の通知 1 件(自分のチームの、予定日が近い・過ぎた監査実施詳細)。
/// DB の関数 `audit_notice`(予定日から導く。行は作らない。Issue 20261122_0001)の結果と、名称。
class AuditNotice {
  const AuditNotice({
    required this.detailId,
    required this.title,
    this.scheduledAt,
    this.daysUntil = 0,
    this.overdue = false,
    this.inProgress = false,
  });

  /// 監査実施詳細の ID。
  final String detailId;

  /// 表示する名称(監査実施詳細の名称。無いときは監査の名称)。
  final String title;
  final DateTime? scheduledAt;

  /// 予定日までの日数(過ぎたものは負)。
  final int daysUntil;

  /// 予定超過(未着手で、予定日時を過ぎている)。
  final bool overdue;

  /// 実施中。
  final bool inProgress;

  Map<String, Object?> toJson() => {
    'detailId': detailId,
    'title': title,
    'scheduledAt': scheduledAt?.toIso8601String(),
    'daysUntil': daysUntil,
    'overdue': overdue,
    'inProgress': inProgress,
  };
}

/// 監査の通知の取得元。アプリが GraphQL 版(`GraphqlAuditNoticeSource`)に差し替える(Strategy)。
abstract interface class IAuditNoticeSource {
  /// 呼び出した人(ログイン中の担当者)の通知。予定日が [daysBefore] 日以内、または過ぎた、未終了の監査実施詳細。
  Future<List<AuditNotice>> notices({int daysBefore = 3});
}

/// メモリ上の取得元(既定・テスト用)。
class InMemoryAuditNoticeSource implements IAuditNoticeSource {
  InMemoryAuditNoticeSource([List<AuditNotice>? notices]) : notices_ = notices ?? [];

  List<AuditNotice> notices_;

  /// true にすると、取得が失敗する(テスト用)。
  bool failing = false;

  @override
  Future<List<AuditNotice>> notices({int daysBefore = 3}) async {
    if (failing) throw StateError('failed');
    return [
      for (final n in notices_)
        if (n.daysUntil <= daysBefore) n,
    ];
  }
}

final auditNoticeSourceProvider = Provider<IAuditNoticeSource>((ref) => InMemoryAuditNoticeSource());

/// 監査の通知(ダッシュボードを開くたびに取り直す)。失敗は、通知を出さない(ダッシュボードを止めない)。
final auditNoticesProvider = FutureProvider.autoDispose<List<AuditNotice>>(
  (ref) async {
    try {
      return await ref.watch(auditNoticeSourceProvider).notices();
    } catch (_) {
      return const [];
    }
  },
  retry: (_, _) => null,
);
