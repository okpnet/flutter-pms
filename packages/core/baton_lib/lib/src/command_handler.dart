import 'action_command.dart';

/// [ActionCommand] を実行する機能側の処理。
abstract interface class ActionCommandHandler<C extends ActionCommand<R>, R> {
  Future<R> handle(C command);
}

/// 命令の型ごとに [ActionCommandHandler] を登録・解決する。
class CommandHandlerRegistry {
  final Map<Type, Future<Object?> Function(ActionCommand<Object?>)> _handlers =
      {};

  /// [C] の命令を [handler] で処理するよう登録する。同じ型は上書きされる。
  void register<C extends ActionCommand<R>, R>(
    ActionCommandHandler<C, R> handler,
  ) {
    _handlers[C] = (command) async => await handler.handle(command as C);
  }

  /// [command] の実行型に一致する処理。未登録なら null。
  Future<Object?> Function(ActionCommand<Object?>)? resolve(
    ActionCommand<Object?> command,
  ) => _handlers[command.runtimeType];
}
