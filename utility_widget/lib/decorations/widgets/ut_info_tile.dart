part of '../ut_decoration.dart';

class UtInfoTile extends StatelessWidget {
  final double width;
  final String label;
  final Widget mainLine;
  final Widget? endLine;
  final Widget? labelSuffix;

  const UtInfoTile({
    super.key,
    required this.label,
    this.width = double.infinity,
    required this.mainLine,
    this.endLine,
    this.labelSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: UtLayoutPadding(
        child: Column(
          spacing: UtSpaceStyle.md.value,
          crossAxisAlignment: .stretch,
          children: [
            Row(
              // crossAxisAlignment: .stretch,
              mainAxisAlignment: .start,
              children: [
                Expanded(
                  flex: labelSuffix == null ? 1 : 3,
                  child: UtText.label(label),
                ),
                ?labelSuffix,
              ],
            ),
            UtDivider(brightness: .dark, thickness: .xs, paddingStyle: .xs),
            mainLine,
            ?endLine,
          ],
        ),
      ),
    );
  }

  ///分数表示
  factory UtInfoTile.fraction({
    Key? key,
    required String label,
    required String denominator,
    required String numerator,
    String? unit,
    Widget? endLine,
    Widget? labelSuffix,
  }) {
    return UtInfoTile(
      label: label,
      labelSuffix: labelSuffix,
      // key: key,
      mainLine: Center(
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .end,
          children: [
            UtText.subTitle(numerator),
            UtLayoutPadding(direction: .all, child: UtText.scetionTitle('/')),
            UtLayoutPadding(
              direction: .all,
              child: UtText.scetionTitle(denominator),
            ),
            if (unit != null)
              UtLayoutPadding(direction: .all, child: UtText.text(unit)),
          ],
        ),
      ),
    );
  }

  ///パーセント表示
  factory UtInfoTile.percent({
    Key? key,
    required String label,
    required double value,
    required int degit,
    Widget? endLine,
    Widget? labelSuffix,
  }) {
    final buffer = value.toStringAsFixed(degit).split('.');

    return UtInfoTile(
      label: label,
      labelSuffix: labelSuffix,
      // key: key,
      mainLine: Center(
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .end,
          children: [
            UtText.subTitle(buffer.first),
            if (buffer.length >= 2) ...[
              UtLayoutPadding(
                direction: UtDirection.bottom,
                child: UtText.scetionTitle('.'),
              ),
              UtLayoutPadding(
                direction: .all,
                child: UtText.scetionTitle(buffer.skip(1).join()),
              ),
            ],
            UtLayoutPadding(direction: .all, child: UtText.text('%')),
          ],
        ),
      ),
    );
  }

  ///テキスト表示
  factory UtInfoTile.text({
    Key? key,
    required String label,
    required String text,
    String? suffixText,
    Widget? endLine,
    Widget? labelSuffix,
  }) {
    return UtInfoTile(
      label: label,
      labelSuffix: labelSuffix,
      // key: key,
      mainLine: Center(
        child: Row(
          mainAxisAlignment: .center,
          crossAxisAlignment: .end,
          children: [
            UtText.subTitle(text),
            if (suffixText != null)
              UtLayoutPadding(direction: .all, child: UtText.text(suffixText)),
          ],
        ),
      ),
    );
  }
}
