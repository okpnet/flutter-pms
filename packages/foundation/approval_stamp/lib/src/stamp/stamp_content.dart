import '../style/stamp_style.dart';
import '../template/date_format.dart';

/// 承認の段 1 つの状態(`v_document_approval_stamp` の 1 行から作る。判定は boolean。文字はビューの値をそのまま使う)。
class ApprovalStepInfo {
  const ApprovalStepInfo({
    required this.approved,
    required this.rejected,
    required this.pending,
    this.stampLabelJa = '',
    this.stampLabelEn = '',
    this.priority = 0,
    this.approvedAt,
    this.approvedStaff,
    this.approvalName,
    this.versionCode,
    this.controlNumber,
    this.documentRevision,
    this.remarks,
  });

  final bool approved;
  final bool rejected;
  final bool pending;
  final String stampLabelJa;
  final String stampLabelEn;
  final int priority;
  final DateTime? approvedAt;

  /// 承認者の表示名(担当者の呼称。画面が言語で引いて渡す)。
  final String? approvedStaff;

  /// 承認の段の名称(「品質責任者」など)。
  final String? approvalName;
  final String? versionCode;
  final String? controlNumber;
  final int? documentRevision;
  final String? remarks;
}

enum StampState { approved, pending, rejected }

class StampLine {
  const StampLine({required this.text, required this.size});
  final String text;
  final double size;
}

/// スタンプ 1 つ(表示する行と状態)。
class StampCard {
  const StampCard({
    required this.state,
    required this.lines,
    required this.step,
  });
  final StampState state;
  final List<StampLine> lines;
  final ApprovalStepInfo step;
}

/// 様式([StampStyle])と承認の段から、スタンプの内容(行)を作る。
class StampContentBuilder {
  const StampContentBuilder();

  /// 承認の段が 0 件のときは空(スタンプを出さない = 承認不要)。
  /// 段は順位の順。`stages = last` のときは、最後に承認した 1 つ(承認済みが無ければ順位の先頭)だけ。
  List<StampCard> build(
    StampStyle style,
    List<ApprovalStepInfo> steps, {
    void Function(String problem)? onProblem,
  }) {
    if (steps.isEmpty) return const [];
    final sorted = [...steps]..sort((a, b) => a.priority.compareTo(b.priority));
    var shown = sorted;
    if (style.stages == StampStages.last) {
      final epoch = DateTime.fromMillisecondsSinceEpoch(0);
      final approved = sorted.where((e) => e.approved).toList()
        ..sort(
          (a, b) => (a.approvedAt ?? epoch).compareTo(b.approvedAt ?? epoch),
        );
      shown = [approved.isNotEmpty ? approved.last : sorted.first];
    }
    return [for (final s in shown) _card(style, s, onProblem)];
  }

  StampCard _card(
    StampStyle style,
    ApprovalStepInfo s,
    void Function(String)? onProblem,
  ) {
    final byLine = <int, List<String>>{};
    final sizes = <int, double>{};
    for (final item in style.items) {
      final text = _field(style, s, item, onProblem);
      if (text.isEmpty) continue;
      byLine.putIfAbsent(item.line, () => []).add(text);
      final cur = sizes[item.line];
      if (cur == null || item.size > cur) sizes[item.line] = item.size;
    }
    final keys = byLine.keys.toList()..sort();
    return StampCard(
      state: s.approved
          ? StampState.approved
          : (s.rejected ? StampState.rejected : StampState.pending),
      lines: [
        for (final k in keys)
          StampLine(text: byLine[k]!.join(' '), size: sizes[k]!),
      ],
      step: s,
    );
  }

  String _field(
    StampStyle style,
    ApprovalStepInfo s,
    StampItem item,
    void Function(String)? onProblem,
  ) {
    switch (item.field) {
      case 'stamp_label':
        return style.labelLanguage == 'en' ? s.stampLabelEn : s.stampLabelJa;
      case 'approved_at':
        final at = s.approvedAt;
        return at == null ? '' : formatDate(at, item.format ?? 'yyyy/MM/dd');
      case 'approved_staff':
        return s.approvedStaff ?? '';
      case 'approval_name':
        return s.approvalName ?? '';
      case 'version_code':
        return s.versionCode ?? '';
      case 'control_number':
        return s.controlNumber ?? '';
      case 'document_revision':
        return s.documentRevision?.toString() ?? '';
      case 'approved_remarks':
        return s.remarks ?? '';
      default:
        onProblem?.call('未知のスタンプの項目: ${item.field}');
        return '';
    }
  }

  /// スタンプの項目として使える名前(設定の画面の選択肢)。
  static const List<String> fields = [
    'stamp_label',
    'approved_at',
    'approved_staff',
    'approval_name',
    'version_code',
    'control_number',
    'document_revision',
    'approved_remarks',
  ];
}
