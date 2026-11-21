import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 承認パターン(`mstr_approval_pattern`)の選択肢 1 件。
class ApprovalPatternOption {
  const ApprovalPatternOption({required this.id, required this.name});

  final String id;

  /// 呼称(画面の言語の名称)。
  final String name;

  Map<String, Object?> toJson() => {'id': id, 'name': name};
}

/// 承認パターンの一覧の取得元。アプリが GraphQL 版(`GraphqlApprovalPatternSource`)に差し替える(Strategy)。
abstract interface class IApprovalPatternSource {
  Future<List<ApprovalPatternOption>> list();
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryApprovalPatternSource implements IApprovalPatternSource {
  InMemoryApprovalPatternSource([List<ApprovalPatternOption>? options]) : options = options ?? [];

  List<ApprovalPatternOption> options;

  /// true にすると、読み込みが失敗する(テスト用)。
  bool failing = false;

  @override
  Future<List<ApprovalPatternOption>> list() async {
    if (failing) throw StateError('list failed');
    return List.of(options);
  }
}

final documentSettingsPatternSourceProvider = Provider<IApprovalPatternSource>((ref) => InMemoryApprovalPatternSource());

/// 承認パターンの選択肢の読み込み。画面を開くたびに取り直す。失敗は例外のまま(画面が案内に変える)。
final approvalPatternOptionsProvider = FutureProvider.autoDispose<List<ApprovalPatternOption>>(
  (ref) => ref.watch(documentSettingsPatternSourceProvider).list(),
  retry: (_, _) => null,
);
