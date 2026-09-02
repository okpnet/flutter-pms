import 'package:logger_lib/logger_lib.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger_provider/logger_provider.dart';

part 'app_logger.g.dart';

@Riverpod(keepAlive: true)
FutureOr<ILoggerProvider> loggerService(Ref ref) async {
  final logger = DefaultLoggerProvider.fromAsset('assets/logger_config.json');
  return logger;
}
