import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// 画面の文言(各機能の言語ファイル)に、利用者に見せない言葉が混ざらないことの検査。
///
/// 画面の文言から「UUID」「DB」「データベース」「PostgreSQL」「~」を除く方針(`issue/20261125_0001.md`)。
/// 対象は、`packages` の下の `lib/src/i18n/*.i18n.yaml` の値(コメント行は対象外)。
/// システム制作者だけが使う `backstage`(接続先の設定。GraphQL・PocketBase の名称を出す)は対象外。
void main() {
  final root = Directory('../../packages');
  final forbidden = RegExp(r'UUID|\bDB\b|データベース|PostgreSQL|~');
  const excluded = {'backstage'};

  List<File> files() => [
    for (final e in root.listSync(recursive: true))
      if (e is File &&
          e.path.replaceAll('\\', '/').contains('/lib/src/i18n/') &&
          e.path.endsWith('.i18n.yaml') &&
          !excluded.any((p) => e.path.replaceAll('\\', '/').contains('/$p/')))
        e,
  ];

  test('言語ファイルが見つかる(検査の対象が空でない)', () {
    expect(files().length, greaterThan(20));
  });

  test('画面の文言に、UUID・DB・データベース・PostgreSQL・~ を使わない', () {
    final found = <String>[];
    for (final f in files()) {
      final lines = f.readAsLinesSync();
      for (var i = 0; i < lines.length; i++) {
        final line = lines[i];
        if (line.trimLeft().startsWith('#')) continue;
        if (forbidden.hasMatch(line)) found.add('${f.path}:${i + 1}: ${line.trim()}');
      }
    }
    expect(found, isEmpty, reason: found.join('\n'));
  });
}
