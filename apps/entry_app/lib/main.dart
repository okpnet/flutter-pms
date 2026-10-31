import 'package:barcode_entry/barcode_entry.dart';
import 'package:barcode_entry/barcode_entry_api.dart';
import 'package:barcode_entry_model/scan_client.dart';
import 'package:feature_shared/feature_shared.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:logger_provider/logger_provider.dart';
import 'package:theme_lib/theme_lib.dart';

/// 接続先(GraphQL)。指定がなければメモリ上のサンプルで動く(`--dart-define=ENTRY_GRAPHQL_URL=...`)。
const graphqlUrl = String.fromEnvironment('ENTRY_GRAPHQL_URL');

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

/// 接続先があるとき、窓口を GraphQL にする。
IScanGateway? gatewayFromEnvironment() {
  if (graphqlUrl.isEmpty || languageCodeId.isEmpty) return null;
  return GraphqlScanGateway(
    client: ScanClient(
      client: GraphQLClient(link: HttpLink(graphqlUrl), cache: GraphQLCache()),
      languageCodeId: languageCodeId,
    ),
    staffId: staffId.isEmpty ? null : staffId,
  );
}

/// 実績登録専用アプリ。バーコード実績登録の機能だけを載せる(配線は `pms_app` と同じ `FeatureHost`)。
///
/// 取得元は、接続先の指定があれば GraphQL、なければメモリ上のサンプル。
/// 認証(PocketBase)は、導入後に `pageSessionMediatorProvider` の上書きで差し込む。
class EntryApp extends StatelessWidget {
  const EntryApp({super.key, required this.logger, this.gateway});

  final ILoggerProvider logger;

  /// 取得元。null なら環境の指定([gatewayFromEnvironment])、それも無ければサンプル。
  final IScanGateway? gateway;

  @override
  Widget build(BuildContext context) {
    final scanGateway = gateway ?? gatewayFromEnvironment();
    return FeatureHost(
      title: 'PMS 実績登録',
      modules: const [BarcodeEntryModule()],
      entries: const [FeatureHostEntry('バーコード', BarcodeEntryDestination())],
      logger: logger,
      overrides: [
        themeLoggerProvider.overrideWithValue(logger),
        if (scanGateway != null) scanGatewayProvider.overrideWithValue(scanGateway),
      ],
      themeOf: (ref) => ref.watch(lightThemeProvider),
    );
  }
}
