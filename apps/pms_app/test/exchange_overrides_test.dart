import 'package:approval_stamp/approval_stamp.dart' show AppSettings;
import 'package:document_settings/document_settings.dart'
    show
        InMemoryAppSettingsGateway,
        documentSettingsGatewayProvider,
        savedAppSettingsProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/services.dart' show exchangeOverrides;
import 'package:system/system.dart'
    show
        exchangeFetchAllowedProvider,
        exchangeLockSaverProvider,
        exchangeSettingsProvider;

// 為替レートの自動取得: 取得元はアプリの設定(info_app.settings の exchange)から。無い・不正は標準(ECB → Frankfurter/ecb)。

ProviderContainer _container(AppSettings settings) {
  final c = ProviderContainer(
    overrides: [
      ...exchangeOverrides(),
      savedAppSettingsProvider.overrideWith((ref) async => settings),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  test('設定に exchange が無いときは標準(ECB → Frankfurter/ecb)', () async {
    final c = _container(AppSettings.standard);
    await c.read(savedAppSettingsProvider.future);
    expect(
      [for (final s in c.read(exchangeSettingsProvider).sources) s.provider],
      ['ecb', 'frankfurter'],
    );
  });

  test('設定の exchange で、取得元・優先順位・通貨の指定を変えられる(DB の列は増やさない)', () async {
    final settings = AppSettings.parse({
      'version': 1,
      'exchange': {
        'sources': [
          {
            'provider': 'frankfurter',
            'providers': 'boj',
            'currencies': ['usd'],
          },
          {'provider': 'ecb'},
        ],
      },
    });
    final c = _container(settings);
    await c.read(savedAppSettingsProvider.future);
    final s = c.read(exchangeSettingsProvider);
    expect([for (final x in s.sources) x.provider], ['frankfurter', 'ecb']);
    expect(s.sources.first.providers, 'boj');
    expect(s.isPinned('USD'), isTrue);
  });

  _lockSaverTests();

  test('PocketBase に接続しない環境(判定する元が無い)では、自動取得を実行できる', () {
    final c = _container(AppSettings.standard);
    expect(c.read(exchangeFetchAllowedProvider), isTrue);
  });
}

// 為替レートの確定日の保存: 設定の JSON の exchange.lockedUntil に書き、ほかのキーは残す。
void _lockSaverTests() {
  test('確定日を保存する。取得元などの exchange のほかのキーと、設定のほかのキーは残す。保存すると読み直す', () async {
    final gateway = InMemoryAppSettingsGateway()
      ..value = {
        'version': 1,
        'currency': {'code': 'JPY'},
        'exchange': {
          'sources': [
            {'provider': 'ecb'},
          ],
        },
      };
    final c = ProviderContainer(
      overrides: [
        ...exchangeOverrides(),
        documentSettingsGatewayProvider.overrideWithValue(gateway),
      ],
    );
    addTearDown(c.dispose);
    await c.read(savedAppSettingsProvider.future);
    expect(c.read(exchangeSettingsProvider).lockedUntil, isNull);

    await c.read(exchangeLockSaverProvider)!('2026-10-31');

    final saved = gateway.value as Map;
    expect((saved['exchange'] as Map)['lockedUntil'], '2026-10-31');
    expect((saved['exchange'] as Map)['sources'], [
      {'provider': 'ecb'},
    ]);
    expect(saved['currency'], {'code': 'JPY'});
    await c.read(savedAppSettingsProvider.future);
    expect(c.read(exchangeSettingsProvider).lockedUntil, '2026-10-31');
  });
}
