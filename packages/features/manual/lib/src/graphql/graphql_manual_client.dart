import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUser, AuditUserSource;

/// マニュアルの GraphQL 版の取得元が共有する、通信の下請け(クエリの実行・言語コード・読み取りの小物)。
///
/// 生成されたモデル(`manual_model`)の操作の名前・変数をそのまま使い、結果は JSON のまま受けて、この中で読む。
/// 通信の失敗は例外のまま呼び出し元へ伝える(画面が表示する)。
class ManualGraphqlClient {
  ManualGraphqlClient(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;

  /// ページ名・本文・名称を読み書きする言語コード(大文字小文字は区別しない)。
  final String languageCode;

  /// 更新者(ログイン中の担当者)。無いときは、更新者を送らない(関数は JWT の担当者を使う)。
  final AuditUserSource? auditUser;

  String? _languageId;

  Future<Map<String, dynamic>> run(
    DocumentNode document,
    Map<String, dynamic> variables, {
    bool mutation = false,
  }) async {
    final result = mutation
        ? await client.mutate(
            MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache),
          )
        : await client.query(
            QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache),
          );
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<AuditUser?> staff() async => auditUser == null ? null : await auditUser!();

  /// 言語コード(`ja`)の ID。最初の 1 回だけ引く(`ManualLanguagePage`)。
  Future<String> languageId(DocumentNode languageQuery) async {
    final cached = _languageId;
    if (cached != null) return cached;
    final data = await run(languageQuery, {'first': 50});
    for (final n in _nodes(data, 'allSharedLanguageCodes')) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) {
        return _languageId = '${n['sharedLanguageCodeId']}';
      }
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  static List<Map> _nodes(Map<String, dynamic> data, String key) =>
      ((data[key] as Map?)?['nodes'] as List? ?? const []).whereType<Map>().toList();

  /// `all~` の結果の行。
  static List<Map> nodesOf(Map<String, dynamic> data, String key) => _nodes(data, key);

  /// 呼称(`labels`)の、指定の言語の名称。
  static String labelOf(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final nodes = (dict['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }

  /// 更新者(`update_user`)の表示名。
  static String userNameOf(Object? user) => user is Map ? labelOf(user['name']) : '';

  static DateTime? dateOf(Object? v) => v == null ? null : DateTime.tryParse('$v');
}
