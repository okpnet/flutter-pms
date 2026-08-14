import '../error/error.dart';
import 'time_sate.dart';

class AppTimeState {
  final TimeState? timeState;
  final SpecificError? exception;
  bool get isEnable => exception != null && timeState != null;
  bool get hasException => exception != null;
  AppTimeState({this.exception, this.timeState});
}
