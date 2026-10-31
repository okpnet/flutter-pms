/// バーコード実績登録(実装)。アプリだけが読み込む。
///
/// - [BarcodeEntryModule]: アプリへ組み込む口
/// - [scanGatewayProvider]: 読み込んだ symbol の照会と登録の取得元の差し込み口(既定はメモリ上のサンプル)
/// - [scanFlowProvider]: 読み込みの流れ(状態と操作)
/// 他の機能が使う遷移先の型は `barcode_entry_api.dart` を読み込む。
library;

export 'src/i18n/strings_provider.dart'
    show BarcodeEntryStrings, barcodeEntryStringsProvider;
export 'src/logic/in_memory_scan_gateway.dart';
export 'src/logic/scan_flow.dart';
export 'src/logic/scan_gateway.dart';
export 'src/logic/scan_models.dart';
export 'src/logic/scan_providers.dart';
export 'src/page/barcode_entry_module.dart' show BarcodeEntryModule;
export 'src/page/barcode_entry_page.dart' show BarcodeEntryPage;
export 'src/page/barcode_entry_paths.dart';
