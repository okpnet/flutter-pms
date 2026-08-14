import 'package:dart_mappable/dart_mappable.dart';

import 'specific_error.dart';

part 'manipulation_error.mapper.dart';

@MappableClass()
class ManipulationError
    with ManipulationErrorMappable
    implements SpecificError {
  @override
  final Object? exception;

  @override
  final String? message;

  @override
  bool get hasException => exception != null;

  @override
  int get code => type.value + manipulationErrorCode.value;

  @override
  SpecificErrorCode get type => .manipulation;

  final ManipulationErrorCode manipulationErrorCode;
  ManipulationError(this.manipulationErrorCode, {this.exception, this.message});
}

@MappableEnum()
enum ManipulationErrorCode {
  timeManipulation(1); //ユーザーの不正な日時操作

  final int value;
  const ManipulationErrorCode(this.value);
}
