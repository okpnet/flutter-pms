import 'event_argment.dart';

///データ変更タイプ
enum DataChangeEventType { undo, redo, observe }

/// データ変更イベント引数
abstract class IDataChangeArgment {
  ///変更タイプ
  DataChangeEventType get type;

  ///変更されたオブジェクト
  dynamic get payloadObject;
}

/// データ変更イベント引数
class DataChangeArgment<T> implements IStateChangeArgment, IDataChangeArgment {
  ///変更されたオブジェクト
  final T payload;

  ///変更タイプ
  @override
  final DataChangeEventType type;

  ///変更されたオブジェクト
  @override
  get payloadObject => payload;

  DataChangeArgment({required this.type, required this.payload});
}
