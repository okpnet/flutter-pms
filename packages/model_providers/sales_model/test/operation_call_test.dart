// 操作の DB 関数の通信テスト(検証用サーバー)。失敗する呼び出しだけで、サーバーのデータは変わらない。
// 関数の配線(引数・戻り値の型・JSON の明細)と、エラーコード(errcode)を確かめる。
// 一般ユーザーの資格情報を渡して実行する(packages/infra/data_test_harness/CLAUDE.md)。成功の経路は、検証用 DB にマスタ・データを入れてから別に確認する。
import 'package:data_test_harness/data_test_harness.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql/client.dart';
import 'package:sales_model/sales_model.dart';

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
    serverTest('存在しない受注明細のキャンセルは OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationOrderDetailCancelPageCall,
          variables: Variables$Mutation$OrderDetailCancelPageCall(pOrderDetailId: _zeroId, pQuantity: '1').toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '受注明細が見つかりません');
    });

    serverTest('存在しない受注明細の停止は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationOrderDetailSetStopPageCall,
          variables: Variables$Mutation$OrderDetailSetStopPageCall(pOrderDetailId: _zeroId, pStop: true).toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '受注明細が見つかりません');
    });

    serverTest('存在しない受注明細の変更は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationOrderDetailChangePageCall,
          variables: Variables$Mutation$OrderDetailChangePageCall(pOrderDetailId: _zeroId, pNewQuantity: '1').toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '受注明細が見つかりません');
    });

    serverTest('数量・期限が無い受注明細の変更は OPR02', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationOrderDetailChangePageCall,
          variables: Variables$Mutation$OrderDetailChangePageCall(pOrderDetailId: _zeroId).toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR02', '必須');
    });

    serverTest('存在しない受注明細の精算は OPR01', (server) async {
      final result = await server.provider.client.mutate(
        MutationOptions(
          document: documentNodeMutationOrderDetailSettlePageCall,
          variables: Variables$Mutation$OrderDetailSettlePageCall(pOrderDetailId: _zeroId, pSettlementKindId: _zeroId, pAmount: '100').toJson(),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      _expectFailure(result, 'OPR01', '受注明細が見つかりません');
    });
  });
}
