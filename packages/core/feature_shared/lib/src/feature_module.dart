import 'package:baton_lib/baton_lib.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

/// 機能パッケージがアプリへ提供する組み込み口。
///
/// アプリは [FeatureModule] の一覧を受け取り、
/// ルートの組み立て・遷移先の解決・ハンドラ登録を行う。
abstract interface class FeatureModule {
  /// この機能が持つ画面のルート。パス文字列は機能の内部に閉じ込める。
  List<RouteBase> get routes;

  /// この機能が所有する [PageDestination] をパスへ変換する。
  /// 所有していない遷移先なら null を返す。
  String? locationOf(PageDestination<Object?> destination);

  /// この機能が処理する命令のハンドラを [registry] へ登録する。
  /// [ref] はハンドラが機能内の Provider を読むために使う。
  void registerHandlers(CommandHandlerRegistry registry, Ref ref);
}
