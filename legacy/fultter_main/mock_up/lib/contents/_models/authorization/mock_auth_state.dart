import 'auth_state_type.dart';

enum Permission { view, edit }

class MockAuthState {
  final AuthStateType authStateType;
  final Map<String, Permission> permission;
  const MockAuthState({
    this.authStateType = .signedOut,
    this.permission = const {},
  });
}
