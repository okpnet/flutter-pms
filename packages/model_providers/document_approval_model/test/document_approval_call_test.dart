// 承認の DB 関数(document_approve)の配線と、アプリの設定(info_app.settings)の標準値の通信テスト(検証用サーバー)。
// 失敗する呼び出しと読み取りだけで、サーバーのデータは変わらない。一般ユーザーの資格情報を渡して実行する。
import 'dart:convert';

import 'package:data_test_harness/data_test_harness.dart';
import 'package:document_approval_model/document_approval_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:pms_graphql/pms_graphql.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

void main() {
  serverTest('存在しない承認前の承認は OPR01(承認前が見つかりません)', (server) async {
    final result = await server.provider.client.mutate(
      MutationOptions(
        document: documentNodeMutationDocumentApprovePageCall,
        variables: Variables$Mutation$DocumentApprovePageCall(
          pPreapprovalId: _zeroId,
        ).toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final errors = result.exception?.graphqlErrors ?? const <GraphQLError>[];
    expect(errors, isNotEmpty, reason: '失敗するはずの呼び出しが成功した: $result');
    expect(errors.first.message, contains('承認前が見つかりません'));
  });

  serverTest(
    'info_app.settings の標準値に version・stamp・pdf(用紙・テーマ・ヘッダ・フッタ)が入っている',
    (server) async {
      final result = await server.provider.query(
        QueryOptions(
          document: documentNodeQueryAppSettingsPageRead,
          variables: Variables$Query$AppSettingsPageRead(first: 1).toJson(),
        ),
      );
      expect(result, isA<Ok<Map<dynamic, dynamic>>>(), reason: '$result');
      final data = Query$AppSettingsPageRead.fromJson(
        Map<String, dynamic>.from((result as Ok<Map<dynamic, dynamic>>).value),
      );
      final nodes = data.allInfoApps?.nodes ?? const [];
      expect(nodes, isNotEmpty);
      final raw = nodes.first?.settings;
      final settings = (raw is String ? jsonDecode(raw) : raw) as Map;
      expect(settings['version'], 1);
      expect(settings['stamp'], isA<Map>());
      final pdf = settings['pdf'] as Map;
      expect(
        pdf.keys,
        containsAll(['page', 'theme', 'header', 'footer', 'custom']),
      );
      expect(
        ((pdf['theme'] as Map)['vars'] as Map).keys,
        containsAll(['accent', 'muted', 'line']),
      );
      expect((pdf['footer'] as Map)['center'], '{page} / {pages}');
    },
  );

  serverTest('存在しない文書の承認の申請は OPR01(文書が見つかりません)。通知は作られない', (server) async {
    final result = await server.provider.client.mutate(
      MutationOptions(
        document: documentNodeMutationDocumentRequestApprovalPageCall,
        variables: Variables$Mutation$DocumentRequestApprovalPageCall(
          pDocumentId: _zeroId,
        ).toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final errors = result.exception?.graphqlErrors ?? const <GraphQLError>[];
    expect(errors, isNotEmpty, reason: '失敗するはずの呼び出しが成功した: $result');
    expect(errors.first.message, contains('文書が見つかりません'));
  });
}
