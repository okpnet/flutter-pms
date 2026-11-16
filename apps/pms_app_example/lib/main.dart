import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pms_app/main.dart' show AppMain;
import 'package:pms_app/services/services.dart' show createLoggerWithLevel;

import 'virtual/example_overrides.dart';
import 'virtual/verification_panel.dart';
import 'virtual/virtual_server.dart';

/// pms_app の実際の動作を、仮想のサーバーで真似て評価するアプリ。
///
/// 画面・ルーター・セッション・認証・各機能は pms_app の実物。接続先(PocketBase・メンテナンス)だけが仮想。
/// 右下の検証パネルで、接続断・メンテナンス・セッション切れを再現できる。
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await createLoggerWithLevel('assets/logger_config.json', null);
  final server = VirtualServer();
  runApp(
    ProviderScope(
      overrides: await exampleOverrides(server, logger),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Stack(
          children: [
            const AppMain(),
            Positioned(
              right: 12,
              bottom: 12,
              child: VerificationPanel(server: server),
            ),
          ],
        ),
      ),
    ),
  );
}
