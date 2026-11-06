// 裏設定のファイルを暗号化する。
//
//   dart run bin/config_generator.dart [入力] [出力] [--passphrase-file ファイル] [--decrypt] [--help]
//
// 入力・出力を省略すると、このフォルダの `backstage_config.json`(平文)を読み、
// `backstage_config.enc.json`(暗号化)を書く。パスフレーズは標準入力から読む。
import 'dart:convert';
import 'dart:io';

import 'package:config_generator/config_crypto.dart';

const defaultInput = 'backstage_config.json';
const defaultOutput = 'backstage_config.enc.json';

const _usage = '''
config_generator: 裏設定のファイルをパスフレーズで暗号化する(AES-256-GCM + PBKDF2-HMAC-SHA256)。

使い方:
  dart run bin/config_generator.dart [入力] [出力] [オプション]
  dart run bin/config_generator.dart --help

  入力       平文の設定(JSON)。省略すると、このフォルダの $defaultInput
  出力       暗号化した設定。省略すると、このフォルダの $defaultOutput
  --decrypt                     逆に、暗号化した設定を平文へ戻す(確認用。入力の既定は $defaultOutput、出力の既定は標準出力)
  --passphrase-file <ファイル>  パスフレーズをファイルの1行目から読む(省略すると標準入力。画面に出さない)
  --iterations <回数>           鍵導出の反復(既定 $defaultIterations)
  --help,-h                     このヘルプ

パスフレーズは、裏設定の入口のパスワードと同じにする(アプリは入口を通ったときのパスワードで復号する)。
平文の設定は、裏設定の項目そのもの(IDとパスワードは書かない):
  {"logLevel": "info", "isChangeUserImage": false}
平文のファイルは暗号化したあと削除する。パスフレーズはアプリのソース・アセットに書かない。
''';

String _passphrase(String? file) {
  if (file != null) {
    final lines = File(file).readAsLinesSync();
    return lines.isEmpty ? '' : lines.first;
  }
  stderr.write('パスフレーズ(= 裏設定の入口のパスワード): ');
  final hasTerminal = stdin.hasTerminal;
  final hadEcho = hasTerminal && stdin.echoMode;
  if (hasTerminal) stdin.echoMode = false;
  final line = stdin.readLineSync(encoding: utf8) ?? '';
  if (hasTerminal) {
    stdin.echoMode = hadEcho;
    stderr.writeln();
  }
  return line;
}

/// このツールのフォルダ(既定のファイルの置き場所)。`bin` の1つ上。
String _toolDir() {
  final script = Platform.script.toFilePath();
  final i = script.lastIndexOf(RegExp(r'[\\/]'));
  final bin = i < 0 ? '.' : script.substring(0, i);
  final j = bin.lastIndexOf(RegExp(r'[\\/]'));
  return j < 0 ? '.' : bin.substring(0, j);
}

int _fail(String message) {
  stderr.writeln(message);
  return 64;
}

int run(List<String> args) {
  if (args.contains('--help') || args.contains('-h')) {
    stdout.write(_usage);
    return 0;
  }
  final positional = <String>[];
  String? passFile;
  var decrypt = false;
  var iterations = defaultIterations;
  for (var i = 0; i < args.length; i++) {
    switch (args[i]) {
      case '--decrypt':
        decrypt = true;
      case '--passphrase-file':
        if (++i >= args.length) return _fail('--passphrase-file にファイルを指定してください。');
        passFile = args[i];
      case '--iterations':
        if (++i >= args.length) return _fail('--iterations に回数を指定してください。');
        final n = int.tryParse(args[i]);
        if (n == null || n < 1) return _fail('反復回数が正しくありません。');
        iterations = n;
      default:
        positional.add(args[i]);
    }
  }
  final dir = _toolDir();
  final sep = Platform.pathSeparator;
  final input = positional.isNotEmpty
      ? positional[0]
      : '$dir$sep${decrypt ? defaultOutput : defaultInput}';
  final output = positional.length > 1
      ? positional[1]
      : (decrypt ? null : '$dir$sep$defaultOutput');
  if (!File(input).existsSync()) {
    return _fail('入力のファイルがありません: $input(--help で使い方)');
  }
  try {
    final pass = _passphrase(passFile);
    final text = File(input).readAsStringSync();
    final result = decrypt
        ? decryptConfig(text, pass)
        : encryptConfig(text, pass, iterations: iterations);
    if (output == null) {
      stdout.writeln(result);
    } else {
      File(output).writeAsStringSync('$result\n');
      stderr.writeln('書き込みました: $output');
    }
    return 0;
  } on ConfigCryptoException catch (e) {
    return _fail(e.message);
  } on FormatException {
    return _fail('入力が JSON として読めません。');
  }
}

void main(List<String> args) => exit(run(args));
