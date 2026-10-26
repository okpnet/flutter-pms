import 'package:pms_app/imports.dart';

class ContentsTitle extends StatelessWidget {
  final String title;

  const ContentsTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: .left,
      style: context.textStyleMode(
        color: .defaultMode,
        size: (t) => t.headlineLarge,
      ),
    ).spaceAll(context);
  }
}
