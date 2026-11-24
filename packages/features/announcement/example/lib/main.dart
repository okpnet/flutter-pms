import 'package:announcement/announcement.dart';
import 'package:announcement/announcement_api.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(const LoggerProviderConfig());
  runApp(ExampleApp(logger: logger));
}

/// 見本の通知(題名・本文は、DB に言語別で持つ値のまま出す)。
List<Announcement> sampleAnnouncements() => [
  Announcement(
    id: 'a1',
    title: '監査の予定: 工程監査',
    message: '2026-11-26 に予定されています',
    category: 'audit',
    targetSymbol: 'AD-0001',
    expiresAt: DateTime(2026, 11, 30),
    at: DateTime(2026, 11, 23),
  ),
  Announcement(id: 'a2', title: '承認待ちが 2 件あります', category: 'approval', at: DateTime(2026, 11, 22)),
  Announcement(id: 'a3', title: '力量の更新のお知らせ', message: '資格の更新期限が近づいています', isRead: true, at: DateTime(2026, 11, 10)),
];

/// 通知を単体で確認するアプリ。本番(pms_app)と同じ配線で、この機能だけを載せる(取得元はメモリ上の見本)。
/// ダッシュボードの未読通知(`AnnouncementBanner`)は、先頭の項目(一覧)の上に並ぶ。
class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key, required this.logger});

  final ILoggerProvider logger;

  @override
  Widget build(BuildContext context) => FeatureHost(
    title: '通知 (example)',
    modules: const [AnnouncementModule()],
    entries: const [FeatureHostEntry('通知の一覧', AnnouncementListDestination())],
    logger: logger,
    overrides: [
      themeLoggerProvider.overrideWithValue(logger),
      announcementGatewayProvider.overrideWith((ref) => InMemoryAnnouncementGateway(sampleAnnouncements())),
      // ログイン中のユーザー(通知づくり・一覧はユーザーがいるときだけ動く)
      userSummaryProvider.overrideWith(() => UserSummaryNotifier(const UserSummary(name: '田中 誠'))),
    ],
    themeOf: (ref) => ref.watch(lightThemeProvider),
  );
}
