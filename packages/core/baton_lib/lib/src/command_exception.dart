import 'action_command.dart';

/// 例外の発生元。アプリ・機能ライブラリ・本ライブラリを切り分ける。
enum FailureOrigin { library, middleware, handler, navigator }

/// 命令の実行失敗。[cause] に元の例外を保持する。
class CommandExecutionException implements Exception {
  const CommandExecutionException({
    required this.command,
    required this.origin,
    required this.message,
    this.cause,
    this.causeStackTrace,
  });

  final ActionCommand<Object?> command;
  final FailureOrigin origin;
  final String message;
  final Object? cause;
  final StackTrace? causeStackTrace;

  Map<String, Object?> toJson() => {
    'type': 'CommandExecutionException',
    'origin': origin.name,
    'message': message,
    'command': command.toJson(),
    'cause': cause?.toString(),
  };

  @override
  String toString() => 'CommandExecutionException(${toJson()})';
}
