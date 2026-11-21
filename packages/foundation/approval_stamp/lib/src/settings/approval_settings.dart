import '../style/json_read.dart';

/// 承認の設定(`info_app.settings` の `approval`)。種類ごとの承認パターン(`mstr_approval_pattern_id`)。
///
/// 値があるとき、その種類の登録が申請になる(DB のトリガー `trg_05_approval_request` が、承認実行パターンと
/// 承認の段を作る)。null は承認不要。種類は [kinds]。
class ApprovalSettings {
  const ApprovalSettings({this.patterns = const {}});

  /// 承認の対象の種類(DB の対象の表に対応する)。
  static const List<String> kinds = [
    'order',
    'purchase',
    'unrecognized',
    'shipping_order',
    'complaint',
    'disposal',
    'recurrence_prevention',
  ];

  /// 種類 → 承認パターンの ID(null は承認不要)。
  final Map<String, String?> patterns;

  String? patternOf(String kind) => patterns[kind];

  factory ApprovalSettings.fromJson(Object? json, [Problems? p]) {
    final m = asJsonMap(json);
    final raw = asJsonMap(m['patterns']);
    final out = <String, String?>{for (final k in kinds) k: null};
    raw.forEach((k, v) {
      if (v == null) {
        out[k] = null;
      } else if (v is String) {
        out[k] = v.isEmpty ? null : v;
      } else {
        p?.add('approval.patterns.$k は文字列ではありません: $v');
      }
    });
    return ApprovalSettings(patterns: out);
  }

  ApprovalSettings withPattern(String kind, String? id) =>
      ApprovalSettings(patterns: {...patterns, kind: id});

  Map<String, dynamic> toJson() => {
    'patterns': {for (final k in kinds) k: patterns[k], for (final e in patterns.entries) if (!kinds.contains(e.key)) e.key: e.value},
  };
}
