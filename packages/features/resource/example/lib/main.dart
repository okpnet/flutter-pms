import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:item/item.dart';
import 'package:organization/organization.dart';
import 'package:resource/resource.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(ExampleApp(logger: logger));
}

/// 資源 を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる。
/// 参照先が別の機能にある実体は、その機能も一緒に載せて選択肢を引けるようにしている。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '資源 (example)',
    modules: const [ResourceModule(), ItemModule(), OrganizationModule()],
    entries: const [
      FeatureHostEntry('力量', EntityListDestination('capability')),
      FeatureHostEntry('資格', EntityListDestination('license')),
      FeatureHostEntry('場所', EntityListDestination('location')),
      FeatureHostEntry('設備分類', EntityListDestination('equipmentcategory')),
      FeatureHostEntry('設備', EntityListDestination('equipment')),
      FeatureHostEntry('点検整備区分', EntityListDestination('inspectionkind')),
      FeatureHostEntry('点検整備項目', EntityListDestination('inspectionitem')),
      FeatureHostEntry(
        '設備点検整備運用',
        EntityListDestination('inspectionoperation'),
      ),
      FeatureHostEntry('点検予定', EntityListDestination('inspectionschedule')),
      FeatureHostEntry('稼働カレンダー', EntityListDestination('workcalendar')),
    ],
    logger: logger,
    // flgtable_lib / theme_lib が使うテーマ側のロガー
    overrides: [themeLoggerProvider.overrideWithValue(logger)],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
