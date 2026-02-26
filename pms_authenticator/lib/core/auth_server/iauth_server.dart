import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:pms_authenticator/options/results/result.dart';

abstract interface class IAuthServer {
  Future<ConnectStateResult<AuthStateType>> refreshToken();
  Future<ConnectStateResult<AuthStateType>> login(String code);
  Future<ConnectStateResult<AuthStateType>> logout();
}
