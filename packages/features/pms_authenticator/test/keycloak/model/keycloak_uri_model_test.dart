import 'package:pms_authenticator/core/auth_model/iauth_uri_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_authenticator/constant/server_constant.dart';
import 'package:pms_authenticator/constant/uri_constant.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';

void main() {
  group('KeycloakUriModel', () {
    const String testKeycloakUrl = 'https://keycloak.example.com';
    const String testRealms = 'test-realm';
    const String testClientId = 'test-client-id';
    const String testRedirectUrl = 'https://app.example.com/callback';
    const List<String> testScopes = ['openid', 'profile', 'email'];

    group('generate factory method', () {
      test('すべての必須パラメータで正しく生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.keycloakUrl, testKeycloakUrl);
        expect(model.realms, testRealms);
        expect(model.clientId, testClientId);
        expect(model.redirectUri, testRedirectUrl);
        expect(model.scopes, testScopes);
      });

      test('デフォルトのタイムアウトが設定される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.timeoutSec, ServerConstant.DEFAULT_TIMEOUT);
      });

      test('カスタムのタイムアウトが設定される', () {
        const customTimeout = 60;
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          timeoutSec: customTimeout,
          scopes: testScopes,
        );

        expect(model.timeoutSec, customTimeout);
      });

      test('codeVerifierが生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.codeVerifier, isNotEmpty);
        expect(model.codeVerifier.length, greaterThan(0));
      });

      test('codeChallengeが生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.codeChallenge, isNotEmpty);
        expect(model.codeChallenge.length, greaterThan(0));
      });

      test('複数回の生成で異なるverifierとchallengeが生成される', () {
        final model1 = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final model2 = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model1.codeVerifier, isNot(model2.codeVerifier));
        expect(model1.codeChallenge, isNot(model2.codeChallenge));
      });
    });

    group('createUrlParameter', () {
      test('必須のパラメータが全て含まれる', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final params = model.createUrlParameter();

        expect(params.containsKey('response_type'), true);
        expect(params.containsKey('client_id'), true);
        expect(params.containsKey('redirect_uri'), true);
        expect(params.containsKey('scope'), true);
        expect(params.containsKey('code_challenge'), true);
        expect(params.containsKey('code_challenge_method'), true);
      });

      test('パラメータの値が正しく設定される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final params = model.createUrlParameter();

        expect(params['response_type'], 'code');
        expect(params['client_id'], testClientId);
        expect(params['redirect_uri'], testRedirectUrl);
        expect(params['code_challenge_method'], UriConstant.CHARENGE_METHOD);
      });

      test('scopeが正しく結合される', () {
        final customScopes = ['openid', 'profile', 'email', 'address'];
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: customScopes,
        );

        final params = model.createUrlParameter();

        expect(params['scope'], 'openid profile email address');
      });

      test('単一のscopeが正しく設定される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: ['openid'],
        );

        final params = model.createUrlParameter();

        expect(params['scope'], 'openid');
      });
    });

    group('authorizationUri', () {
      test('正しいエンドポイントを含むURLが生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.authorizationUri;

        expect(url.toString(), contains('/realms/$testRealms'));
        expect(
          url.toString(),
          contains('/protocol/openid-connect/${UriConstant.ENDPOINT_AUTH}'),
        );
      });

      test('URLにクエリパラメータが含まれる', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.authorizationUri;

        expect(url.queryParameters.containsKey('response_type'), true);
        expect(url.queryParameters.containsKey('client_id'), true);
        expect(url.queryParameters.containsKey('redirect_uri'), true);
        expect(url.queryParameters['client_id'], testClientId);
      });

      test('URLスキームがhttpsである', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.authorizationUri;

        expect(url.scheme, 'https');
      });
    });

    group('tokenUri', () {
      test('正しいエンドポイントを含むURLが生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.tokenUri;

        expect(url.toString(), contains('/realms/$testRealms'));
        expect(
          url.toString(),
          contains('/protocol/openid-connect/${UriConstant.ENDPOINT_TOKEN}'),
        );
      });

      test('URLクエリパラメータが含まれない', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.tokenUri;

        expect(url.queryParameters.isEmpty, true);
      });

      test('URLスキームがhttpsである', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.tokenUri;

        expect(url.scheme, 'https');
      });
    });

    group('logoutUri', () {
      test('正しいエンドポイントを含むURLが生成される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.logoutUri;

        expect(url.toString(), contains('/realms/$testRealms'));
        expect(
          url.toString(),
          contains('/protocol/openid-connect/${UriConstant.ENDPOINT_LOGOUT}'),
        );
      });

      test('URLクエリパラメータが含まれない', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.logoutUri;

        expect(url.queryParameters.isEmpty, true);
      });

      test('URLスキームがhttpsである', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final url = model.logoutUri;

        expect(url.scheme, 'https');
      });
    });

    group('toString', () {
      test('全てのフィールドを含む文字列が返される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final stringRepresentation = model.toString();

        expect(stringRepresentation, contains('keycloakUrl'));
        expect(stringRepresentation, contains('realms'));
        expect(stringRepresentation, contains('clientId'));
        expect(stringRepresentation, contains('redirectUri'));
        expect(stringRepresentation, contains('codeVerifier'));
        expect(stringRepresentation, contains('codeChallenge'));
        expect(stringRepresentation, contains('scopes'));
      });

      test('設定値が文字列に含まれる', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        final stringRepresentation = model.toString();

        expect(stringRepresentation, contains(testKeycloakUrl));
        expect(stringRepresentation, contains(testRealms));
        expect(stringRepresentation, contains(testClientId));
      });
    });

    group('edge cases', () {
      test('特殊文字を含むパラメータが正しく処理される', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: 'client-id-with-special:chars',
          redirectUrl: 'https://app.example.com/callback?param=value',
          scopes: testScopes,
        );

        final url = model.authorizationUri;

        expect(
          url.queryParameters['client_id'],
          'client-id-with-special:chars',
        );
      });

      test('複数スコープでのURL生成が正しく行われる', () {
        final scopes = [
          'openid',
          'profile',
          'email',
          'address',
          'phone',
          'offline_access',
        ];
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: scopes,
        );

        final url = model.authorizationUri;
        final scopeParam = url.queryParameters['scope'];

        for (final scope in scopes) {
          expect(scopeParam, contains(scope));
        }
      });

      test('異なるKeycloakサーバーURLが正しく処理される', () {
        const differentUrl = 'https://another-keycloak.example.com:8080';
        final model = KeycloakUriModel.generate(
          keycloakUrl: differentUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.authorizationUri.toString(), contains(differentUrl));
        expect(model.tokenUri.toString(), contains(differentUrl));
        expect(model.logoutUri.toString(), contains(differentUrl));
      });
    });

    group('IAuthUriModel implementation', () {
      test('IAuthUriModelインターフェースを実装している', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model, isA<IAuthUriModel>());
      });

      test('authorizationUri getterが存在する', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.authorizationUri, isA<Uri>());
      });

      test('tokenUri getterが存在する', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.tokenUri, isA<Uri>());
      });

      test('logoutUri getterが存在する', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: testKeycloakUrl,
          realms: testRealms,
          clientId: testClientId,
          redirectUrl: testRedirectUrl,
          scopes: testScopes,
        );

        expect(model.logoutUri, isA<Uri>());
      });
    });
  });
}
