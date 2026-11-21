import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 承認待ち 1 件(承認の段 1 つ)。DB のビュー `v_approval_pending` の行(承認者が自分で、承認できる状態のもの)から作る。
/// 区分は文字列のキー([ApprovalMenus.kindsOf] の `document`・`order`…。DB のビューの boolean の列に対応する)。
class PendingApproval {
  const PendingApproval({
    required this.preapprovalId,
    required this.kind,
    required this.targetId,
    this.reference = '',
    this.subject = '',
    this.detail = '',
    this.applicant = '',
    this.appliedAt,
    this.stepPriority = 1,
    this.stepName = '',
  });

  /// 承認前 ID(承認の段 1 つ)。承認の登録(`document_approve`・`approval_approve_many`)に渡す。
  final String preapprovalId;

  /// 区分のキー(`document`・`order`・`shipping_order`・`purchase`・`unrecognized`・`complaint`・`disposal`・`recurrence_prevention`)。
  final String kind;

  /// 対象(文書・受注など)の ID。「参照」で対象の画面へ移る。
  final String targetId;

  /// 対象の番号(リニアシンボルなど)。
  final String reference;
  final String subject;
  final String detail;
  final String applicant;
  final DateTime? appliedAt;

  /// 承認の順位(第 N 段階)と名称。
  final int stepPriority;
  final String stepName;
}

/// 承認の結果(1 行)。
class ApprovalOutcome {
  const ApprovalOutcome({required this.preapprovalId, required this.ok, this.errorCode, this.errorMessage});

  final String preapprovalId;
  final bool ok;

  /// DB の errcode(`OPR01` 承認前が無い / `OPR03` 承認できない・済み・前の段階が未承認 など)。
  final String? errorCode;
  final String? errorMessage;
}

/// 承認一覧のメニュー(グループ)と、そのタブ(区分)。
class ApprovalMenus {
  const ApprovalMenus._();

  /// メニューのグループ ID → タブの区分(左から)。
  static const Map<String, List<String>> tabs = {
    'quality_document': ['document'],
    'sales': ['order', 'shipping_order'],
    'purchasing': ['purchase', 'unrecognized'],
    'quality_common': ['complaint', 'disposal', 'recurrence_prevention'],
  };

  static List<String> get menus => tabs.keys.toList();

  static List<String> kindsOf(String menu) => tabs[menu] ?? const [];

  /// 区分が属するメニュー。
  static String? menuOf(String kind) {
    for (final e in tabs.entries) {
      if (e.value.contains(kind)) return e.key;
    }
    return null;
  }
}

/// 承認待ちの取得と、承認の登録の取得元。アプリが GraphQL 版(`document_approval_model`)に差し替える(Strategy)。
abstract interface class IApprovalGateway {
  /// ログイン中の担当者が承認者で、いま承認できる承認待ち。
  Future<List<PendingApproval>> loadPending();

  /// [preapprovalIds] を承認する(1 回の呼び出し。行ごとの結果を返す。失敗した行だけ登録されない)。
  Future<List<ApprovalOutcome>> approve(List<String> preapprovalIds, {String? remarks});
}

/// メモリ上の取得元(既定・example・テスト用)。承認すると一覧から消える。
class InMemoryApprovalGateway implements IApprovalGateway {
  InMemoryApprovalGateway([List<PendingApproval>? initial]) : items = [...?initial];

  final List<PendingApproval> items;

  /// 承認できない行(`id` → エラーの文)。テストで、一部が失敗する場合を作る。
  final Map<String, String> failures = {};
  bool failingLoad = false;
  List<List<String>> approveCalls = [];

  @override
  Future<List<PendingApproval>> loadPending() async {
    if (failingLoad) throw StateError('load failed');
    return [...items];
  }

  @override
  Future<List<ApprovalOutcome>> approve(List<String> preapprovalIds, {String? remarks}) async {
    approveCalls.add([...preapprovalIds]);
    final out = <ApprovalOutcome>[];
    for (final id in preapprovalIds) {
      final failure = failures[id];
      if (failure != null) {
        out.add(ApprovalOutcome(preapprovalId: id, ok: false, errorCode: 'OPR03', errorMessage: failure));
      } else {
        items.removeWhere((e) => e.preapprovalId == id);
        out.add(ApprovalOutcome(preapprovalId: id, ok: true));
      }
    }
    return out;
  }
}

/// 担当者のパスワードの確認(承認の前の再入力)。アプリが `pbapi` の `SessionService.verifyPassword` につなぐ。
abstract interface class IPasswordVerifier {
  /// 一致すれば true。通信の失敗などは例外。
  Future<bool> verify(String password);
}

/// 確認できない環境の既定(承認の操作はできない)。
class UnsupportedPasswordVerifier implements IPasswordVerifier {
  const UnsupportedPasswordVerifier();

  @override
  Future<bool> verify(String password) => Future.error(UnsupportedError('IPasswordVerifier is not provided'));
}

final approvalGatewayProvider = Provider<IApprovalGateway>((ref) => InMemoryApprovalGateway());

final approvalPasswordVerifierProvider = Provider<IPasswordVerifier>((ref) => const UnsupportedPasswordVerifier());

/// 「参照」で移る先のパス(区分・対象の ID から)。null のときは参照を出さない。アプリが対象の画面のパスに対応づける。
typedef ApprovalTargetLocator = String? Function(String kind, String targetId);

final approvalTargetLocatorProvider = Provider<ApprovalTargetLocator>((ref) => (kind, targetId) => null);

/// 承認者の表示用の日時の文字(承認日時)。テストで固定する。
final approvalClockProvider = Provider<DateTime Function()>((ref) => DateTime.now);

/// 承認待ちの一覧。承認したあとは、取得元から読み直す。
class PendingApprovalsNotifier extends AsyncNotifier<List<PendingApproval>> {
  @override
  Future<List<PendingApproval>> build() => ref.watch(approvalGatewayProvider).loadPending();

  Future<void> refresh() async {
    state = await AsyncValue.guard(() => ref.read(approvalGatewayProvider).loadPending());
  }
}

final pendingApprovalsProvider = AsyncNotifierProvider<PendingApprovalsNotifier, List<PendingApproval>>(
  PendingApprovalsNotifier.new,
);

/// 区分ごとの承認待ちの件数。
final pendingCountsByKindProvider = Provider<Map<String, int>>((ref) {
  final items = ref.watch(pendingApprovalsProvider).value ?? const <PendingApproval>[];
  final out = <String, int>{};
  for (final i in items) {
    out[i.kind] = (out[i.kind] ?? 0) + 1;
  }
  return out;
});
