part of '../ut_style.dart';

class UtDivider extends StatelessWidget {
  final UtBrightnessStyle brightness;
  final Widget? prefix;
  final CrossAxisAlignment prefixAlign;
  final UtBorderStyle thickness;

  const UtDivider({
    super.key,
    this.brightness = UtBrightnessStyle.dark,
    this.prefix,
    this.prefixAlign = CrossAxisAlignment.start,
    this.thickness = .md,
  });

  @override
  Widget build(BuildContext context) {
    final thin = thickness.value;

    return UtLayoutPadding(
      direction: UtDirection.vertical,
      child: Column(
        crossAxisAlignment: prefixAlign,
        children: [
          if (prefix != null) SizedBox(height: UtSpaceStyle.xl.value),
          ?prefix,
          Divider(
            color: brightness.getColor(context),
            indent: thin,
            endIndent: thin,
            radius: BorderRadius.all(Radius.circular(thin)),
            thickness: thin,
          ),
        ],
      ),
    );
  }
}
