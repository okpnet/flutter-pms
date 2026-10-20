import 'package:logger_provider/logger_provider.dart';

import 'action_command.dart';
import 'command_exception.dart';
import 'command_handler.dart';
import 'destination_navigator.dart';

/// 遷移もデータ操作も同じ入口で実行する。
abstract interface class CommandBus {
  Future<R> execute<R>(ActionCommand<R> command);
}

/// ログ・権限チェックなど横断処理。[next] を呼ぶと次の処理へ進む。
typedef CommandMiddleware =
    Future<Object?> Function(
      ActionCommand<Object?> command,
      Future<Object?> Function() next,
    );

/// [PageDestination] は [DestinationNavigator]、それ以外は
/// [CommandHandlerRegistry] へ振り分ける標準の [CommandBus]。
///
/// 失敗は [CommandExecutionException] にして投げ、[FailureOrigin] ごとに
/// ログへ残す(`[baton_lib]` 接頭辞付き)。
class DefaultCommandBus implements CommandBus {
  DefaultCommandBus({
    required this.handlers,
    required this.navigator,
    required ILoggerProvider logger,
    this.middlewares = const [],
  }) : _log = logger;

  final CommandHandlerRegistry handlers;
  final DestinationNavigator navigator;
  final List<CommandMiddleware> middlewares;
  final ILoggerProvider _log;

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    Future<Object?> current() => _dispatch<R>(command);

    // 先頭のミドルウェアが最外周になるよう後ろから包む。
    var chain = current;
    for (final middleware in middlewares.reversed) {
      final next = chain;
      chain = () => _runMiddleware(middleware, command, next);
    }
    return (await chain()) as R;
  }

  Future<Object?> _runMiddleware(
    CommandMiddleware middleware,
    ActionCommand<Object?> command,
    Future<Object?> Function() next,
  ) async {
    try {
      return await middleware(command, next);
    } on CommandExecutionException {
      rethrow; // 内側で記録済み
    } catch (e, s) {
      throw _fail(command, FailureOrigin.middleware, 'middleware failed', e, s);
    }
  }

  Future<Object?> _dispatch<R>(ActionCommand<R> command) async {
    if (command is PageDestination<R>) {
      try {
        return await navigator.navigate<R>(command);
      } catch (e, s) {
        throw _fail(command, FailureOrigin.navigator, 'navigation failed', e, s);
      }
    }
    final handler = handlers.resolve(command);
    if (handler == null) {
      throw _fail(command, FailureOrigin.library, 'no handler registered');
    }
    try {
      return await handler(command);
    } catch (e, s) {
      throw _fail(command, FailureOrigin.handler, 'handler failed', e, s);
    }
  }

  CommandExecutionException _fail(
    ActionCommand<Object?> command,
    FailureOrigin origin,
    String message, [
    Object? cause,
    StackTrace? stack,
  ]) {
    final exception = CommandExecutionException(
      command: command,
      origin: origin,
      message: message,
      cause: cause,
      causeStackTrace: stack,
    );
    _log.error(
      '[baton_lib] ${exception.toJson()}',
      ex: cause ?? exception,
      trace: stack ?? StackTrace.current,
    );
    return exception;
  }
}
