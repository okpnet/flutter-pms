import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:logger_provider/logger_provider.dart';

part 'app_logger.g.dart';

@Riverpod(keepAlive: true)
FutureOr<DefaultLoggerProvider> loggerService(Ref ref) async {
  final logger = DefaultLoggerProvider.fromAsset('assets/logger_config.json');
  return logger;
}
