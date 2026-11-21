import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 文書コンテンツの本文(言語 `ja` の Markdown)。
class DocumentBody {
  const DocumentBody({required this.contentId, required this.title, required this.markdown});

  final String contentId;

  /// 文書コンテンツの名称(見出し)。
  final String title;

  /// 本文(Markdown)。空のこともある。
  final String markdown;
}

/// 本文が見つからない(文書コンテンツが無い)。
class DocumentBodyNotFound implements Exception {
  const DocumentBodyNotFound(this.contentId);
  final String contentId;

  @override
  String toString() => 'DocumentBodyNotFound($contentId)';
}

/// 本文の取得元。GraphQL 版は `GraphqlDocumentBodyGateway`、既定はメモリ上(サンプル)。
///
/// パターン: Strategy(取得元の差し替え)
abstract interface class IDocumentBodyGateway {
  Future<DocumentBody> load(String contentId);

  /// 本文を保存する(言語 `ja` の値だけを入れ替える)。保存した本文を返す。
  Future<DocumentBody> save(String contentId, String markdown);
}

class InMemoryDocumentBodyGateway implements IDocumentBodyGateway {
  InMemoryDocumentBodyGateway({Map<String, DocumentBody>? bodies}) : _bodies = {...?bodies};

  final Map<String, DocumentBody> _bodies;

  @override
  Future<DocumentBody> load(String contentId) async => _bodies[contentId] ?? (throw DocumentBodyNotFound(contentId));

  @override
  Future<DocumentBody> save(String contentId, String markdown) async {
    final old = _bodies[contentId] ?? (throw DocumentBodyNotFound(contentId));
    return _bodies[contentId] = DocumentBody(contentId: contentId, title: old.title, markdown: markdown);
  }
}

final documentBodyGatewayProvider = Provider<IDocumentBodyGateway>(
  (ref) => InMemoryDocumentBodyGateway(
    bodies: {
      'sample': const DocumentBody(
        contentId: 'sample',
        title: '適用範囲',
        markdown: '## 目的\n\nこの文書の目的を書く。\n\n- 項目 1\n- 項目 2\n',
      ),
    },
  ),
);

/// 現在のユーザーが本文を編集できるか(管理者だけ)。既定は閲覧のみ。アプリが認証の結果で差し込む。
final documentBodyIsAdminProvider = Provider<bool>((ref) => false);
