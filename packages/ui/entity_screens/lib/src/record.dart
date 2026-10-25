/// 実体の1件。値はすべて文字列で持つ(種類ごとの検証はリポジトリが行う)。
class EntityRecord {
  const EntityRecord({required this.id, required this.values, this.parentId});

  /// GraphQL の UUID を文字列として扱う。
  final String id;

  /// 項目のキー → 値。参照は参照先の id、選択は選択肢の文字列。
  final Map<String, String> values;

  /// 所有する親の id(子の台帳)、またはツリーの親の id(トップは null)。
  final String? parentId;

  String valueOf(String key) => values[key] ?? '';

  EntityRecord copyWith({Map<String, String>? values, String? parentId}) =>
      EntityRecord(
        id: id,
        values: values ?? this.values,
        parentId: parentId ?? this.parentId,
      );

  /// 親を外した(トップにした)コピー。
  EntityRecord withoutParent() => EntityRecord(id: id, values: values);

  /// エラー追跡用のJSON。復元には使用しない。
  Map<String, Object?> toJson() => {
    'id': id,
    'parentId': parentId,
    'values': values,
  };
}

/// 参照先として選ぶときの1件。
class EntityOption {
  const EntityOption(this.id, this.label);

  final String id;
  final String label;

  Map<String, Object?> toJson() => {'id': id, 'label': label};
}

/// 検証エラーの種類(画面が文字列に変換する)。
enum EntityFieldError {
  required,
  invalidNumber,
  invalidDate,
  invalidChoice,

  /// 条件(演算子 + 値)として読めない。
  invalidCondition,
  parentCycle,

  /// 重複を認めない項目の組([EntityDefinition.uniqueKeys])が、ほかの1件と同じ。
  duplicate,
}

/// 入力の検証に失敗したときの例外。項目のキー(親は `_parent`)ごとのエラーを持つ。
class EntityValidationException implements Exception {
  const EntityValidationException(this.errors);

  /// 親(ツリー)に関するエラーのキー。
  static const parentKey = '_parent';

  final Map<String, EntityFieldError> errors;

  @override
  String toString() => 'EntityValidationException($errors)';
}

/// 削除できない理由。
enum EntityBlockReason { hasChildren, referenced }

/// 他で使用中などで削除できないときの例外。
class EntityInUseException implements Exception {
  const EntityInUseException(this.entityKey, this.id, this.reason);

  final String entityKey;
  final String id;
  final EntityBlockReason reason;

  @override
  String toString() => 'EntityInUseException($entityKey, $id, ${reason.name})';
}
