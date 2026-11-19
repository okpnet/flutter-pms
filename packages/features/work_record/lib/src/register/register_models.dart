// 実績登録(生産計画 → 工程計画明細 → 実績)の値の型。
//
// 計画と明細は読み取り専用で、登録できるのは実績だけ。状態(未着手・実施中・完了)は列挙型にせず、
// 真偽(完了 [StepRow.completed]・実施中 = 終了していない実績がある)から表示の文字を決める。

/// 選択肢(担当者・理由など)。id は取得元の ID。
class RegisterOption {
  const RegisterOption(this.id, this.label);

  final String id;
  final String label;
}

/// 工程計画明細と対になる実績(回ごとの記録)。
class ResultRow {
  const ResultRow({
    required this.id,
    required this.round,
    required this.resultNo,
    required this.staffName,
    required this.containerName,
    required this.startedAt,
    required this.startQuantity,
    this.finishedAt,
    this.doneQuantity,
    this.defectQuantity = 0,
    this.handover = false,
  });

  final String id;

  /// 回数(1 から)。
  final int round;
  final String resultNo;
  final String staffName;

  /// 払出元のコンテナ。
  final String containerName;
  final DateTime startedAt;
  final DateTime? finishedAt;

  /// コンテナから取り出した数量。
  final int startQuantity;
  final int? doneQuantity;

  /// 不適合の数量。
  final int defectQuantity;

  /// 引継ぎ(前の回の意図的な差を引き継いで始めた)か。
  final bool handover;

  /// 終了していない(実施中)か。
  bool get open => finishedAt == null;
}

/// 工程計画明細。実績と対(1 つの明細に、回ごとの実績が付く)。
class StepRow {
  const StepRow({
    required this.id,
    required this.planId,
    required this.sequence,
    required this.processName,
    required this.plannedMinutes,
    required this.completed,
    this.startPlan,
    this.finishPlan,
    this.equipment = '',
    this.results = const [],
  });

  final String id;
  final String planId;

  /// 工程順(1 から)。
  final int sequence;
  final String processName;
  final int plannedMinutes;
  final DateTime? startPlan;
  final DateTime? finishPlan;
  final String equipment;

  /// 完了した(DB の判定)。
  final bool completed;
  final List<ResultRow> results;

  ResultRow? get latest => results.isEmpty ? null : results.last;

  /// 実施中(終了していない実績がある)。
  bool get inProgress => latest?.open ?? false;
}

/// 生産計画(工程計画)。
class PlanRow {
  const PlanRow({
    required this.id,
    required this.planNo,
    required this.itemName,
    required this.orderNo,
    required this.customer,
    required this.quantity,
    required this.completedQuantity,
    this.due,
    this.steps = const [],
  });

  final String id;
  final String planNo;
  final String itemName;
  final String orderNo;
  final String customer;

  /// 生産数量。
  final int quantity;

  /// 最終工程の完了数量。
  final int completedQuantity;
  final DateTime? due;
  final List<StepRow> steps;

  /// 実施中の工程数。
  int get inProgressSteps => steps.where((s) => s.inProgress).length;
}

/// 取り出せる(または払出先になる)コンテナ。
class ContainerStock {
  const ContainerStock({
    required this.id,
    required this.name,
    required this.location,
    required this.contents,
    required this.quantity,
    this.reserved = false,
    this.available = true,
    this.unavailableReason = '',
  });

  final String id;
  final String name;
  final String location;

  /// 入っているもの(材料・前工程の完了品など)。
  final String contents;
  final int quantity;

  /// この明細への引当がある(既定の候補で優先する)。
  final bool reserved;

  /// 取り出せるか。取り出せないものは [unavailableReason] を出す。
  final bool available;
  final String unavailableReason;
}

/// 開始の既定値と、その明細の取り出せる残り。
class StartDefaults {
  const StartDefaults({
    required this.staffs,
    required this.defaultStaffId,
    required this.containers,
    required this.remaining,
    this.defaultContainerId,
  });

  final List<RegisterOption> staffs;

  /// 前回の担当者。
  final String? defaultStaffId;

  /// 候補(取り出せるものが先。引当あり → 数量の多い順)。
  final List<ContainerStock> containers;

  /// 計画の残り(計画数量 − 完了数量 − 実施中の取り出し数量)。
  final int remaining;
  final String? defaultContainerId;
}

/// 開始の登録内容。
class StartRequest {
  const StartRequest({
    required this.stepId,
    required this.staffId,
    required this.containerId,
    required this.quantity,
  });

  final String stepId;
  final String staffId;
  final String containerId;
  final int quantity;
}

/// 終了の入力の前提(実施中の実績と、選べるもの)。
class FinishContext {
  const FinishContext({
    required this.resultId,
    required this.taken,
    required this.sourceContainerId,
    required this.sourceContainerName,
    required this.containers,
    required this.intentionalReasons,
    required this.defectReasons,
  });

  final String resultId;

  /// 取り出した数量。
  final int taken;
  final String sourceContainerId;
  final String sourceContainerName;

  /// 払出先の候補(すべてのコンテナ)。
  final List<ContainerStock> containers;
  final List<RegisterOption> intentionalReasons;
  final List<RegisterOption> defectReasons;
}

/// 終了の登録内容。完了数量が取り出した数量より少ないときは、意図的([intentional])か不適合かを決める。
class FinishRequest {
  const FinishRequest({
    required this.stepId,
    required this.doneQuantity,
    required this.destinationContainerId,
    this.intentional,
    this.intentionalReasonId,
    this.defectQuantity,
    this.defectReasonId,
    this.defectContainerId,
  });

  final String stepId;
  final int doneQuantity;
  final String destinationContainerId;

  /// true: 意図的(日またぎ・引継ぎなど)、false: 不適合、null: 差が無い。
  final bool? intentional;
  final String? intentionalReasonId;
  final int? defectQuantity;
  final String? defectReasonId;
  final String? defectContainerId;
}

/// 登録のあと、DB の更新結果として画面に出す内容。
class RegisterOutcome {
  const RegisterOutcome({
    required this.started,
    required this.resultNo,
    required this.round,
    required this.containerName,
    required this.quantity,
    required this.stepCompleted,
    required this.updatedCount,
    this.defectNo,
    this.defectQuantity = 0,
    this.defectContainerName,
    this.returnedQuantity = 0,
    this.returnedContainerName,
  });

  /// true: 開始(コンテナから払い出した)、false: 終了(コンテナへ払い出した)。
  final bool started;
  final String resultNo;
  final int round;

  /// 払出元(開始)または払出先(終了)のコンテナ。
  final String containerName;

  /// 払い出した数量(開始は取り出した数量、終了は完了数量)。
  final int quantity;
  final bool stepCompleted;
  final int updatedCount;
  final String? defectNo;
  final int defectQuantity;
  final String? defectContainerName;

  /// 払出元へ返した数量(意図的な差・不適合に満たない差)。
  final int returnedQuantity;
  final String? returnedContainerName;
}

/// 入力の誤りの種類(項目ごと)。
enum RegisterError {
  required,
  notPositive,
  overStock,
  overRemaining,
  overTaken,
  notAvailable,
  reasonRequired,
  overShortfall,
}

/// 入力の検証に失敗した(項目のキー → 誤り)。
class RegisterValidationException implements Exception {
  const RegisterValidationException(this.errors);

  final Map<String, RegisterError> errors;

  @override
  String toString() => 'RegisterValidationException($errors)';
}

/// 登録に失敗した(状態の変化・通信など)。[reason] を画面に出し、入力は残して再試行できる。
class RegisterFailedException implements Exception {
  const RegisterFailedException(this.reason);

  final String reason;

  @override
  String toString() => 'RegisterFailedException($reason)';
}
