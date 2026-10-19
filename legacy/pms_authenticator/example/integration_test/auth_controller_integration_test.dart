import 'dart:async';

import 'package:pms_authenticator/auth_controller.dart';
import 'package:pms_authenticator/keycloak/model/keycloak_uri_model.dart';
import 'package:pms_authenticator/options/results/result.dart';
import 'package:pms_authenticator/storages/storage.dart';
import 'package:pms_authenticator/keycloak/server/keycloak/keycloak_auth_state_handler.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('AuthController UI flow', () {
    late KeycloakUriModel uriModel;
    late ProviderContainer container;
    late AuthController controller;
    late SecureStorageReaderWriter storage;

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
        // keycloakUrl: 'https://okp-04.local:8443',
        keycloakUrl: 'https://qmspi.local:8443',
        clientId: 'qual-app',
        realms: 'pms',
        redirectUrl: 'http://127.0.0.1:45035/callback',
        scopes: ['openid', 'profile', 'email'],
      );

      storage = SecureStorageReaderWriter(<String, dynamic>{});
      container = ProviderContainer();
      controller = container.read(authControllerProvider.notifier);

      await controller.init(
        authUrlroot: uriModel.keycloakUrl,
        realms: uriModel.realms,
        clientId: uriModel.clientId,
        redirectUrl: uriModel.redirectUri,
        logger: Logger(),
      );
    });

    tearDown(() async {
      container.dispose();
    });

    testWidgets('complete login/refresh/logout sequence', (
      WidgetTester tester,
    ) async {
      // prepare for state change detection
      final loginCompleter = Completer<void>();
      container.listen<AuthStateType>(authControllerProvider, (previous, next) {
        if (next != AuthStateType.signedOut) {
          loginCompleter.complete();
        }
      }, fireImmediately: true);

      // build a navigator for alerts
      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigatorKey,
          home: const Scaffold(body: SizedBox.shrink()),
        ),
      );

      // Instead of embedding a platform WebView (which may not be available
      // in this environment), provide a simple button that opens the
      // Keycloak authorization URL in the system browser. Manually perform
      // login there; the local callback server will capture the code.
      WebViewController? webViewController = WebViewController();
      webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
      await webViewController.loadRequest(uriModel.authorizationUri);
      Widget webview = Material(
        child: Scaffold(
          body: Stack(
            children: [WebViewWidget(controller: webViewController!)],
          ),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          navigatorKey: navigatorKey,
          home: Scaffold(body: webview),
        ),
      );

      await tester.pumpAndSettle();

      // wait until controller state leaves signedOut (login completed)
      await loginCompleter.future.timeout(
        const Duration(minutes: 2),
        onTimeout: () => fail('Timeout waiting for login'),
      );

      await showAlert(tester, 'Login succeeded');

      // show token expiry
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

      // refresh
      await controller.refreshToken();

      // show expiry again
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

      // ask logout
      await showAlert(tester, 'Perform logout?');

      // logout
      await controller.logout();

      // show expiry null
      final stored3 = await storage.read<AuthenticationModel>(
        StorageConstant.TOKEN_STORAGE_KEY,
      );
      String expiryMsg3 = stored3 is Success<AuthenticationModel>
          ? 'Expiry after logout: ${stored3.value.isAccessTokenExpired}'
          : 'Token is null';
      await showAlert(tester, expiryMsg3);

      // finish
      await showAlert(tester, 'End of flow');
    });
  });
}
