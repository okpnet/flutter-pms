import 'dart:convert';

import 'package:document_approval_model/document_approval_model.dart';
import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../data/approval_pattern_source.dart';

/// 承認パターンの GraphQL 版の取得元。モデルは `document_approval_model` の `ApprovalPatternStylePage`(読み取り。
/// `mstr_approval_pattern`。名称は言語コード [languageCode] の値。削除済みは出さない)・`ApprovalPatternStylePageEdit`
/// (スタンプの様式 `stamp_style` の更新。更新者つき)。
///
/// 様式の書き込みは、DB でも管理者だけ(トリガー `trg_00_admin_only_stamp_style`。管理者でなければ errcode `ADM01` で失敗し、例外のまま投げる)。
/// 様式は JSON のオブジェクト(PostGraphile v4 の JSON は文字列で渡す)。null は NULL(標準の様式を使う)として書く。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [ApprovalPatternOption] を変換する)
class GraphqlApprovalPatternSource implements IApprovalPatternSource {
  GraphqlApprovalPatternSource(this.client, {this.languageCode = 'ja', this.auditUser});

  final GraphQLClient client;
  final String languageCode;
  final AuditUserSource? auditUser;

  Future<Map<String, dynamic>> _run(DocumentNode document, Map<String, dynamic> variables, {bool mutation = false}) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _languageId() async {
    final data = await _run(
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
    final data = await _run(
      documentNodeQueryApprovalPatternStylePageRead,
      Variables$Query$ApprovalPatternStylePageRead(first: 500, languageCodeId: await _languageId()).toJson(),
    );
    final nodes = (data['allMstrApprovalPatterns'] as Map?)?['nodes'] as List? ?? const [];
    return [
      for (final n in nodes.whereType<Map>())
        ApprovalPatternOption(
          id: '${n['mstrApprovalPatternId']}',
          name: _name(n['labels']),
          stampStyle: _style(n['stampStyle']),
        ),
    ];
  }

  @override
  Future<void> saveStampStyle(String patternId, Map<String, dynamic>? style) async {
    final user = auditUser == null ? null : await auditUser!();
    await _run(
      documentNodeMutationApprovalPatternStylePageEdit,
      {
        'mstrApprovalPatternId': patternId,
        // 値を null にするには、キーを残したまま null を送る(省略すると変わらない)
        'stampStyle': style == null ? null : jsonEncode(style),
        'updateUserId': ?user?.staffId,
        'updateUserHistoryId': ?user?.staffHistoryId,
      },
      mutation: true,
    );
  }

  /// 様式(JSON のオブジェクト、または JSON の文字列)。オブジェクト以外・読めないものは null(標準)。
  static Map<String, dynamic>? _style(Object? raw) {
    var v = raw;
    if (v is String) {
      try {
        v = jsonDecode(v);
      } on FormatException {
        return null;
      }
    }
    return v is Map ? v.cast<String, dynamic>() : null;
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
