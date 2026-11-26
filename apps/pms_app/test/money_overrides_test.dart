import 'package:approval_stamp/approval_stamp.dart' show AppSettings;
import 'package:document_settings/document_settings.dart' show savedAppSettingsProvider;
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pms_app/services/services.dart' show moneyOverrides;

// 金額の通貨の表示は、設定(info_app.settings の currency)から。無い・不正は標準(日本円)。

ProviderContainer _container(AppSettings settings) {
  final c = ProviderContainer(
    overrides: [
      ...moneyOverrides(),
      savedAppSettingsProvider.overrideWith((ref) async => settings),
    ],
  );
  addTearDown(c.dispose);
  return c;
}

void main() {
  test('設定に currency が無いときは、日本円(日本語は後ろ、英語は前)', () async {
    final c = _container(AppSettings.standard);
    await c.read(savedAppSettingsProvider.future);
    final m = c.read(moneyFormatProvider);
    expect(m.format('1200'), '1,200 円');
    expect(m.format('1200', languageCode: 'en'), '¥1,200');
  });

  test('設定の currency で、通貨・言語ごとの記号と位置を変えられる(DB の列は増やさない)', () async {
    final settings = AppSettings.parse({
      'version': 1,
      'currency': {
        'code': 'USD',
        'symbol': '\$',
        'position': 'prefix',
        'ja': {'symbol': 'ドル', 'position': 'suffix'},
      },
    });
    final c = _container(settings);
    await c.read(savedAppSettingsProvider.future);
    final m = c.read(moneyFormatProvider);
    expect(m.code, 'USD');
    expect(m.format('10', languageCode: 'ja'), '10 ドル');
    expect(m.format('10', languageCode: 'fr'), '\$10');
  });
}
