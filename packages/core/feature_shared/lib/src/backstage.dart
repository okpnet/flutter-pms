import 'package:flutter_riverpod/flutter_riverpod.dart';

/// アプリケーションの裏設定の値(読む側の窓口)。実体は裏設定の機能(`backstage`)が差し込む。
///
/// 値は、起動時の `--dart-define` > 裏設定(保管庫) > アセットの既定値 の順で決まった結果。
/// 指定が無い項目は null(読む側が自分の既定値を使う)。他の機能は裏設定の実装に依存せず、この型だけを読む。
class BackstageValues {
  const BackstageValues({
    this.isChangeUserImage,
    this.graphqlUrl,
    this.pocketbaseUrl,
    this.maintenanceUrl,
    this.logLevel,
    this.sidebarIconOnly,
  });

  /// ユーザーが自分の画像を変更できるか。
  final bool? isChangeUserImage;

  /// GraphQL(PostGraphile)の接続先。
  final String? graphqlUrl;

  /// PocketBase の接続先。
  final String? pocketbaseUrl;

  /// メンテナンスの確認先。
  final String? maintenanceUrl;

  /// ログのレベル(`logger` の `Level` の名前。例: `info`)。
  final String? logLevel;

  /// サイドバーをアイコンだけにする既定(ユーザーの設定が優先する)。
  final bool? sidebarIconOnly;

  Map<String, Object?> toJson() => {
    'isChangeUserImage': isChangeUserImage,
    'graphqlUrl': graphqlUrl,
    'pocketbaseUrl': pocketbaseUrl,
    'maintenanceUrl': maintenanceUrl,
    'logLevel': logLevel,
    'sidebarIconOnly': sidebarIconOnly,
  };
}

/// 裏設定の値。既定はすべて未指定。アプリが `backstage` の実体で上書きする。
final backstageValuesProvider = Provider<BackstageValues>(
  (ref) => const BackstageValues(),
);

/// 裏設定へ入る条件の判定(ログインページが呼ぶ)。実体は `backstage` が差し込む。
///
/// 一致するかどうかだけを返し、理由・存在を示さない。一致しなければ、通常のログインとして続ける。
abstract interface class IBackstageEntryGate {
  Future<bool> matches(String identity, String password);
}

/// 入口を持たない既定(常に一致しない)。
class NoBackstageEntryGate implements IBackstageEntryGate {
  const NoBackstageEntryGate();

  @override
  Future<bool> matches(String identity, String password) async => false;
}

final backstageEntryGateProvider = Provider<IBackstageEntryGate>(
  (ref) => const NoBackstageEntryGate(),
);
