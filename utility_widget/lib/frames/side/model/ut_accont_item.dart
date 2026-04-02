part of '../ut_sidemenu.dart';

class UtAccontItem {
  final String account;
  final Uint8List? iconImageBytes;
  final VoidCallback? settingOnPress;

  UtAccontItem({
    required this.account,
    this.iconImageBytes,
    this.settingOnPress,
  });
}
