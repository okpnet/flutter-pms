part of '../ut_sidemenu.dart';

class UtAccontItem {
  final String account;
  final String? iconBase64String;
  final VoidCallback? settingOnPress;

  UtAccontItem({
    required this.account,
    this.iconBase64String,
    this.settingOnPress,
  });
}
