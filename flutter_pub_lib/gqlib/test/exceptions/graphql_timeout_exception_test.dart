import 'package:flutter_test/flutter_test.dart';
import 'package:gqlib/gqlib.dart';

void main() {
  group('GraphqlTimeoutException', () {
    test('is an Exception', () {
      final exception = GraphqlTimeoutException(message: 'timed out');

      expect(exception, isA<Exception>());
    });

    test('exposes the message it was created with', () {
      final exception = GraphqlTimeoutException(message: 'query timed out after 10 seconds');

      expect(exception.message, 'query timed out after 10 seconds');
    });

    test('message defaults to null when not provided', () {
      final exception = GraphqlTimeoutException();

      expect(exception.message, isNull);
    });

    test('toString includes the message', () {
      final exception = GraphqlTimeoutException(message: 'boom');

      expect(exception.toString(), 'GraphqlTimeoutException: boom');
    });
  });
}
