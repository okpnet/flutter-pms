import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 標準の承認パターンを持つ対象(登録が申請になるもの)。DB の `info_app` の対象ごとの列(`<対象>_approval_pattern_id`)に対応する。
/// 対象が増えたら、`info_app` に列を足し、ここにも足す。
const List<String> approvalDefaultKinds = [
  'document',
  'order',
  'purchase',
  'unrecognized',
  'shipping_order',
  'complaint',
  'disposal',
  'recurrence_prevention',
];

/// 承認パターンの選択肢 1 件(`mstr_approval_pattern`。名称は画面の言語)。
class ApprovalPatternChoice {
  const ApprovalPatternChoice({required this.id, required this.name});

  final String id;
  final String name;
}

/// 対象ごとの標準の承認パターンの ID(null は承認不要)。
class ApprovalDefaults {
  const ApprovalDefaults([Map<String, String?> patterns = const {}]) : _patterns = patterns;

  final Map<String, String?> _patterns;

  /// [kind] の承認パターンの ID(未設定は null)。
  String? of(String kind) => _patterns[kind];

  ApprovalDefaults with_(String kind, String? id) => ApprovalDefaults({..._patterns, kind: id});

  Map<String, String?> toMap() => {for (final k in approvalDefaultKinds) k: _patterns[k]};

  @override
  bool operator ==(Object other) =>
      other is ApprovalDefaults && approvalDefaultKinds.every((k) => of(k) == other.of(k));

  @override
  int get hashCode => Object.hashAll(approvalDefaultKinds.map(of));

  Map<String, Object?> toJson() => toMap();
}

/// 標準の承認パターンの取得元。アプリが GraphQL 版(`GraphqlApprovalDefaultsGateway`)に差し替える(Strategy)。
abstract interface class IApprovalDefaultsGateway {
  Future<ApprovalDefaults> load();

  Future<List<ApprovalPatternChoice>> patterns();

  /// 標準の承認パターンを保存する(すべての対象。null は承認不要)。
  Future<void> save(ApprovalDefaults value);
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryApprovalDefaultsGateway implements IApprovalDefaultsGateway {
  InMemoryApprovalDefaultsGateway({ApprovalDefaults? value, List<ApprovalPatternChoice>? choices})
    : value = value ?? const ApprovalDefaults(),
      choices = choices ?? [];

  ApprovalDefaults value;
  List<ApprovalPatternChoice> choices;

  /// true にすると、読み込み・保存が失敗する(テスト用)。
  bool failing = false;
  int saveCount = 0;

  @override
  Future<ApprovalDefaults> load() async {
    if (failing) throw StateError('load failed');
    return value;
  }

  @override
  Future<List<ApprovalPatternChoice>> patterns() async {
    if (failing) throw StateError('patterns failed');
    return List.of(choices);
  }

  @override
  Future<void> save(ApprovalDefaults v) async {
    if (failing) throw StateError('save failed');
    value = v;
    saveCount++;
  }
}

final approvalDefaultsGatewayProvider = Provider<IApprovalDefaultsGateway>((ref) => InMemoryApprovalDefaultsGateway());
