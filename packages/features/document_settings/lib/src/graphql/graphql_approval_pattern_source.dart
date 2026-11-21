import 'package:document_approval_model/document_approval_model.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';

import '../data/approval_pattern_source.dart';

/// 承認パターンの一覧の GraphQL 版の取得元。モデルは `document_approval_model` の `ApprovalPatternStylePage`
/// (`mstr_approval_pattern`。名称は言語コード [languageCode] の値)。削除済みは出さない。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [ApprovalPatternOption] を変換する)
class GraphqlApprovalPatternSource implements IApprovalPatternSource {
  GraphqlApprovalPatternSource(this.client, {this.languageCode = 'ja'});

  final GraphQLClient client;
  final String languageCode;

  Future<Map<String, dynamic>> _query(DocumentNode document, Map<String, dynamic> variables) async {
    final result = await client.query(
      QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache),
    );
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _languageId() async {
    final data = await _query(
      gql('query { allSharedLanguageCodes(first: 50, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }'),
      const {},
    );
    final nodes = (data['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const [];
    for (final n in nodes.whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) return '${n['sharedLanguageCodeId']}';
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  @override
  Future<List<ApprovalPatternOption>> list() async {
    final data = await _query(
      documentNodeQueryApprovalPatternStylePageRead,
      Variables$Query$ApprovalPatternStylePageRead(first: 500, languageCodeId: await _languageId()).toJson(),
    );
    final nodes = (data['allMstrApprovalPatterns'] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes.whereType<Map>())
        ApprovalPatternOption(id: '${n['mstrApprovalPatternId']}', name: _name(n['labels'])),
    ];
  }

  static String _name(Object? labels) {
    if (labels is! Map) return '';
    final dict = labels['sharedDictionaryBySharedDictionaryNameId'];
    if (dict is! Map) return '';
    final nodes = (dict['value'] as Map?)?['nodes'];
    if (nodes is! List || nodes.isEmpty) return '';
    return '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
  }
}
