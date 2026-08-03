// Project imports:
import '../../../imports.dart';
import '../shared.dart';

class ContentsFrame extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const ContentsFrame({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(title: Text('title test')),
        body: navigationShell,
        bottomNavigationBar: BottomBar(navigationShell: navigationShell),
      ),
    );
  }
}
