import 'dart:convert';

import 'package:gql/ast.dart' show DocumentNode;
import 'package:graphql/client.dart';
import 'package:quality_document_model/quality_document_model.dart';

import '../body/document_body_gateway.dart';

/// 文書コンテンツの本文の GraphQL 版の取得元。
///
/// - 読み取り: 文書コンテンツ(`mstr_document_content`)の `contents`(共有テキストの ID)と題名を引き、
///   `DocumentContentBodyPage`(共有テキストの値。言語 `ja`)で本文(Markdown)を読む。
/// - 保存: 共通関数 `shared_text_save`(`DocumentContentTextSavePageCall`)で、`ja` の値だけを入れ替える(他の言語は残る)。
///   担当者は関数が JWT の `staff_id` から決める。
///
/// パターン: Adapter(生成された読み込みの結果と、画面の [DocumentBody] を変換する)
class GraphqlDocumentBodyGateway implements IDocumentBodyGateway {
  GraphqlDocumentBodyGateway(this.client, {this.languageCode = 'ja'});

  final GraphQLClient client;
  final String languageCode;
  String? _languageId;

  Future<Map<String, dynamic>> _run(
    DocumentNode document,
    Map<String, dynamic> variables, {
    bool mutation = false,
  }) async {
    final result = mutation
        ? await client.mutate(MutationOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache))
        : await client.query(QueryOptions(document: document, variables: variables, fetchPolicy: FetchPolicy.noCache));
    final e = result.exception;
    if (e != null) throw e;
    return result.data ?? const {};
  }

  Future<String> _language() async {
    final cached = _languageId;
    if (cached != null) return cached;
    final data = await _run(
      gql('query { allSharedLanguageCodes(first: 20, filter: {remove: {equalTo: false}}) { nodes { sharedLanguageCodeId code } } }'),
      const {},
    );
    for (final n in ((data['allSharedLanguageCodes'] as Map?)?['nodes'] as List? ?? const []).whereType<Map>()) {
      if ('${n['code']}'.toLowerCase() == languageCode.toLowerCase()) {
        return _languageId = n['sharedLanguageCodeId'] as String;
      }
    }
    throw StateError('言語コード $languageCode が見つかりません');
  }

  static final _contentQuery = gql(r'''
query DocumentBodyContent($id: UUID!, $languageCodeId: UUID!) {
  mstrDocumentContentByMstrDocumentContentId(mstrDocumentContentId: $id) {
    mstrDocumentContentId
    contents
    code
    titleText: sharedAppellationByTitles {
      sharedDictionaryBySharedDictionaryNameId {
        value: sharedDictionaryValuesBySharedDictionaryId(condition: { sharedLanguageCodeId: $languageCodeId }) {
          nodes { dictionaryValue }
        }
      }
    }
  }
}
''');

  Future<({String textId, String title})> _content(String contentId) async {
    final data = await _run(_contentQuery, {'id': contentId, 'languageCodeId': await _language()});
    final c = data['mstrDocumentContentByMstrDocumentContentId'];
    if (c is! Map) throw DocumentBodyNotFound(contentId);
    final dict = (c['titleText'] as Map?)?['sharedDictionaryBySharedDictionaryNameId'] as Map?;
    final nodes = (dict?['value'] as Map?)?['nodes'] as List?;
    final title = nodes == null || nodes.isEmpty ? '${c['code'] ?? ''}' : '${(nodes.first as Map)['dictionaryValue'] ?? ''}';
    return (textId: '${c['contents']}', title: title);
  }

  Future<String> _markdown(String textId) async {
    final data = await _run(
      documentNodeQueryDocumentContentBodyPageRead,
      Variables$Query$DocumentContentBodyPageRead(
        first: 1,
        filter: Input$SharedTextValueFilter(
          sharedTextId: Input$UUIDFilter(equalTo: textId),
          sharedLanguageCodeId: Input$UUIDFilter(equalTo: await _language()),
        ),
      ).toJson(),
    );
    final nodes = (data['allSharedTextValues'] as Map?)?['nodes'] as List? ?? const [];
    return nodes.isEmpty ? '' : '${(nodes.first as Map)['textValue'] ?? ''}';
  }

  @override
  Future<DocumentBody> load(String contentId) async {
    final c = await _content(contentId);
    return DocumentBody(contentId: contentId, title: c.title, markdown: await _markdown(c.textId));
  }

  @override
  Future<DocumentBody> save(String contentId, String markdown) async {
    final c = await _content(contentId);
    await _run(
      documentNodeMutationDocumentContentTextSavePageCall,
      // PostGraphile v4 の JSON は文字列で渡す
      Variables$Mutation$DocumentContentTextSavePageCall(
        pTextId: c.textId,
        pValues: jsonEncode({languageCode: markdown}),
      ).toJson(),
      mutation: true,
    );
    return DocumentBody(contentId: contentId, title: c.title, markdown: await _markdown(c.textId));
  }
}
