part of '../ut_text.dart';

class UtText extends StatelessWidget with UtTextStyleMixin {
  final String text;
  final TextAlign align;
  final int maxLine;
  final TextOverflow overflow;
  final UtTextColorStyle colorStyle;
  final UtTextPriorityStyle priorityStyle;

  @override
  UtTextPriorityStyle get priority => priorityStyle;
  @override
  UtTextColorStyle get color => colorStyle;

  const UtText(
    this.text, {
    super.key,
    this.align = TextAlign.left,
    this.maxLine = 1,
    this.overflow = TextOverflow.ellipsis,
    this.colorStyle = UtTextColorStyle.text,
    this.priorityStyle = UtTextPriorityStyle.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      overflow: overflow,
      maxLines: maxLine,
      style: buildStyle(context),
    );
  }

  factory UtText.title(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, priorityStyle: .title);
  }

  factory UtText.subTitle(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, priorityStyle: .subtitle);
  }
  factory UtText.scetionTitle(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: .text, priorityStyle: .sectionTitle);
  }
  factory UtText.text(
    String text, {
    TextAlign align = TextAlign.left,
    bool small = false,
  }) {
    return UtText(
      text,
      priorityStyle: small
          ? UtTextPriorityStyle.smallText
          : UtTextPriorityStyle.text,
    );
  }
  factory UtText.alert(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, colorStyle: UtTextColorStyle.error);
  }
  factory UtText.label(String text, {TextAlign align = TextAlign.left}) {
    return UtText(text, priorityStyle: .label);
  }
  factory UtText.sectionSubTitle(
    String text, {
    TextAlign align = TextAlign.left,
  }) {
    return UtText(text, priorityStyle: .sectionSubTitle);
  }
}
