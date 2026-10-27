/// テスト専用。GraphQLのテスト接続先と、取得元([IDataRepository])の代役を一か所にまとめる。
///
/// 使う側のパッケージ(`foundation`・`features`・`model_providers`)は、
/// 必ず `dev_dependencies` にだけ書く。本番のコードからは読み込まない。
library;

export 'src/recording_data_repository.dart';
export 'src/server_test.dart';
export 'src/test_server.dart';
