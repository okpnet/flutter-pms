/// 営業機能(実装)。アプリだけが読み込み、公開するのは [SalesModule] だけ。
/// 他の機能が使う遷移先・命令の型は `sales_api.dart` を読み込む。
library;

export 'src/sales_module.dart' show SalesModule;
