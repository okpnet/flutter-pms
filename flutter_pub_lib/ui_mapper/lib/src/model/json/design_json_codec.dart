import 'dart:convert';

import '../design_document.dart';

class DesignJsonCodec {
  const DesignJsonCodec();
  int currentSchemaVersion

  String encode(DesignDocument document) => jsonEncode(document.toJson());

  DesignDocument decode(String source) {
    final map = jsonDecode(source) as Map<String, dynamic>;
    _assertSupportedVersion(map['schemaVersion'] as int);
    return DesignDocument.fromJson(map);
  }

  void _assertSupportedVersion(int version) {
    if (version > currentSchemaVersion) {
      throw FormatException('このバージョンのライブラリでは schemaVersion=$version を復元できません。');
    }
    // 将来: version < currentSchemaVersion の場合はここでマイグレーション処理を挟む
  }
}
