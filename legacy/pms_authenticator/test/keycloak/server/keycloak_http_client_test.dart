import 'dart:io';
import 'dart:convert';

import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_http_client.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('KeycloakHttpClient', () {
    late HttpServer mockServer;
    late KeycloakHttpClient client;
    late KeycloakUriModel uriModel;

    setUp(() async {
      mockServer = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      final port = mockServer.port;
      uriModel = KeycloakUriModel.generate(
        keycloakUrl: 'http://127.0.0.1:$port',
        realms: 'realm',
        clientId: 'id',
        redirectUrl: 'http://example.com/callback',
        scopes: ['openid'],
      );
      client = KeycloakHttpClient(uriModel: uriModel);

      // request handler
      mockServer.listen((HttpRequest req) async {
        final path = req.uri.path;
        if (path.endsWith('/protocol/openid-connect/token')) {
          // respond based on query or body
          final body = await utf8.decoder.bind(req).join();
          if (body.contains('code=good')) {
            req.response
              ..statusCode = 200
              ..write(
                '{"access_token":"abc","refresh_token":"def","expires_in":3600}',
              );
          } else {
            req.response
              ..statusCode = 400
              ..write('bad');
          }
        } else if (path.endsWith('/protocol/openid-connect/logout')) {
          // read body to know whether to fail
          final body = await utf8.decoder.bind(req).join();
          if (body.contains('code=fail')) {
            req.response.statusCode = 400;
          } else {
            req.response.statusCode = 204;
          }
        } else {
          req.response.statusCode = 404;
        }
        await req.response.close();
      });
    });

    tearDown(() async {
      await mockServer.close(force: true);
    });

    test('post token 成功時', () async {
      final result = await client.post(PostType.token, 'good');
      expect(result, isA<SuccessState<AuthenticationModel>>());
      final success = result as SuccessState<AuthenticationModel>;
      expect(success.value.accessToken, isNotNull);
    });

    test('post token 失敗時', () async {
      final result = await client.post(PostType.token, 'badcode');
      expect(result, isA<FailureState<AuthenticationModel>>());
    });

    test('post logout 成功時', () async {
      final result = await client.post(PostType.logout, 'anything');
      expect(result, isA<SuccessState<AuthenticationModel>>());
    });

    test('post logout 失敗時', () async {
      // use a code that triggers failure flag in server body
      final result = await client.post(PostType.logout, 'fail');
      expect(result, isA<FailureState<AuthenticationModel>>());
    });
  });
}
