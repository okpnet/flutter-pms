part of '../ut_style.dart';

class UtTooltip extends StatelessWidget {
  final String title;
  final Widget child;
  const UtTooltip({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Tooltip(key: key, child: child);
  }
}
