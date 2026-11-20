import 'package:baton_lib/baton_lib.dart';

/// マニュアルへ。[pageId] を指定するとそのページを開く(省略は最初のルート)。
/// [edit] が true のときは、編集の状態で開く(管理者だけ。管理者でなければ閲覧になる)。
final class ManualDestination extends PageDestination<void> {
  const ManualDestination({this.pageId, this.edit = false});

  final String? pageId;
  final bool edit;

  @override
  Map<String, Object?> toJson() => {
    ...super.toJson(),
    'pageId': pageId,
    'edit': edit,
  };
}

/// 登録漏れ検出用の見本。遷移先を追加したら、ここにも 1 件足す。
const List<PageDestination<Object?>> manualDestinationSamples = [
  ManualDestination(),
  ManualDestination(pageId: 'm1', edit: true),
];
