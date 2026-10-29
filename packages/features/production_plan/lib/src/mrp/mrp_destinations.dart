import 'package:baton_lib/baton_lib.dart';

/// 資材所要計算(MRP)の画面へ。
final class MrpDestination extends PageDestination<void> {
  const MrpDestination();
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> mrpDestinationSamples = [MrpDestination()];
