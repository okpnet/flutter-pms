part of 'undo_command.dart';

typedef ValueCallback<T> = T Function();

class BehaviorCommand<T> implements IUndoCommand {
  final T undoValue;
  final T redoValue;
  final ExecuteCallback<T> undoExecute;
  final ExecuteCallback<T> redoExecute;

  BehaviorCommand({
    required ValueCallback<T> undoValueProvider,
    required ValueCallback<T> redoValueProvider,
    required this.undoExecute,
    required this.redoExecute,
  }) : undoValue = undoValueProvider(),
       redoValue = redoValueProvider();

  @override
  void redo() => redoExecute(redoValue);
  @override
  void undo() => undoExecute(undoValue);
}
