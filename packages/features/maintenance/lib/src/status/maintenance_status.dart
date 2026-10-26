/// サーバーのメンテナンスの状態。
class MaintenanceStatus {
  const MaintenanceStatus({
    this.isUnderMaintenance = false,
    this.message,
    this.startAt,
    this.endAt,
    this.retryAfter,
  });

  /// メンテナンスしていない(利用できる)。
  static const available = MaintenanceStatus();

  /// メンテナンス中か。
  final bool isUnderMaintenance;

  /// 利用者へ知らせる文面。null のときはページの既定の文面。
  final String? message;

  /// 実施時間(開始・終了)。決まっていないときは null。
  final DateTime? startAt;
  final DateTime? endAt;

  /// サーバーが示した再試行までの時間(`Retry-After`)。
  final Duration? retryAfter;

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'isUnderMaintenance': isUnderMaintenance,
    'message': message,
    'startAt': startAt?.toIso8601String(),
    'endAt': endAt?.toIso8601String(),
    'retryAfterSeconds': retryAfter?.inSeconds,
  };

  @override
  String toString() => 'MaintenanceStatus(${toJson()})';
}
