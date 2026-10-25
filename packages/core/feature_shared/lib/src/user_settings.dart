import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:settings_keeper/settings_keeper.dart';

import 'locale_provider.dart';
import 'menu.dart';
import 'ui_settings.dart';

/// 使用ユーザーにだけ影響する設定(使用言語・サイドバーをアイコンだけ・ユーザー名と役割)を、
/// 保存・復元する持ち主。保存先は知らない(アプリが [settingsStorageProvider] で選ぶ)。
///
/// パターン: Memento の Originator(settings_keeper)
class UserSettingsOriginator implements SettingsOriginator {
  UserSettingsOriginator(this._ref);

  final Ref _ref;

  static const key = 'user_settings';

  @override
  String get settingsKey => key;

  @override
  SettingsMemento createMemento() {
    final user = _ref.read(userSummaryProvider);
    return SettingsMemento(
      key: key,
      values: {
        'followsSystemLocale': _ref.read(localeFollowsSystemProvider),
        'languageCode': _ref.read(localeProvider).languageCode,
        'sidebarIconOnly': _ref.read(sidebarIconOnlyProvider),
        // ログアウト中(null)は、ユーザーの設定値を書かない
        'userName': ?user?.name,
        'userRole': ?user?.role,
      },
    );
  }

  @override
  void restoreFrom(SettingsMemento memento) {
    final v = memento.values;
    final locale = _ref.read(localeProvider.notifier);
    if (v['followsSystemLocale'] == false && v['languageCode'] is String) {
      locale.set(Locale(v['languageCode']! as String));
    } else if (v['followsSystemLocale'] == true) {
      locale.useSystemLocale();
    }
    if (v['sidebarIconOnly'] is bool) {
      _ref
          .read(sidebarIconOnlyProvider.notifier)
          .set(v['sidebarIconOnly']! as bool);
    }
    final name = v['userName'];
    if (name is String && name.isNotEmpty) {
      _ref
          .read(userSummaryProvider.notifier)
          .set(
            UserSummary(
              name: name,
              role: v['userRole'] is String ? v['userRole']! as String : '',
            ),
          );
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
