import 'dart:io';

import 'package:auther_controller/constant/server_constant.dart';
import 'package:auther_controller/constant/uri_constant.dart';
import 'package:auther_controller/core/auth_model/auth_state_type.dart';
import 'package:auther_controller/core/auth_model/authentication_model.dart';
import 'package:auther_controller/errors/error.dart';
import 'package:auther_controller/keycloak/converter/authentication_model_converter.dart';
import 'package:auther_controller/keycloak/model/keycloak_uri_model.dart';
import 'package:auther_controller/keycloak/server/keycloak_server.dart';
import 'package:auther_controller/logger/ilogger.dart';
import 'package:auther_controller/options/results/result.dart';
import 'package:auther_controller/storages/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class AuthController extends _$AuthController {
  HttpServer? _server;
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

    final url = Uri(path: uriModel.redirectUri);
    //コールバックサーバ
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, url.port);
  }

  Future<void> refreshToken() async {
    if (!_validate()) return;
    final result = await _keycloakServer?.refreshToken();
    _logging(result);
  }

  Future<void> login() async {
    if (!_validate()) return;
  }

  Future<void> logout() async {
    if (!_validate()) return;
  }

  bool _validate() {
    final result = _keycloakServer != null && _server != null;
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
