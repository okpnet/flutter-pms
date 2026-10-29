import 'package:baton_lib/baton_lib.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'command_bus_provider.dart';
import 'feature_module.dart';
import 'locale_provider.dart';
import 'menu.dart';

/// 実体の台帳へ。[entityKey] は実体のキー(例: `unit`)。
///
/// [filter] は絞り込み(項目のキー → 値)。同じ実体を役割ごとの台帳として開くときに使う
/// (例: 利害関係者のうち `is_customer: はい` が顧客台帳)。新規登録の初期値にも引き継ぐ。
final class EntityListDestination extends PageDestination<void> {
  const EntityListDestination(this.entityKey, {this.filter = const {}});

  final String entityKey;
  final Map<String, String> filter;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'entityKey': entityKey,
    'filter': filter,
  };
}

/// 実体の台帳を開いて 1 件を選び、その id を返す(取り消しは null)。
///
/// 別の機能の実体を選ぶとき(例: 設備が品目を選ぶ)に、機能同士がコンパイル時に依存せず、
/// 実体のキーだけで使う。選択の結果は CommandBus で受け取る。
final class EntityPickerDestination extends PageDestination<String?> {
  const EntityPickerDestination(this.entityKey);

  final String entityKey;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'entityKey': entityKey};
}

/// 実体の編集へ。[id] が null なら新規。子の台帳の新規は [parentId] に所有する親の id。
/// 新規のとき、[initialValues] が項目の初期値になる。
final class EntityEditDestination extends PageDestination<void> {
  const EntityEditDestination(
    this.entityKey, {
    this.id,
    this.parentId,
    this.initialValues = const {},
  });

  final String entityKey;
  final String? id;
  final String? parentId;
  final Map<String, String> initialValues;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'entityKey': entityKey,
    'id': id,
    'parentId': parentId,
    'initialValues': initialValues,
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
abstract class EntityFeatureModule implements FeatureModule, MenuContributor {
  const EntityFeatureModule();

  /// この機能の全実体の定義(子の台帳を含む)。
  List<EntityDefinition> get definitions;

  /// 実体キー → サンプルの行。
  Map<String, List<EntityRecord>> get seeds => const {};

  /// 表示名。言語ごとの文字列は [ref] から読む。
  EntityLabels labelsOf(WidgetRef ref);

  /// 台帳の見出し。絞り込み([filter])ごとに変えたいときに差し替える。null は実体の名称。
  String? listTitle(
    WidgetRef ref,
    String entityKey,
    Map<String, String> filter,
  ) => null;

  /// ツリーの台帳の親の付け替え(ドラッグ&ドロップ)を受けるハンドラ。null なら付け替えを有効にしない。
  /// 更新と検証(循環・権限)は、継承する側が実装する。
  Future<void> Function(EntityRecord item, EntityRecord? newParent)?
  reparentHandler(WidgetRef ref, String entityKey) => null;

  /// トップメニューのグループの識別子。空のときはメニューに出さない。
  String get menuGroupId => '';

  /// トップメニューのグループの表示名(言語ごと)。
  String menuGroupLabel(WidgetRef ref) => '';

  @override
  List<MenuEntry> menuEntries(WidgetRef ref) {
    if (menuGroupId.isEmpty) return const [];
    final labels = labelsOf(ref);
    final group = menuGroupLabel(ref);
    return [
      for (final key in entityKeys)
        MenuEntry(
          groupId: _menuGroupOf(key),
          groupLabel: _menuGroupOf(key) == menuGroupId
              ? group
              : menuGroupLabelFor(ref, _menuGroupOf(key)),
          label: labels.entity(key),
          destination: EntityListDestination(key),
        ),
    ];
  }

  String _menuGroupOf(String key) =>
      definitions.where((d) => d.key == key).firstOrNull?.nest?.menuGroup ??
      menuGroupId;

  /// 別のグループ(表の中の表の [NestedList.menuGroup])の表示名。機能が言語ごとの文字列で返す。
  String menuGroupLabelFor(WidgetRef ref, String groupId) => groupId;

  /// 台帳から開ける実体のキー(子の台帳を除く。表の中の表で出す子の台帳は含む)。
  List<String> get entityKeys => [
    for (final d in definitions)
      if (!d.isChild || d.nest != null) d.key,
  ];

  /// 取得元。既定はサンプルのメモリ実装。
  List<IEntityRepository> repositories() => [
    for (final d in definitions) InMemoryEntityRepository(d, seeds[d.key]),
  ];

  /// 登録簿へ、この機能の実体を登録した後に行う追加の登録(参照先の選択肢など)。
  void registerLookups(EntityCatalog catalog, Ref ref) {}

  static const _filterPrefix = 'f.';
  static const _initialPrefix = 'd.';

  static String listPath(
    String entityKey, {
    Map<String, String> filter = const {},
  }) => Uri(
    path: '/e/$entityKey',
    queryParameters: filter.isEmpty
        ? null
        : {for (final e in filter.entries) '$_filterPrefix${e.key}': e.value},
  ).toString();
  static String newPath(
    String entityKey, {
    String? parentId,
    Map<String, String> initialValues = const {},
  }) {
    final query = {
      'parent': ?parentId,
      for (final e in initialValues.entries) '$_initialPrefix${e.key}': e.value,
    };
    return Uri(
      path: '/e/$entityKey/new',
      queryParameters: query.isEmpty ? null : query,
    ).toString();
  }

  static Map<String, String> _withPrefix(Uri uri, String prefix) => {
    for (final e in uri.queryParameters.entries)
      if (e.key.startsWith(prefix)) e.key.substring(prefix.length): e.value,
  };
  static String editPath(String entityKey, String id) => '/e/$entityKey/$id';
  static String pickPath(String entityKey) => '/e/$entityKey/pick';

  @override
  List<RouteBase> get routes => [
    for (final d in definitions)
      if (!d.isChild)
        GoRoute(
          path: listPath(d.key),
          builder: (context, state) =>
              _list(d.key, _withPrefix(state.uri, _filterPrefix)),
          routes: [
            // ':id' より先に置く('new'・'pick' が id として解釈されないように)
            GoRoute(path: 'pick', builder: (context, state) => _pick(d.key)),
            GoRoute(
              path: 'new',
              builder: (context, state) => _edit(
                d.key,
                null,
                state.uri.queryParameters['parent'],
                _withPrefix(state.uri, _initialPrefix),
              ),
            ),
            GoRoute(
              path: ':id',
              builder: (context, state) =>
                  _edit(d.key, state.pathParameters['id'], null),
            ),
          ],
        )
      else ...[
        if (d.nest != null)
          GoRoute(
            path: listPath(d.key),
            builder: (context, state) => _nested(d.key),
          ),
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
        EntityListDestination(:final entityKey, :final filter)
            when entityKeys.contains(entityKey) =>
          listPath(entityKey, filter: filter),
        EntityPickerDestination(:final entityKey)
            when entityKeys.contains(entityKey) =>
          pickPath(entityKey),
        EntityEditDestination(
          :final entityKey,
          :final id,
          :final parentId,
          :final initialValues,
        )
            when definitions.any((d) => d.key == entityKey) =>
          id == null
              ? newPath(
                  entityKey,
                  parentId: parentId,
                  initialValues: initialValues,
                )
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

  Widget _list(String key, Map<String, String> filter) => Consumer(
    builder: (context, ref, _) {
      final bus = ref.read(commandBusProvider);
      return EntityListPage(
        // 絞り込みが変わったら(顧客台帳 ↔ 外部供給者台帳)画面を作り直す
        key: ValueKey('$key?$filter'),
        entityKey: key,
        scope: _scope(ref),
        filter: filter,
        title: listTitle(ref, key, filter),
        onReparent: reparentHandler(ref, key),
        onOpen: (r) => bus.execute(EntityEditDestination(key, id: r.id)),
        onCreate: () =>
            bus.execute(EntityEditDestination(key, initialValues: filter)),
      );
    },
  );

  /// 表の中の表の画面(親の表の各行に、子の表を入れる)。
  Widget _nested(String key) => Consumer(
    builder: (context, ref, _) {
      final bus = ref.read(commandBusProvider);
      return EntityNestedPage(
        entityKey: key,
        scope: _scope(ref),
        onAdd: (parentId) =>
            bus.execute(EntityEditDestination(key, parentId: parentId)),
        onEdit: (child) => bus.execute(
          EntityEditDestination(key, id: child.id, parentId: child.parentId),
        ),
      );
    },
  );

  /// 選択画面。台帳の行を選ぶと、その id を返して閉じる。
  Widget _pick(String key) => Consumer(
    builder: (context, ref, _) => EntityListPage(
      entityKey: key,
      scope: _scope(ref),
      showCreate: false,
      onOpen: (r) async => Navigator.of(context).pop(r.id),
      onCreate: () async {},
    ),
  );

  Widget _edit(
    String key,
    String? id,
    String? parentId, [
    Map<String, String> initialValues = const {},
  ]) => Consumer(
    builder: (context, ref, _) {
      final bus = ref.read(commandBusProvider);
      return EntityEditPage(
        entityKey: key,
        id: id,
        parentId: parentId,
        initialValues: initialValues,
        onPick: (entityKey) => bus.execute(EntityPickerDestination(entityKey)),
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
