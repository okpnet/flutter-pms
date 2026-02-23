import 'package:auther/core/auth_model/auth_state_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  Calllbackse
  AuthController();
  @override
  AuthStateType build() {
    return AuthStateType.signedOut;
  }
}
