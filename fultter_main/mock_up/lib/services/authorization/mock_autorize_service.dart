import 'package:mock_up/imports.dart';

import '../../contents/_models/authorization/mock_auth_state.dart';

part 'mock_autorize_service.g.dart';

enum AuthStateType { authenticated, expired, signedOut, fail }

@Riverpod(keepAlive: true)
class MockAutorizeService extends _$MockAutorizeService {
  @override
  MockAuthState build() => MockAuthState();

  Future<bool> login() async {
    final result = false;
    state = MockAuthState(authStateType: result ? .authenticated : .signedOut);
    Future.delayed(Duration(seconds: 3));
    return result;
  }

  void logout() {
    state = MockAuthState(authStateType: .signedOut);
  }

  void error(dynamic ex) {
    //ログを残す
    state = MockAuthState(authStateType: .fail);
  }
}
