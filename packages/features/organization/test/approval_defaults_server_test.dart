import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:organization/organization.dart';

/// 標準の承認パターンの通信テスト(検証用サーバー)。画面のテスト(Flutter のテスト環境は通信を拒否する)とは別のファイルにする。
/// 「変更する」テストは、保存して読み直したあと、元の値に戻す(管理者の資格情報で実行する)。
void main() {
  serverTest('検証用サーバー(読み取りだけ): 標準の承認パターンと選択肢を取得できる', (server) async {
    final gw = GraphqlApprovalDefaultsGateway(server.provider.client);
    final d = await gw.load();
    final choices = await gw.patterns();
    for (final k in approvalDefaultKinds) {
      final id = d.of(k);
      if (id != null) expect(choices.any((c) => c.id == id), isTrue, reason: '$k の承認パターンが選択肢に無い'); // 外部キーで守られている
    }
  });

  serverTest('変更する: 標準の承認パターンを保存して読み直し、元の値に戻す(管理者の資格情報)', (server) async {
    final gw = GraphqlApprovalDefaultsGateway(server.provider.client);
    final original = await gw.load();
    final choices = await gw.patterns();
    if (choices.isEmpty) {
      markTestSkipped('承認パターンが無いため、書き込みのテストを中止した');
      return;
    }
    try {
      await gw.save(original.with_('order', choices.first.id));
      expect((await gw.load()).of('order'), choices.first.id);
      await gw.save(original.with_('order', null));
      expect((await gw.load()).of('order'), isNull);
    } finally {
      await gw.save(original); // 元の値に戻す
    }
    expect((await gw.load()).toMap(), original.toMap());
  });
}
