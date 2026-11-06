import 'dart:convert';

import 'package:app_core/app_core_api.dart';
import 'package:backstage/backstage.dart';
import 'package:backstage/backstage_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:logger_provider/logger_provider.dart';

/// 反復回数を小さくした入口のハッシュ(テストを速くする)。
EntryHash _entry([String id = 'maker', String password = 'open-sesame']) =>
    EntryHash.create(id, password, iterations: 50, salt: List.filled(16, 7));

/// 計算を同じ isolate で行う(テスト用)。
Future<bool> _direct(EntryHash hash, String identity, String password) async =>
    hash.verify(identity, password);

class _FailingStore implements IBackstageStore {
  @override
  Future<String?> read() async => null;

  @override
  Future<void> write(String json) async => throw StateError('locked');

  @override
  Future<void> delete() async => throw StateError('locked');
}

class _Bus implements CommandBus {
  final executed = <ActionCommand<Object?>>[];

  @override
  Future<R> execute<R>(ActionCommand<R> command) async {
    executed.add(command);
    return Future<R>.value();
  }
}

ProviderContainer _container(BackstageBoot boot, [List<Override> extra = const []]) {
  final c = ProviderContainer(
    overrides: [
      loggerProvider.overrideWithValue(const NoopLoggerProvider()),
      ...backstageOverrides(boot),
      ...extra,
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  group('PBKDF2 とハッシュの照合', () {
    test('PBKDF2-HMAC-SHA256 の既知の値(RFC 6070 を SHA-256 にしたテストベクトル)', () {
      String hex(List<int> b) =>
          b.map((x) => x.toRadixString(16).padLeft(2, '0')).join();
      expect(
        hex(pbkdf2HmacSha256(utf8.encode('password'), utf8.encode('salt'), 1, 32)),
        '120fb6cffcf8b32c43e7225256c4f837a86548c92ccc35480805987cb70be17b',
      );
      expect(
        hex(pbkdf2HmacSha256(utf8.encode('password'), utf8.encode('salt'), 2, 32)),
        'ae4d0c95af6b46d32d0adff928f06dd02a303f8ef3c251dfd6e2d85a95474c43',
      );
    });

    test('正しいユーザーIDとパスワードだけが一致する', () {
      final h = _entry();
      expect(h.verify('maker', 'open-sesame'), isTrue);
      expect(h.verify(' maker ', 'open-sesame'), isTrue, reason: 'ユーザーIDの前後の空白は無視');
      expect(h.verify('maker', 'open-sesame '), isFalse);
      expect(h.verify('maker', 'wrong'), isFalse);
      expect(h.verify('other', 'open-sesame'), isFalse);
      expect(h.verify('Maker', 'open-sesame'), isFalse, reason: '大文字小文字は区別');
      // IDとパスワードを入れ替えても、連結の区切りで別の組になる
      expect(h.verify('open-sesame', 'maker'), isFalse);
    });

    test('ソルトが違えばハッシュも違う。平文は含まない。ログ・文字列に値を出さない', () {
      final a = EntryHash.create('maker', 'open-sesame', iterations: 50);
      final b = EntryHash.create('maker', 'open-sesame', iterations: 50);
      expect(a.salt, isNot(b.salt));
      expect(a.hash, isNot(b.hash));
      final text = jsonEncode(a.toJson());
      expect(text, isNot(contains('open-sesame')));
      expect(text, isNot(contains('maker')));
      expect('$a', isNot(contains(a.hash)));
      expect('$a', isNot(contains(a.salt)));
    });

    test('設定(JSON)の読み込み: 形が違う・不正な値は入口なし', () {
      final ok = _entry().toJson();
      expect(EntryHash.tryParse(ok)?.iterations, 50);
      expect(EntryHash.tryParse(null), isNull);
      expect(EntryHash.tryParse('x'), isNull);
      expect(EntryHash.tryParse({...ok, 'iterations': 0}), isNull);
      expect(EntryHash.tryParse({...ok, 'iterations': '50'}), isNull);
      expect(EntryHash.tryParse({...ok, 'hash': 'AAAA'}), isNull, reason: '32バイトでない');
      expect(EntryHash.tryParse({...ok, 'salt': '***'}), isNull);
    });

    test('アセットの設定: 入口・既定値を読み、読めなければ空', () {
      final json = jsonEncode({
        'entry': _entry().toJson(),
        'defaults': {'isChangeUserImage': true, 'logLevel': 'warning'},
      });
      final c = BackstageAssetConfig.parse(json);
      expect(c.entry, isNotNull);
      expect(c.defaults?.isChangeUserImage, isTrue);
      expect(c.defaults?.logLevel, 'warning');
      for (final bad in [null, '', '{', '[]', '{"entry": 1}']) {
        final e = BackstageAssetConfig.parse(bad);
        expect(e.entry, isNull, reason: '$bad');
      }
    });
  });

  group('入口の判定', () {
    test('正しい条件: 一致して、入口を開ける', () async {
      var opened = 0;
      final gate = BackstageEntryGate(entry: _entry(), onMatch: () => opened++, verifier: _direct);
      expect(await gate.matches('maker', 'open-sesame'), isTrue);
      expect(opened, 1);
    });

    test('誤った条件: 一致せず、開けない(IDだけ・パスワードだけ違う場合も)', () async {
      var opened = 0;
      final gate = BackstageEntryGate(entry: _entry(), onMatch: () => opened++, verifier: _direct);
      expect(await gate.matches('maker', 'nope'), isFalse);
      expect(await gate.matches('nobody', 'open-sesame'), isFalse);
      expect(opened, 0);
    });

    test('空の入力: 計算せずに一致しない', () async {
      var computed = 0;
      final gate = BackstageEntryGate(
        entry: _entry(),
        onMatch: () => fail('開けてはいけない'),
        verifier: (h, i, p) async {
          computed++;
          return true;
        },
      );
      expect(await gate.matches('', 'open-sesame'), isFalse);
      expect(await gate.matches('maker', ''), isFalse);
      expect(await gate.matches('  ', 'x'), isFalse);
      expect(computed, 0);
    });

    test('入口の設定が無いときは、常に一致しない(計算しない)', () async {
      final gate = BackstageEntryGate(
        entry: null,
        onMatch: () => fail('開けてはいけない'),
        verifier: (h, i, p) async => fail('計算してはいけない'),
      );
      expect(await gate.matches('maker', 'open-sesame'), isFalse);
    });

    test('別の isolate での照合(既定)でも同じ結果になる', () async {
      final h = EntryHash.create('maker', 'open-sesame', iterations: 200);
      expect(await verifyInIsolate(h, 'maker', 'open-sesame'), isTrue);
      expect(await verifyInIsolate(h, 'maker', 'wrong'), isFalse);
    });

    test('アプリへの差し込み: 一致したときだけ入口(unlock)が開く', () async {
      final boot = BackstageBoot(store: InMemoryBackstageStore(), entry: _entry());
      final c = _container(boot);
      expect(c.read(backstageUnlockProvider), isFalse);
      // 既定の判定の代わりに、ハッシュ照合を同じ isolate で行う実体で確かめる
      final gate = c.read(backstageEntryGateProvider);
      expect(gate, isA<BackstageEntryGate>());
      expect(await gate.matches('maker', 'wrong-but-fast'), isFalse);
      expect(c.read(backstageUnlockProvider), isFalse);
    });
  });

  group('接続先の検証', () {
    test('https は通る。http はローカルのネットワークだけ', () {
      for (final ok in [
        '',
        'https://example.com/graphql',
        'https://203.0.113.5:8443/api',
        'http://localhost:5000/graphql',
        'http://127.0.0.1:8090',
        'http://192.168.1.103:8090',
        'http://10.0.0.5/x',
        'http://172.16.0.1',
        'http://172.31.255.1',
        'http://169.254.1.1',
        'http://pms-server:5000',
        'http://nas.local:8090',
      ]) {
        expect(BackstageUrlRules.check(ok), isNull, reason: ok);
      }
      for (final bad in [
        'http://example.com',
        'http://203.0.113.5:8090',
        'http://172.32.0.1',
        'http://192.169.1.1',
        'http://999.1.1.1',
        'http://[2001:db8::1]/',
      ]) {
        expect(BackstageUrlRules.check(bad), BackstageIssueKind.urlNotHttps, reason: bad);
      }
      for (final invalid in ['ftp://example.com', 'example.com', 'https://', '://x', 'http:///x']) {
        expect(BackstageUrlRules.check(invalid), BackstageIssueKind.urlInvalid, reason: invalid);
      }
    });

    test('設定の検証は、項目ごとの失敗の種類を返す', () {
      final issues = BackstageUrlRules.validate(
        const BackstageSettings(
          graphqlUrl: 'http://example.com',
          pocketbaseUrl: 'nope',
          maintenanceUrl: 'https://ok.example.com/health',
          logLevel: 'verbose',
        ),
      );
      expect(
        issues.map((i) => '${i.field.name}:${i.kind.name}'),
        ['graphqlUrl:urlNotHttps', 'pocketbaseUrl:urlInvalid', 'logLevel:logLevelUnknown'],
      );
    });
  });

  group('設定の読み書き', () {
    test('JSON の往復。型の違う値・空は無いものとして読む。壊れた JSON は null', () {
      const s = BackstageSettings(
        isChangeUserImage: true,
        graphqlUrl: 'https://g.example.com',
        logLevel: 'debug',
        sidebarIconOnly: false,
      );
      expect(BackstageSettings.fromJson(s.toJson()), s);
      final odd = BackstageSettings.fromJson({
        'isChangeUserImage': 'yes',
        'graphqlUrl': '  ',
        'logLevel': 3,
        'sidebarIconOnly': true,
      });
      expect(odd.isChangeUserImage, isNull);
      expect(odd.graphqlUrl, isNull);
      expect(odd.logLevel, isNull);
      expect(odd.sidebarIconOnly, isTrue);
      expect(BackstageSettings.tryParse('{'), isNull);
      expect(BackstageSettings.tryParse('[]'), isNull);
      expect(BackstageSettings.tryParse(null), isNull);
      expect(const BackstageSettings().isEmpty, isTrue);
    });

    test('メモリ上の保存先は読み書き・削除できる', () async {
      final s = InMemoryBackstageStore();
      expect(await s.read(), isNull);
      await s.write('{"a":1}');
      expect(await s.read(), '{"a":1}');
      await s.delete();
      expect(await s.read(), isNull);
    });
  });

  group('優先順位(起動時の --dart-define > 保管庫 > アセットの既定値)', () {
    const launch = BackstageSettings(logLevel: 'error', isChangeUserImage: false);
    const stored = BackstageSettings(
      logLevel: 'debug',
      isChangeUserImage: true,
      graphqlUrl: 'https://stored.example.com',
      sidebarIconOnly: true,
    );
    const defaults = BackstageSettings(
      logLevel: 'info',
      isChangeUserImage: true,
      graphqlUrl: 'https://asset.example.com',
      pocketbaseUrl: 'https://asset-pb.example.com',
      sidebarIconOnly: false,
    );

    test('起動時の値が最優先、次に保管庫、最後にアセット', () {
      const r = BackstageResolver(launch: launch, stored: stored, defaults: defaults);
      final v = r.resolve();
      expect(v.logLevel, 'error', reason: '起動時の値');
      expect(v.isChangeUserImage, isFalse, reason: '起動時の false が、保管庫の true に勝つ');
      expect(v.graphqlUrl, 'https://stored.example.com', reason: '保管庫');
      expect(v.sidebarIconOnly, isTrue, reason: '保管庫');
      expect(v.pocketbaseUrl, 'https://asset-pb.example.com', reason: 'アセット');
      expect(v.maintenanceUrl, isNull, reason: 'どこにも無い');
      expect(r.sourceOf(BackstageField.logLevel), BackstageSource.launch);
      expect(r.sourceOf(BackstageField.graphqlUrl), BackstageSource.stored);
      expect(r.sourceOf(BackstageField.pocketbaseUrl), BackstageSource.asset);
      expect(r.sourceOf(BackstageField.maintenanceUrl), BackstageSource.none);
    });

    test('保管庫が無ければアセット、どちらも無ければ未指定', () {
      expect(const BackstageResolver(launch: BackstageSettings(), defaults: defaults).resolve().logLevel, 'info');
      expect(const BackstageResolver(launch: BackstageSettings()).resolve().toJson().values, everyElement(isNull));
    });

    test('不正な値(URL・ログのレベル)は、次の優先順位へ進む', () {
      const r = BackstageResolver(
        launch: BackstageSettings(graphqlUrl: 'http://example.com', logLevel: 'loud'),
        stored: BackstageSettings(graphqlUrl: 'nope', logLevel: 'warning'),
        defaults: BackstageSettings(graphqlUrl: 'https://asset.example.com'),
      );
      final v = r.resolve();
      expect(v.graphqlUrl, 'https://asset.example.com');
      expect(v.logLevel, 'warning');
    });

    test('起動時の値(--dart-define)の空文字・未指定は「指定なし」', () {
      const l = BackstageLaunch(graphqlUrl: '', logLevel: '');
      expect(l.toSettings().isEmpty, isTrue);
      expect(const BackstageLaunch(isChangeUserImage: false).toSettings().isChangeUserImage, isFalse);
    });

    test('起動時の材料の読み込み(保管庫・アセット・起動時の値)', () async {
      final store = InMemoryBackstageStore(jsonEncode(stored.toJson()));
      final boot = await loadBackstageBoot(
        store: store,
        assetJson: jsonEncode({'defaults': defaults.toJson(), 'entry': _entry().toJson()}),
        launch: const BackstageLaunch(logLevel: 'fatal'),
      );
      expect(boot.entry, isNotNull);
      expect(boot.values.logLevel, 'fatal');
      expect(boot.values.graphqlUrl, 'https://stored.example.com');
      expect(boot.values.pocketbaseUrl, 'https://asset-pb.example.com');
      // 壊れた保存値・アセットなしでも止まらない
      final broken = await loadBackstageBoot(store: InMemoryBackstageStore('{broken'));
      expect(broken.stored, isNull);
      expect(broken.entry, isNull);
    });
  });

  group('保存(コントローラー)', () {
    test('検証に通れば保管庫へ JSON で保存し、他の機能が読む値に反映される', () async {
      final store = InMemoryBackstageStore();
      final c = _container(BackstageBoot(store: store));
      expect(c.read(backstageValuesProvider).isChangeUserImage, isNull);

      final result = await c
          .read(backstageControllerProvider.notifier)
          .save(const BackstageSettings(isChangeUserImage: true, logLevel: 'debug'));
      expect(result.saved, isTrue);
      expect(jsonDecode(store.value!), {'isChangeUserImage': true, 'logLevel': 'debug'});
      expect(c.read(backstageValuesProvider).isChangeUserImage, isTrue);
      expect(c.read(backstageValuesProvider).logLevel, 'debug');
    });

    test('検証に通らないときは、保存せず、失敗の種類を返す', () async {
      final store = InMemoryBackstageStore();
      final c = _container(BackstageBoot(store: store));
      final result = await c
          .read(backstageControllerProvider.notifier)
          .save(const BackstageSettings(graphqlUrl: 'http://example.com'));
      expect(result.saved, isFalse);
      expect(result.issues.single.kind, BackstageIssueKind.urlNotHttps);
      expect(store.value, isNull);
      expect(c.read(backstageControllerProvider).isEmpty, isTrue);
    });

    test('空にすると保管庫の値を消す。「保存した値を消す」(reset)も同じ', () async {
      final store = InMemoryBackstageStore('{"logLevel":"debug"}');
      final boot = await loadBackstageBoot(store: store);
      final c = _container(boot);
      expect(c.read(backstageValuesProvider).logLevel, 'debug');
      expect((await c.read(backstageControllerProvider.notifier).reset()).saved, isTrue);
      expect(store.value, isNull);
      expect(c.read(backstageValuesProvider).logLevel, isNull);
    });

    test('保管庫に書けないときは storeFailed。画面の値は変えない', () async {
      final c = _container(BackstageBoot(store: _FailingStore()));
      final result = await c
          .read(backstageControllerProvider.notifier)
          .save(const BackstageSettings(logLevel: 'debug'));
      expect(result.storeFailed, isTrue);
      expect(result.saved, isFalse);
      expect(c.read(backstageValuesProvider).logLevel, isNull);
    });

    test('起動時の値は、保存しても変わらない(最優先)', () async {
      final boot = BackstageBoot(
        store: InMemoryBackstageStore(),
        launch: const BackstageSettings(isChangeUserImage: false),
      );
      final c = _container(boot);
      await c
          .read(backstageControllerProvider.notifier)
          .save(const BackstageSettings(isChangeUserImage: true));
      expect(c.read(backstageValuesProvider).isChangeUserImage, isFalse);
    });

    test('サイドバーの既定は、ユーザーの設定がなければ裏設定の値', () async {
      final c = _container(
        BackstageBoot(store: InMemoryBackstageStore(), defaults: const BackstageSettings(sidebarIconOnly: true)),
      );
      expect(c.read(sidebarIconOnlyProvider), isTrue);
      c.read(sidebarIconOnlyProvider.notifier).set(false); // ユーザーの設定が優先
      expect(c.read(sidebarIconOnlyProvider), isFalse);
    });
  });

  group('裏設定のページ', () {
    Future<(_Bus, ProviderContainer)> pump(
      WidgetTester tester, {
      required BackstageBoot boot,
      bool unlocked = true,
    }) async {
      await tester.binding.setSurfaceSize(const Size(900, 1600));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final bus = _Bus();
      final router = GoRouter(
        initialLocation: '/start',
        routes: [
          GoRoute(path: '/start', builder: (_, _) => const Scaffold(body: Text('開始'))),
          GoRoute(path: '/', builder: (_, _) => const Scaffold(body: Text('先頭'))),
          GoRoute(path: '/backstage', builder: (_, _) => const BackstagePage()),
        ],
      );
      final container = ProviderContainer(
        overrides: [
          loggerProvider.overrideWithValue(const NoopLoggerProvider()),
          commandBusProvider.overrideWithValue(bus),
          signInDestinationProvider.overrideWithValue(const _SignIn()),
          ...backstageOverrides(boot),
        ],
      );
      addTearDown(container.dispose);
      if (unlocked) container.read(backstageUnlockProvider.notifier).unlock();
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(
            routerConfig: router,
            theme: ThemeData(splashFactory: NoSplash.splashFactory),
          ),
        ),
      );
      router.go('/backstage');
      await tester.pumpAndSettle();
      return (bus, container);
    }

    testWidgets('入口を通っていないときは、何も出さずにログインへ戻す', (tester) async {
      final (bus, container) = await pump(
        tester,
        boot: BackstageBoot(store: InMemoryBackstageStore()),
        unlocked: false,
      );
      expect(find.text('開発モード'), findsNothing);
      expect(find.byType(TextField), findsNothing);
      expect(bus.executed.single, isA<_SignIn>());
      expect(container.read(backstageUnlockProvider), isFalse);
    });

    testWidgets('枠の外: 戻る操作・ほかのページへのリンクを持たない。出られるのは「終了」だけ', (tester) async {
      final (bus, container) = await pump(
        tester,
        boot: BackstageBoot(store: InMemoryBackstageStore()),
      );
      expect(find.text('開発モード'), findsOneWidget);
      expect(find.byType(AppBar), findsNothing);
      expect(find.byType(BackButton), findsNothing);
      expect(find.byType(NavigationBar), findsNothing);
      expect(find.byType(Drawer), findsNothing);
      // 戻る操作は止める
      final popScope = tester.widget<PopScope>(find.byType(PopScope));
      expect(popScope.canPop, isFalse);
      // ボタンは 保存・保存した値を消す・終了 だけ
      expect(find.byType(FilledButton), findsOneWidget);
      expect(find.byType(OutlinedButton), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      expect(find.byKey(const ValueKey('exit')), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('exit')));
      await tester.pumpAndSettle();
      expect(bus.executed.single, isA<_SignIn>(), reason: '終了でログインへ');
      expect(container.read(backstageUnlockProvider), isFalse, reason: '入口を閉じる');
    });

    testWidgets('終了のあと、遷移先の型だけでは開けない(入口を通り直す)', (tester) async {
      final (_, container) = await pump(
        tester,
        boot: BackstageBoot(store: InMemoryBackstageStore()),
      );
      await tester.tap(find.byKey(const ValueKey('exit')));
      await tester.pumpAndSettle();
      expect(container.read(backstageUnlockProvider), isFalse);
    });

    testWidgets('保存: 値を入れて保存すると保管庫に入り、案内を出す', (tester) async {
      final store = InMemoryBackstageStore();
      final (_, container) = await pump(tester, boot: BackstageBoot(store: store));
      await tester.enterText(
        find.byKey(const ValueKey('field-graphqlUrl')),
        'https://g.example.com/graphql',
      );
      await tester.tap(find.byKey(const ValueKey('save')));
      await tester.pumpAndSettle();
      expect(jsonDecode(store.value!), {'graphqlUrl': 'https://g.example.com/graphql'});
      expect(find.byKey(const ValueKey('notice')), findsOneWidget);
      expect(
        container.read(backstageValuesProvider).graphqlUrl,
        'https://g.example.com/graphql',
      );
    });

    testWidgets('保存: https でない URL は、項目にエラーを出して保存しない', (tester) async {
      final store = InMemoryBackstageStore();
      await pump(tester, boot: BackstageBoot(store: store));
      await tester.enterText(
        find.byKey(const ValueKey('field-pocketbaseUrl')),
        'http://example.com',
      );
      await tester.tap(find.byKey(const ValueKey('save')));
      await tester.pumpAndSettle();
      expect(find.text('https のURLにしてください(http はローカルのネットワークだけ)。'), findsOneWidget);
      expect(store.value, isNull);
    });

    testWidgets('保存: 保管庫に書けないときは、失敗を伝える', (tester) async {
      await pump(tester, boot: BackstageBoot(store: _FailingStore()));
      await tester.enterText(
        find.byKey(const ValueKey('field-maintenanceUrl')),
        'https://ok.example.com',
      );
      await tester.tap(find.byKey(const ValueKey('save')));
      await tester.pumpAndSettle();
      expect(find.textContaining('保存できませんでした'), findsOneWidget);
    });

    testWidgets('起動時の値がある項目は、変更できず「起動時の指定」と出る', (tester) async {
      await pump(
        tester,
        boot: BackstageBoot(
          store: InMemoryBackstageStore(),
          launch: const BackstageSettings(pocketbaseUrl: 'https://launch.example.com'),
        ),
      );
      final field = tester.widget<TextField>(find.byKey(const ValueKey('field-pocketbaseUrl')));
      expect(field.enabled, isFalse);
      expect(find.text('起動時の指定(変更できません)'), findsOneWidget);
    });

    testWidgets('「保存した値を消す」で保管庫の値が消え、画面の入力も空になる', (tester) async {
      final store = InMemoryBackstageStore('{"graphqlUrl":"https://g.example.com"}');
      final boot = await loadBackstageBoot(store: store);
      await pump(tester, boot: boot);
      expect(find.text('https://g.example.com'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('reset')));
      await tester.pumpAndSettle();
      expect(store.value, isNull);
      expect(find.text('https://g.example.com'), findsNothing);
    });
  });

  test('遷移先はパスに変換できる(登録漏れ検出)。枠の外のページ', () {
    const module = BackstageModule();
    for (final d in backstageDestinationSamples) {
      expect(module.locationOf(d), '/backstage');
    }
    expect(module.locationOf(const _SignIn()), isNull);
  });
}

class _SignIn extends PageDestination<void> {
  const _SignIn();
}
