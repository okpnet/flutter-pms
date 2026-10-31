import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'in_memory_scan_gateway.dart';
import 'scan_flow.dart';
import 'scan_gateway.dart';

/// 読み込んだ symbol の照会と登録の取得元。既定はメモリ上のサンプル(暫定)。
/// アプリが GraphQL 版を `overrideWith` で差し込む。
final scanGatewayProvider = Provider<IScanGateway>(
  (ref) => InMemoryScanGateway(),
);

/// 読み込みの流れ(状態と操作)。
final scanFlowProvider = NotifierProvider<ScanFlow, ScanState>(ScanFlow.new);
