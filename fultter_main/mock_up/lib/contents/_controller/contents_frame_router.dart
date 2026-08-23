// Project imports:

import '../../imports.dart';
import '../_shared/shared.dart';

class ContentsFrameRouter extends StatefulShellRouteData {
  const ContentsFrameRouter();
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ControllerContentsFrame(navigationShell: navigationShell);
  }
}
