import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rotation_log/rotation_log.dart';

part 'app_logger.g.dart';

@Riverpod(keepAlive: true)
FutureOr<Logger> loggerService(Ref ref) async {
  final _logRotation = RotationLogger(
    RotationLogTerm.day(1),
    options: RotationLogOptions(maxArchivedFiles: 10, fileNamePrefix: 'log'),
  );
  final _logger = Logger(output: RotationLogOutput(_logRotation));
  return _logger;
}
