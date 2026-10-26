import 'dart:convert';

import 'package:pms_authenticator/constant/server_constant.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'auth_state_kyclaok_model.mapper.dart';

@MappableClass()
class AuthStateKyclaokModel extends AuthenticationModel
    with AuthStateKyclaokModelMappable {
  final String? tokenId;
  final String? refreshToken;

  AuthStateKyclaokModel({
    required super.accessToken,
    required this.refreshToken,
    required this.tokenId,
    required super.code,
  });

  factory AuthStateKyclaokModel.fromResponse(String code, String body) {
    final map = json.decode(body) as Map<String, dynamic>;
    return AuthStateKyclaokModel(
      accessToken: map[ServerConstant.RESPONSE_KEY_ACCTOKEN] as String?,
      refreshToken: map[ServerConstant.RESPONSE_KEY_REFTOKEN] as String?,
      tokenId: map[ServerConstant.RESPONSE_KEY_IDTOKEN] as String?,
      code: code,
    );
  }
}
