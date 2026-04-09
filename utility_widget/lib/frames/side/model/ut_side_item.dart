part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final VoidCallback onPress;
  final bool isSelected;
  final List<UtSideItem>? options;
  UtSideItem({
    this.icon,
    required this.label,
    required this.onPress,
    this.isSelected = false,
    this.options,
  });
}
