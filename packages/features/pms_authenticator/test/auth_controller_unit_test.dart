import 'package:flutter_test/flutter_test.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';

void main() {
  group('AuthController unit tests', () {
    late KeycloakUriModel uriModel;

    setUp(() {
      uriModel = KeycloakUriModel.generate(
        keycloakUrl: 'https://qmspi.local:8443',
        clientId: 'qual-app',
        realms: 'pms',
        redirectUrl: 'http://127.0.0.1:45035/callback',
        scopes: ['openid', 'profile', 'email'],
      );
    });

    group('KeycloakUriModel', () {
      test('authorizationUrl is correctly generated', () {
        final url = uriModel.authorizationUri;
        expect(url.toString(), contains('https://qmspi.local:8443'));
        expect(url.toString(), contains('/realms/pms'));
        expect(url.toString(), contains('auth'));
      });

      test('tokenUri is correctly generated', () {
        final url = uriModel.tokenUri;
        expect(url.toString(), contains('https://qmspi.local:8443'));
        expect(url.toString(), contains('/realms/pms'));
        expect(url.toString(), contains('token'));
      });

      test('logoutUri is correctly generated', () {
        final url = uriModel.logoutUri;
        expect(url.toString(), contains('https://qmspi.local:8443'));
        expect(url.toString(), contains('/realms/pms'));
        expect(url.toString(), contains('logout'));
      });

      test('codeVerifier and codeChallenge are generated', () {
        expect(uriModel.codeVerifier, isNotEmpty);
        expect(uriModel.codeChallenge, isNotEmpty);
      });

      test('scopes are correctly set', () {
        expect(uriModel.scopes, contains('openid'));
        expect(uriModel.scopes, contains('profile'));
        expect(uriModel.scopes, contains('email'));
      });

      test('redirect URI is correctly set', () {
        expect(uriModel.redirectUri, 'http://127.0.0.1:45035/callback');
      });

      test('client ID is correctly set', () {
        expect(uriModel.clientId, 'qual-app');
      });

      test('realms is correctly set', () {
        expect(uriModel.realms, 'pms');
      });

      test('keycloak URL is correctly set', () {
        expect(uriModel.keycloakUrl, 'https://qmspi.local:8443');
      });
    });

    group('Authorization Flow parameters', () {
      test('createUrlParameter contains required OAuth2 parameters', () {
        final params = uriModel.createUrlParameter();

        expect(params['response_type'], 'code');
        expect(params['client_id'], 'qual-app');
        expect(params['redirect_uri'], 'http://127.0.0.1:45035/callback');
        expect(params['scope'], contains('openid'));
        expect(params['code_challenge'], isNotEmpty);
        expect(params['code_challenge_method'], 'S256');
      });

      test('authorizationUri includes all required parameters', () {
        final url = uriModel.authorizationUri;

        expect(url.queryParameters['response_type'], 'code');
        expect(url.queryParameters['client_id'], 'qual-app');
        expect(
          url.queryParameters['redirect_uri'],
          'http://127.0.0.1:45035/callback',
        );
        expect(url.queryParameters['scope'], isNotEmpty);
        expect(url.queryParameters['code_challenge'], isNotEmpty);
      });
    });

    group('PKCE Security', () {
      test('code_challenge_method is S256 for PKCE', () {
        final params = uriModel.createUrlParameter();
        expect(params['code_challenge_method'], 'S256');
      });

      test('codeChallenge and codeVerifier are not equal', () {
        expect(uriModel.codeChallenge, isNotEmpty);
        expect(uriModel.codeVerifier, isNotEmpty);
        expect(uriModel.codeChallenge != uriModel.codeVerifier, true);
      });

      test('each invocation generates different PKCE values', () {
        final model1 = KeycloakUriModel.generate(
          keycloakUrl: 'https://qmspi.local:8443',
          clientId: 'qual-app',
          realms: 'pms',
          redirectUrl: 'http://127.0.0.1:45035/callback',
          scopes: ['openid', 'profile', 'email'],
        );

        final model2 = KeycloakUriModel.generate(
          keycloakUrl: 'https://qmspi.local:8443',
          clientId: 'qual-app',
          realms: 'pms',
          redirectUrl: 'http://127.0.0.1:45035/callback',
          scopes: ['openid', 'profile', 'email'],
        );

        expect(model1.codeVerifier != model2.codeVerifier, true);
        expect(model1.codeChallenge != model2.codeChallenge, true);
      });
    });

    group('OAuth2/OIDC Compliance', () {
      test('authorizationUri uses HTTPS', () {
        final url = uriModel.authorizationUri;
        expect(url.scheme, 'https');
      });

      test('tokenUri uses HTTPS', () {
        final url = uriModel.tokenUri;
        expect(url.scheme, 'https');
      });

      test('logoutUri uses HTTPS', () {
        final url = uriModel.logoutUri;
        expect(url.scheme, 'https');
      });

      test('authorizationUri follows OpenID Connect standard path', () {
        final url = uriModel.authorizationUri.toString();
        expect(url, contains('/protocol/openid-connect/auth'));
      });

      test('tokenUri follows OpenID Connect standard path', () {
        final url = uriModel.tokenUri.toString();
        expect(url, contains('/protocol/openid-connect/token'));
      });

      test('logoutUri follows OpenID Connect standard path', () {
        final url = uriModel.logoutUri.toString();
        expect(url, contains('/protocol/openid-connect/logout'));
      });
    });

    group('Multi-realm support', () {
      test('different realms generate different URLs', () {
        final model1 = KeycloakUriModel.generate(
          keycloakUrl: 'https://keycloak.example.com',
          clientId: 'client1',
          realms: 'realm1',
          redirectUrl: 'http://localhost:3000/callback',
          scopes: ['openid'],
        );

        final model2 = KeycloakUriModel.generate(
          keycloakUrl: 'https://keycloak.example.com',
          clientId: 'client1',
          realms: 'realm2',
          redirectUrl: 'http://localhost:3000/callback',
          scopes: ['openid'],
        );

        expect(model1.authorizationUri.toString().contains('realm1'), true);
        expect(model2.authorizationUri.toString().contains('realm2'), true);
      });
    });

    group('Edge cases', () {
      test('multiple scopes are properly joined', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: 'https://keycloak.example.com',
          clientId: 'client',
          realms: 'realm',
          redirectUrl: 'http://localhost/callback',
          scopes: ['openid', 'profile', 'email', 'address', 'phone'],
        );

        final url = model.authorizationUri;
        final scope = url.queryParameters['scope'];

        expect(scope, contains('openid'));
        expect(scope, contains('profile'));
        expect(scope, contains('email'));
        expect(scope, contains('address'));
        expect(scope, contains('phone'));
      });

      test('special characters in redirect_uri are handled', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: 'https://keycloak.example.com',
          clientId: 'client',
          realms: 'realm',
          redirectUrl: 'https://app.example.com:8443/auth/callback?state=xyz',
          scopes: ['openid'],
        );

        final url = model.authorizationUri;
        expect(url.queryParameters['redirect_uri'], isNotEmpty);
      });

      test('custom timeout value is respected', () {
        final model = KeycloakUriModel.generate(
          keycloakUrl: 'https://keycloak.example.com',
          clientId: 'client',
          realms: 'realm',
          redirectUrl: 'http://localhost/callback',
          timeoutSec: 120,
          scopes: ['openid'],
        );

        expect(model.timeoutSec, 120);
      });
    });
  });
}
