import 'condition.dart';
import 'package:data_strategist/lib.dart';
import 'package:uuid/uuid.dart';

import 'definition.dart';
import 'record.dart';

/// 実体の取得元(Repository)。一覧は [IDataRepository] で取得し、1件の取得・保存・削除を足す。
///
/// id は GraphQL の UUID を文字列として扱う。GraphQL 版は同じインターフェイスを実装し、
/// [EntityCatalog] への登録を差し替える。
abstract interface class IEntityRepository
    implements IDataRepository<List<EntityRecord>> {
  EntityDefinition get definition;

  Future<EntityRecord?> findById(String id);

  /// 所有する親([EntityDefinition.owner])またはツリーの親の子を返す。ツリーで null はトップ。
  Future<List<EntityRecord>> findByParent(String? parentId);

  /// 保存して保存後の値を返す。検証エラーは [EntityValidationException]。
  /// 空の id は新規(採番する)。
  Future<EntityRecord> save(EntityRecord record);

  /// 削除する(使用中かの判定は呼び出し側 [EntityCatalog.delete] が行う)。
  Future<void> remove(String id);
}

/// メモリ上の実装(サンプル・テスト用)。抽出条件・並び順は無視する
/// (絞り込みと並べ替えはテーブル側)。
class InMemoryEntityRepository implements IEntityRepository {
  InMemoryEntityRepository(this.definition, [List<EntityRecord>? seed])
    : _records = [...?seed];

  @override
  final EntityDefinition definition;

  final List<EntityRecord> _records;

  @override
  Future<List<EntityRecord>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async => _records.skip(skip).take(take).toList();

  @override
  Future<EntityRecord?> findById(String id) async {
    for (final r in _records) {
      if (r.id == id) return r;
    }
    return null;
  }

  @override
  Future<List<EntityRecord>> findByParent(String? parentId) async => [
    for (final r in _records)
      if (r.parentId == parentId) r,
  ];

  @override
  Future<EntityRecord> save(EntityRecord record) async {
    final errors = <String, EntityFieldError>{};
    final values = <String, String>{};
    for (final f in definition.fields) {
      final value = record.valueOf(f.key).trim();
      values[f.key] = value;
      final error = _validate(f, value);
      if (error != null) errors[f.key] = error;
    }
    if (definition.isTree && record.id.isNotEmpty && record.parentId != null) {
      if (await _isSelfOrDescendant(record.id, record.parentId!)) {
        errors[EntityValidationException.parentKey] =
            EntityFieldError.parentCycle;
      }
    }
    for (final key in definition.uniqueKeys) {
      if (key.any((k) => (values[k] ?? '').isEmpty)) continue;
      final duplicated = _records.any(
        (r) =>
            r.id != record.id &&
            // 所有される実体は同じ親の中、それ以外は全体で調べる
            (definition.owner == null || r.parentId == record.parentId) &&
            key.every((k) => r.valueOf(k) == values[k]),
      );
      if (duplicated) {
        errors.putIfAbsent(key.first, () => EntityFieldError.duplicate);
      }
    }
    if (errors.isNotEmpty) throw EntityValidationException(errors);

    final saved = EntityRecord(
      id: record.id.isEmpty ? const Uuid().v4() : record.id,
      values: values,
      parentId: record.parentId,
    );
    final i = _records.indexWhere((r) => r.id == saved.id);
    if (i >= 0) {
      _records[i] = saved;
    } else {
      _records.add(saved);
    }
    return saved;
  }

  @override
  Future<void> remove(String id) async =>
      _records.removeWhere((r) => r.id == id);

  /// [candidate] が [id] 自身かその子孫か(親にすると循環するか)。
  Future<bool> _isSelfOrDescendant(String id, String candidate) async {
    String? current = candidate;
    final seen = <String>{};
    while (current != null && seen.add(current)) {
      if (current == id) return true;
      current = (await findById(current))?.parentId;
    }
    return false;
  }

  EntityFieldError? _validate(FieldDefinition f, String value) {
    // 読み取り専用(集計)は、入力ではないので検証しない
    if (f.readOnly) return null;
    if (value.isEmpty) return f.required ? EntityFieldError.required : null;
    return switch (f.kind) {
      FieldKind.number =>
        num.tryParse(value) == null ? EntityFieldError.invalidNumber : null,
      FieldKind.date => _isDate(value) ? null : EntityFieldError.invalidDate,
      FieldKind.choice =>
        f.options.contains(value) ? null : EntityFieldError.invalidChoice,
      FieldKind.condition =>
        ConditionValue.tryParse(value) == null
            ? EntityFieldError.invalidCondition
            : null,
      _ => null,
    };
  }

  static bool _isDate(String value) {
    if (!RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(value)) return false;
    final d = DateTime.tryParse(value);
    return d != null &&
        '${d.year.toString().padLeft(4, '0')}-'
                '${d.month.toString().padLeft(2, '0')}-'
                '${d.day.toString().padLeft(2, '0')}' ==
            value;
  }
}
