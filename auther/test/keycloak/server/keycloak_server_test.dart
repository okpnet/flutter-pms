import 'package:auther_controller/core/auth_model/auth_state_type.dart';
import 'package:auther_controller/core/auth_model/authentication_model.dart';
import 'package:auther_controller/options/results/result.dart';
import 'package:auther_controller/keycloak/server/keycloak/keycloak_server.dart';
import 'package:auther_controller/keycloak/server/keycloak/keycloak_http_client.dart';
import 'package:auther_controller/keycloak/server/keycloak/keycloak_auth_state_handler.dart';
import 'package:auther_controller/keycloak/model/keycloak_uri_model.dart';
import 'package:auther_controller/storages/storage.dart';
import 'package:flutter_test/flutter_test.dart';

// Fake storage similar to other tests
class FakeStorageReaderWriter implements IStorageReaderWriter {
  final Map<String, dynamic> _storage = {};

  @override
  Map<String, StorageItemConverter> get converters => {};

  @override
  dynamic operator [](String key) => _storage[key];

  @override
  void operator []=(String key, dynamic value) {
    _storage[key] = value;
  }

  @override
  Future<Result<T>> read<T>(String key) async {
    if (!_storage.containsKey(key)) return Failure(Exception('Not found'));
    return Success(_storage[key] as T);
  }

  @override
  Future<void> write<T>(String key, T value) async {
    _storage[key] = value;
  }

  @override
  Future<void> delete(String key) async => _storage.remove(key);

  @override
  Future<void> clear() async => _storage.clear();
}

// Fake http client allows controlling responses
class FakeHttpClient extends KeycloakHttpClient {
  final ConnectStateResult<AuthenticationModel> Function(PostType, String)
  handler;

  FakeHttpClient({required KeycloakUriModel uriModel, required this.handler})
    : super(uriModel: uriModel);

  @override
  Future<ConnectStateResult<AuthenticationModel>> post(
    PostType type,
    String code,
  ) async {
    return handler(type, code);
  }
}

// Fake auth state handler to control expiration logic
class FakeAuthStateHandler extends KeycloakAuthStateHandler {
  AuthenticationModel? stored;
  bool expired = false;

  FakeAuthStateHandler({required IStorageReaderWriter readerWriter})
    : super(readerWriter: readerWriter);

  @override
  Future<AuthenticationModel?> getStoredAuthModel() async => stored;

  @override
  bool isTokenExpired(AuthenticationModel model) => expired;

  @override
  Future<void> saveAuthModel(AuthenticationModel model) async {
    stored = model;
  }

  @override
  Future<void> clearAuthState() async {
    stored = null;
  }
}

void main() {
  group('KeycloakServer', () {
    late FakeStorageReaderWriter fakeStorage;
    late FakeAuthStateHandler fakeAuthHandler;
    late KeycloakServer server;
    late KeycloakUriModel uriModel;

    setUp(() {
      fakeStorage = FakeStorageReaderWriter();
      fakeAuthHandler = FakeAuthStateHandler(readerWriter: fakeStorage);
      uriModel = KeycloakUriModel.generate(
        keycloakUrl: 'https://unused',
        realms: 'realm',
        clientId: 'id',
        redirectUrl: 'https://app/callback',
        scopes: ['openid'],
      );
    });

    test('login with empty code returns failure', () async {
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: fakeStorage,
        httpClient: FakeHttpClient(
          uriModel: uriModel,
          handler: (_, __) =>
              ConnectStateResult.failure(Exception('should not be called')),
        ),
        authStateHandler: fakeAuthHandler,
      );

      final result = await server.login('');
      expect(result, isA<FailureState<AuthStateType>>());
    });

    test('successful login stores model', () async {
      final testModel = AuthenticationModel(code: 'c', accessToken: null);
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: fakeStorage,
        httpClient: FakeHttpClient(
          uriModel: uriModel,
          handler: (_, __) => ConnectStateResult.success(testModel),
        ),
        authStateHandler: fakeAuthHandler,
      );

      final res = await server.login('code');
      expect(res, isA<SuccessState<AuthStateType>>());
      expect(fakeAuthHandler.stored, testModel);
    });

    test('logout with no stored model returns signedOut', () async {
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: fakeStorage,
        httpClient: FakeHttpClient(
          uriModel: uriModel,
          handler: (_, __) => ConnectStateResult.success(
            AuthenticationModel(),
            statusCode: 204,
          ),
        ),
        authStateHandler: fakeAuthHandler,
      );

      final res = await server.logout();
      expect(res, isA<SuccessState<AuthStateType>>());
      final success = res as SuccessState<AuthStateType>;
      expect(success.value, AuthStateType.signedOut);
    });

    test('logout with expired token calls http client', () async {
      fakeAuthHandler.stored = AuthenticationModel(code: 'c', accessToken: 't');
      fakeAuthHandler.expired = true;
      bool called = false;
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: fakeStorage,
        httpClient: FakeHttpClient(
          uriModel: uriModel,
          handler: (type, code) {
            called = true;
            return ConnectStateResult.success(AuthenticationModel());
          },
        ),
        authStateHandler: fakeAuthHandler,
      );

      final res = await server.logout();
      expect(called, true);
      expect(res, isA<SuccessState<AuthStateType>>());
    });

    test('refreshToken when expired triggers http call', () async {
      fakeAuthHandler.stored = AuthenticationModel(code: 'c', accessToken: 't');
      fakeAuthHandler.expired = true;
      bool called = false;
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: fakeStorage,
        httpClient: FakeHttpClient(
          uriModel: uriModel,
          handler: (type, code) {
            called = true;
            return ConnectStateResult.success(AuthenticationModel());
          },
        ),
        authStateHandler: fakeAuthHandler,
      );

      final res = await server.refreshToken();
      expect(called, true);
      expect(res, isA<SuccessState<AuthStateType>>());
    });
  });
}
