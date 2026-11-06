// 裏設定の入口の条件(ユーザーIDとパスワード)のハッシュを作る。
//
//   dart run bin/config_user_generator.dart [反復回数] [--out ファイル] [--help]
//
// ユーザーIDとパスワードは標準入力から読む(コマンドラインの履歴に残さないため)。
// 出力の JSON(`{"entry": {...}}`)を、アプリのアセットの設定(`assets/backstage.json`)の `entry` に貼る。
import 'dart:convert';
import 'dart:io';

import 'package:config_user_generator/entry_hash.dart';

const _usage = '''
config_user_generator: 裏設定の入口(ユーザーIDとパスワード)のハッシュを作る。

使い方:
  dart run bin/config_user_generator.dart [反復回数] [--out <ファイル>]
  dart run bin/config_user_generator.dart --help

  反復回数   PBKDF2 の反復(既定 100000。大きいほど総当たりに強いが、ログインの判定が遅くなる)
  --out      結果をファイルへ書く(省略すると標準出力)
  --help,-h  このヘルプ

ユーザーIDとパスワードは標準入力から読む(パスワードは画面に出さない)。
出力の {"entry": {...}} を apps/pms_app/assets/backstage.json の "entry" に貼り、アプリを再起動する。
ハッシュは一方向で、元のIDとパスワードは取り出せない。変えるときは作り直して貼り替える。
''';

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
  if (args.contains('--help') || args.contains('-h')) {
    stdout.write(_usage);
    return;
  }
  var iterations = 100000;
  String? out;
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--out' && i + 1 < args.length) {
      out = args[++i];
    } else {
      final n = int.tryParse(args[i]);
      if (n == null || n < 1) {
        stderr.writeln('引数が正しくありません: ${args[i]}(--help で使い方)');
        exit(64);
      }
      iterations = n;
    }
  }
  final id = _read('ユーザーID: ');
  final password = _read('パスワード: ', hide: true);
  if (id.trim().isEmpty || password.isEmpty) {
    stderr.writeln('ユーザーIDとパスワードを入力してください。');
    exit(64);
  }
  final json = const JsonEncoder.withIndent('  ').convert({
    'entry': createEntry(id, password, iterations: iterations),
  });
  if (out == null) {
    stdout.writeln(json);
  } else {
    File(out).writeAsStringSync('$json\n');
    stderr.writeln('書き込みました: $out');
  }
}
