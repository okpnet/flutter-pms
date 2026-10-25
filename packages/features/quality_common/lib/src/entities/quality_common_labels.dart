// 生成物(tools/entity_gen/gen.js)。直接編集しない。
import 'package:entity_screens/entity_screens.dart';

import '../i18n/strings_provider.dart';

/// 品質共通の実体と項目の表示名。言語ファイル(`lib/src/i18n`)の値を返す。
class QualityCommonLabels implements EntityLabels {
  const QualityCommonLabels(this._t);

  final QualityCommonStrings _t;

  @override
  String entity(String entityKey) =>
      (_t['entity.$entityKey.title'] as String?) ?? entityKey;

  @override
  String field(String entityKey, String fieldKey) =>
      (_t['entity.$entityKey.fields.f_$fieldKey'] as String?) ?? fieldKey;

  @override
  String reverse(String entityKey, String reverseEntityKey) =>
      (_t['entity.$entityKey.reverse.$reverseEntityKey'] as String?) ??
      reverseEntityKey;

  /// トップメニューのグループの表示名。
  String get menuGroup => (_t['menu.group'] as String?) ?? '';
}
