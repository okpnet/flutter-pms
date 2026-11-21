import 'package:baton_lib/baton_lib.dart';

/// 文書コンテンツの本文(Markdown)の画面へ。[contentId] は文書コンテンツの ID。
/// [edit] が true のときは編集の状態で開く(管理者だけ。管理者でなければ閲覧になる)。
final class DocumentBodyDestination extends PageDestination<void> {
  const DocumentBodyDestination(this.contentId, {this.edit = false});

  final String contentId;
  final bool edit;

  @override
  Map<String, Object?> toJson() => {...super.toJson(), 'contentId': contentId, 'edit': edit};
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> documentBodyDestinationSamples = [
  DocumentBodyDestination('c1'),
  DocumentBodyDestination('c1', edit: true),
];
