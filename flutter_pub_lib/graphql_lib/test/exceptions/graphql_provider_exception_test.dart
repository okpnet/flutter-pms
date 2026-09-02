import 'package:flutter_test/flutter_test.dart';
import 'package:gqlib/gqlib.dart';

void main() {
  group('ProviderError', () {
    test('toString includes the type and message', () {
      final error = ProviderError('something went wrong');

      expect(error.message, 'something went wrong');
      expect(error.toString(), 'ProviderError:something went wrong');
      expect(error, isA<GraphqlProviderException>());
    });
  });

  group('NetworkError', () {
    test('toString includes the type and message', () {
      final error = NetworkError('no connection');

      expect(error.toString(), 'NetworkError:no connection');
    });
  });

  group('TimeoutError', () {
    test('toString includes the type and message', () {
      final error = TimeoutError('took too long');

      expect(error.toString(), 'TimeoutError:took too long');
    });
  });

  group('ServerError', () {
    test('exposes the status code and toString includes it', () {
      final error = ServerError('internal error', 500);

      expect(error.status, 500);
      expect(error.toString(), contains('status:500'));
      expect(error.toString(), contains('message:internal error'));
    });
  });

  group('DeveloperError', () {
    test('internalExeption defaults to null', () {
      final error = DeveloperError('bad usage');

      expect(error.internalExeption, isNull);
      expect(error.toString(), contains('mesage:bad usage'));
    });

    test('toString includes the wrapped internal exception', () {
      final inner = FormatException('malformed');
      final error = DeveloperError('bad format', internalExeption: inner);

      expect(error.internalExeption, same(inner));
      expect(error.toString(), contains('malformed'));
    });
  });
}
