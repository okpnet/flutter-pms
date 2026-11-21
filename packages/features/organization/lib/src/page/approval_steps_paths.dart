/// 承認の段の画面のパス。文字列はこのファイルだけに書く。アクセスの許可はパスで判定する。
abstract final class ApprovalStepsPaths {
  static const home = '/organization/approval-steps';

  static String of(String patternId, {String patternName = ''}) =>
      Uri(path: home, queryParameters: {'id': patternId, if (patternName.isNotEmpty) 'name': patternName}).toString();
}
