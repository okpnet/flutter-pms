import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 自分に割り当てられた監査実施詳細 1 件(監査の計画の 1 行。チーム・予定・実績)。
///
/// 状態の判定は、DB のビュー `v_audit_assignment`(提案。Issue 20261122_0001)ができるまで、日付の有無(boolean)で行う。
class AuditAssignment {
  const AuditAssignment({
    required this.id,
    required this.auditName,
    this.name = '',
    this.teamName = '',
    this.scheduledAt,
    this.expectedEndAt,
    this.performedDate,
    this.endedAt,
    this.conclusion = '',
  });

  /// 監査実施詳細の ID。
  final String id;

  /// 監査(計画の文書)の名称。
  final String auditName;

  /// 監査実施詳細の名称(監査名)。
  final String name;
  final String teamName;
  final DateTime? scheduledAt;
  final DateTime? expectedEndAt;
  final DateTime? performedDate;
  final DateTime? endedAt;
  final String conclusion;

  bool get isDone => endedAt != null;
  bool get isInProgress => performedDate != null && endedAt == null;
  bool get isPlanned => performedDate == null && endedAt == null;

  /// 予定日時を過ぎて未着手([now] 時点)。
  bool isOverdue(DateTime now) => isPlanned && scheduledAt != null && scheduledAt!.isBefore(now);

  /// 表示する名称(監査実施詳細の名称。無いときは監査の名称)。
  String get title => name.isEmpty ? auditName : name;

  AuditAssignment copyWith({DateTime? performedDate, DateTime? endedAt, String? conclusion}) => AuditAssignment(
    id: id,
    auditName: auditName,
    name: name,
    teamName: teamName,
    scheduledAt: scheduledAt,
    expectedEndAt: expectedEndAt,
    performedDate: performedDate ?? this.performedDate,
    endedAt: endedAt ?? this.endedAt,
    conclusion: conclusion ?? this.conclusion,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'auditName': auditName,
    'name': name,
    'teamName': teamName,
    'scheduledAt': scheduledAt?.toIso8601String(),
    'performedDate': performedDate?.toIso8601String(),
    'endedAt': endedAt?.toIso8601String(),
  };
}

/// 項目にひもづく異常 1 件。
class AuditComplaintRef {
  const AuditComplaintRef({required this.linkId, required this.complaintId, this.title = ''});

  final String linkId;
  final String complaintId;
  final String title;
}

/// 監査実施詳細項目 1 件(基準 = 監査標準項目、事実 = 値・所見)。
class AuditItem {
  const AuditItem({
    required this.id,
    required this.detailId,
    required this.name,
    this.code = '',
    this.value = '',
    this.findings = '',
    this.complaints = const [],
  });

  final String id;
  final String detailId;
  final String name;
  final String code;

  /// 式に対する値(JSON の value の文字)。
  final String value;

  /// 所見(コメント)。
  final String findings;
  final List<AuditComplaintRef> complaints;

  /// 値または所見が入っている。
  bool get answered => value.trim().isNotEmpty || findings.trim().isNotEmpty;

  AuditItem copyWith({String? value, String? findings, List<AuditComplaintRef>? complaints}) => AuditItem(
    id: id,
    detailId: detailId,
    name: name,
    code: code,
    value: value ?? this.value,
    findings: findings ?? this.findings,
    complaints: complaints ?? this.complaints,
  );
}

/// 監査を実施する側の取得元。アプリが GraphQL 版に差し替える(Strategy)。
///
/// 開始・終了・異常の登録は、DB の関数(`audit_detail_start`・`audit_detail_finish`・`audit_complaint_register`。提案)の導入後に
/// GraphQL 版を実装する。それまで、GraphQL 版はこれらで [UnsupportedError] を投げる。
abstract interface class IAuditRunGateway {
  /// 自分(ログイン中の担当者)がチームの監査員になっている監査実施詳細(検索なし)。
  Future<List<AuditAssignment>> myAssignments();

  Future<AuditAssignment?> assignment(String detailId);

  Future<List<AuditItem>> items(String detailId);

  /// 項目の値・所見(コメント)を保存する(1 表の更新)。
  Future<void> saveItem(AuditItem item, {required String value, required String findings});

  /// 実施を開始する(実施日を今日にし、項目を用意する)。
  Future<void> start(String detailId);

  /// 実施を終了する(終了日時・結論)。
  Future<void> finish(String detailId, {required String conclusion});

  /// 不適合の項目から異常を登録し、項目につなぐ。
  Future<AuditComplaintRef> registerComplaint(String itemId, {required String title, required String details});
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryAuditRunGateway implements IAuditRunGateway {
  InMemoryAuditRunGateway({List<AuditAssignment>? assignments, Map<String, List<AuditItem>>? items})
    : assignments = assignments ?? [],
      itemsByDetail = items ?? {};

  List<AuditAssignment> assignments;
  Map<String, List<AuditItem>> itemsByDetail;

  /// true にすると、読み込み・書き込みが失敗する(テスト用)。
  bool failing = false;
  int saveCount = 0;
  int _seq = 0;

  void _check() {
    if (failing) throw StateError('failed');
  }

  @override
  Future<List<AuditAssignment>> myAssignments() async {
    _check();
    return [...assignments];
  }

  @override
  Future<AuditAssignment?> assignment(String detailId) async {
    _check();
    for (final a in assignments) {
      if (a.id == detailId) return a;
    }
    return null;
  }

  @override
  Future<List<AuditItem>> items(String detailId) async {
    _check();
    return [...?itemsByDetail[detailId]];
  }

  @override
  Future<void> saveItem(AuditItem item, {required String value, required String findings}) async {
    _check();
    saveCount++;
    final list = itemsByDetail[item.detailId] ?? [];
    itemsByDetail[item.detailId] = [for (final i in list) i.id == item.id ? i.copyWith(value: value, findings: findings) : i];
  }

  void _replace(String detailId, AuditAssignment Function(AuditAssignment) f) {
    assignments = [for (final a in assignments) a.id == detailId ? f(a) : a];
  }

  @override
  Future<void> start(String detailId) async {
    _check();
    _replace(detailId, (a) => a.copyWith(performedDate: a.performedDate ?? DateTime.now()));
  }

  @override
  Future<void> finish(String detailId, {required String conclusion}) async {
    _check();
    _replace(detailId, (a) => a.copyWith(endedAt: DateTime.now(), conclusion: conclusion));
  }

  @override
  Future<AuditComplaintRef> registerComplaint(String itemId, {required String title, required String details}) async {
    _check();
    _seq++;
    final ref = AuditComplaintRef(linkId: 'l$_seq', complaintId: 'c$_seq', title: title);
    itemsByDetail = {
      for (final e in itemsByDetail.entries)
        e.key: [for (final i in e.value) i.id == itemId ? i.copyWith(complaints: [...i.complaints, ref]) : i],
    };
    return ref;
  }
}

final auditRunGatewayProvider = Provider<IAuditRunGateway>((ref) => InMemoryAuditRunGateway());
