import 'package:baton_lib/baton_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'command_bus_provider.dart';
import 'feature_module.dart';
import 'locale_provider.dart';

/// 実体の台帳へ。[entityKey] は実体のキー(例: `unit`)。
final class EntityListDestination extends PageDestination<void> {
  const EntityListDestination(this.entityKey);

  final String entityKey;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'entityKey': entityKey};
}

/// 実体の編集へ。[id] が null なら新規。子の台帳の新規は [parentId] に所有する親の id。
final class EntityEditDestination extends PageDestination<void> {
  const EntityEditDestination(this.entityKey, {this.id, this.parentId});

  final String entityKey;
  final String? id;
  final String? parentId;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'entityKey': entityKey,
    'id': id,
    'parentId': parentId,
  };
}

/// 実体の画面共通の文字列。言語は [localeProvider] に従う。
///
/// 基準言語以外は遅延読み込みのため、読み込みが終わるまでは基準言語(日本語)を返す。
final entityScreenStringsProvider =
    NotifierProvider<EntityScreenStringsNotifier, EntityScreenStrings>(
      EntityScreenStringsNotifier.new,
    );

class EntityScreenStringsNotifier extends Notifier<EntityScreenStrings> {
  @override
  EntityScreenStrings build() {
    final languageCode = ref.watch(localeProvider).languageCode;
    final locale =
        EntityScreenLocale.values
            .where((l) => l.languageCode == languageCode)
            .firstOrNull ??
        EntityScreenLocale.ja;
    if (locale != EntityScreenLocale.ja) {
      locale.build().then((strings) {
        if (ref.mounted) state = strings;
      });
    }
    return EntityScreenLocale.ja.buildSync();
  }
}

/// 実体の定義から台帳・編集の画面を提供する機能の土台。
///
/// 継承する側(各機能のモジュール)は、実体の定義([definitions])、サンプル([seeds])、
/// 表示名([labelsOf])を渡すだけで、ルート・遷移先の変換・登録簿への登録が済む。
/// 取得元を GraphQL 版にするときは [repositories] を差し替える。
///
/// パス: 台帳 `/e/<キー>`、新規 `/e/<キー>/new`、編集 `/e/<キー>/<id>`
/// (子の台帳の新規は `?parent=<親のid>`。子の台帳に一覧のパスは無い)。
///
/// パターン: Template Method(画面の流れは土台、実体の中身は継承側が差し込む)
abstract class EntityFeatureModule implements FeatureModule {
  const EntityFeatureModule();

  /// この機能の全実体の定義(子の台帳を含む)。
  List<EntityDefinition> get definitions;

  /// 実体キー → サンプルの行。
  Map<String, List<EntityRecord>> get seeds => const {};

  /// 表示名。言語ごとの文字列は [ref] から読む。
  EntityLabels labelsOf(WidgetRef ref);

  /// 台帳から開ける実体(子の台帳を除く)のキー。
  List<String> get entityKeys => [
    for (final d in definitions)
      if (!d.isChild) d.key,
  ];

  /// 取得元。既定はサンプルのメモリ実装。
  List<IEntityRepository> repositories() => [
    for (final d in definitions) InMemoryEntityRepository(d, seeds[d.key]),
  ];

  /// 登録簿へ、この機能の実体を登録した後に行う追加の登録(参照先の選択肢など)。
  void registerLookups(EntityCatalog catalog, Ref ref) {}

  static String listPath(String entityKey) => '/e/$entityKey';
  static String newPath(String entityKey, {String? parentId}) =>
      parentId == null
      ? '/e/$entityKey/new'
      : '/e/$entityKey/new?parent=$parentId';
  static String editPath(String entityKey, String id) => '/e/$entityKey/$id';

  @override
  List<RouteBase> get routes => [
    for (final d in definitions)
      if (!d.isChild)
        GoRoute(
          path: listPath(d.key),
          builder: (context, state) => _list(d.key),
          routes: [
            // ':id' より先に置く('new' が id として解釈されないように)
            GoRoute(
              path: 'new',
              builder: (context, state) =>
                  _edit(d.key, null, state.uri.queryParameters['parent']),
            ),
            GoRoute(
              path: ':id',
              builder: (context, state) =>
                  _edit(d.key, state.pathParameters['id'], null),
            ),
          ],
        )
      else ...[
        GoRoute(
          path: newPath(d.key),
          builder: (context, state) =>
              _edit(d.key, null, state.uri.queryParameters['parent']),
        ),
        GoRoute(
          path: '/e/${d.key}/:id',
          builder: (context, state) =>
              _edit(d.key, state.pathParameters['id'], null),
        ),
      ],
  ];

  @override
  String? locationOf(PageDestination<Object?> destination) =>
      switch (destination) {
        EntityListDestination(:final entityKey)
            when entityKeys.contains(entityKey) =>
          listPath(entityKey),
        EntityEditDestination(:final entityKey, :final id, :final parentId)
            when definitions.any((d) => d.key == entityKey) =>
          id == null
              ? newPath(entityKey, parentId: parentId)
              : editPath(entityKey, id),
        _ => null,
      };

  @override
  void registerHandlers(CommandHandlerRegistry registry, Ref ref) {
    final catalog = ref.read(entityCatalogProvider);
    for (final repository in repositories()) {
      catalog.register(repository);
    }
    registerLookups(catalog, ref);
  }

  Widget _list(String key) => Consumer(
    builder: (context, ref, _) {
      final bus = ref.read(commandBusProvider);
      return EntityListPage(
        entityKey: key,
        scope: _scope(ref),
        onOpen: (r) => bus.execute(EntityEditDestination(key, id: r.id)),
        onCreate: () => bus.execute(EntityEditDestination(key)),
      );
    },
  );

  Widget _edit(String key, String? id, String? parentId) => Consumer(
    builder: (context, ref, _) {
      final bus = ref.read(commandBusProvider);
      return EntityEditPage(
        entityKey: key,
        id: id,
        parentId: parentId,
        scope: _scope(ref),
        onOpenChild: (childKey, childId, ownerId) => bus.execute(
          EntityEditDestination(childKey, id: childId, parentId: ownerId),
        ),
      );
    },
  );

  EntityScope _scope(WidgetRef ref) => EntityScope(
    catalog: ref.watch(entityCatalogProvider),
    labels: labelsOf(ref),
    strings: ref.watch(entityScreenStringsProvider),
  );
}
