import 'package:settings_keeper/settings_keeper.dart';

import '../model/count_container_spec.dart';

/// ダッシュボードのコンテナの配置を保存する形(JSON)。
class DashboardContainerSettings {
  const DashboardContainerSettings({this.containers = const []});

  /// 保存の形の版。形を変えるときに上げる。
  static const version = 1;

  final List<CountContainerSpec> containers;

  Map<String, Object?> toJson() => {
    'containers': [for (final c in containers) c.toJson()],
  };

  /// 読めないコンテナは捨てる(保存が壊れていても、ダッシュボードは表示できる)。
  factory DashboardContainerSettings.fromJson(Map<String, Object?> json) {
    final containers = json['containers'];
    return DashboardContainerSettings(
      containers: containers is List
          ? [for (final c in containers) ?CountContainerSpec.tryFromJson(c)]
          : const [],
    );
  }
}

/// コンテナの配置を保存・復元する持ち主。保存先は知らない(アプリが `settingsStorageProvider` で選ぶ)。
///
/// パターン: Memento の Originator(settings_keeper)
class DashboardContainerOriginator implements SettingsOriginator {
  DashboardContainerOriginator({required this.read, required this.apply});

  static const key = 'dashboard_containers';

  /// いまのコンテナ。
  final List<CountContainerSpec> Function() read;

  /// 復元したコンテナを反映する。
  final void Function(List<CountContainerSpec> containers) apply;

  @override
  String get settingsKey => key;

  @override
  SettingsMemento createMemento() => SettingsMemento(
    key: key,
    version: DashboardContainerSettings.version,
    values: DashboardContainerSettings(containers: read()).toJson(),
  );

  @override
  void restoreFrom(SettingsMemento memento) =>
      apply(DashboardContainerSettings.fromJson(memento.values).containers);
}
