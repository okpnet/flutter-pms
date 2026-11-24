import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 選択肢 1 件(監査標準・担当者)。
class AuditPlanOption {
  const AuditPlanOption({required this.id, required this.name, this.code = ''});

  final String id;
  final String name;
  final String code;

  /// 画面に出す文字(コード + 名称)。
  String get label => code.isEmpty ? name : '$code  $name';
}

/// 監査の計画の 1 行 = チーム 1 つ + 監査員 + 監査実施詳細 1 件(予定)。
class AuditPlanLine {
  const AuditPlanLine({this.teamName = '', this.auditorIds = const [], this.scheduledAt, this.expectedEndAt});

  final String teamName;
  final List<String> auditorIds;
  final DateTime? scheduledAt;
  final DateTime? expectedEndAt;

  AuditPlanLine copyWith({
    String? teamName,
    List<String>? auditorIds,
    DateTime? scheduledAt,
    DateTime? expectedEndAt,
    bool clearScheduled = false,
    bool clearEnd = false,
  }) =>
      AuditPlanLine(
        teamName: teamName ?? this.teamName,
        auditorIds: auditorIds ?? this.auditorIds,
        scheduledAt: clearScheduled ? null : (scheduledAt ?? this.scheduledAt),
        expectedEndAt: clearEnd ? null : (expectedEndAt ?? this.expectedEndAt),
      );

  Map<String, Object?> toJson() => {
    'teamName': teamName,
    'auditorIds': auditorIds,
    'scheduledAt': scheduledAt?.toIso8601String(),
    'expectedEndAt': expectedEndAt?.toIso8601String(),
  };
}

/// 監査の計画の入力。
class AuditPlanInput {
  const AuditPlanInput({
    this.title = '',
    this.details = '',
    this.standardId,
    this.lines = const [],
    this.departmentId,
    this.stakeholderId,
  });

  final String title;
  final String details;
  final String? standardId;
  final List<AuditPlanLine> lines;

  /// 監査の対象の部署(任意。null は指定なし)。
  final String? departmentId;

  /// 監査の対象の利害関係者(任意。null は指定なし)。
  final String? stakeholderId;

  Map<String, Object?> toJson() => {
    'title': title,
    'details': details,
    'standardId': standardId,
    'departmentId': departmentId,
    'stakeholderId': stakeholderId,
    'lines': [for (final l in lines) l.toJson()],
  };
}

/// 入力の誤りの種類(画面が表示時に文字へ変換する)。
enum AuditPlanError { titleRequired, standardRequired, linesRequired, teamNameRequired, auditorRequired, periodInvalid }

/// 入力を検査する(取得元とは別に、画面の事前検証と、メモリ上の取得元で使う)。誤りが無ければ空。
/// 行の誤りは、行の番号(0 始まり)つき。
List<({AuditPlanError error, int? line})> validateAuditPlan(AuditPlanInput input) {
  final errors = <({AuditPlanError error, int? line})>[];
  if (input.title.trim().isEmpty) errors.add((error: AuditPlanError.titleRequired, line: null));
  if (input.standardId == null) errors.add((error: AuditPlanError.standardRequired, line: null));
  if (input.lines.isEmpty) errors.add((error: AuditPlanError.linesRequired, line: null));
  for (var i = 0; i < input.lines.length; i++) {
    final l = input.lines[i];
    if (l.teamName.trim().isEmpty) errors.add((error: AuditPlanError.teamNameRequired, line: i));
    if (l.auditorIds.isEmpty) errors.add((error: AuditPlanError.auditorRequired, line: i));
    if (l.scheduledAt != null && l.expectedEndAt != null && l.expectedEndAt!.isBefore(l.scheduledAt!)) {
      errors.add((error: AuditPlanError.periodInvalid, line: i));
    }
  }
  return errors;
}

/// 入力が正しくないときの例外(取得元が投げる。[errors] は検査の結果)。
class AuditPlanException implements Exception {
  const AuditPlanException(this.errors);

  final List<({AuditPlanError error, int? line})> errors;

  @override
  String toString() => 'AuditPlanException(${errors.map((e) => '${e.error.name}@${e.line}').join(', ')})';
}

/// 監査の計画の登録の取得元。アプリが GraphQL 版に差し替える(Strategy)。
///
/// 登録は、DB の関数 `audit_plan_register`で行う(複数の表への登録。1 トランザクション)。
abstract interface class IAuditPlanGateway {
  /// 監査標準の選択肢。
  Future<List<AuditPlanOption>> standards();

  /// 担当者(監査員)の選択肢。
  Future<List<AuditPlanOption>> staff();

  /// 監査の計画を登録する。戻り値は監査の ID。入力が正しくないときは [AuditPlanException]。
  Future<String> register(AuditPlanInput input);
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryAuditPlanGateway implements IAuditPlanGateway {
  InMemoryAuditPlanGateway({this.standardOptions = const [], this.staffOptions = const []});

  List<AuditPlanOption> standardOptions;
  List<AuditPlanOption> staffOptions;

  /// 登録された計画(テスト用)。
  final List<AuditPlanInput> registered = [];

  /// true にすると、読み込み・登録が失敗する(テスト用)。
  bool failing = false;

  void _check() {
    if (failing) throw StateError('failed');
  }

  @override
  Future<List<AuditPlanOption>> standards() async {
    _check();
    return standardOptions;
  }

  @override
  Future<List<AuditPlanOption>> staff() async {
    _check();
    return staffOptions;
  }

  @override
  Future<String> register(AuditPlanInput input) async {
    _check();
    final errors = validateAuditPlan(input);
    if (errors.isNotEmpty) throw AuditPlanException(errors);
    registered.add(input);
    return 'a${registered.length}';
  }
}

/// 既定の取得元は、メモリ上のサンプル(アプリは GraphQL 版に差し替える)。サンプルにも選択肢を持たせる
/// (example で、監査標準・監査員を選んで登録の画面を確認できるようにするため)。
final auditPlanGatewayProvider = Provider<IAuditPlanGateway>(
  (ref) => InMemoryAuditPlanGateway(
    standardOptions: const [
      AuditPlanOption(id: 'std-1', code: 'AS-01', name: '内部監査標準'),
      AuditPlanOption(id: 'std-2', code: 'AS-02', name: '工程監査標準'),
    ],
    staffOptions: const [
      AuditPlanOption(id: 'staff-1', code: 'E-0101', name: '山田 太郎'),
      AuditPlanOption(id: 'staff-2', code: 'E-0102', name: '佐藤 花子'),
      AuditPlanOption(id: 'staff-3', code: 'E-0103', name: '鈴木 一郎'),
    ],
  ),
);
