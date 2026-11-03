import 'package:auth_files/auth_files.dart';
import 'package:auth_files/auth_files_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';

List<String> _paths(AuthFilesModule m) => [
  for (final r in m.routes) (r as GoRoute).path,
];

void main() {
  const entryPaths = [
    AuthFilesPaths.login,
    AuthFilesPaths.register,
    AuthFilesPaths.forgot,
    AuthFilesPaths.forgotCode,
    AuthFilesPaths.forgotReset,
  ];
  const framedPaths = [
    AuthFilesPaths.files,
    AuthFilesPaths.adminSignups,
    AuthFilesPaths.adminResets,
  ];

  test('既定は、ログイン前の画面と枠の中の画面の両方', () {
    expect(_paths(const AuthFilesModule()), [...entryPaths, ...framedPaths]);
  });

  test('includeFramed: false はログイン前の画面だけ(枠の外に置く)', () {
    const module = AuthFilesModule(includeFramed: false);
    expect(_paths(module), entryPaths);
    expect(module.locationOf(const LoginDestination()), AuthFilesPaths.login);
    expect(
      module.locationOf(const SharedFilesDestination()),
      isNull,
      reason: '枠の中の画面は、もう一方のモジュールが解決する',
    );
  });

  test('includeEntry: false は枠の中の画面だけ', () {
    const module = AuthFilesModule(includeEntry: false);
    expect(_paths(module), framedPaths);
    expect(module.locationOf(const LoginDestination()), isNull);
    expect(
      module.locationOf(const SharedFilesDestination()),
      AuthFilesPaths.files,
    );
    expect(
      module.locationOf(const AdminSignupsDestination()),
      AuthFilesPaths.adminSignups,
    );
  });

  test('2つに分けても、すべての遷移先がどちらか一方で解決される', () {
    const modules = [
      AuthFilesModule(includeFramed: false),
      AuthFilesModule(includeEntry: false),
    ];
    const destinations = [
      LoginDestination(),
      SignupDestination(),
      PasswordResetRequestDestination(),
      AcceptCodeDestination(),
      NewPasswordDestination(),
      SharedFilesDestination(),
      AdminSignupsDestination(),
      AdminResetsDestination(),
    ];
    for (final d in destinations) {
      final found = modules.map((m) => m.locationOf(d)).whereType<String>();
      expect(found, hasLength(1), reason: '$d');
    }
  });
}
