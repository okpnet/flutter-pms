import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:barcode_entry_model/scan_client.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:maintenance/maintenance.dart';
import 'package:maintenance/maintenance_api.dart';
import 'package:page_mediator_extension/page_mediator_extension.dart';
import 'package:theme_lib/theme_lib.dart';

/// 接続先(GraphQL)。指定がなければメモリ上のサンプルで動く(`--dart-define=ENTRY_GRAPHQL_URL=...`)。
const graphqlUrl = String.fromEnvironment('ENTRY_GRAPHQL_URL');

/// メンテナンス情報サーバーのルート(`--dart-define=ENTRY_MAINTENANCE_URL=http://サーバー:18480`)。
/// 指定があれば、GraphQL へ通信する前にメンテナンス中かを確認し、中なら中断してメンテナンスのページへ向ける。
const maintenanceUrl = String.fromEnvironment('ENTRY_MAINTENANCE_URL');

/// 名称の言語(`shared_language_code` の id)。接続先を指定したときは必須。
const languageCodeId = String.fromEnvironment('ENTRY_LANGUAGE_CODE_ID');

/// 登録者(作業者)の id。認証(PocketBase)の導入後は、ログインユーザーから与える。
const staffId = String.fromEnvironment('ENTRY_STAFF_ID');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final logger = await DefaultLoggerProvider.fromConfig(
    const LoggerProviderConfig(),
  );
  runApp(EntryApp(logger: logger));
}

/// GraphQL へ通信する前の確認(メンテナンス・セッション切れ)を行うリンク。中断するときは例外を投げ、通信しない。
///
/// パターン: Chain of Responsibility(確認 → 通信)
class GuardLink extends Link {
  GuardLink(this.guard);

  final GraphqlAccessGuard guard;

  @override
  Stream<Response> request(Request request, [NextLink? forward]) async* {
    await guard.ensure();
    yield* forward!(request);
  }
}

/// 接続先があるとき、窓口を GraphQL にする。[guard] があれば、通信の前に確認する。
IScanGateway? gatewayFromEnvironment({GraphqlAccessGuard? guard}) {
  if (graphqlUrl.isEmpty || languageCodeId.isEmpty) return null;
  final http = HttpLink(graphqlUrl);
  return GraphqlScanGateway(
    client: ScanClient(
      client: GraphQLClient(
        link: guard == null ? http : GuardLink(guard).concat(http),
        cache: GraphQLCache(),
      ),
      languageCodeId: languageCodeId,
    ),
    staffId: staffId.isEmpty ? null : staffId,
  );
}

/// 実績登録専用アプリ。バーコード実績登録の機能だけを載せる(配線は `pms_app` と同じ `FeatureHost`)。
///
/// 取得元は、接続先の指定があれば GraphQL、なければメモリ上のサンプル。
/// GraphQL へ通信する前に、メンテナンス中かを確認する(ルートの `CLAUDE.md` の規則)。
/// 認証(PocketBase)は、導入後に `pageSessionMediatorProvider` の上書きで差し込む
/// (セッション切れの確認とページは、そのときに足す)。
class EntryApp extends StatelessWidget {
  const EntryApp({super.key, required this.logger, this.gateway});

  final ILoggerProvider logger;

  /// 取得元。null なら環境の指定([gatewayFromEnvironment])、それも無ければサンプル。
  final IScanGateway? gateway;

  @override
  Widget build(BuildContext context) {
    final scanGateway = gateway ?? gatewayFromEnvironment();
    // 環境の指定で GraphQL にするときだけ、通信の前の確認を付ける(渡された取得元はそのまま使う)
    final guarded = gateway == null && scanGateway != null;
    return FeatureHost(
      title: 'PMS 実績登録',
      modules: const [BarcodeEntryModule(), MaintenanceModule()],
      entries: const [FeatureHostEntry('バーコード', BarcodeEntryDestination())],
      logger: logger,
      overrides: [
        themeLoggerProvider.overrideWithValue(logger),
        if (maintenanceUrl.isNotEmpty)
          maintenanceCheckerProvider.overrideWith(
            (ref) => HttpMaintenanceChecker.forServer(
              maintenanceUrl,
              logger: ref.watch(loggerProvider),
            ),
          ),
        if (guarded)
          scanGatewayProvider.overrideWith(
            (ref) => gatewayFromEnvironment(
              guard: GraphqlAccessGuard(
                session: MaintenanceAwarePageSession(
                  refreshMaintenance: () async =>
                      (await ref
                              .read(maintenanceStatusProvider.notifier)
                              .refresh())
                          .isUnderMaintenance,
                  inner: const NoopPageSessionMediator(),
                ),
                onMaintenance: () => ref
                    .read(commandBusProvider)
                    .execute(const MaintenanceDestination()),
                onSessionExpired: () {},
              ),
            )!,
          )
        else if (scanGateway != null)
          scanGatewayProvider.overrideWithValue(scanGateway),
      ],
      themeOf: (ref) => ref.watch(lightThemeProvider),
    );
  }
}
