import 'dart:convert';
import 'dart:developer';
import 'dart:math' hide log;

import 'package:pms_authenticator/constant/server_constant.dart';
import 'package:pms_authenticator/constant/uri_constant.dart';
import 'package:pms_authenticator/core/auth_model/iauth_uri_model.dart';
import 'package:crypto/crypto.dart';

//Keycloak向けエントリーモデル
final class KeycloakUriModel implements IAuthUriModel {
  // Configuration
  final String keycloakUrl;
  final String realms;
  final String clientId;
  final String redirectUri;
  final String codeVerifier;
  final String codeChallenge;
  final int timeoutSec;
  final List<String> scopes;

  String get baseUrl =>
      '$keycloakUrl/${UriConstant.RELMS}/$realms/${UriConstant.PROTOCOL}/${UriConstant.OPNEID_CONNECT}';

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
    this.timeoutSec = ServerConstant.DEFAULT_TIMEOUT,
    this.scopes = UriConstant.DEFAULT_SCOPES,
  });
  //URLパラメーター生成
  Map<String, dynamic> createUrlParameter() {
    final result = {
      'response_type': 'code',
      'client_id': clientId,
      'redirect_uri': redirectUri.toString(),
      'scope': scopes.join(' '),
      'code_challenge': codeChallenge,
      'code_challenge_method': UriConstant.CHARENGE_METHOD,
    };
    return result;
  }

  // Authorization URL
  @override
  Uri get authorizationUri {
    final uri = Uri.parse('$baseUrl/${UriConstant.ENDPOINT_AUTH}');
    final newUri = uri.replace(queryParameters: createUrlParameter());
    return newUri;
  }

  // Token URL
  @override
  Uri get tokenUri {
    final uri = Uri.parse('$baseUrl/${UriConstant.ENDPOINT_TOKEN}');
    return uri;
  }

  // Logout URL
  @override
  Uri get logoutUri {
    final uri = Uri.parse('$baseUrl/${UriConstant.ENDPOINT_LOGOUT}');
    return uri;
  }

  //モデル生成
  factory KeycloakUriModel.generate({
    required String keycloakUrl,
    required String realms,
    required String clientId,
    required String redirectUrl,
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
      redirectUri: redirectUrl,
      timeoutSec: timeoutSec,
      scopes: scopes,
    );
  }
}
