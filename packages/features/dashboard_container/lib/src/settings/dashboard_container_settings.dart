import 'dart:convert';

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
  DashboardContainerOriginator({
    required this.read,
    required this.apply,
    this.owner,
  });

  /// ユーザーを決めないときの保存先の識別子。
  static const key = 'dashboard_containers';

  /// [owner](ログインしたユーザーのID)の配置の保存先の識別子。ユーザーごとに別の配置を持つ。
  /// 識別子は英小文字・数字・`_`・`-`・`.` だけなので、ID は小文字の英数字以外を `_` に置き換え、
  /// 異なるIDが同じ識別子にならないよう、元のIDの検査値(16進)を付ける。
  static String keyFor(String? owner) {
    if (owner == null || owner.isEmpty) return key;
    var hash = 0x811c9dc5; // FNV-1a(32bit)
    for (final b in utf8.encode(owner)) {
      hash = ((hash ^ b) * 0x01000193) & 0xffffffff;
    }
    final slug = owner.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]+'), '_');
    return '$key.${slug.isEmpty ? 'u' : slug}-${hash.toRadixString(16).padLeft(8, '0')}';
  }

  /// 配置の持ち主(ログインしたユーザーのID)。null は共通の配置。
  final String? owner;

  /// いまのコンテナ。
  final List<CountContainerSpec> Function() read;

  /// 復元したコンテナを反映する。
  final void Function(List<CountContainerSpec> containers) apply;

  @override
  String get settingsKey => keyFor(owner);

  @override
  SettingsMemento createMemento() => SettingsMemento(
    key: settingsKey,
    version: DashboardContainerSettings.version,
    values: DashboardContainerSettings(containers: read()).toJson(),
  );

  @override
  void restoreFrom(SettingsMemento memento) =>
      apply(DashboardContainerSettings.fromJson(memento.values).containers);
}
