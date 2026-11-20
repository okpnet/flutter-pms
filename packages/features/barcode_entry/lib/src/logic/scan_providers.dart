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

/// 作業指示から、実績登録の画面(作業実績 › 実績登録)を開くリンクを出すか。既定は出す。
/// 実績登録の画面を持たないアプリ(実績登録専用アプリ)は、false に上書きする。
final openWorkRegisterLinkProvider = Provider<bool>((ref) => true);

/// 入庫をその場で登録せず、処理待ち(キュー)にためて「まとめて登録」するか(画面案 6.4)。既定はその場で登録する。
/// キューは画面内のメモリだけに持つ(保存・復元しない。アプリの終了・画面を離れると消える)。
final batchQueueProvider = Provider<bool>((ref) => false);

/// 最初に担当者のバーコードを読み取らせるか(画面案 6.4)。既定は不要。
/// 担当者以外から始めると警告して、処理待ちを消す。取得元が担当者を引けるとき(`findOperator`)だけ true にする。
final requireOperatorProvider = Provider<bool>((ref) => false);
