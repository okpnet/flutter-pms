import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// このパッケージは、ワークスペース内のどこからでも`dev_dependencies`にだけ書く。
/// `dependencies`に書くと、テスト用の接続先が本番のアプリに入ってしまうため。
void main() {
  test('data_test_harnessはdev_dependenciesにだけ書かれている', () {
    final root = _workspaceRoot();
    final violations = <String>[];
    for (final pubspec in _pubspecs(root)) {
      var section = '';
      final lines = pubspec.readAsLinesSync();
      for (var i = 0; i < lines.length; i++) {
        final line = lines[i];
        if (line.isNotEmpty && !line.startsWith(' ') && !line.startsWith('#')) {
          section = line.split(':').first;
        } else if (RegExp(r'^\s{2}data_test_harness:').hasMatch(line) &&
            section != 'dev_dependencies') {
          violations.add('${pubspec.path}:${i + 1} ($section)');
        }
      }
    }
    expect(violations, isEmpty, reason: 'dev_dependencies以外に書かれています');
  });
}

Directory _workspaceRoot() {
  var dir = Directory.current.absolute;
  while (!File(
        '${dir.path}${Platform.pathSeparator}melos_flutter_pms_workspace.iml',
      ).existsSync() &&
      !(File('${dir.path}${Platform.pathSeparator}pubspec.yaml').existsSync() &&
          Directory(
            '${dir.path}${Platform.pathSeparator}packages',
          ).existsSync())) {
    final parent = dir.parent;
    if (parent.path == dir.path) fail('ワークスペースのルートが見つかりません');
    dir = parent;
  }
  return dir;
}

Iterable<File> _pubspecs(Directory root) sync* {
  final sep = Platform.pathSeparator;
  for (final top in ['apps', 'packages']) {
    final dir = Directory('${root.path}$sep$top');
    if (!dir.existsSync()) continue;
    for (final e in dir.listSync(recursive: true, followLinks: false)) {
      if (e is! File || !e.path.endsWith('${sep}pubspec.yaml')) continue;
      // 生成物・取得済みパッケージ・example配下は対象外。
      if (e.path.contains('$sep.dart_tool$sep') ||
          e.path.contains('${sep}build$sep')) {
        continue;
      }
      yield e;
    }
  }
}
