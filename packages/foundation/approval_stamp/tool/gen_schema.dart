// 設定のスキーマ(Dart の定義)を、schema/app_settings.schema.json に書き出す。実行: dart run tool/gen_schema.dart
import 'dart:io';

import 'package:approval_stamp/approval_stamp.dart';

void main() {
  File('schema/app_settings.schema.json').writeAsStringSync('$appSettingsSchemaJson\n');
  stdout.writeln('schema/app_settings.schema.json を書き出しました');
}
