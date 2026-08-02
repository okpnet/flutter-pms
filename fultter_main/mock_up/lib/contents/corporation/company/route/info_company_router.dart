import '../../../../imports.dart';
import '../company.dart';

part 'info_company_router.g.dart';

abstract class InfoCompanyConstant {
  static const String name = 'info_cmpany';
  static const String path = '/corporation/info_cmpany';
}

@TypedGoRoute<InfoCompanyRouter>(
  path: InfoCompanyConstant.path,
  name: InfoCompanyConstant.name,
)
class InfoCompanyRouter extends GoRouteData with $InfoCompanyRouter {
  const InfoCompanyRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return InfoCompany();
  }
}
