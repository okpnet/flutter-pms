import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show Override;
import 'package:flutter_test/flutter_test.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:shared_master/shared_master.dart';
import 'package:shared_master/shared_master_api.dart';
import 'package:shared_master/src/shipping_kind/pages/shipping_kind_edit_page.dart';
import 'package:shared_master/src/shipping_kind/pages/shipping_kind_list_page.dart';
import 'package:shared_master/src/shipping_kind/shipping_kind_repository.dart';
import 'package:shared_master/src/shipping_kind/shipping_kinds_provider.dart';
import 'package:theme_lib/theme_lib.dart';

final _id1 = InMemoryShippingKindRepository.sampleIds[0];
final _id2 = InMemoryShippingKindRepository.sampleIds[1];

Widget _app(Widget home, {List<Override> overrides = const []}) =>
    ProviderScope(
      overrides: [
        themeLoggerProvider.overrideWithValue(const NoopLoggerProvider()),
        ...overrides,
      ],
      child: Consumer(
        builder: (context, ref, _) =>
            MaterialApp(theme: ref.watch(lightThemeProvider), home: home),
      ),
    );

void main() {
  const module = SharedMasterModule();

  group('モジュール', () {
    test('見本の遷移先はすべてパスに変換できる(登録漏れ検出)', () {
      for (final d in shippingKindDestinationSamples) {
        expect(module.locationOf(d), isNotNull, reason: '$d');
      }
    });

    test('パスの対応(id は UUID の文字列)', () {
      expect(
        module.locationOf(const ShippingKindListDestination()),
        '/shipping-kinds',
      );
      expect(
        module.locationOf(ShippingKindEditDestination(id: _id1)),
        '/shipping-kinds/$_id1',
      );
      expect(
        module.locationOf(const ShippingKindEditDestination()),
        '/shipping-kinds/new',
      );
      expect(
        module.locationOf(const ShippingKindPickerDestination()),
        '/shipping-kinds/pick',
      );
    });
  });

  group('リポジトリ', () {
    late InMemoryShippingKindRepository repo;
    setUp(() => repo = InMemoryShippingKindRepository());

    test('取得・skip/take', () async {
      expect((await repo.find(take: 10)).length, 3);
      expect((await repo.find(take: 1, skip: 1)).single.id, _id2);
    });

    test('新規登録で UUID が採番される', () async {
      final saved = await repo.save(
        const ShippingKindDraft(code: 'S04', name: '宅配'),
      );
      expect(saved.id, matches(RegExp(r'^[0-9a-f-]{36}$')));
      expect((await repo.findById(saved.id))?.name, '宅配');
    });

    test('更新できる', () async {
      await repo.save(ShippingKindDraft(id: _id1, code: 'S01', name: '新名称'));
      expect((await repo.findById(_id1))?.name, '新名称');
    });

    test('必須とコード重複は検証エラー', () async {
      expect(
        repo.save(const ShippingKindDraft(code: '', name: 'x')),
        throwsA(
          isA<ShippingKindValidationException>().having(
            (e) => e.error,
            'error',
            ShippingKindValidationError.codeRequired,
          ),
        ),
      );
      expect(
        repo.save(const ShippingKindDraft(code: 'S01', name: 'x')),
        throwsA(
          isA<ShippingKindValidationException>().having(
            (e) => e.error,
            'error',
            ShippingKindValidationError.codeDuplicated,
          ),
        ),
      );
      // 自分自身のコードは重複にならない
      await repo.save(ShippingKindDraft(id: _id1, code: 'S01', name: 'x'));
    });

    test('削除できる', () async {
      await repo.remove(_id1);
      expect(await repo.findById(_id1), isNull);
    });

    test('使用中は削除できない', () async {
      final inUse = InMemoryShippingKindRepository(
        isInUse: (id) async => id == _id1,
      );
      await expectLater(
        inUse.remove(_id1),
        throwsA(isA<ShippingKindInUseException>()),
      );
      expect(await inUse.findById(_id1), isNotNull);
      await inUse.remove(_id2);
      expect(await inUse.findById(_id2), isNull);
    });
  });

  test('provider 経由(data_strategist)で一覧を取得できる', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final list = await container.read(shippingKindsProvider.future);
    expect(list.map((k) => k.name), ['通常便', '特急便', '引取']);
  });

  testWidgets('台帳に列と行が表示される', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(_app(const ShippingKindListPage()));
    await tester.pumpAndSettle();
    expect(find.text('配送区分コード'), findsWidgets);
    expect(find.text('通常便'), findsOneWidget);
    expect(find.text('S03'), findsOneWidget);
  });

  testWidgets('言語を英語にすると見出しと列が英語になる', (tester) async {
    await tester.binding.setSurfaceSize(const Size(1200, 800));
    addTearDown(() => tester.binding.setSurfaceSize(null));
    await tester.pumpWidget(
      _app(
        const ShippingKindListPage(),
        overrides: [
          localeProvider.overrideWith(() => _FixedLocale(const Locale('en'))),
        ],
      ),
    );
    await tester.pumpAndSettle();
    expect(find.text('Shipping kinds'), findsOneWidget);
    expect(find.text('Code'), findsWidgets);
  });

  testWidgets('編集画面は既存値を表示し、必須未入力はエラーを出す', (tester) async {
    await tester.pumpWidget(_app(ShippingKindEditPage(id: _id2)));
    await tester.pumpAndSettle();
    expect(find.text('特急便'), findsOneWidget);
    await tester.enterText(find.widgetWithText(TextField, '配送区分名称 *'), '');
    await tester.tap(find.text('保存'));
    await tester.pumpAndSettle();
    expect(find.text('配送区分名称は必須です'), findsOneWidget);
  });

  testWidgets('使用中の配送区分は削除確認のあとエラーを表示する', (tester) async {
    await tester.pumpWidget(
      _app(
        ShippingKindEditPage(id: _id1),
        overrides: [
          shippingKindRepositoryProvider.overrideWithValue(
            InMemoryShippingKindRepository(isInUse: (_) async => true),
          ),
        ],
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.text('削除'));
    await tester.pumpAndSettle();
    expect(find.text('削除の確認'), findsOneWidget);
    await tester.tap(
      find.descendant(of: find.byType(AlertDialog), matching: find.text('削除')),
    );
    await tester.pumpAndSettle();
    expect(find.text('使用中のため削除できません'), findsOneWidget);
  });

  testWidgets('存在しない id は見つからない表示', (tester) async {
    await tester.pumpWidget(_app(const ShippingKindEditPage(id: 'none')));
    await tester.pumpAndSettle();
    expect(find.text('配送区分が見つかりません'), findsOneWidget);
  });
}

class _FixedLocale extends LocaleNotifier {
  _FixedLocale(this._locale);

  final Locale _locale;

  @override
  Locale build() => _locale;
}
