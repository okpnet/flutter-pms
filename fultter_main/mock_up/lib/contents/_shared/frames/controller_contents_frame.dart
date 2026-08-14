// Project imports:
import 'package:mock_up/services/authorization/mock_autorize_service.dart';
import 'package:mock_up/services/core/core_service/core_service.dart';

import '../../../imports.dart';
import '../shared.dart';

class ContentsFrame extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  final FloatingActionButton? floatingActionButton;
  const ContentsFrame({
    super.key,
    required this.navigationShell,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.read(mockAutorizeServiceProvider);
    return PopScope(
      canPop: false,
      child: Stack(
        children: [
          Scaffold(
            appBar: AppTitleBar(),
            drawer: authState.authStateType == .authenticated
                ? DrawerMenu()
                : null,
            body: navigationShell,
            floatingActionButton: floatingActionButton,
          ),
          OverlayIndicator(isShow: ref.watch(appOverlayControllerProvider)),
        ],
      ),
    );
  }
}
