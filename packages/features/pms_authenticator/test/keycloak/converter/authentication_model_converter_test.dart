import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pms_authenticator/core/auth_model/authentication_model.dart';
import 'package:pms_authenticator/keycloak/converter/authentication_model_converter.dart';

void main() {
  group('AuthenticationModelConverter', () {
    late AuthenticationModelConverter converter;

    setUp(() {
      converter = AuthenticationModelConverter();
    });

    group('convertToString', () {
      test('AuthenticationModelが正しくJSON文字列に変換される', () {
        final model = AuthenticationModel(
          code: 'test_code',
          accessToken: 'test_access_token',
        );

        final result = converter.convertToString(model);

        expect(result, isA<String>());
        final decoded = jsonDecode(result) as Map<String, dynamic>;
        expect(decoded['code'], 'test_code');
        expect(decoded['accessToken'], 'test_access_token');
      });

      test('nullableフィールドがnullの場合も正しく変換される', () {
        final model = AuthenticationModel(code: null, accessToken: null);

        final result = converter.convertToString(model);

        expect(result, isA<String>());
        final decoded = jsonDecode(result) as Map<String, dynamic>;
        expect(decoded['code'], isNull);
        expect(decoded['accessToken'], isNull);
      });

      test('すべてのフィールドが含まれている', () {
        final model = AuthenticationModel(
          code: 'authorization_code',
          accessToken: 'access_token_value',
        );

        final result = converter.convertToString(model);
        final decoded = jsonDecode(result) as Map<String, dynamic>;

        expect(decoded.containsKey('code'), true);
        expect(decoded.containsKey('accessToken'), true);
      });
    });

    group('convertFromString', () {
      test('JSON文字列が正しくAuthenticationModelに変換される', () {
        const jsonString =
            '{"code":"test_code","accessToken":"test_access_token"}';

        final result = converter.convertFromString(jsonString);

        expect(result, isA<AuthenticationModel>());
        expect(result.code, 'test_code');
        expect(result.accessToken, 'test_access_token');
      });

      test('nullableフィールドを含むJSON文字列が処理される', () {
        const jsonString = '{"code":null,"accessToken":null}';

        final result = converter.convertFromString(jsonString);

        expect(result.code, isNull);
        expect(result.accessToken, isNull);
      });

      test('部分的なフィールドを含むJSON文字列が処理される', () {
        const jsonString = '{"code":"partial_code"}';

        final result = converter.convertFromString(jsonString);

        expect(result.code, 'partial_code');
        expect(result.accessToken, isNull);
      });

      test('空のフィールドを含むJSON文字列が処理される', () {
        const jsonString = '{"code":"","accessToken":""}';

        final result = converter.convertFromString(jsonString);

        expect(result.code, '');
        expect(result.accessToken, '');
      });
    });

    group('round-trip conversion', () {
      test('AuthenticationModelが変換前後で同じになる', () {
        final originalModel = AuthenticationModel(
          code: 'test_code',
          accessToken: 'test_access_token',
        );

        final jsonString = converter.convertToString(originalModel);
        final convertedModel = converter.convertFromString(jsonString);

        expect(convertedModel.code, originalModel.code);
        expect(convertedModel.accessToken, originalModel.accessToken);
      });

      test('nullableフィールドを持つモデルがラウンドトリップで保持される', () {
        final originalModel = AuthenticationModel(
          code: 'code',
          accessToken: null,
        );

        final jsonString = converter.convertToString(originalModel);
        final convertedModel = converter.convertFromString(jsonString);

        expect(convertedModel.code, 'code');
        expect(convertedModel.accessToken, isNull);
      });

      test('すべてのフィールドがnullのモデルがラウンドトリップで保持される', () {
        final originalModel = AuthenticationModel(
          code: null,
          accessToken: null,
        );

        final jsonString = converter.convertToString(originalModel);
        final convertedModel = converter.convertFromString(jsonString);

        expect(convertedModel.code, isNull);
        expect(convertedModel.accessToken, isNull);
      });
    });

    group('edge cases', () {
      test('特殊文字を含む値が正しく処理される', () {
        final model = AuthenticationModel(
          code: 'test"code\'with\\special',
          accessToken: 'token\nwith\ttabs',
        );

        final jsonString = converter.convertToString(model);
        final convertedModel = converter.convertFromString(jsonString);

        expect(convertedModel.code, model.code);
        expect(convertedModel.accessToken, model.accessToken);
      });

      test('長い文字列が正しく処理される', () {
        final longToken = 'x' * 10000;
        final model = AuthenticationModel(code: 'code', accessToken: longToken);

        final jsonString = converter.convertToString(model);
        final convertedModel = converter.convertFromString(jsonString);

        expect(convertedModel.accessToken, longToken);
      });
    });
  });
}
