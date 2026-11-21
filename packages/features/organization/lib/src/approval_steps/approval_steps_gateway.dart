import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 承認の段 1 件(承認パターン明細 + 承認。部署・役職・順位)。
class ApprovalStep {
  const ApprovalStep({
    required this.id,
    required this.approvalId,
    required this.priority,
    this.departmentId,
    this.positionId,
    this.name = '',
  });

  /// 承認パターン明細の ID(新規は空)。
  final String id;

  /// 承認(`mstr_approval`)の ID(新規は空)。
  final String approvalId;

  /// 順位(小さい段から承認する。同じ順位は並行)。
  final int priority;
  final String? departmentId;
  final String? positionId;
  final String name;

  ApprovalStep copyWith({int? priority, String? departmentId, String? positionId}) => ApprovalStep(
    id: id,
    approvalId: approvalId,
    priority: priority ?? this.priority,
    departmentId: departmentId ?? this.departmentId,
    positionId: positionId ?? this.positionId,
    name: name,
  );

  Map<String, Object?> toJson() => {
    'id': id,
    'approvalId': approvalId,
    'priority': priority,
    'departmentId': departmentId,
    'positionId': positionId,
    'name': name,
  };
}

/// 部署・役職の選択肢 1 件。
class ApprovalStepOption {
  const ApprovalStepOption({required this.id, required this.name});

  final String id;
  final String name;
}

/// 承認の段の取得元。アプリが GraphQL 版(`GraphqlApprovalStepsGateway`)に差し替える(Strategy)。
abstract interface class IApprovalStepsGateway {
  /// [patternId] の段を、順位の昇順で返す。
  Future<List<ApprovalStep>> load(String patternId);

  Future<List<ApprovalStepOption>> departments();

  Future<List<ApprovalStepOption>> positions();

  /// 段を追加する(順位は [priority])。
  Future<void> add(String patternId, {required String? departmentId, required String? positionId, required int priority});

  /// 段の部署・役職を変える。
  Future<void> update(ApprovalStep step, {required String? departmentId, required String? positionId});

  /// 順位を付け替える([steps] は新しい並び。1 から振り直し、変わった段だけを書く)。
  Future<void> reorder(List<ApprovalStep> steps);

  /// 段を削除する(論理削除)。
  Future<void> remove(ApprovalStep step);
}

/// 並びの順に、順位を 1 から振り直した段(変わらない段はそのまま)。
List<ApprovalStep> renumberSteps(List<ApprovalStep> ordered) => [
  for (var i = 0; i < ordered.length; i++) ordered[i].priority == i + 1 ? ordered[i] : ordered[i].copyWith(priority: i + 1),
];

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryApprovalStepsGateway implements IApprovalStepsGateway {
  InMemoryApprovalStepsGateway({List<ApprovalStep>? steps, this.departmentOptions = const [], this.positionOptions = const []})
    : steps = steps ?? [];

  List<ApprovalStep> steps;
  List<ApprovalStepOption> departmentOptions;
  List<ApprovalStepOption> positionOptions;

  /// true にすると、読み込み・書き込みが失敗する(テスト用)。
  bool failing = false;
  int reorderCount = 0;
  int _seq = 0;

  void _check() {
    if (failing) throw StateError('failed');
  }

  @override
  Future<List<ApprovalStep>> load(String patternId) async {
    _check();
    return [...steps]..sort((a, b) => a.priority.compareTo(b.priority));
  }

  @override
  Future<List<ApprovalStepOption>> departments() async {
    _check();
    return departmentOptions;
  }

  @override
  Future<List<ApprovalStepOption>> positions() async {
    _check();
    return positionOptions;
  }

  @override
  Future<void> add(String patternId, {required String? departmentId, required String? positionId, required int priority}) async {
    _check();
    _seq++;
    steps = [...steps, ApprovalStep(id: 'n$_seq', approvalId: 'a$_seq', priority: priority, departmentId: departmentId, positionId: positionId)];
  }

  @override
  Future<void> update(ApprovalStep step, {required String? departmentId, required String? positionId}) async {
    _check();
    steps = [for (final s in steps) s.id == step.id ? s.copyWith(departmentId: departmentId, positionId: positionId) : s];
  }

  @override
  Future<void> reorder(List<ApprovalStep> ordered) async {
    _check();
    reorderCount++;
    final byId = {for (final s in renumberSteps(ordered)) s.id: s};
    steps = [for (final s in steps) byId[s.id] ?? s];
  }

  @override
  Future<void> remove(ApprovalStep step) async {
    _check();
    steps = [for (final s in steps) if (s.id != step.id) s];
  }
}

final approvalStepsGatewayProvider = Provider<IApprovalStepsGateway>((ref) => InMemoryApprovalStepsGateway());
