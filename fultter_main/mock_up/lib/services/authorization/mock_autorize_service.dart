import 'package:mock_up/imports.dart';

part 'mock_autorize_service.g.dart';

enum AuthStateType { authenticated, expired, signedOut, fail }

@Riverpod(keepAlive: true)
class MockAutorizeService extends _$MockAutorizeService {
  @override
  AuthStateType build() => .signedOut;

  Future<bool> login() async {
    final result = false;
    state = result ? .authenticated : .signedOut;
    Future.delayed(Duration(seconds: 3));
    return result;
  }

  void logout() {
    state = AuthStateType.signedOut;
  }

  void error(dynamic ex) {
    //ログを残す
    state = AuthStateType.fail;
  }
}
