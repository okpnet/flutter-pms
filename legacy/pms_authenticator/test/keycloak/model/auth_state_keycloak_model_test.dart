import 'package:flutter_test/flutter_test.dart';
import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:pms_authenticator/keycloak/model/auth_state_kyclaok_model.dart';

void main() {
  group('AuthStateKyclaokModel', () {
    group('constructor', () {
      test('全てのフィールドが正しく初期化される', () {
        const accessToken = 'test_access_token';
        const refreshToken = 'test_refresh_token';
        const tokenId = 'test_token_id';
        const code = 'test_code';

        final model = AuthStateKyclaokModel(
          accessToken: accessToken,
          refreshToken: refreshToken,
          tokenId: tokenId,
          code: code,
        );

        expect(model.accessToken, accessToken);
        expect(model.refreshToken, refreshToken);
        expect(model.tokenId, tokenId);
        expect(model.code, code);
      });

      test('nullableフィールドはnullで初期化できる', () {
        final model = AuthStateKyclaokModel(
          accessToken: null,
          refreshToken: null,
          tokenId: null,
          code: null,
        );

        expect(model.accessToken, isNull);
        expect(model.refreshToken, isNull);
        expect(model.tokenId, isNull);
        expect(model.code, isNull);
      });
    });

    group('fromResponse factory', () {
      test('正常なJSONレスポンスからインスタンスが作成される', () {
        const code = 'authorization_code';
        const body = '''{
          "access_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.test",
          "refresh_token": "refresh_test_token",
          "id_token": "id_test_token",
          "token_type": "Bearer",
          "expires_in": 3600
        }''';

        final model = AuthStateKyclaokModel.fromResponse(code, body);

        expect(model.accessToken, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.test');
        expect(model.refreshToken, 'refresh_test_token');
        expect(model.tokenId, 'id_test_token');
        expect(model.code, code);
      });

      test('オプショナルトークンがnullの場合でも処理される', () {
        const code = 'authorization_code';
        const body = '''{
          "access_token": "test_access_token",
          "token_type": "Bearer",
          "expires_in": 3600
        }''';

        final model = AuthStateKyclaokModel.fromResponse(code, body);

        expect(model.accessToken, 'test_access_token');
        expect(model.refreshToken, isNull);
        expect(model.tokenId, isNull);
        expect(model.code, code);
      });

      test('全てのトークンフィールドがnullの場合でも処理される', () {
        const code = 'authorization_code';
        const body = '''{
          "token_type": "Bearer",
          "expires_in": 3600
        }''';

        final model = AuthStateKyclaokModel.fromResponse(code, body);

        expect(model.accessToken, isNull);
        expect(model.refreshToken, isNull);
        expect(model.tokenId, isNull);
        expect(model.code, code);
      });
    });

    group('isAccessTokenExpired getter', () {
      test('accessTokenがnullの場合、signedOutが返される', () {
        final model = AuthStateKyclaokModel(
          accessToken: null,
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        expect(model.isAccessTokenExpired, AuthStateType.signedOut);
      });

      test('accessTokenが空文字の場合、signedOutが返される', () {
        final model = AuthStateKyclaokModel(
          accessToken: '',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        expect(model.isAccessTokenExpired, AuthStateType.signedOut);
      });

      test('accessTokenが有効な場合、authenticatedが返される', () {
        // 有効なJWTトークン（期限切れではない）
        final model = AuthStateKyclaokModel(
          accessToken:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJleHAiOjk5OTk5OTk5OTl9.fake',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        expect(model.isAccessTokenExpired, AuthStateType.authenticated);
      });
    });

    group('equality', () {
      test('同一プロパティのモデルは同じと見なされる', () {
        final model1 = AuthStateKyclaokModel(
          accessToken: 'access_token',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        final model2 = AuthStateKyclaokModel(
          accessToken: 'access_token',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        expect(model1, model2);
      });

      test('異なるopropertiesのモデルは異なる', () {
        final model1 = AuthStateKyclaokModel(
          accessToken: 'access_token_1',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        final model2 = AuthStateKyclaokModel(
          accessToken: 'access_token_2',
          refreshToken: 'refresh_token',
          tokenId: 'token_id',
          code: 'code',
        );

        expect(model1, isNot(model2));
      });
    });
  });
}
