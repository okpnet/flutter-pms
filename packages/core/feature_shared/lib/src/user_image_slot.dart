import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 設定画面に置く「ユーザーの画像」の部品(`user_profile` の `MyImagePanel`)の差し込み口。
///
/// 機能同士はコンパイル時に依存しないため、アプリが部品を差し込む。null のときは、設定画面に画像の欄を出さない。
final userImageSlotProvider = Provider<WidgetBuilder?>((ref) => null);
