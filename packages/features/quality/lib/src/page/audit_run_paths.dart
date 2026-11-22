/// 監査を実施する側の画面のパス。文字列はこのファイルだけに書く。アクセスの許可はパスで判定する。
abstract final class AuditRunPaths {
  static const myAudits = '/quality/my-audits';
  static const run = '/quality/audit-run';

  static String runOf(String detailId) => Uri(path: run, queryParameters: {'id': detailId}).toString();
}
