import 'package:pbapi/pbapi.dart';
import 'package:pms_graphql/pms_graphql.dart';

/// アプリの `graphqlAuthorizationProvider`(apps/pms_app)と同じ振る舞い:
/// PocketBase のセッションから JWT を得て `Bearer …` を返す。
/// 得られなければ [SessionUnavailableException](通信しない)。
Future<String?> Function() appAuthorization(
  SessionService session, {
  Duration margin = const Duration(seconds: 60),
}) => () async {
  try {
    return 'Bearer ${(await session.graphqlToken(margin: margin)).token}';
  } on PbException catch (e) {
    throw SessionUnavailableException(
      transient: e.isTransient,
      message: e.logMessage,
    );
  }
};
