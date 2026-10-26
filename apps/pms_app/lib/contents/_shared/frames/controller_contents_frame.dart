import 'package:pms_app/services/core/core_service/_core_service.dart';
import '../../../imports.dart';
import '../_shared.dart';

///ブランチ(StatefulShellRoute)を持つ枠。タイトルバー・サイドバーは[AppMainFrame]。
class ControllerContentsFrame extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const ControllerContentsFrame({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        AppMainFrame(body: navigationShell),
        OverlayIndicator(isShow: ref.watch(appOverlayControllerProvider)),
      ],
    );
  }
}
