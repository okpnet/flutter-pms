import 'package:auther_controller/keycloak/server/keycloak/keycloak_auth_state_handler.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auther_controller/core/auth_model/auth_state_type.dart';
import 'package:auther_controller/core/auth_model/authentication_model.dart';
import 'package:auther_controller/options/results/result.dart';
import 'package:auther_controller/storages/storage.dart';

// テスト用の FakeStorage
class FakeStorageReaderWriter implements IStorageReaderWriter {
  final Map<String, dynamic> _storage = {};
  bool _shouldFail = false;

  void setShouldFail(bool value) => _shouldFail = value;

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
    if (_shouldFail || !_storage.containsKey(key)) {
      return Failure(Exception('Not found'));
    }
    try {
      return Success(_storage[key] as T);
    } catch (e) {
      return Failure(Exception(e.toString()));
    }
  }

  @override
  Future<void> write<T>(String key, T value) async {
    _storage[key] = value;
  }

  @override
  Future<void> delete(String key) async {
    _storage.remove(key);
  }

  @override
  Future<void> clear() async {
    _storage.clear();
  }
}

void main() {
  group('KeycloakAuthStateHandler', () {
    late FakeStorageReaderWriter fakeStorage;
    late KeycloakAuthStateHandler handler;

    setUp(() {
      fakeStorage = FakeStorageReaderWriter();
      handler = KeycloakAuthStateHandler(readerWriter: fakeStorage);
    });

    group('getStoredAuthModel', () {
      test('正常にストレージから認証モデルを取得できる', () async {
        const testCode = 'test_code';
        const testAccessToken = 'test_access_token';
        final testModel = AuthenticationModel(
          code: testCode,
          accessToken: testAccessToken,
        );

        await fakeStorage.write<AuthenticationModel>(
          KeycloakAuthStateHandler.AUTH_MODEL_KEY,
          testModel,
        );

        final result = await handler.getStoredAuthModel();

        expect(result, testModel);
        expect(result?.code, testCode);
        expect(result?.accessToken, testAccessToken);
      });

      test('データが見つからない場合、nullを返す', () async {
        final result = await handler.getStoredAuthModel();
        expect(result, isNull);
      });

      test('エラーが発生した場合、nullを返す', () async {
        fakeStorage.setShouldFail(true);
        final result = await handler.getStoredAuthModel();
        expect(result, isNull);
      });
    });

    group('saveAuthModel', () {
      test('認証モデルをストレージに保存できる', () async {
        final model = AuthenticationModel(
          code: 'test_code',
          accessToken: 'test_access_token',
        );

        await handler.saveAuthModel(model);

        final stored = await fakeStorage.read<AuthenticationModel>(
          KeycloakAuthStateHandler.AUTH_MODEL_KEY,
        );
        expect(stored, isA<Success<AuthenticationModel>>());
        expect((stored as Success<AuthenticationModel>).value, model);
      });

      test('複数回の保存が可能', () async {
        final model1 = AuthenticationModel(
          code: 'code1',
          accessToken: 'token1',
        );
        final model2 = AuthenticationModel(
          code: 'code2',
          accessToken: 'token2',
        );

        await handler.saveAuthModel(model1);
        await handler.saveAuthModel(model2);

        final stored = await fakeStorage.read<AuthenticationModel>(
          KeycloakAuthStateHandler.AUTH_MODEL_KEY,
        );
        expect((stored as Success<AuthenticationModel>).value, model2);
      });
    });

    group('isTokenExpired', () {
      test('accessTokenがnullの場合、falseを返す', () {
        final model = AuthenticationModel(code: 'code', accessToken: null);

        final isExpired = handler.isTokenExpired(model);

        expect(isExpired, false);
      });

      test('accessTokenが空文字の場合、falseを返す', () {
        final model = AuthenticationModel(code: 'code', accessToken: '');

        final isExpired = handler.isTokenExpired(model);

        expect(isExpired, false);
      });

      test('有効なJWTトークンの場合、trueを返す', () {
        // eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJleHAiOjk5OTk5OTk5OTl9.fake
        // 有効期限が遠い未来(exp: 9999999999)のトークン
        const validToken =
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJleHAiOjk5OTk5OTk5OTl9.fake';

        final model = AuthenticationModel(
          code: 'code',
          accessToken: validToken,
        );

        final isExpired = handler.isTokenExpired(model);

        expect(isExpired, true);
      });
    });

    group('clearAuthState', () {
      test('ストレージから認証状態を削除できる', () async {
        final model = AuthenticationModel(code: 'code', accessToken: 'token');

        await handler.saveAuthModel(model);
        expect(await handler.getStoredAuthModel(), isNotNull);

        await handler.clearAuthState();
        expect(await handler.getStoredAuthModel(), isNull);
      });
    });

    group('shouldRefreshToken', () {
      test('モデルがない場合、falseを返す', () async {
        final result = await handler.shouldRefreshToken();
        expect(result, false);
      });

      test('nullトークンを持つモデルがある場合、falseを返す', () async {
        final model = AuthenticationModel(code: 'code', accessToken: null);
        await handler.saveAuthModel(model);

        final result = await handler.shouldRefreshToken();
        expect(result, false);
      });

      test('空文字トークンを持つモデルがある場合、falseを返す', () async {
        final model = AuthenticationModel(code: 'code', accessToken: '');
        await handler.saveAuthModel(model);

        final result = await handler.shouldRefreshToken();
        expect(result, false);
      });

      test('有効なトークンを持つモデルがある場合、trueを返す', () async {
        const validToken =
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJleHAiOjk5OTk5OTk5OTl9.fake';
        final model = AuthenticationModel(
          code: 'code',
          accessToken: validToken,
        );
        await handler.saveAuthModel(model);

        final result = await handler.shouldRefreshToken();
        expect(result, true);
      });
    });

    group('isAuthenticatedForLogout', () {
      test('モデルがない場合、falseを返す', () async {
        final result = await handler.isAuthenticatedForLogout();
        expect(result, false);
      });

      test('nullトークンを持つモデルがある場合、falseを返す', () async {
        final model = AuthenticationModel(code: 'code', accessToken: null);
        await handler.saveAuthModel(model);

        final result = await handler.isAuthenticatedForLogout();
        expect(result, false);
      });

      test('空文字トークンを持つモデルがある場合、falseを返す', () async {
        final model = AuthenticationModel(code: 'code', accessToken: '');
        await handler.saveAuthModel(model);

        final result = await handler.isAuthenticatedForLogout();
        expect(result, false);
      });

      test('有効なトークンを持つモデルがある場合、trueを返す', () async {
        const validToken =
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJleHAiOjk5OTk5OTk5OTl9.fake';
        final model = AuthenticationModel(
          code: 'code',
          accessToken: validToken,
        );
        await handler.saveAuthModel(model);

        final result = await handler.isAuthenticatedForLogout();
        expect(result, true);
      });
    });

    group('integration tests', () {
      test('保存してから取得できる', () async {
        final modelToSave = AuthenticationModel(
          code: 'test_code',
          accessToken: 'test_token',
        );

        await handler.saveAuthModel(modelToSave);
        final retrievedModel = await handler.getStoredAuthModel();

        expect(retrievedModel, modelToSave);
      });

      test('保存後に削除すると取得できない', () async {
        final modelToSave = AuthenticationModel(
          code: 'test_code',
          accessToken: 'test_token',
        );

        await handler.saveAuthModel(modelToSave);
        expect(await handler.getStoredAuthModel(), isNotNull);

        await handler.clearAuthState();
        expect(await handler.getStoredAuthModel(), isNull);
      });

      test('複数モデルの管理が可能', () async {
        final model1 = AuthenticationModel(
          code: 'code1',
          accessToken: 'token1',
        );
        final model2 = AuthenticationModel(
          code: 'code2',
          accessToken: 'token2',
        );

        await handler.saveAuthModel(model1);
        expect(await handler.getStoredAuthModel(), model1);

        await handler.saveAuthModel(model2);
        expect(await handler.getStoredAuthModel(), model2);
      });
    });

    group('edge cases', () {
      test('AUTH_MODEL_KEY が正しく設定されている', () {
        expect(KeycloakAuthStateHandler.AUTH_MODEL_KEY, 'authstate');
      });

      test('ハンドラーのインスタンス化', () {
        expect(handler, isA<KeycloakAuthStateHandler>());
        expect(handler.readerWriter, fakeStorage);
      });

      test('複数のハンドラーインスタンスを使用できる', () {
        final handler2 = KeycloakAuthStateHandler(
          readerWriter: FakeStorageReaderWriter(),
        );

        expect(identical(handler, handler2), false);
      });

      test('nullableフィールドを含むモデルが保存できる', () async {
        final model = AuthenticationModel(code: null, accessToken: null);

        await handler.saveAuthModel(model);
        final retrieved = await handler.getStoredAuthModel();

        expect(retrieved, model);
      });
    });
  });
}
