import 'package:mock_up/imports.dart';

import '../records_material_transfer.dart';

part 'records_material_transfer_router.g.dart';

abstract class RecordsMaterialTransferConstant {
  static const String name = 'actual_material_transfer';
  static const String path = '/actual/material_transfer/records';
}

@TypedGoRoute<RecordsMaterialTransferRouter>(
  path: RecordsMaterialTransferConstant.path,
  name: RecordsMaterialTransferConstant.name,
)
class RecordsMaterialTransferRouter extends GoRouteData
    with $RecordsMaterialTransferRouter {
  RecordsMaterialTransferRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RecordsMaterialTransfer();
  }
}
