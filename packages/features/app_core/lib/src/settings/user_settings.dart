import 'dart:ui';

import 'package:feature_shared/feature_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_keeper/settings_keeper.dart';

import 'user_settings_model.dart';

/// 使用ユーザーにだけ影響する設定(使用言語・サイドバーをアイコンだけ・ユーザー名と役割)を、
/// 保存・復元する持ち主。保存先は知らない(アプリが [settingsStorageProvider] で選ぶ)。
/// 保存する形は [UserSettingsModel](JSON)。
///
/// パターン: Memento の Originator(settings_keeper)
class UserSettingsOriginator implements SettingsOriginator {
  UserSettingsOriginator(this._ref);

  final Ref _ref;

  static const key = 'user_settings';

  @override
  String get settingsKey => key;

  UserSettingsModel _current() {
    final user = _ref.read(userSummaryProvider);
    final followsSystem = _ref.read(localeFollowsSystemProvider);
    return UserSettingsModel(
      followsSystemLocale: followsSystem,
      languageCode: _ref.read(localeProvider).languageCode,
      sidebarIconOnly: _ref.read(sidebarIconOnlyProvider),
      // ログアウト中(null)は、ユーザーの設定値を書かない
      userName: user?.name,
      userRole: user?.role,
    );
  }

  @override
  SettingsMemento createMemento() => SettingsMemento(
    key: key,
    version: UserSettingsModel.version,
    values: _current().toJson(),
  );

  @override
  void restoreFrom(SettingsMemento memento) {
    final model = UserSettingsModel.fromJson(memento.values);
    final locale = _ref.read(localeProvider.notifier);
    final language = model.languageCode;
    if (!model.followsSystemLocale && language != null) {
      locale.set(Locale(language));
    } else if (model.followsSystemLocale) {
      locale.useSystemLocale();
    }
    _ref.read(sidebarIconOnlyProvider.notifier).set(model.sidebarIconOnly);
    final name = model.userName;
    if (name != null) {
      _ref
          .read(userSummaryProvider.notifier)
          .set(UserSummary(name: name, role: model.userRole ?? ''));
    }
  }
}

final userSettingsOriginatorProvider = Provider<UserSettingsOriginator>(
  UserSettingsOriginator.new,
);

/// 設定が変わるたびに保存する。アプリが起動時に一度読む(復元の後に読むこと)。
///
/// 保存の失敗は [SettingsKeeper] がログに残す。保存先は [settingsStorageProvider] で決まる。
final userSettingsAutoSaveProvider = Provider<void>((ref) {
  final keeper = ref.watch(settingsKeeperProvider);
  final originator = ref.watch(userSettingsOriginatorProvider);
  void save() => keeper.save(originator);
  ref.listen(localeProvider, (_, _) => save());
  ref.listen(localeFollowsSystemProvider, (_, _) => save());
  ref.listen(sidebarIconOnlyProvider, (_, _) => save());
  // ログアウト(null)では保存しない(次回起動で標準値に戻るのを妨げないため)
  ref.listen(userSummaryProvider, (_, user) {
    if (user != null) save();
  });
});
