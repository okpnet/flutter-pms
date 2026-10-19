part of '../ut_sidemenu.dart';

class UtSideItem {
  final Icon? icon;
  final String label;
  final VoidCallback onPress;
  final List<UtSideItem>? options;

  UtSideItem({
    this.icon,
    required this.label,
    required this.onPress,
    this.options,
  });

  UtSideItem copyWith({
    Icon? icon,
    String? label,
    VoidCallback? onPress,
    List<UtSideItem>? options,
  }) => UtSideItem(
    label: label ?? this.label,
    onPress: onPress ?? this.onPress,
    icon: icon ?? this.icon,
    options: options ?? this.options,
  );
}
