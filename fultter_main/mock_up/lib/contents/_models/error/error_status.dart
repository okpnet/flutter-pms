import 'package:dart_mappable/dart_mappable.dart';
import 'package:mock_up/contents/_models/error/error_origin.dart';

import '../notice_model.dart';

part 'error_status.mapper.dart';

@MappableClass()
class ErrorStatus with ErrorStatusMappable implements INoticeModel {
  final ErrorOrigin erroOrigin;
  @override
  final String message;
  final String? className;
  final String? errorCode;
  final String? trace;

  const ErrorStatus({
    this.className,
    this.erroOrigin = ErrorOrigin.unknown,
    this.errorCode,
    this.message = '',
    this.trace,
  });
}
