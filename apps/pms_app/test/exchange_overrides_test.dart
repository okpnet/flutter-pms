import 'package:approval_stamp/approval_stamp.dart' show AppSettings;
import 'package:document_settings/document_settings.dart' show savedAppSettingsProvider;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/services.dart' show exchangeOverrides;
import 'package:system/system.dart' show exchangeFetchAllowedProvider, exchangeSettingsProvider;

// 為替レートの自動取得: 取得元はアプリの設定(info_app.settings の exchange)から。無い・不正は標準(ECB → Frankfurter/ecb)。

ProviderContainer _container(AppSettings settings) {
  final c = ProviderContainer(
    overrides: [...exchangeOverrides(), savedAppSettingsProvider.overrideWith((ref) async => settings)],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  test('設定に exchange が無いときは標準(ECB → Frankfurter/ecb)', () async {
    final c = _container(AppSettings.standard);
    await c.read(savedAppSettingsProvider.future);
    expect([for (final s in c.read(exchangeSettingsProvider).sources) s.provider], ['ecb', 'frankfurter']);
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

  test('PocketBase に接続しない環境(判定する元が無い)では、自動取得を実行できる', () {
    final c = _container(AppSettings.standard);
    expect(c.read(exchangeFetchAllowedProvider), isTrue);
  });
}
