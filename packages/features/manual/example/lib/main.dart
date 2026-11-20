import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:manual/manual.dart';
import 'package:manual/manual_api.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 確認用の、2 つ目のルート(ルートは複数作れることを見せる)。
ManualPageRecord _secondRoot() => ManualPageRecord(
  id: 'm9000',
  parentId: null,
  order: 2,
  title: '安全衛生マニュアル',
  md:
      '## 目的\n\n作業中の事故を防ぐための、共通のルールです。\n\n## 基本\n\n- 保護具を着ける\n- 通路に物を置かない\n\n品質のルールは [[品質マニュアル]] を参照してください。',
  rev: 1,
  updatedBy: '鈴木 一郎',
  updatedAt: DateTime(2026, 11, 20),
);

/// マニュアル(Wiki)を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
///
/// [isAdmin] が true のとき、編集・子ページの追加・ルートの追加・履歴の復元ができる
/// (false は閲覧のみ)。取得元はメモリ上のサンプル(ルートが 2 つ)。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger, this.isAdmin = true});

  final ILoggerProvider logger;
  final bool isAdmin;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: 'マニュアル (example)',
    modules: const [ManualModule()],
    entries: const [
      FeatureHostEntry('マニュアル(最初のルート)', ManualDestination()),
      FeatureHostEntry('品質マニュアル', ManualDestination(pageId: 'm1')),
      FeatureHostEntry('安全衛生マニュアル(2 つ目のルート)', ManualDestination(pageId: 'm9000')),
      FeatureHostEntry('工程管理(編集の状態)', ManualDestination(pageId: 'm4', edit: true)),
    ],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      manualIsAdminProvider.overrideWithValue(isAdmin),
      manualEditorNameProvider.overrideWithValue('鈴木 一郎'),
      manualRepositoryProvider.overrideWith(
        (ref) => InMemoryManualRepository(
          initial: [...manualSeedPages(), _secondRoot()],
        ),
      ),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
    darkThemeOf: (ref) => ref.watch(darkThemeProvider),
    themeModeOf: (ref) => ref.watch(themeModeProvider),
  );
}
