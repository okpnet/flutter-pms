import 'package:auther_controller/auth_controller.dart';
import 'package:auther_controller/constant/server_constant.dart';
import 'package:auther_controller/constant/uri_constant.dart';
import 'package:auther_controller/core/auth_model/authentication_model.dart';
import 'package:auther_controller/errors/error.dart';
import 'package:auther_controller/keycloak/converter/authentication_model_converter.dart';
import 'package:auther_controller/keycloak/model/keycloak_uri_model.dart';
import 'package:auther_controller/keycloak/server/callback/callback_server.dart';
import 'package:auther_controller/keycloak/server/keycloak/keycloak_server.dart';
import 'package:auther_controller/options/results/result.dart';
import 'package:auther_controller/storages/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  CallbackServer? _callbackServer;
  KeycloakServer? _keycloakServer;
  ILogger? _loger;
  AuthController();

  @override
  AuthStateType build() {
    return AuthStateType.signedOut;
  }

  FutureOr<void> init({
    required String authUrlroot,
    required String realms,
    required String clientId,
    required String redirectUrl,
    required String codeVerifier,
    required String codeChallenge,
    int timeoutSec = ServerConstant.DEFAULT_TIMEOUT,
    List<String> scopes = UriConstant.DEFAULT_SCOPES,
    ILogger? logger,
  }) async {
    _loger = logger;
    final uriModel = KeycloakUriModel.generate(
      keycloakUrl: authUrlroot,
      realms: realms,
      clientId: clientId,
      redirectUrl: redirectUrl,
      scopes: scopes,
    );

    final readWriter = SecureStorageReaderWriter({
      (AuthenticationModel).toString(): AuthenticationModelConverter(),
    });

    _keycloakServer = KeycloakServer.create(
      authUriModel: uriModel,
      readWriter: readWriter,
    );

    //コールバックサーバ
    _callbackServer = CallbackServer(url: uriModel.redirectUri);

    if (_keycloakServer == null || _callbackServer == null) {
      throw Exception('keyclaokServer or Callback server create result null.');
    }

    await _callbackServer!.init((code) => _keycloakServer!.login(code));

    //破棄登録
    ref.onDispose(() async {
      _callbackServer?.dispose();
      _callbackServer = null;
    });
  }

  //トークン更新
  Future<void> refreshToken() async {
    if (!_validate()) return;
    final result = await _keycloakServer?.refreshToken();
    _logging(result);
  }

  // //ログイン
  // Future<void> login() async {
  //   if (!_validate()) return;
  // }

  //ログアウト
  Future<void> logout() async {
    if (!_validate()) return;
    final result = await _keycloakServer?.logout();
    _logging(result);
  }

  bool _validate() {
    final result = _keycloakServer != null && _callbackServer != null;
    _loger?.debug('initi state : $result');
    return result;
  }

  bool _logging(ConnectStateResult<AuthStateType>? result) {
    if (result == null) {
      _loger?.critical('result is null.');
      return false;
    }
    switch (result) {
      case SuccessState():
        _loger?.debug('change state : ${result.value}');
        return true;
      case FailureState():
        if (result.error is NetworkTimeoutException) {
          _loger?.debug('timeout exception:');
          return true;
        }
        _loger?.error('server error', ex: result.error);
        break;
    }
    return false;
  }
}
