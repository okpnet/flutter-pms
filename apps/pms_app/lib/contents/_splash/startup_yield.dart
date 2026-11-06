import 'package:flutter/widgets.dart';

/// 起動の各段階のあいだで、次の1フレームを描画させる。
///
/// 起動の処理(テーマ・設定・ダッシュボードの復元など)は同じ isolate で動くため、続けて行うと
/// 読み込み中の表示(回転)が止まって見える。段階ごとに描画へ制御を戻して、回転を進める。
Future<void> yieldToFrame() => WidgetsBinding.instance.endOfFrame;
