import 'package:mock_up/contents/_shared/contents_frame.dart';
import 'package:mock_up/imports.dart';

class ContentsFrameRouter extends StatefulShellRouteData {
  const ContentsFrameRouter();
  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return ContentsFrame(navigationShell: navigationShell);
  }
}
