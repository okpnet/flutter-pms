import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'auth_files_destinations.dart';
import 'auth_files_paths.dart';
import 'pages/code_page.dart';
import 'pages/admin_pages.dart';
import 'pages/login_page.dart';
import 'pages/forgot_page.dart';
import 'pages/new_password_page.dart';
import 'pages/shared_files_page.dart';
import 'pages/register_page.dart';

/// 認証(ログイン・登録申請・再設定・コード入力・管理者操作)と共有ファイルの画面をアプリへ組み込むための口。
///
/// ログイン前の画面(ログイン・申請・再設定の依頼・コード入力)は、アプリの枠(`ShellRoute`)の外に置くこと
/// (サイドバー・タイトルバーを出さないため)。共有ファイルと管理者の画面は枠の中でよい。
/// PocketBase への接続(`pbConnectionProvider`)とファイルの選択・保存
/// (`filePickerGatewayProvider`・`fileSaverGatewayProvider`)はアプリが差し込む。
class AuthFilesModule implements FeatureModule {
  const AuthFilesModule();

  @override
  List<RouteBase> get routes => [
    GoRoute(
      path: AuthFilesPaths.login,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.register,
      builder: (context, state) => const RegisterPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.forgot,
      builder: (context, state) => const ForgotPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.forgotCode,
      builder: (context, state) => const CodePage(),
    ),
    GoRoute(
      path: AuthFilesPaths.forgotReset,
      builder: (context, state) => const NewPasswordPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.files,
      builder: (context, state) => const SharedFilesPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.adminSignups,
      builder: (context, state) => const AdminSignupsPage(),
    ),
    GoRoute(
      path: AuthFilesPaths.adminResets,
      builder: (context, state) => const AdminResetsPage(),
    ),
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        LoginDestination() => AuthFilesPaths.login,
        SignupDestination() => AuthFilesPaths.register,
        PasswordResetRequestDestination() => AuthFilesPaths.forgot,
        AcceptCodeDestination() => AuthFilesPaths.forgotCode,
        NewPasswordDestination() => AuthFilesPaths.forgotReset,
        SharedFilesDestination() => AuthFilesPaths.files,
        AdminSignupsDestination() => AuthFilesPaths.adminSignups,
        AdminResetsDestination() => AuthFilesPaths.adminResets,
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {}
}
