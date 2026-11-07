import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/theme_exceptions.dart';
import 'theme_manager.dart';

/// このライブラリに入っている、追加のテーマのJSONファイル(アセット)。
///
/// 組み込みの既定のほかに、アプリが選べるテーマ。アプリは起動時に
/// [ThemeManagerAssetImport.importAssets] で取り込む。
abstract final class ThemeAssets {
  static const ocean = 'packages/theme_lib/themes/ocean.json';
  static const forest = 'packages/theme_lib/themes/forest.json';
  static const rose = 'packages/theme_lib/themes/rose.json';

  /// 追加のテーマすべて。
  static const all = [ocean, forest, rose];
}

/// アセットのJSONからテーマを取り込む([ThemeManager] の拡張)。
extension ThemeManagerAssetImport on ThemeManager {
  /// [paths] のJSONファイルを順に取り込む(登録のみで、適用中のテーマは変えない)。
  ///
  /// ファイルが読めない・構造が不正なテーマは、残りを続けて取り込み、失敗の一覧を返す
  /// (起動を止めない。失敗は [ThemeManager] が `[theme_lib]` 付きでログに残す)。
  /// 取り込めたテーマは [ThemeManager.state] の `themes` に増える。
  Future<List<ThemeAssetFailure>> importAssets(
    Iterable<String> paths, {
    AssetBundle? bundle,
  }) async {
    final source = bundle ?? rootBundle;
    final failures = <ThemeAssetFailure>[];
    for (final path in paths) {
      try {
        importJson(await source.loadString(path), activate: false);
      } on ThemeLibException catch (e) {
        failures.add(ThemeAssetFailure(path, e));
      } catch (e) {
        // ファイルが無い・読めない
        failures.add(ThemeAssetFailure(path, e));
      }
    }
    return failures;
  }
}

/// アセットから取り込めなかったテーマ。
class ThemeAssetFailure {
  const ThemeAssetFailure(this.path, this.error);

  final String path;
  final Object error;

  Map<String, Object?> toJson() => {'path': path, 'error': '$error'};

  @override
  String toString() => 'ThemeAssetFailure($path: $error)';
}

/// 追加のテーマ([ThemeAssets.all])を取り込む。アプリの起動時に1回呼ぶ。
Future<List<ThemeAssetFailure>> importBundledThemes(
  ProviderContainer container, {
  AssetBundle? bundle,
}) => container
    .read(themeManagerProvider.notifier)
    .importAssets(ThemeAssets.all, bundle: bundle);
