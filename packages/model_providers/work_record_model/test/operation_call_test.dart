// 操作の DB 関数の通信テスト(検証用サーバー)。失敗する呼び出しだけで、サーバーのデータは変わらない。
// 関数の配線(引数・戻り値の型・JSON の明細)と、エラーコード(errcode)を確かめる。
// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。成功の経路は、検証用 DB にマスタ・データを入れてから別に確認する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:work_record_model/work_record_model.dart';

const _zeroId = '00000000-0000-0000-0000-000000000000';

/// 失敗していて、エラーの文(DB の関数の RAISE の文)に [snippet] を含むこと。
/// errcode(DB の関数の ERRCODE)が GraphQL のエラーに含まれるとき(PostGraphile の --extended-errors errcode)は、[code] と一致すること。
void _expectFailure(QueryResult result, String code, String snippet) {
  final errors = result.exception?.graphqlErrors ?? const <GraphQLError>[];
  expect(errors, isNotEmpty, reason: '失敗するはずの呼び出しが成功した: $result');
  expect(errors.first.message, contains(snippet), reason: '$result');
  final ext = errors.first.extensions;
  final exception = ext?['exception'];
  final errcode = ext?['errcode'] ?? (exception is Map ? exception['errcode'] : null);
  if (errcode != null) expect(errcode, code);
}

void main() {
  group('操作の DB 関数(失敗する呼び出しだけ)', () {
    serverTest('存在しない引当予約の解除は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationInventoryRequestReleasePageCall,
          variables: Variables$Mutation$InventoryRequestReleasePageCall(pInventoryRequestId: _zeroId).toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '引当予約が見つかりません');
    });

    serverTest('存在しない引当予約の保管は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationInventoryRequestHoldPageCall,
          variables: Variables$Mutation$InventoryRequestHoldPageCall(pInventoryRequestId: _zeroId, pContainerId: _zeroId).toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '引当予約が見つかりません');
    });

    serverTest('存在しないロットを在庫にするは OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationLotReleasePageCall,
          variables: Variables$Mutation$LotReleasePageCall(pVisiterId: _zeroId).toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '棚ビジター(ロット)が見つかりません');
    });

    serverTest('存在しない棚への保管は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationLotHoldPageCall,
          variables: Variables$Mutation$LotHoldPageCall(pVisiterId: _zeroId, pContainerId: _zeroId, pQuantity: '1').toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '保管先のコンテナが見つかりません');
    });
  });
}
