import 'package:entity_screens/entity_screens.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

/// GraphQL の取得元の共通の通信(読み込み・書き込み・更新者)。
mixin GraphqlAccess {
  GraphQLClient get client;
  AuditUserSource? get auditUser;

  Future<AuditUser?> updater() async => auditUser == null ? null : auditUser!();

  Future<Map<String, dynamic>> run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) _throwMapped(e);
    return result.data ?? const {};
  }

  Never _throwMapped(OperationException e) {
    final message = e.graphqlErrors.map((x) => x.message).join(' ');
    if (message.contains('名称には、いずれかの言語に値が必要')) {
      throw const EntityValidationException({'name': EntityFieldError.required});
    }
    throw e;
  }

  static String text(Object? v) => v == null ? '' : '$v';

  /// 空の文字は null(列を空にする)。
  static String? nullable(String v) => v.trim().isEmpty ? null : v.trim();
}
