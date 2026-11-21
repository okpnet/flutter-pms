import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 承認パターン(`mstr_approval_pattern`)の選択肢 1 件。
class ApprovalPatternOption {
  const ApprovalPatternOption({required this.id, required this.name, this.stampStyle});

  final String id;

  /// 呼称(画面の言語の名称)。
  final String name;

  /// このパターンのスタンプの様式(`stamp_style`。標準に重ねる値)。null は標準の様式を使う。
  final Map<String, dynamic>? stampStyle;

  Map<String, Object?> toJson() => {'id': id, 'name': name, 'stampStyle': stampStyle};
}

/// 承認パターンの取得元(一覧・スタンプの様式の保存)。アプリが GraphQL 版(`GraphqlApprovalPatternSource`)に差し替える(Strategy)。
abstract interface class IApprovalPatternSource {
  Future<List<ApprovalPatternOption>> list();

  /// [patternId] のスタンプの様式(`stamp_style`)を保存する。[style] が null のときは、標準の様式を使う(NULL にする)。
  Future<void> saveStampStyle(String patternId, Map<String, dynamic>? style);
}

/// メモリ上の取得元(既定・example・テスト用)。
class InMemoryApprovalPatternSource implements IApprovalPatternSource {
  InMemoryApprovalPatternSource([List<ApprovalPatternOption>? options]) : options = options ?? [];

  List<ApprovalPatternOption> options;

  /// true にすると、読み込み・保存が失敗する(テスト用)。
  bool failing = false;

  /// 保存の記録(パターンの ID と様式。テスト用)。
  final List<(String id, Map<String, dynamic>? style)> saved = [];

  @override
  Future<List<ApprovalPatternOption>> list() async {
    if (failing) throw StateError('list failed');
    return List.of(options);
  }

  @override
  Future<void> saveStampStyle(String patternId, Map<String, dynamic>? style) async {
    if (failing) throw StateError('save failed');
    saved.add((patternId, style));
    options = [
      for (final o in options) o.id == patternId ? ApprovalPatternOption(id: o.id, name: o.name, stampStyle: style) : o,
    ];
  }
}

final documentSettingsPatternSourceProvider = Provider<IApprovalPatternSource>((ref) => InMemoryApprovalPatternSource());

/// 承認パターンの選択肢の読み込み。画面を開くたびに取り直す(様式を保存したあとも取り直す)。失敗は例外のまま(画面が案内に変える)。
final approvalPatternOptionsProvider = FutureProvider.autoDispose<List<ApprovalPatternOption>>(
  (ref) => ref.watch(documentSettingsPatternSourceProvider).list(),
  retry: (_, _) => null,
);
