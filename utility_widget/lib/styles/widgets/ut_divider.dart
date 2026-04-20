part of '../ut_style.dart';

class UtDivider extends StatelessWidget {
  final UtBrightnessStyle brightness;
  const UtDivider({super.key, this.brightness = UtBrightnessStyle.dark});

  @override
  Widget build(BuildContext context) {
    final thin = UtStyleDefaultConstant.edgeInsetsDefaultValue;

    return UtLayoutPadding(
      direction: UtDirection.vertical,
      child: Divider(
        color: brightness.getColor(context),
        indent: thin,
        endIndent: thin,
        radius: BorderRadius.all(Radius.circular(thin)),
        thickness: thin,
      ),
    );
  }
}
