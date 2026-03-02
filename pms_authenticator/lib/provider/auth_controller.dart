import 'package:pms_authenticator/auth_controller.dart';
import 'package:pms_authenticator/constant/server_constant.dart';
import 'package:pms_authenticator/constant/uri_constant.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/keycloak/converter/authentication_model_converter.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/keycloak/server/callback/callback_server.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_server.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:pms_authenticator/storages/storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  CallbackServer? _callbackServer;
  KeycloakServer? _keycloakServer;
  ILogger? _logger;

  Uri? get loginUri => _keycloakServer?.uriModel.authorizationUri;
  Uri? get logoutUri => _keycloakServer?.uriModel.logoutUri;
  Uri? get tokenUri => _keycloakServer?.uriModel.tokenUri;

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
    int timeoutSec = ServerConstant.DEFAULT_TIMEOUT,
    List<String> scopes = UriConstant.DEFAULT_SCOPES,
    ILogger? logger,
  }) async {
    _logger = logger;

    try {
      final uriModel = KeycloakUriModel.generate(
        keycloakUrl: authUrlroot,
        realms: realms,
        clientId: clientId,
        redirectUrl: redirectUrl,
        scopes: scopes,
      );
      //debug
      // log('code charenge AuthController:${uriModel.codeChallenge}');
      // log('code veriy AuthController:${uriModel.codeVerifier}');
      final readWriter = SecureStorageReaderWriter({
        (AuthenticationModel).toString(): AuthenticationModelConverter(),
      });

      _keycloakServer = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: readWriter,
        logger: logger,
      );

      //コールバックサーバ
      _callbackServer = CallbackServer(
        url: uriModel.redirectUri,
        logger: logger,
      );

      if (_keycloakServer == null || _callbackServer == null) {
        throw Exception(
          'keyclaokServer or Callback server create result null.',
        );
      }

      _logger?.debug('Server initialize success.${uriModel.baseUrl}');

      await _callbackServer!.init((code) {
        Future<void> loginPostStateChanged() async {
          _logger?.debug('response code : $code');
          _logger?.info('LOGIN START ${uriModel.authorizationUri}');
          final result = await _keycloakServer!.login(code);
          _logging(result);
          _logger?.info('LOGIN COMPLETE');
        }

        //debug
        // log('callback codeChallenge:${uriModel.codeChallenge}');
        // log('callback codeVerifier:${uriModel.codeVerifier}');
        loginPostStateChanged();
        _logger?.debug(
          'Registered the login success function.${uriModel.redirectUri}',
        );
      });

      //破棄登録
      ref.onDispose(() async {
        _callbackServer?.dispose();
        _callbackServer = null;
      });

      _logger?.debug('The provider registerd dispose function.');
      _logger?.info('PROVIDER INITIALIZE COMPLETE');
    } catch (ex, st) {
      _logger?.critical(
        'PROVIDER INITIALIZE FAILED.',
        exception: ex as Exception,
        stackTrace: st,
      );
    }
  }

  //トークン更新
  Future<void> refreshToken() async {
    _logger?.info('TOKEN REFRESH START');
    if (!_validate()) return;
    final result = await _keycloakServer?.refreshToken();
    _logging(result);
    _logger?.info('TOKEN REFRESH COMPLETE');
  }

  // //ログイン
  // Future<void> login() async {
  //   if (!_validate()) return;
  // }

  //ログアウト
  Future<void> logout() async {
    _logger?.info('LOGOUT START');
    if (!_validate()) return;
    final result = await _keycloakServer?.logout();
    _logging(result);
    _logger?.info('LOGOUT COMPLETE');
  }

  bool _validate() {
    final result = _keycloakServer != null && _callbackServer != null;
    _logger?.debug('check state: $result');
    return result;
  }

  void _logging(ConnectStateResult<AuthStateType>? result) {
    if (result == null) {
      _logger?.error('RESULT OF THE POST CONNECTION IS NULL');
      _update(AuthStateType.fail);
      return;
    }
    switch (result) {
      case SuccessState():
        _logger?.debug('result state : ${result.value}');
        _update(result.value);
        break;
      case FailureState():
        _logger?.error('POST CONNECTION IS FAILED', exception: result.error);
        _update(AuthStateType.fail);
        break;
    }
  }

  //state更新。同じであれば更新しない(通知されない)。
  void _update(AuthStateType newState) {
    _logger?.debug('change state ${newState == state}: $state -> $newState');
    if (newState == state) return;
    state = newState;
  }

  void dispose() {
    _callbackServer?.dispose();
    _keycloakServer = null;
  }
}
