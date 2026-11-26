import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';

/// 自己署名の JWT(CI 用)のテスト。
/// 鍵と担当者の ID は `--dart-define` で渡したときだけ検証する(渡さなければ skip)。
///   flutter test test/test_token_self_signed_test.dart
///     --dart-define=PMS_TEST_JWT_SECRET=unit-test-secret
///     --dart-define=PMS_TEST_STAFF_ID=11111111-1111-1111-1111-111111111111
void main() {
  const secret = String.fromEnvironment('PMS_TEST_JWT_SECRET');
  const staffId = String.fromEnvironment('PMS_TEST_STAFF_ID');
  final configured = secret.isNotEmpty && staffId.isNotEmpty;

  test(
    '自己署名の JWT は、PostGraphile が検証できる形(HS256・role・aud・staff_id・exp)',
    () async {
      expect(TestToken.isSelfSigned, isTrue);
      final token = await TestToken.obtain();
      expect(token, isNotNull);
      expect(token!.staffId, staffId);
      expect(token.isUsable, isTrue);

      final parts = token.value.substring('Bearer '.length).split('.');
      expect(parts, hasLength(3));
      Map<String, dynamic> decode(String s) =>
          jsonDecode(utf8.decode(base64Url.decode(base64Url.normalize(s))));
      expect(decode(parts[0]), {'alg': 'HS256', 'typ': 'JWT'});
      final claims = decode(parts[1]);
      expect(claims['role'], 'pms_user');
      expect(claims['aud'], 'postgraphile');
      expect(claims['staff_id'], staffId);
      expect(claims['exp'], greaterThan(claims['iat']));

      // 署名: 同じ鍵で計算し直した値と一致する。
      final expected = base64Url
          .encode(
            Hmac(
              sha256,
              utf8.encode(secret),
            ).convert(utf8.encode('${parts[0]}.${parts[1]}')).bytes,
          )
          .replaceAll('=', '');
      expect(parts[2], expected);
    },
    skip: configured
        ? false
        : '--dart-define で PMS_TEST_JWT_SECRET・PMS_TEST_STAFF_ID を渡したときだけ',
  );
}
