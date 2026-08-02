// Project imports:
import '../../../../imports.dart';
import '../company.dart';

part 'edit_company_router.g.dart';

abstract class EditComapnyConstant {
  static const String name = 'edit_comapny';
  static const String path = '/corporation/edit_company';
}

@TypedGoRoute<EditCompanyRouter>(
  path: EditComapnyConstant.path,
  name: EditComapnyConstant.name,
)
class EditCompanyRouter extends GoRouteData with $EditCompanyRouter {
  const EditCompanyRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditCompany();
  }
}
