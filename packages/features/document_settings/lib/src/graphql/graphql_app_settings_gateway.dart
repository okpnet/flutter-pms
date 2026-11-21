import 'package:document_approval_model/document_approval_model.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart' show AuditUserSource;

import '../data/settings_draft.dart';

/// アプリの設定(`info_app.settings`)の GraphQL 版の取得元。モデルは `document_approval_model`
/// (`AppSettingsPage`・`AppSettingsPageEdit`)。`info_app` は固定の 1 件。
///
/// 書き込みは更新者つき([auditUser]。ログイン中の担当者)。管理者以外が書けるかは DB の権限(今は一般ユーザーも UPDATE できる)ではなく、
/// 画面が管理者だけに限る。通信の失敗は例外のまま投げる(画面が「保存できませんでした」にする)。
class GraphqlAppSettingsGateway implements IAppSettingsGateway {
  GraphqlAppSettingsGateway(this.client, {this.auditUser});

  final GraphQLClient client;
  final AuditUserSource? auditUser;

  String? _infoAppId;

  @override
  Future<Object?> load() async {
    final result = await client.query(
      QueryOptions(
        document: documentNodeQueryAppSettingsPageRead,
        variables: Variables$Query$AppSettingsPageRead(first: 1).toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
    final data = Query$AppSettingsPageRead.fromJson(result.data ?? const {});
    final node = (data.allInfoApps?.nodes ?? const []).firstOrNull;
    if (node == null) return null;
    _infoAppId = node.infoAppId;
    return node.settings;
  }

  @override
  Future<void> save(Map<String, dynamic> json) async {
    // 保存の前に、行の ID が分からないとき(読み込みに失敗していた)は、読み直す
    if (_infoAppId == null) await load();
    final id = _infoAppId;
    if (id == null) throw StateError('info_app が見つかりません');
    final user = auditUser == null ? null : await auditUser!();
    final result = await client.mutate(
      MutationOptions(
        document: documentNodeMutationAppSettingsPageEdit,
        variables: Variables$Mutation$AppSettingsPageEdit(
          infoAppId: id,
          settings: json,
          updateUserId: user?.staffId,
          updateUserHistoryId: user?.staffHistoryId,
        ).toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final e = result.exception;
    if (e != null) throw e;
  }
}
