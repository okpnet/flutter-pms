// Project imports:
import 'package:mock_up/services/authorization/mock_autorize_service.dart';

import '../../../imports.dart';
import '../shared.dart';

class ContentsFrame extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const ContentsFrame({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.read(mockAutorizeServiceProvider);
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppTitleBar(),
        drawer: authState == .authenticated ? DrawerMenu() : null,
        body: navigationShell,
      ),
    );
  }
}
