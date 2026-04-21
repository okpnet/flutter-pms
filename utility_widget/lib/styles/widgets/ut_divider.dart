part of '../ut_style.dart';

class UtDivider extends StatelessWidget {
  final UtBrightnessStyle brightness;
  final Widget? prefix;
  final CrossAxisAlignment prefixAlign;
  const UtDivider({
    super.key,
    this.brightness = UtBrightnessStyle.dark,
    this.prefix,
    this.prefixAlign = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    final thin = UtStyleDefaultConstant.edgeInsetsThinValue;

    return UtLayoutPadding(
      direction: UtDirection.vertical,
      child: Column(
        crossAxisAlignment: prefixAlign,
        children: [
          if (prefix != null)
            SizedBox(height: UtStyleDefaultConstant.edgeInsetsBoldValue),
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
