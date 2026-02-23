import 'dart:convert';
import 'dart:math';

import 'package:auther/core/auth_model/iauth_uri_model.dart';
import 'package:crypto/crypto.dart';

// ignore: constant_identifier_names
const String CHARENGE_METHOD = 'S256';
// ignore: constant_identifier_names
const List<String> DEFAULT_SCOPES = ['openid', 'profile', 'email'];

//Keycloak向けエントリーモデル
final class KeycloakUriModel implements IAuthUriModel {
  // Configuration
  final String keycloakUrl;
  final String realms;
  final String clientId;
  final String redirectUri;
  final String codeVerifier;
  final String codeChallenge;
  final int port;
  final int timeoutSec;
  final List<String> scopes;

  @override
  String toString() {
    return '{keycloakUrl: $keycloakUrl, realms: $realms, clientId: $clientId, redirectUri: $redirectUri, codeVerifier: $codeVerifier, codeChallenge: $codeChallenge, scopes: $scopes}';
  }

  //コンストラクタ
  KeycloakUriModel._(
    this.codeVerifier,
    this.codeChallenge, {
    required this.keycloakUrl,
    required this.realms,
    required this.clientId,
    required this.redirectUri,
    // ignore: unused_element_parameter
    this.port = 45035,
    // ignore: unused_element_parameter
    this.timeoutSec = 30,
    this.scopes = DEFAULT_SCOPES,
  });
  //URLパラメーター生成
  Map<String, dynamic> createUrlParameter() {
    final result = {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri.toString(),
      'scope': scopes.join(' '),
      'code_challenge': codeChallenge,
      'code_challenge_method': CHARENGE_METHOD,
    };
    return result;
  }

  // Authorization URL
  @override
  Uri get authorizationUrl {
    final uri = Uri.parse(
      '$keycloakUrl/realms/$realms/protocol/openid-connect/${IAuthUriModel.ENDPOINT_AUTH}',
    );
    final newUri = uri.replace(queryParameters: createUrlParameter());
    return newUri;
  }

  // Token URL
  @override
  Uri get tokenUrl {
    final uri = Uri.parse(
      '$keycloakUrl/realms/$realms/protocol/openid-connect/${IAuthUriModel.ENDPOINT_TOKEN}',
    );
    return uri;
  }

  // Logout URL
  @override
  Uri get logoutUrl {
    final uri = Uri.parse(
      '$keycloakUrl/realms/$realms/protocol/openid-connect/${IAuthUriModel.ENDPOINT_LOGOUT}',
    );
    return uri;
  }

  //モデル生成
  factory KeycloakUriModel.generate({
    required String keycloakUrl,
    required String realms,
    required String clientId,
    required String redirectUri,
    // ignore: unused_element_parameter
    int port = 45035,
    // ignore: unused_element_parameter
    int timeoutSec = 30,
    required List<String> scopes,
  }) {
    String urlEncode(List<int> bytes) =>
        base64UrlEncode(bytes).replaceAll('=', '');

    String generateCodeVerifier() {
      final random = Random.secure();
      final values = List<int>.generate(32, (i) => random.nextInt(256));
      return urlEncode(values);
    }

    String generateCodeChallenge(String verifier) {
      final bytes = utf8.encode(verifier);
      final digest = sha256.convert(bytes);
      return urlEncode(digest.bytes);
    }

    final v = generateCodeVerifier();
    final c = generateCodeChallenge(v);
    return KeycloakUriModel._(
      v,
      c,
      keycloakUrl: keycloakUrl,
      realms: realms,
      clientId: clientId,
      redirectUri: redirectUri,
      port: port,
      timeoutSec: timeoutSec,
      scopes: scopes,
    );
  }
}
