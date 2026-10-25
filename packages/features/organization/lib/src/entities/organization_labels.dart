// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

import '../i18n/strings_provider.dart';

/// 会社情報の実体と項目の表示名。言語ファイル(`lib/src/i18n`)の値を返す。
class OrganizationLabels implements EntityLabels {
  const OrganizationLabels(this._t);

  final OrganizationStrings _t;

  @override
  String entity(String entityKey) =>
      (_t['entity.$entityKey.title'] as String?) ?? entityKey;

  @override
  String field(String entityKey, String fieldKey) =>
      (_t['entity.$entityKey.fields.f_$fieldKey'] as String?) ?? fieldKey;
}
