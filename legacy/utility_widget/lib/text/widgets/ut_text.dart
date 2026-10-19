part of '../ut_text.dart';

class UtText extends StatelessWidget with UtTextStyleMixin {
  final String text;
  final TextAlign align;
  final int maxLine;
  final TextOverflow overflow;
  final UtTextColorStyle colorStyle;
  final UtTextSizeStyle sizeStyle;

  @override
  UtTextColorStyle get color => colorStyle;

  const UtText(
    this.text, {
    super.key,
    this.align = TextAlign.left,
    this.maxLine = 1,
    this.overflow = TextOverflow.ellipsis,
    this.colorStyle = UtTextColorStyle.text,
    this.sizeStyle = UtTextSizeStyle.none,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      overflow: overflow,
      maxLines: maxLine,
      style: buildStyle(context, sizeStyle),
    );
  }

  factory UtText.title(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, sizeStyle: .xl);
  }

  factory UtText.subTitle(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, sizeStyle: .lg);
  }

  factory UtText.scetionTitle(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, sizeStyle: .md);
  }

  factory UtText.sectionSubTitle(
    String text, {
    TextAlign align = TextAlign.left,
  }) {
    return UtText(text, sizeStyle: .sm);
  }
  factory UtText.text(
    String text, {
    TextAlign align = TextAlign.left,
    UtTextSizeStyle sizeStyle = .none,
  }) {
    return UtText(text, align: align, sizeStyle: sizeStyle);
  }
  factory UtText.label(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, sizeStyle: .label);
  }

  factory UtText.alert(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: UtTextColorStyle.error);
  }
}
