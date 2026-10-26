import 'package:settings_keeper/settings_keeper.dart';

/// ページが設定を保存・復元する窓口。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。
///
/// 保存・復元の失敗は例外にせず、`false` を返す(設定が保存できなくてもページは動かし続ける)。
abstract interface class IPageSettingsMediator {
  /// 保存された設定を [originator] へ復元する。保存が無いときは `false`(持ち主は変わらない)。
  Future<bool> restore(SettingsOriginator originator);

  /// [originator] の状態を保存する。
  Future<bool> save(SettingsOriginator originator);

  /// [settingsKey] の保存を消す。
  Future<bool> clear(String settingsKey);

  Map<String, Object?> toJson();
}

/// [IPageSettingsMediator] の標準の実装。[SettingsKeeper](Memento の管理者)へ委譲する。
class PageSettingsMediator implements IPageSettingsMediator {
  PageSettingsMediator(this._keeper);

  final SettingsKeeper _keeper;

  @override
  Future<bool> restore(SettingsOriginator originator) =>
      _keeper.restore(originator);

  @override
  Future<bool> save(SettingsOriginator originator) => _keeper.save(originator);

  @override
  Future<bool> clear(String settingsKey) => _keeper.clear(settingsKey);

  @override
  Map<String, Object?> toJson() => {'type': 'PageSettingsMediator'};
}
