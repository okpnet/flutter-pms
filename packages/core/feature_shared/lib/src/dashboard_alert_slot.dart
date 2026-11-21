import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ダッシュボードの上に出す通知(承認待ちなど)の差し込み口。
///
/// 機能同士はコンパイル時に依存しないため、アプリが部品(`approval` の `ApprovalAlertBanner`)を差し込む。
/// null のときは、何も出さない。
final dashboardAlertSlotProvider = Provider<WidgetBuilder?>((ref) => null);
