import 'action_command.dart';

/// [PageDestination] を実画面遷移へ変換する。アプリ側がGoRouter等で実装する。
abstract interface class DestinationNavigator {
  Future<R> navigate<R>(PageDestination<R> destination);
}
