part of '../ut_decoration.dart';

class UtInfoTile extends StatelessWidget {
  static const double maxWidth = 320;
  final double width;
  final String label;
  final Widget mainLine;
  final Widget? endLine;

  const UtInfoTile({
    super.key,
    required this.label,
    this.width = double.infinity,
    required this.mainLine,
    this.endLine,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final testWidts = constraints.constrainWidth();

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: UtLayoutPadding.of(
            child: Column(
              spacing: UtSpaceStyle.md.value,
              crossAxisAlignment: .stretch,
              children: [
                UtText.label(label),
                UtDivider(brightness: .dark, thickness: .xs),
                mainLine,
                ?endLine,
              ],
            ),
          ),
        );
      },
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
  }) {
    return UtInfoTile(
      label: label,
      // key: key,
      mainLine: UtLayoutPadding.of(
        child: Center(
          child: Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: [
              UtText.subTitle(numerator),
              UtLayoutPadding.of(
                direction: .all,
                child: UtText.scetionTitle('/'),
              ),
              UtLayoutPadding.of(
                direction: .all,
                child: UtText.scetionTitle(denominator),
              ),
              if (unit != null)
                UtLayoutPadding.of(direction: .all, child: UtText.text(unit)),
            ],
          ),
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
  }) {
    final buffer = value.toStringAsFixed(degit).split('.');

    return UtInfoTile(
      label: label,
      // key: key,
      mainLine: UtLayoutPadding.of(
        child: Center(
          child: Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: [
              UtText.subTitle(buffer.first),
              if (buffer.length >= 2) ...[
                UtLayoutPadding.of(
                  direction: UtDirection.bottom,
                  child: UtText.scetionTitle('.'),
                ),
                UtLayoutPadding.of(
                  direction: .all,
                  child: UtText.scetionTitle(buffer.skip(1).join()),
                ),
              ],
              UtLayoutPadding.of(direction: .all, child: UtText.text('%')),
            ],
          ),
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
  }) {
    return UtInfoTile(
      label: label,
      // key: key,
      mainLine: UtLayoutPadding.of(
        child: Center(
          child: Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .end,
            children: [
              UtText.subTitle(text),
              if (suffixText != null)
                UtLayoutPadding.of(
                  direction: .all,
                  child: UtText.text(suffixText),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
