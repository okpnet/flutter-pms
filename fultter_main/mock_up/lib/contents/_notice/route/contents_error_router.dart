// Project imports:
import 'package:mock_up/contents/_models/error/error_status.dart';
import 'package:mock_up/contents/_notice/notice.dart';
import 'package:mock_up/imports.dart';

part 'contents_error_router.g.dart';

abstract class ContentsErrorConstant {
  static const String name = 'error';
  static const String path = '/error';
}

@TypedGoRoute<ContentsErrorRouter>(
  path: ContentsErrorConstant.path,
  name: ContentsErrorConstant.name,
)
class ContentsErrorRouter extends GoRouteData with $ContentsErrorRouter {
  const ContentsErrorRouter();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    final status = ErrorStatusMapper.fromMap(state.uri.queryParameters);
    if (status.erroOrigin == .unknown) {
      throw AssertionError('error status result unknow.');
    }
    return ContentError(errorStattus: status);
  }
}
