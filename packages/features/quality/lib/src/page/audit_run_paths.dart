/// 監査を実施する側の画面のパス。文字列はこのファイルだけに書く。アクセスの許可はパスで判定する。
abstract final class AuditRunPaths {
  static const myAudits = '/quality/my-audits';
  static const run = '/quality/audit-run';
  static const plan = '/quality/audit-plan';

  static String runOf(String detailId) => Uri(path: run, queryParameters: {'id': detailId}).toString();
}

/// 異常の登録の画面のパス。
abstract final class ComplaintRegisterPaths {
  static const register = '/quality/complaint-register';

  static String of({String? target, String? targetId, String? targetLabel}) {
    final query = {'target': ?target, 'id': ?targetId, 'label': ?targetLabel};
    return query.isEmpty ? register : Uri(path: register, queryParameters: query).toString();
  }
}
