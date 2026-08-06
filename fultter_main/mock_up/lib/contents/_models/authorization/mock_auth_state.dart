enum AuthStateType { authenticated, expired, signedOut, fail }

enum Permission { view, edit }

class MockAuthState {
  final AuthStateType authStateType;
  final Map<String, Permission> permission;
  const MockAuthState({
    this.authStateType = .signedOut,
    this.permission = const {},
  });
}
