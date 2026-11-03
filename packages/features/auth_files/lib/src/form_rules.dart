import 'i18n/strings_provider.dart';

/// 入力の事前検証(画面案の `RULES`)。問題があれば文言、無ければ null。
///
/// クライアントで判定するのは形式だけ。ユーザーIDの重複・コードの正否・状態はサーバーが判定する。
abstract final class FormRules {
  /// パスワードの最小の長さ(サーバーの既定に合わせる)。
  static const minPasswordLength = 8;

  static final _userId = RegExp(r'^[A-Za-z0-9._-]{4,32}$');
  static final _email = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
  static final _kana = RegExp(r'^[ぁ-ゖァ-ヺー・\s]+$');
  static final _code = RegExp(r'^[A-Za-z0-9]{12}$');

  static String? required(AuthFilesStrings t, String value) =>
      value.trim().isEmpty ? t.rules.required : null;

  static String? userId(AuthFilesStrings t, String value) =>
      required(t, value) ??
      (_userId.hasMatch(value.trim()) ? null : t.rules.userId);

  static String? email(AuthFilesStrings t, String value) =>
      required(t, value) ??
      (_email.hasMatch(value.trim()) ? null : t.rules.email);

  static String? kana(AuthFilesStrings t, String value) =>
      required(t, value) ??
      (_kana.hasMatch(value.trim()) ? null : t.rules.kana);

  /// 認証コード。ハイフン・空白・大文字小文字は区別しない([normalizeCode] の形で12文字)。
  static String? code(AuthFilesStrings t, String value) =>
      required(t, value) ??
      (_code.hasMatch(normalizeCode(value)) ? null : t.rules.code);

  static String? password(AuthFilesStrings t, String value) =>
      value.length >= minPasswordLength
      ? null
      : t.rules.password(n: minPasswordLength);

  static String? passwordConfirm(
    AuthFilesStrings t,
    String value,
    String password,
  ) => value == password ? null : t.rules.passwordConfirm;

  /// コードからハイフンと空白を除く(送信する形)。
  static String normalizeCode(String value) =>
      value.replaceAll(RegExp(r'[\s-]'), '');
}
