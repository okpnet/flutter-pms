// Project imports:

import '../../../imports.dart';
import '../actual.dart';

part 'register_material_transfer_router.g.dart';

abstract class RegisterMaterialTransferConstant {
  static const String name = 'actual_material_transfer';
  static const String path = '/actual/material_transfer';
}

@TypedGoRoute<RegisterMaterialTransferRouter>(
  path: RegisterMaterialTransferConstant.path,
  name: RegisterMaterialTransferConstant.name,
)
class RegisterMaterialTransferRouter extends GoRouteData
    with $RegisterMaterialTransferRouter {
  const RegisterMaterialTransferRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RegisterMaterialTransfer();
  }
}
