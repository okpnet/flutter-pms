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

/// 入出庫をその場で登録せず、処理待ち(キュー)にためて「まとめて登録」するか(画面案 6.4)。既定はその場で登録する(false)。
///
/// 【目的】実績登録専用アプリ(`entry_app`。ハンディ端末)で、1 件読むたびに通信せず、連続して読み取れるようにする。
/// ためた分は「まとめて登録」で順に取得元(`IScanGateway`)へ送る(出庫・入庫)。操作なしが続くと、処理待ちを消して最初に戻る
/// (自動では登録しない。[idleTimeoutProvider])。
///
/// 【有効にする条件】true にすると登録の通信は「まとめて登録」のときに起きる。次が揃ってから、アプリ側で
/// `batchQueueProvider.overrideWithValue(true)` を書く(いまはどのアプリも書いていない。`example` も false のまま):
///  1. 取得元が担当者を引ける(`findOperator`。GraphQL 版は未対応)→ [requireOperatorProvider] も true にする。
///  2. 通信できる環境で、まとめて登録の通信(入庫・出庫の順序・途中失敗の扱い)を実機で確認する
///     (`issue/20261120_0001.md` の「通信が必要な確認」。確認が済むまで true にしない)。
/// キューは画面内のメモリだけに持つ(保存・復元しない。アプリの終了・画面を離れると消える)。
final batchQueueProvider = Provider<bool>((ref) => false);

/// 最初に担当者のバーコードを読み取らせるか(画面案 6.4)。既定は不要。
/// 担当者以外から始めると警告して、処理待ちを消す。取得元が担当者を引けるとき(`findOperator`)だけ true にする
/// ([batchQueueProvider] と合わせて有効にする。条件はそちらを参照)。
final requireOperatorProvider = Provider<bool>((ref) => false);

/// 操作なしが続いたとき、処理待ちを消してリーディングトップへ戻るまでの時間(画面案 6.4。既定 30 秒)。
/// [Duration.zero] で無効。登録はしない(消すだけ)。処理待ちが空でトップにいるときは何もしない。
final idleTimeoutProvider = Provider<Duration>((ref) => const Duration(seconds: 30));

/// 操作なしで戻る前に、残りの秒数を案内し始める時間(既定 10 秒前)。
final idleWarningProvider = Provider<Duration>((ref) => const Duration(seconds: 10));
