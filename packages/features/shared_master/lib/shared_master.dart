/// 共有マスタ(実装)。アプリだけが読み込み、公開するのは [SharedMasterModule] だけ。
/// 他の機能が使う遷移先・命令の型は `shared_master_api.dart` を読み込む。
library;

export 'src/shared_master_module.dart' show SharedMasterModule;
