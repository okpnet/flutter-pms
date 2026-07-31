import '../../imports.dart';
import '../contents.dart';
import '../corporation/company/company.dart';
import 'controller.dart';

part 'contents_control_router.g.dart';

final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedShellRoute<ContentsControlRouter>(
  routes: [
    TypedStatefulShellRoute<ContentsFrameRouter>(
      branches: [
        TypedStatefulShellBranch<CorporationBranch>(
          routes: [
            TypedGoRoute<InfoCompanyRouter>(
              path: InfoCompanyConstant.path,
              name: InfoCompanyConstant.name,
              routes: [
                TypedGoRoute<EditCompanyRouter>(
                  name: EditComapnyConstant.name,
                  path: EditComapnyConstant.path,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    TypedGoRoute<LoginRouter>(
      path: LoginConstant.path,
      name: LoginConstant.name,
    ),
    TypedGoRoute<LogoutRouter>(
      path: LogoutConstant.path,
      name: LogoutConstant.name,
    ),
    TypedGoRoute<ContentsErrorRouter>(
      path: ContentsErrorConstant.path,
      name: ContentsErrorConstant.name,
    ),
  ],
)
class ContentsControlRouter extends ShellRouteData {
  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;
  const ContentsControlRouter();
  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return ContentsController(navigator: navigator);
  }
}
