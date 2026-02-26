import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/keycloak/server/callback/callback_server.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_server.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:pms_authenticator/storages/storage.dart';
import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_auth_state_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('KeycloakServer UI flow', () {
    late KeycloakUriModel uriModel;
    late SecureStorageReaderWriter storage;
    late KeycloakServer server;
    late CallbackServer callbackServer;
    String? authCode;

    final navigatorKey = GlobalKey<NavigatorState>();

    Future<void> showAlert(WidgetTester tester, String message) async {
      await tester.runAsync(() async {
        final context = navigatorKey.currentContext;
        if (context == null) return;
        await showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (_) => AlertDialog(
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      });
      await tester.pumpAndSettle();
    }

    setUp(() async {
      uriModel = KeycloakUriModel.generate(
        keycloakUrl: 'https://qmspi.local:8443',
        clientId: 'qual-app',
        realms: 'pms',
        redirectUrl: 'http://127.0.0.1:45035/callback',
        scopes: ['openid', 'profile', 'email'],
      );

      storage = SecureStorageReaderWriter(<String, dynamic>{});
      server = KeycloakServer.create(
        authUriModel: uriModel,
        readWriter: storage,
      );

      callbackServer = CallbackServer(url: 'http://127.0.0.1:45035/callback');
      await callbackServer.init(
        (code) {
          authCode = code;
        },
        failerDelegate: () {
          fail('Callback failed');
        },
      );
    });

    tearDown(() async {
      callbackServer.dispose();
      await server.dispose();
    });

    testWidgets('full interactive login/logout sequence', (
      WidgetTester tester,
    ) async {
      // build basic app with navigator key
      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigatorKey,
          home: const Scaffold(body: SizedBox.shrink()),
        ),
      );

      // 2. open webview
      // Plug‑in widgets are stubbed out so the example compiles on all
      // platforms; replace or uncomment the real implementations when running
      // on a device that supports the packages.
      Widget webview = SizedBox.shrink();
      // if (Platform.isWindows) {
      //   webview = WebViewWinFloating(
      //     initialUrl: uriModel.authorizationUrl.toString(),
      //     javascriptEnabled: true,
      //     navigationDelegate: (NavigationRequest req) {
      //       if (req.url.startsWith(uriModel.redirectUri)) {
      //         return NavigationDecision.prevent;
      //       }
      //       return NavigationDecision.navigate;
      //     },
      //   );
      // } else {
      //   webview = WebView(
      //     initialUrl: uriModel.authorizationUrl.toString(),
      //     javascriptMode: JavascriptMode.unrestricted,
      //     navigationDelegate: (NavigationRequest req) {
      //       if (req.url.startsWith(uriModel.redirectUri)) {
      //         return NavigationDecision.prevent;
      //       }
      //       return NavigationDecision.navigate;
      //     },
      //   );
      // }

      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigatorKey,
          home: Scaffold(body: webview),
        ),
      );

      await tester.pumpAndSettle();

      // wait for auth code
      final codeCompleter = Completer<void>();
      Timer.periodic(const Duration(seconds: 1), (t) {
        if (authCode != null) {
          t.cancel();
          codeCompleter.complete();
        }
      });
      await codeCompleter.future.timeout(
        const Duration(minutes: 5),
        onTimeout: () {
          fail('Timeout waiting for auth code');
        },
      );

      // 4. login
      final loginRes = await server.login(authCode!);
      expect(loginRes, isA<SuccessState<AuthStateType>>());
      await showAlert(tester, 'Login succeeded');

      // 5. show token expiry
      final stored = await storage.read<AuthenticationModel>(
        StorageConstant.TOKEN_STORAGE_KEY,
      );
      String expiryMsg;
      if (stored is Success<AuthenticationModel>) {
        expiryMsg = 'Expiry: ${stored.value.isAccessTokenExpired}';
      } else {
        expiryMsg = 'No token';
      }
      await showAlert(tester, expiryMsg);

      // 6. refresh
      await server.refreshToken();

      // 7. show expiry again
      final stored2 = await storage.read<AuthenticationModel>(
        StorageConstant.TOKEN_STORAGE_KEY,
      );
      String expiryMsg2;
      if (stored2 is Success<AuthenticationModel>) {
        expiryMsg2 =
            'Expiry after refresh: ${stored2.value.isAccessTokenExpired}';
      } else {
        expiryMsg2 = 'No token after refresh';
      }
      await showAlert(tester, expiryMsg2);

      // 8. ask logout
      await showAlert(tester, 'Perform logout?');

      // 9. logout
      await server.logout();

      // 10. check expiry null
      final stored3 = await storage.read<AuthenticationModel>(
        StorageConstant.TOKEN_STORAGE_KEY,
      );
      String expiryMsg3 = stored3 is Success<AuthenticationModel>
          ? 'Expiry after logout: ${stored3.value.isAccessTokenExpired}'
          : 'Token is null';
      await showAlert(tester, expiryMsg3);

      // 11 finish
      await showAlert(tester, 'End of flow');
    });
  });
}
