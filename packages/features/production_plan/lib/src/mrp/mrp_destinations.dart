import 'package:baton_lib/baton_lib.dart';

/// 資材所要計算(MRP)の画面へ。
///
/// [redo] が true のとき、「再MRPとして実行する」にチェックを入れた状態で開く。
/// [orderDetailIds] は、再MRP の対象にする受注明細(`p_order_detail_ids`)。空のときは、すべての需要を作り直す。
/// 他の機能(計画変更の履歴など)が、変更のあった受注明細を指定して再MRP へ進むときに使う。
final class MrpDestination extends PageDestination<void> {
  const MrpDestination({this.redo = false, this.orderDetailIds = const []});

  final bool redo;
  final List<String> orderDetailIds;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'redo': redo,
    'orderDetailIds': orderDetailIds,
  };
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも1件足す。
const List<PageDestination<Object?>> mrpDestinationSamples = [
  MrpDestination(),
  MrpDestination(redo: true, orderDetailIds: ['order-detail-1']),
];
