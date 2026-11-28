import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app_example/checks/checks_store.dart';

void main() {
  late Directory dir;
  late ChecksStore store;

  setUp(() {
    dir = Directory.systemTemp.createTempSync('checks_');
    File('${dir.path}/0001.md').writeAsStringSync(
      '---\nno: 1\n場所: システム > 通貨\nパス: /e/currency\n状態: 未確認\n---\n\n## 基準\n基準の1行目\n2行目\n\n## 履歴\n- (記録なし)\n',
    );
    File('${dir.path}/0002.md').writeAsStringSync(
      '---\nno: 2\n場所: ログイン\n状態: 対応済   # 補足\n---\n\n## 基準\nタブで移動できる\n\n## 履歴\n- 過去の記録\n',
    );
    store = ChecksStore(dir);
  });
  tearDown(() => dir.deleteSync(recursive: true));

  test('一覧: 前書きと基準・履歴を読む。パスの前方一致で絞れる', () {
    final all = store.list();
    expect(all.map((i) => i.no), [1, 2]);
    expect(all[0].paths, ['/e/currency']);
    expect(all[0].criterion, '基準の1行目\n2行目');
    expect(all[1].status, '対応済');
    expect(store.forLocation('/e/currency/abc?x=1').map((i) => i.no), [1]);
    expect(store.forLocation('/e/unit'), isEmpty);
  });

  test('追記: 状態だけを書き換え、履歴は追記(複数行・画像つき)。前の履歴は残る', () {
    final item = store.list().first;
    final line = store.append(
      item,
      status: '不具合',
      comment: '1行目\n2行目',
      location: '/e/currency',
      screenshot: Uint8List.fromList([1, 2, 3]),
      now: DateTime(2026, 11, 28),
    );
    expect(line, contains('2026-11-28 確認(画面: /e/currency): 1行目\n  2行目 → 不具合'));
    final text = File('${dir.path}/0001.md').readAsStringSync();
    expect(text, contains('状態: 不具合'));
    expect(text, contains('- (記録なし)'));
    expect(text, contains('![画面](img/0001_1.png)'));
    expect(File('${dir.path}/img/0001_1.png').readAsBytesSync(), [1, 2, 3]);
    // 2回目の画像は連番
    store.append(store.list().first, status: '確認済', comment: '', screenshot: Uint8List.fromList([9]));
    expect(File('${dir.path}/img/0001_2.png').existsSync(), isTrue);
    expect(store.list().first.status, '確認済');
    expect(store.list().first.criterion, '基準の1行目\n2行目');
  });

  test('新規: 次の番号で作り、パスを結び付けられる', () {
    final n = store.create(place: '新しい画面', criterion: '表示される', path: '/e/new?a=1');
    expect(n.no, 3);
    expect(n.paths, ['/e/new']);
    final login = store.list().last == n ? store.list()[1] : store.list()[1];
    store.bindPath(login, '/auth/login?x=1');
    expect(store.list()[1].paths, ['/auth/login']);
    store.bindPath(store.list()[1], '/auth/other');
    expect(store.list()[1].paths, ['/auth/login', '/auth/other']);
  });

  test('保存先の探索: 指定がなければ上へたどり issue/checks を見つける', () {
    final root = Directory.systemTemp.createTempSync('root_');
    addTearDown(() => root.deleteSync(recursive: true));
    Directory('${root.path}/issue/checks').createSync(recursive: true);
    final deep = Directory('${root.path}/apps/x')..createSync(recursive: true);
    expect(ChecksStore.locate(from: deep)?.path.endsWith('checks'), isTrue);
    expect(ChecksStore.locate(defined: '${root.path}/none'), isNull);
  });
}
