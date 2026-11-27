import 'package:data_test_harness/data_test_harness.dart';
import 'package:entity_screens/entity_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:system/src/entities/system_definitions.dart';
import 'package:system/src/exchange/exchange_lock_control.dart';
import 'package:system/src/exchange/exchange_providers.dart';
import 'package:system/src/exchange/exchange_rate_fetcher.dart';
import 'package:system/src/exchange/exchange_rate_importer.dart';
import 'package:system/src/exchange/exchange_settings.dart';
import 'package:system/system.dart' show systemRepositories;

// 為替レートの確定(確定日以前のレートは、登録・変更・取り消しできない。DB が止める)。確定日は設定の JSON の exchange.lockedUntil。

const _ecbXml =
    "<Cube><Cube time='2026-11-26'><Cube currency='USD' rate='1.0975'/><Cube currency='JPY' rate='174.79'/><Cube currency='GBP' rate='0.83755'/></Cube></Cube>";

void main() {
  group('設定(確定日)', () {
    test('lockedUntil は yyyy-MM-dd だけ読む。取得元が無くても確定日は読む。toJson に残る', () {
      final s = ExchangeSettings.fromJson({'lockedUntil': '2026-10-31'});
      expect(s.lockedUntil, '2026-10-31');
      expect(s.lockedDate, DateTime(2026, 10, 31));
      expect([for (final c in s.sources) c.provider], ['ecb', 'frankfurter']);
      expect(ExchangeSettings.fromJson(s.toJson()).lockedUntil, '2026-10-31');
      for (final bad in ['2026-13-45', '2026/10/31', '', 5, null]) {
        expect(
          ExchangeSettings.fromJson({'lockedUntil': bad}).lockedUntil,
          isNull,
          reason: '$bad',
        );
      }
      expect(ExchangeSettings.standard.lockedUntil, isNull);
    });
  });

  group('自動取得は、確定済みの日付のレートを登録しない', () {
    EntityCatalog catalog() {
      final currency = systemDefinitions.firstWhere((d) => d.key == 'currency');
      final rate = systemDefinitions.firstWhere((d) => d.key == 'exchangerate');
      EntityRecord cur(
        String id,
        String code,
        String auto, {
        String base = '',
      }) => EntityRecord(
        id: id,
        values: {
          'code': code,
          'name': code,
          'currency_symbol': code,
          'rate_auto': auto,
          'is_base': base,
        },
      );
      return EntityCatalog()
        ..register(
          InMemoryEntityRepository(currency, [
            cur('c-jpy', 'JPY', 'いいえ', base: flagOn),
            cur('c-gbp', 'GBP', 'はい'),
          ]),
        )
        ..register(InMemoryEntityRepository(rate, []));
    }

    ExchangeRateFetcher fetcher() => ExchangeRateFetcher.fromSettings(
      ExchangeSettings.standard,
      fetcher: (u) async => _ecbXml,
    );

    test('確定日以前(当日を含む)のレートは省き、結果に出す。確定日の翌日からなら登録する', () async {
      final c = catalog();
      final locked = await ExchangeRateImporter(
        catalog: c,
        fetcher: fetcher(),
        lockedUntil: '2026-11-26',
      ).run();
      expect(locked.registered, isEmpty);
      expect(locked.locked, ['GBP']);
      expect(await c.repository('exchangerate')!.find(take: 10), isEmpty);
      final open = await ExchangeRateImporter(
        catalog: c,
        fetcher: fetcher(),
        lockedUntil: '2026-11-25',
      ).run();
      expect(open.registered.map((x) => x.code), ['GBP']);
      expect(open.locked, isEmpty);
    });
  });

  group('確定の操作', () {
    Widget app({
      String? locked,
      Future<void> Function(String)? saver,
      bool allowed = true,
      DateTime? today,
      void Function()? onReload,
    }) => ProviderScope(
      overrides: [
        exchangeSettingsProvider.overrideWithValue(
          ExchangeSettings.fromJson({'lockedUntil': locked}),
        ),
        exchangeLockSaverProvider.overrideWithValue(saver),
        exchangeFetchAllowedProvider.overrideWithValue(allowed),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: ExchangeLockControl(
            reload: onReload ?? () {},
            today: () => today ?? DateTime(2026, 11, 27),
          ),
        ),
      ),
    );

    testWidgets('確定の状態を出す(確定済みの日付・まだ無い)', (tester) async {
      await tester.pumpWidget(app(locked: '2026-10-31', saver: (d) async {}));
      expect(find.textContaining('確定済み: 2026-10-31 まで'), findsOneWidget);
      await tester.pumpWidget(app(saver: (d) async {}));
      expect(find.text('確定している期間はありません'), findsOneWidget);
    });

    testWidgets('実行できない人・保存の窓口が無いときは、「確定する」を出さない(状態は出す)', (tester) async {
      await tester.pumpWidget(app(saver: (d) async {}, allowed: false));
      expect(find.byKey(const ValueKey('exchange-lock')), findsNothing);
      expect(
        find.byKey(const ValueKey('exchange-lock-status')),
        findsOneWidget,
      );
      await tester.pumpWidget(app());
      expect(find.byKey(const ValueKey('exchange-lock')), findsNothing);
    });

    testWidgets('日付を選び、確認してから保存する。保存したら台帳を読み込み直す', (tester) async {
      final saved = <String>[];
      var reloaded = 0;
      await tester.pumpWidget(
        app(saver: (d) async => saved.add(d), onReload: () => reloaded++),
      );
      await tester.tap(find.byKey(const ValueKey('exchange-lock')));
      await tester.pumpAndSettle();
      // 日付の選択(最初の候補は先月末 = 2026-10-31)。そのまま決定する
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();
      expect(
        find.byKey(const ValueKey('exchange-lock-confirm')),
        findsOneWidget,
      );
      expect(find.textContaining('2026-10-31 までのレートを確定します'), findsOneWidget);
      await tester.tap(find.byKey(const ValueKey('exchange-lock-ok')));
      await tester.pumpAndSettle();
      expect(saved, ['2026-10-31']);
      expect(reloaded, 1);
      expect(find.text('確定しました。'), findsOneWidget);
    });

    testWidgets('確認でやめたときは保存しない。保存に失敗したときは失敗を出し、台帳は読み込み直さない', (tester) async {
      final saved = <String>[];
      await tester.pumpWidget(app(saver: (d) async => saved.add(d)));
      await tester.tap(find.byKey(const ValueKey('exchange-lock')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('やめる'));
      await tester.pumpAndSettle();
      expect(saved, isEmpty);

      var reloaded = 0;
      await tester.pumpWidget(
        app(
          saver: (d) async => throw StateError('CUR03'),
          onReload: () => reloaded++,
        ),
      );
      await tester.tap(find.byKey(const ValueKey('exchange-lock')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const ValueKey('exchange-lock-ok')));
      await tester.pumpAndSettle();
      expect(find.text('確定できませんでした。'), findsOneWidget);
      expect(reloaded, 0);
    });
  });

  group('為替レートの登録(GraphQL)', () {
    test('確定済みの期間のエラー(DB の文)は、日付の検証エラー(確定済み)にする', () async {
      final link = ReplayLink()
        ..on(
          'CurrencyRatePageCreate',
          errors: [
            const GraphQLError(message: '確定済みの期間(2026-10-31 まで)のレートは登録できません'),
          ],
        );
      final repos = systemRepositories(ReplayGraphql.client(link));
      final rate = repos.firstWhere((r) => r.definition.key == 'exchangerate');
      await expectLater(
        rate.save(
          const EntityRecord(
            id: '',
            values: {
              'mstr_currency_id': 'c1',
              'rate_date': '2026-10-15',
              'rate': '150',
              'auto_fetched': 'いいえ',
            },
          ),
        ),
        throwsA(
          isA<EntityValidationException>().having(
            (e) => e.errors['rate_date'],
            'rate_date',
            EntityFieldError.periodLocked,
          ),
        ),
      );
    });

    test('ほかのエラーは、そのまま投げる', () async {
      final link = ReplayLink()
        ..on(
          'CurrencyRatePageCreate',
          errors: [const GraphQLError(message: 'permission denied')],
        );
      final rate = systemRepositories(
        ReplayGraphql.client(link),
      ).firstWhere((r) => r.definition.key == 'exchangerate');
      await expectLater(
        rate.save(
          const EntityRecord(
            id: '',
            values: {
              'mstr_currency_id': 'c1',
              'rate_date': '2026-10-15',
              'rate': '150',
            },
          ),
        ),
        throwsA(isA<OperationException>()),
      );
    });
  });
}
