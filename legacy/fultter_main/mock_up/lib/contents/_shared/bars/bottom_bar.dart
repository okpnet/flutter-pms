// Project imports:
import 'package:mock_up/imports.dart';

class BottomBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const BottomBar({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: navigationShell.currentIndex,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
      ],
      onDestinationSelected: _selectIndex,
    );
  }

  void _selectIndex(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
