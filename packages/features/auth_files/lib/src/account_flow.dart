import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 認証コードを受け取って新しいパスワードを決めるまでの、画面をまたぐ状態。
///
/// 画面案は「認証コードの入力」と「新しいパスワード」を別の画面にしているが、サーバーは
/// コードとパスワードを1回の呼び出しで受けるため、コードはここで預かり、最後の画面で送る。
/// コードは秘密情報なので、ログにも [toString] にも出さない。
class AccountFlowState {
  const AccountFlowState({this.who = '', this.username = '', this.code = ''});

  /// 「パスワードを忘れた」で入力した、ユーザーIDまたはEメール。
  final String who;

  /// コードの宛先のユーザーID。
  final String username;

  /// 入力済みのコード(ハイフン・空白を除いた形)。
  final String code;

  bool get hasCode => username.isNotEmpty && code.isNotEmpty;

  AccountFlowState copyWith({String? who, String? username, String? code}) =>
      AccountFlowState(
        who: who ?? this.who,
        username: username ?? this.username,
        code: code ?? this.code,
      );

  @override
  String toString() => 'AccountFlowState(username: $username)';
}

final accountFlowProvider =
    NotifierProvider<AccountFlowNotifier, AccountFlowState>(
      AccountFlowNotifier.new,
    );

class AccountFlowNotifier extends Notifier<AccountFlowState> {
  @override
  AccountFlowState build() => const AccountFlowState();

  void setWho(String who) => state = AccountFlowState(who: who);

  void setCode({required String username, required String code}) =>
      state = state.copyWith(username: username, code: code);

  void clear() => state = const AccountFlowState();
}

/// ログイン画面に出す「完了しました」の案内(画面案の `flash`)。表示したら消す。
final authFlashProvider = NotifierProvider<AuthFlashNotifier, String?>(
  AuthFlashNotifier.new,
);

class AuthFlashNotifier extends Notifier<String?> {
  @override
  String? build() => null;

  void set(String message) => state = message;

  void clear() => state = null;
}
