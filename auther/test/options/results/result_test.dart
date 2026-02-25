import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:auther_controller/options/results/result.dart';

void main() {
  group('Result', () {
    group('factory constructors', () {
      test('Result.success で Success インスタンスが生成される', () {
        const value = 'test_value';
        final result = Result.success(value);

        expect(result, isA<Success<String>>());
        expect((result as Success<String>).value, value);
      });

      test('Result.warning で Warning インスタンスが生成される', () {
        final error = StateError('test_error');
        final result = Result.warning(error);

        expect(result, isA<Warning<dynamic>>());
        expect((result as Warning<dynamic>).error, error);
      });

      test('Result.failure で Failure インスタンスが生成される', () {
        final error = Exception('test_exception');
        final result = Result.failure(error);

        expect(result, isA<Failure<dynamic>>());
        expect((result as Failure<dynamic>).error, error);
      });
    });

    group('Success', () {
      test('Success は value を保持する', () {
        const value = 42;
        final success = Success(value);

        expect(success.value, value);
      });

      test('Success は Result のサブタイプ', () {
        final success = Success('test');

        expect(success, isA<Result<String>>());
      });

      test('複数の Success インスタンスは同じ値を持つ場合等価である', () {
        const value = 'same_value';
        final success1 = Success(value);
        final success2 = Success(value);

        expect(success1, success2);
      });

      test('異なる値の Success インスタンスは等価でない', () {
        final success1 = Success('value1');
        final success2 = Success('value2');

        expect(success1, isNot(success2));
      });

      test('Success は異なるジェネリック型をサポートする', () {
        final intSuccess = Success(123);
        final stringSuccess = Success('test');
        final listSuccess = Success([1, 2, 3]);

        expect(intSuccess.value, 123);
        expect(stringSuccess.value, 'test');
        expect(listSuccess.value, [1, 2, 3]);
      });

      test('Success は null 値を保持できる', () {
        final success = Success<String?>(null);

        expect(success.value, isNull);
      });
    });

    group('Warning', () {
      test('Warning は error を保持する', () {
        final error = StateError('warning_error');
        final warning = Warning(error);

        expect(warning.error, error);
      });

      test('Warning は Result のサブタイプ', () {
        final warning = Warning(StateError('test'));

        expect(warning, isA<Result<dynamic>>());
      });

      test('同じエラーを持つ Warning インスタンスは等価である', () {
        final error = StateError('same_error');
        final warning1 = Warning(error);
        final warning2 = Warning(error);

        expect(warning1, warning2);
      });

      test('異なるエラーを持つ Warning インスタンスは等価でない', () {
        final warning1 = Warning(StateError('error1'));
        final warning2 = Warning(StateError('error2'));

        expect(warning1, isNot(warning2));
      });

      test('Warning は異なる Error型をサポート', () {
        final stateError = Warning(StateError('state_error'));
        final argumentError = Warning(ArgumentError('arg_error'));

        expect(stateError.error, isA<StateError>());
        expect(argumentError.error, isA<ArgumentError>());
      });
    });

    group('Failure', () {
      test('Failure は error を保持する', () {
        final error = Exception('failure_error');
        final failure = Failure(error);

        expect(failure.error, error);
      });

      test('Failure は Result のサブタイプ', () {
        final failure = Failure(Exception('test'));

        expect(failure, isA<Result<dynamic>>());
      });

      test('同じエラーを持つ Failure インスタンスは等価である', () {
        final error = Exception('same_error');
        final failure1 = Failure(error);
        final failure2 = Failure(error);

        expect(failure1, failure2);
      });

      test('異なるエラーを持つ Failure インスタンスは等価でない', () {
        final failure1 = Failure(Exception('error1'));
        final failure2 = Failure(Exception('error2'));

        expect(failure1, isNot(failure2));
      });

      test('Failure はカスタム Exception をサポート', () {
        final customError = FormatException('custom_error');
        final failure = Failure(customError);

        expect(failure.error, isA<FormatException>());
      });

      test('Failure のエラーメッセージにアクセスできる', () {
        const errorMessage = 'test_error_message';
        final failure = Failure(Exception(errorMessage));

        expect(failure.error.toString(), contains(errorMessage));
      });
    });

    group('type discrimination', () {
      test('Success は他の Result 型と区別できる', () {
        final success = Result.success('value') as dynamic;
        final warning = Result.warning(StateError('error')) as dynamic;
        final failure = Result.failure(Exception('error')) as dynamic;

        expect(success, isA<Success<String>>());
        expect(warning, isA<Warning<dynamic>>());
        expect(failure, isA<Failure<dynamic>>());
      });

      test('factory で生成された Result は正しいバリアント型である', () {
        final success = Result.success(123);
        final warning = Result.warning(StateError('warn'));
        final failure = Result.failure(Exception('fail'));

        expect(success is Success<int>, true);
        expect(warning is Warning<dynamic>, true);
        expect(failure is Failure<dynamic>, true);
      });
    });

    group('immutability', () {
      test('Success インスタンスは変更不可である', () {
        final success = Success('immutable');

        expect(() => success.value, isNotNull);
      });

      test('Warning インスタンスは変更不可である', () {
        final error = StateError('immutable_error');
        final warning = Warning(error);

        expect(() => warning.error, isNotNull);
      });

      test('Failure インスタンスは変更不可である', () {
        final error = Exception('immutable_error');
        final failure = Failure(error);

        expect(() => failure.error, isNotNull);
      });
    });
  });

  group('ConnectStateResult', () {
    group('factory constructors', () {
      test('ConnectStateResult.success で SuccessState が生成される', () {
        const value = 'test_value';
        final result = ConnectStateResult.success(value);

        expect(result, isA<SuccessState<String>>());
        expect((result as SuccessState<String>).value, value);
      });

      test('ConnectStateResult.success のデフォルト statusCode は 200', () {
        final result = ConnectStateResult.success('value');

        expect(result.statusCode, 200);
      });

      test('ConnectStateResult.success でカスタム statusCode を設定できる', () {
        final result = ConnectStateResult.success('value', statusCode: 201);

        expect(result.statusCode, 201);
      });

      test('ConnectStateResult.failure で FailureState が生成される', () {
        final error = Exception('test_error');
        final result = ConnectStateResult.failure(error);

        expect(result, isA<FailureState<dynamic>>());
        expect((result as FailureState<dynamic>).error, error);
      });

      test('ConnectStateResult.failure のデフォルト statusCode は 500', () {
        final result = ConnectStateResult.failure(Exception('error'));

        expect(result.statusCode, 500);
      });

      test('ConnectStateResult.failure でカスタム statusCode を設定できる', () {
        final result = ConnectStateResult.failure(
          Exception('error'),
          statusCode: 404,
        );

        expect(result.statusCode, 404);
      });
    });

    group('SuccessState', () {
      test('SuccessState は value を保持する', () {
        const value = 'test_value';
        final state = SuccessState(value);

        expect(state.value, value);
      });

      test('SuccessState は statusCode を保持する', () {
        final state = SuccessState('value', statusCode: 201);

        expect(state.statusCode, 201);
      });

      test('SuccessState のデフォルト statusCode は 200', () {
        final state = SuccessState('value');

        expect(state.statusCode, 200);
      });

      test('SuccessState は ConnectStateResult のサブタイプ', () {
        final state = SuccessState('test');

        expect(state, isA<ConnectStateResult<String>>());
      });

      test('異なる値の SuccessState インスタンスは等価でない', () {
        final state1 = SuccessState('value1');
        final state2 = SuccessState('value2');

        expect(state1, isNot(state2));
      });

      test('同じ値でも異なる statusCode の SuccessState は等価でない', () {
        final state1 = SuccessState('value', statusCode: 200);
        final state2 = SuccessState('value', statusCode: 201);

        expect(state1, isNot(state2));
      });
    });

    group('FailureState', () {
      test('FailureState は error を保持する', () {
        final error = Exception('test_error');
        final state = FailureState(error);

        expect(state.error, error);
      });

      test('FailureState は statusCode を保持する', () {
        final state = FailureState(Exception('error'), statusCode: 404);

        expect(state.statusCode, 404);
      });

      test('FailureState のデフォルト statusCode は 500', () {
        final state = FailureState(Exception('error'));

        expect(state.statusCode, 500);
      });

      test('FailureState は ConnectStateResult のサブタイプ', () {
        final state = FailureState(Exception('test'));

        expect(state, isA<ConnectStateResult<dynamic>>());
      });

      test('異なるエラーの FailureState インスタンスは等価でない', () {
        final state1 = FailureState(Exception('error1'));
        final state2 = FailureState(Exception('error2'));

        expect(state1, isNot(state2));
      });
    });

    group('HTTP status codes', () {
      test('成功時の一般的な statusCode', () {
        final status200 = ConnectStateResult.success('data', statusCode: 200);
        final status201 = ConnectStateResult.success('data', statusCode: 201);
        final status204 = ConnectStateResult.success('data', statusCode: 204);

        expect(status200.statusCode, 200);
        expect(status201.statusCode, 201);
        expect(status204.statusCode, 204);
      });

      test('失敗時の一般的な statusCode', () {
        final status400 = ConnectStateResult.failure(
          Exception('bad request'),
          statusCode: 400,
        );
        final status401 = ConnectStateResult.failure(
          Exception('unauthorized'),
          statusCode: 401,
        );
        final status404 = ConnectStateResult.failure(
          Exception('not found'),
          statusCode: 404,
        );
        final status500 = ConnectStateResult.failure(
          Exception('server error'),
          statusCode: 500,
        );

        expect(status400.statusCode, 400);
        expect(status401.statusCode, 401);
        expect(status404.statusCode, 404);
        expect(status500.statusCode, 500);
      });
    });

    group('generic type support', () {
      test('SuccessState は複数の型サポート', () {
        final intState = SuccessState(123);
        final stringState = SuccessState('test');
        final listState = SuccessState([1, 2, 3]);

        expect(intState.value, 123);
        expect(stringState.value, 'test');
        expect(listState.value, [1, 2, 3]);
      });

      test('FailureState は複数の Exception型をサポート', () {
        final formatError = FailureState(FormatException('format_error'));
        final timeoutError = FailureState(TimeoutException('timeout'));
        final customError = FailureState(Exception('custom'));

        expect(formatError.error, isA<FormatException>());
        expect(timeoutError.error, isA<TimeoutException>());
        expect(customError.error, isA<Exception>());
      });
    });
  });
}
