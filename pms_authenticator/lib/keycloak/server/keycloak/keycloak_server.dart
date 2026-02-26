import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/core/auth_model/iauth_uri_model.dart';
import 'package:pms_authenticator/core/auth_server/iauth_server.dart';
import 'package:pms_authenticator/keycloak/converter/authentication_model_converter.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_auth_state_handler.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_http_client.dart';
import 'package:pms_authenticator/logger/ilogger.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:pms_authenticator/storages/storage.dart';
import 'package:flutter/foundation.dart';

// 定数定義は keycloak_auth_state_handler.dart に移動

final class KeycloakServer implements IAuthServer {
  final IAuthUriModel authUriModel;
  final IStorageReaderWriter readerWriter;
  final String key = UniqueKey().toString();
  ILogger? _logger;

  // 責務分割: HTTP通信とストレージ管理
  late final KeycloakHttpClient _httpClient;
  late final KeycloakAuthStateHandler _authStateHandler;

  KeycloakUriModel get uriModel => authUriModel as KeycloakUriModel;

  // コンストラクタ
  KeycloakServer._({
    required this.readerWriter,
    required this.authUriModel,
    KeycloakHttpClient? httpClient,
    KeycloakAuthStateHandler? authStateHandler,
  }) {
    readerWriter.converters.addAll({
      (AuthenticationModel).toString(): AuthenticationModelConverter(),
    });
    _httpClient = httpClient ?? KeycloakHttpClient(uriModel: uriModel);
    _authStateHandler =
        authStateHandler ??
        KeycloakAuthStateHandler(readerWriter: readerWriter);
  }

  // インスタンス生成
  factory KeycloakServer.create({
    required IAuthUriModel authUriModel,
    required IStorageReaderWriter readWriter,
    KeycloakHttpClient? httpClient,
    KeycloakAuthStateHandler? authStateHandler,
  }) {
    final provider = KeycloakServer._(
      readerWriter: readWriter,
      authUriModel: authUriModel,
      httpClient: httpClient,
      authStateHandler: authStateHandler,
    );
    return provider;
  }

  ConnectStateResult<AuthStateType> _createState(
    ConnectStateResult<AuthenticationModel> model,
  ) {
    switch (model) {
      case SuccessState<AuthenticationModel>():
        _authStateHandler.saveAuthModel(model.value);
        // isAccessTokenExpired already returns AuthStateType
        return SuccessState<AuthStateType>(
          model.value.isAccessTokenExpired,
          statusCode: model.statusCode,
        );
      case FailureState<AuthenticationModel>():
        _authStateHandler.clearAuthState();
        return FailureState<AuthStateType>(
          model.error,
          statusCode: model.statusCode,
        );
    }
  }

  // トークンの更新
  @override
  Future<ConnectStateResult<AuthStateType>> refreshToken() async {
    final model = await _authStateHandler.getStoredAuthModel();

    if (model != null && _authStateHandler.isTokenExpired(model)) {
      final result = await _httpClient.post(PostType.token, model.code!);

      return _createState(result);
    }
    return FailureState(Exception('Token is unexists or expired in storage.'));
  }

  // ログアウト: ポストで送信
  @override
  Future<ConnectStateResult<AuthStateType>> logout() async {
    final model = await _authStateHandler.getStoredAuthModel();
    try {
      if (model != null && _authStateHandler.isTokenExpired(model)) {
        final result = await _httpClient.post(PostType.logout, model.code!);
        return _createState(result);
      }
      return SuccessState<AuthStateType>(AuthStateType.signedOut);
    } catch (ex, st) {
      return FailureState<AuthStateType>(ex as Exception);
    } finally {
      if (model != null) {
        await _authStateHandler.clearAuthState();
      }
    }
  }

  // ログイン: ローカルサーバのコールバック
  @override
  Future<ConnectStateResult<AuthStateType>> login(String code) async {
    try {
      if (code.isEmpty) {
        _logger?.error('No authorization code in callback.');
        return FailureState<AuthStateType>(Exception('Argment code is empty.'));
      }
      final result = await _httpClient.post(PostType.token, code);
      return _createState(result);
    } catch (e, st) {
      _logger?.critical('Callback wait error', ex: e as Exception, st: st);
      return FailureState<AuthStateType>(e as Exception);
    }
  }

  Future<void> dispose() async {
    // callbackServer?.close(force: true);
    try {
      for (int counter = 0; counter < 1000; counter++) {
        await Future.delayed(const Duration(milliseconds: 120));
      }
      _logger?.debug('KeycloakProvider post completed or timed out.');
    } catch (e, st) {
      _logger?.critical(
        'Error waiting for in-flight post to complete',
        ex: e as Exception,
        st: st,
      );
    } finally {
      _logger?.debug('KeycloakProvider disposed');
    }
  }
}
