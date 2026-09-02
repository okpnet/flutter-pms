import 'package:flutter_test/flutter_test.dart';
import 'package:gqlib/gqlib.dart';

void main() {
  group('Ok', () {
    test('exposes the wrapped value', () {
      final ok = Ok<Map<String, dynamic>>({'id': 1});

      expect(ok.value, {'id': 1});
    });

    test('toString includes the value', () {
      final ok = Ok<int>(42);

      expect(ok.toString(), 'Ok:42');
    });

    test('is a GraphqlProverResult', () {
      final ok = Ok<int>(1);

      expect(ok, isA<GraphqlProverResult<int>>());
    });
  });

  group('Err', () {
    test('exposes the error, graphqlErrors and partial data', () {
      final error = NetworkError('no connection');
      final err = Err<Map<String, dynamic>>(
        error,
        graphqlErrors: 'boom',
        data: {'partial': true},
      );

      expect(err.error, same(error));
      expect(err.graphqlErrors, 'boom');
      expect(err.data, {'partial': true});
    });

    test('graphqlErrors and data default to null', () {
      final err = Err<int>(ProviderError('failed'));

      expect(err.graphqlErrors, isNull);
      expect(err.data, isNull);
    });

    test('toString includes data, exception and graphql errors', () {
      final err = Err<String>(
        ServerError('bad request', 400),
        graphqlErrors: 'field error',
        data: 'partial-data',
      );

      final text = err.toString();
      expect(text, contains('partial-data'));
      expect(text, contains('ServerError'));
      expect(text, contains('field error'));
    });

    test('is a GraphqlProverResult', () {
      final err = Err<int>(TimeoutError('timed out'));

      expect(err, isA<GraphqlProverResult<int>>());
    });
  });
}
