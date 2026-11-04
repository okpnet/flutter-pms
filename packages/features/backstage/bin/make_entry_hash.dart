// 裏設定の入口の条件(ユーザーIDとパスワード)のハッシュを作る。
//
//   dart run backstage:make_entry_hash
//
// ユーザーIDとパスワードは、標準入力から読む(コマンドラインの履歴に残さないため)。
// 出力の JSON を、アプリのアセット(`assets/backstage.json`)の `entry` に貼る。
// IDとパスワードそのものは、ソース・アセットに書かない。
import 'dart:convert';
import 'dart:io';

import 'package:backstage/src/entry/entry_hash.dart';

String _read(String prompt, {bool hide = false}) {
  stderr.write(prompt);
  final hadEcho = stdin.hasTerminal && stdin.echoMode;
  if (hide && stdin.hasTerminal) stdin.echoMode = false;
  final line = stdin.readLineSync(encoding: utf8) ?? '';
  if (hide && stdin.hasTerminal) {
    stdin.echoMode = hadEcho;
    stderr.writeln();
  }
  return line;
}

void main(List<String> args) {
  final iterations = args.isNotEmpty
      ? int.tryParse(args.first) ?? EntryHash.defaultIterations
      : EntryHash.defaultIterations;
  final id = _read('ユーザーID: ');
  final password = _read('パスワード: ', hide: true);
  if (id.trim().isEmpty || password.isEmpty) {
    stderr.writeln('ユーザーIDとパスワードを入力してください。');
    exit(64);
  }
  final hash = EntryHash.create(id, password, iterations: iterations);
  stdout.writeln(const JsonEncoder.withIndent('  ').convert({'entry': hash.toJson()}));
}
