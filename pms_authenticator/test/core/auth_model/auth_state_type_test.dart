import 'package:flutter_test/flutter_test.dart';
import 'package:pms_authenticator/core/auth_model/auth_state_type.dart';
import 'package:dart_mappable/dart_mappable.dart';

void main() {
  group('AuthStateType enum', () {
    test('toValue returns correct string for each enum value', () {
      expect(AuthStateType.authenticated.toValue(), 'authenticated');
      expect(AuthStateType.expired.toValue(), 'expired');
      expect(AuthStateType.signedOut.toValue(), 'signedOut');
      expect(AuthStateType.fail.toValue(), 'fail');
    });

    test('fromValue returns correct enum for each string', () {
      expect(
        AuthStateTypeMapper.fromValue('authenticated'),
        AuthStateType.authenticated,
      );
      expect(AuthStateTypeMapper.fromValue('expired'), AuthStateType.expired);
      expect(
        AuthStateTypeMapper.fromValue('signedOut'),
        AuthStateType.signedOut,
      );
      expect(AuthStateTypeMapper.fromValue('fail'), AuthStateType.fail);
    });

    test('round-trip conversion works', () {
      for (final v in AuthStateType.values) {
        final str = v.toValue();
        final back = AuthStateTypeMapper.fromValue(str);
        expect(back, v);
      }
    });

    test('unknown value throws MapperException', () {
      expect(
        () => AuthStateTypeMapper.fromValue('unknown_value'),
        throwsA(isA<MapperException>()),
      );
    });
  });
}
