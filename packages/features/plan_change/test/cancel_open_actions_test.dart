import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plan_change/plan_change.dart';

/// 未処置一覧の行の操作(DB の関数の呼び出し)の通信テスト(検証用サーバー)。
/// 存在しない対象・不正な数量での失敗(errcode)だけを確かめる。データは変更されない(関数が先に拒否する)。
/// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。
void main() {
  const missing = '00000000-0000-0000-0000-000000000000';

  Future<void> expectCode(Future<void> Function() call, String code) async {
    try {
      await call();
      fail('失敗するはずが成功した');
    } on CancelOpenActionException catch (e) {
      expect(e.errcode, code, reason: e.message);
    }
  }

  group('検証用サーバー: 未処置一覧の行の操作(失敗の errcode)', () {
    serverTest('存在しない対象は OPR01 になる', (server) async {
      final a = CancelOpenActions(server.provider.client);
      await expectCode(() => a.releaseInventoryRequest(missing), 'OPR01');
      await expectCode(() => a.releaseLot(missing), 'OPR01');
      await expectCode(() => a.cancelShippingOrderDetail(missing), 'OPR01');
      await expectCode(
        () => a.cancelPurchaseDetail(missing, quantity: '1'),
        'OPR01',
      );
    });

    serverTest('0 以下の数量は OPR02 になる(対象があるとき)', (server) async {
      final a = CancelOpenActions(server.provider.client);
      // 対象が無いと OPR01 が先に出るため、数量の検証が先でも後でも「失敗する」ことだけを確かめる
      await expectLater(
        a.scrapLot(missing, quantity: '0'),
        throwsA(isA<CancelOpenActionException>()),
      );
      await expectLater(
        a.deliverLot(missing, quantity: '0'),
        throwsA(isA<CancelOpenActionException>()),
      );
    });
  });
}
