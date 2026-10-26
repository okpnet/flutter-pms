import 'package:data_strategist/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:settings_keeper/settings_keeper.dart';

class _ListRepository implements IDataRepository<List<int>> {
  _ListRepository(this.items, {this.fail = false});

  final List<int> items;
  final bool fail;
  int? lastSkip;

  @override
  Future<List<int>> find({
    required int take,
    int skip = 0,
    Expression? predicate,
    SortExpression? orders,
  }) async {
    lastSkip = skip;
    if (fail) throw StateError('取得できません');
    return items.skip(skip).take(take).toList();
  }
}

QueryState<List<int>> _state(_ListRepository repository) =>
    QueryState<List<int>>(
      expressionVisitorType: ExpressionVisitorType.list,
      repository: repository,
      limit: 3,
    );

class _CounterSettings implements SettingsOriginator {
  int count = 0;

  @override
  String get settingsKey => 'counter';

  @override
  SettingsMemento createMemento() =>
      SettingsMemento(key: settingsKey, values: {'count': count});

  @override
  void restoreFrom(SettingsMemento memento) =>
      count = memento.values['count']! as int;
}

class _ExpiredSession implements IPageSessionMediator {
  int refreshed = 0;

  @override
  Future<PageSessionStatus> check() async => PageSessionStatus.expired;

  @override
  Future<PageSessionStatus> refresh() async {
    refreshed++;
    return PageSessionStatus.expired;
  }

  @override
  Map<String, Object?> toJson() => {};
}

ProviderContainer _container([List<Override> overrides = const []]) {
  final container = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ...overrides,
    ],
  );
  addTearDown(container.dispose);
  return container;
}

class _Page extends ConsumerStatefulWidget {
  const _Page();

  @override
  ConsumerState<_Page> createState() => _PageState();
}

class _PageState extends ConsumerState<_Page> with PageMediatorMixin<_Page> {
  PageSessionStatus? unusable;

  @override
  void initState() {
    super.initState();
    enterPage();
  }

  @override
  void onSessionUnusable(PageSessionStatus status) =>
      setState(() => unusable = status);

  @override
  Widget build(BuildContext context) => Text(
    unusable == null ? '表示' : '使えない:${unusable!.name}',
    textDirection: TextDirection.ltr,
  );
}

void main() {
  group('データ取得', () {
    test('件数・位置の指定なしは、先頭から取得件数分', () async {
      final repository = _ListRepository([1, 2, 3, 4, 5]);
      final result = await _container()
          .read(pageDataMediatorProvider)
          .fetch(_state(repository));
      expect(result, [1, 2, 3]);
      expect(repository.lastSkip, 0);
    });

    test('条件を渡すと、その件数・位置で取得する(結果の型はジェネリック)', () async {
      final repository = _ListRepository([1, 2, 3, 4, 5]);
      final result = await _container()
          .read(pageDataMediatorProvider)
          .fetch<List<int>>(
            _state(repository),
            model: PredicateModel(take: 2, skip: 3),
          );
      expect(result, [4, 5]);
    });

    test('取得の失敗は再送出する', () async {
      final repository = _ListRepository(const [], fail: true);
      await expectLater(
        _container().read(pageDataMediatorProvider).fetch(_state(repository)),
        throwsStateError,
      );
    });
  });

  test('設定: 保存して復元できる。保存が無いときは false', () async {
    final storage = InMemorySettingsStorage();
    final first = _container([
      settingsStorageProvider.overrideWithValue(storage),
    ]);
    final mediator = first.read(pageSettingsMediatorProvider);
    final settings = _CounterSettings()..count = 7;
    expect(await mediator.save(settings), isTrue);

    final restored = _CounterSettings();
    final second = _container([
      settingsStorageProvider.overrideWithValue(storage),
    ]);
    expect(
      await second.read(pageSettingsMediatorProvider).restore(restored),
      isTrue,
    );
    expect(restored.count, 7);

    expect(await mediator.clear('counter'), isTrue);
    expect(await mediator.restore(_CounterSettings()), isFalse);
  });

  group('セッション確認', () {
    test('既定は何もしない(常に有効)', () async {
      final session = _container().read(pageSessionMediatorProvider);
      expect(await session.check(), PageSessionStatus.valid);
      expect((await session.refresh()).isUsable, isTrue);
    });

    testWidgets('ページが表示されたとき確認し、使えない状態を受け取る', (tester) async {
      final session = _ExpiredSession();
      await tester.pumpWidget(
        ProviderScope(
          overrides: [pageSessionMediatorProvider.overrideWithValue(session)],
          child: const _Page(),
        ),
      );
      await tester.pumpAndSettle();
      expect(session.refreshed, 1);
      expect(find.text('使えない:expired'), findsOneWidget);
    });

    testWidgets('既定の確認(何もしない)では、そのまま表示する', (tester) async {
      await tester.pumpWidget(const ProviderScope(child: _Page()));
      await tester.pumpAndSettle();
      expect(find.text('表示'), findsOneWidget);
    });
  });
}
