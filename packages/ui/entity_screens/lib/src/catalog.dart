import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'definition.dart';
import 'record.dart';
import 'repository.dart';

/// 参照先の選択肢を返す処理。専用の画面を持つ実体(顧客・配送区分など)も、これで参照される側になれる。
typedef EntityOptionsLoader = Future<List<EntityOption>> Function();

/// アプリ全体の実体の登録簿。各機能が自分の実体を登録し、画面は実行時にここから引く。
///
/// 機能同士はコンパイル時に依存せず(参照先の実体が別の機能にあっても)、
/// 参照の選択肢・使用中の判定・子の台帳をキーで解決する。
///
/// パターン: Registry(実体のキーで定義・取得元を引く)
class EntityCatalog {
  final Map<String, IEntityRepository> _repositories = {};
  final Map<String, EntityOptionsLoader> _lookups = {};

  /// 実体を登録する。同じキーは後から登録したもので置き換える(GraphQL 版への差し替え)。
  void register(IEntityRepository repository) {
    _repositories[repository.definition.key] = repository;
  }

  /// 専用の画面を持つ実体を、参照先として登録する(選択肢だけ返す)。
  void registerLookup(String entityKey, EntityOptionsLoader loader) {
    _lookups[entityKey] = loader;
  }

  EntityDefinition? definition(String entityKey) =>
      _repositories[entityKey]?.definition;

  IEntityRepository? repository(String entityKey) => _repositories[entityKey];

  /// 登録済みの実体のキー。
  Iterable<String> get entityKeys => _repositories.keys;

  /// [ownerKey] を親として持つ子の実体。
  List<EntityDefinition> childrenOf(String ownerKey) => [
    for (final r in _repositories.values)
      if (r.definition.owner == ownerKey) r.definition,
  ];

  /// 参照先の選択肢。登録が無い実体は空(画面は値をそのまま表示する)。
  Future<List<EntityOption>> options(String entityKey) async {
    final lookup = _lookups[entityKey];
    if (lookup != null) return lookup();
    final repository = _repositories[entityKey];
    if (repository == null) return const [];
    final records = await repository.find(take: _all);
    return [
      for (final r in records)
        EntityOption(r.id, displayLabel(repository.definition, r)),
    ];
  }

  /// 他の実体から選ぶときの表示(先頭の2項目をつなぐ。例「I-1000 ユニットA」)。
  static String displayLabel(EntityDefinition definition, EntityRecord record) {
    final parts = [
      for (final f in definition.displayFields)
        if (record.valueOf(f.key).isNotEmpty) record.valueOf(f.key),
    ];
    return parts.isEmpty ? record.id : parts.join(' ');
  }

  /// 1件を削除する。配下(ツリーの子)や他の実体からの参照があれば [EntityInUseException]。
  /// 所有する子の台帳([EntityDefinition.owner])は、親と一緒に削除する。
  Future<void> delete(String entityKey, String id) async {
    final repository = _repositories[entityKey];
    if (repository == null) return;
    if (repository.definition.isTree &&
        (await repository.findByParent(id)).isNotEmpty) {
      throw EntityInUseException(entityKey, id, EntityBlockReason.hasChildren);
    }
    if (await _isReferenced(entityKey, id)) {
      throw EntityInUseException(entityKey, id, EntityBlockReason.referenced);
    }
    await _removeOwned(entityKey, id);
    await repository.remove(id);
  }

  Future<bool> _isReferenced(String entityKey, String id) async {
    for (final r in _repositories.values) {
      final fields = [
        for (final f in r.definition.fields)
          if (f.kind == FieldKind.reference && f.reference == entityKey) f,
      ];
      if (fields.isEmpty) continue;
      for (final record in await r.find(take: _all)) {
        if (fields.any((f) => record.valueOf(f.key) == id)) return true;
      }
    }
    return false;
  }

  Future<void> _removeOwned(String ownerKey, String ownerId) async {
    for (final child in childrenOf(ownerKey)) {
      final repository = _repositories[child.key]!;
      for (final record in await repository.findByParent(ownerId)) {
        await _removeOwned(child.key, record.id);
        await repository.remove(record.id);
      }
    }
  }

  static const _all = 100000;
}

/// 実体の登録簿。実体は各機能のモジュールが登録する。
final entityCatalogProvider = Provider<EntityCatalog>((ref) => EntityCatalog());
