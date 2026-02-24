import 'dart:developer';
import 'package:auther_controller/core/auth_model/auth_state_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'authentication.g.dart';

@Riverpod(keepAlive: true)
class Authentication extends _$Authentication {
  Authentication();

  @override
  AuthStateType build() => AuthStateType.signedOut;

  void changeSignIn() => _changeState(AuthStateType.authenticated);
  void changeSignout() => _changeState(AuthStateType.signedOut);
  void changeExpried() => _changeState(AuthStateType.expired);
  void networkError() => _changeState(AuthStateType.fail);

  void _changeState(AuthStateType authState) {
    log('state change:$authState');
    state = authState;
  }
}
