import 'package:mock_up/imports.dart';

class ContentsTitle extends StatelessWidget {
  final String title;

  const ContentsTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: .left,
      style: context.textStyleMode(
        colorMode: .defaultMode,
        sizeMode: .headlineLarge,
      ),
    ).spaceAll(context);
  }
}
