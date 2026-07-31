import 'package:mock_up/imports.dart';

///コンテンツコントロールページ
class ContentsController extends StatelessWidget {
  final Widget navigator;
  const ContentsController({super.key, required this.navigator});
  @override
  Widget build(BuildContext context) {
    return PopScope(canPop: false, child: Scaffold(body: navigator));
  }
}
