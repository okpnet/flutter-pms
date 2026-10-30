import 'dart:async';

import 'package:graphql/client.dart';
import 'package:production_plan_model/production_plan_model.dart';

import 'mrp_gateway.dart';
import 'mrp_models.dart';

/// MRP の窓口の実体(GraphQL)。メソッド `mrpExecute`(DB 関数 `tests.mrp_execute`)で計算し、
/// 実行(`trans_mrp_run`)の提案(`trans_mrp_suggestion`)を読み込んで結果にする。
///
/// 生成された型はここで機能の型([MrpRunResult]・[MrpSuggestion]・[MrpFailure])に変換し、外へ出さない。
/// パターン: Adapter(GraphQL のモデルを窓口 [IMrpGateway] へ適合させる)
class GraphqlMrpGateway implements IMrpGateway {
  GraphqlMrpGateway({
    required this.client,
    required this.languageCodeId,
    this.pageSize = 500,
    this.timeout = const Duration(minutes: 10),
    DateTime Function()? now,
  }) : _now = now ?? DateTime.now;

  final GraphQLClient client;

  /// 品目名の言語(`shared_language_code` の id)。
  final String languageCodeId;

  /// 実行(`mrpExecute`)の通信の制限時間。サーバー側の制限(57014)より長くしておく。
  final Duration timeout;

  /// 提案を1回に読み込む件数。
  final int pageSize;
  final DateTime Function() _now;

  @override
  Future<MrpRunResult> execute({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  }) async {
    // MRP の計算は重く、クライアントの既定の制限時間(5秒)を超える。生成の Options は制限時間を持てないため、
    // 生成の文書と変数で MutationOptions を組む。
    final variables = Variables$Mutation$MrpExecute(
      input: Input$MrpExecuteInput(
        pMode: mode.code,
        pStaffId: staffId.isEmpty ? null : staffId,
        pOrderDetailIds: orderDetailIds.isEmpty ? null : orderDetailIds,
        pAcceptLate: acceptLate,
      ),
    );
    final result = await client.mutate(
      MutationOptions<Mutation$MrpExecute>(
        document: documentNodeMutationMrpExecute,
        variables: variables.toJson(),
        parserFn: (data) => Mutation$MrpExecute.fromJson(data),
        fetchPolicy: FetchPolicy.noCache,
        queryRequestTimeout: timeout,
      ),
    );
    final failure = failureOf(result.exception);
    if (failure != null) throw failure;
    final Mutation$MrpExecute$mrpExecute$transMrpRun? run;
    try {
      run = result.parsedData?.mrpExecute?.transMrpRun;
    } on Object catch (e) {
      throw MrpFailure('MRP_PARSE', '$e');
    }
    if (run == null) {
      throw const MrpFailure('MRP_NO_RUN', '実行の結果が返りませんでした');
    }
    final suggestions = await fetchSuggestions(run.transMrpRunId);
    return MrpRunResult(
      executedAt: run.runAt ?? _now(),
      mode: mode,
      suggestions: suggestions,
    );
  }

  /// 実行 [runId] の提案を、順番(`seq`)どおりにすべて読み込む。
  Future<List<MrpSuggestion>> fetchSuggestions(String runId) async {
    final suggestions = <MrpSuggestion>[];
    while (true) {
      final result = await client.query$MrpSuggestionPageRead(
        Options$Query$MrpSuggestionPageRead(
          variables: Variables$Query$MrpSuggestionPageRead(
            first: pageSize,
            offset: suggestions.isEmpty ? null : suggestions.length,
            filter: Input$TransMrpSuggestionFilter(
              transMrpRunId: Input$UUIDFilter(equalTo: runId),
            ),
            orderBy: [Enum$TransMrpSuggestionsOrderBy.SEQ_ASC],
            languageCodeId: languageCodeId,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      final failure = failureOf(result.exception);
      if (failure != null) throw failure;
      final Query$MrpSuggestionPageRead$allTransMrpSuggestions? data;
      try {
        data = result.parsedData?.allTransMrpSuggestions;
      } on Object catch (e) {
        throw MrpFailure('MRP_PARSE', '$e');
      }
      if (data == null) return suggestions;
      final nodes = data.nodes
          .whereType<Query$MrpSuggestionPageRead$allTransMrpSuggestions$nodes>()
          .toList();
      suggestions.addAll(nodes.map(_toSuggestion));
      if (nodes.isEmpty || !data.pageInfo.hasNextPage) return suggestions;
    }
  }

  MrpSuggestion _toSuggestion(
    Query$MrpSuggestionPageRead$allTransMrpSuggestions$nodes node,
  ) {
    final kind = MrpSuggestionKind.ofCode(node.kind);
    if (kind == null) {
      throw MrpFailure('MRP_UNKNOWN_KIND', '未知の提案種別: ${node.kind}');
    }
    final master = node.item?.master;
    final names =
        master?.labels?.sharedDictionaryBySharedDictionaryNameId?.value.nodes;
    return MrpSuggestion(
      kind: kind,
      // 設備の過負荷など、品目の無い提案は設備のコードを品目コードの欄に出す。
      itemCode: master?.code ?? node.equipment?.code ?? '',
      // 設備は品目に紐づくので、品目の無い提案は設備の品目の名称を出す。
      itemName:
          names?.firstOrNull?.dictionaryValue ??
          node
              .equipment
              ?.item
              ?.labels
              ?.sharedDictionaryBySharedDictionaryNameId
              ?.value
              .nodes
              .firstOrNull
              ?.dictionaryValue ??
          '',
      quantity: num.tryParse(node.quantity ?? '') ?? 0,
      allocation: num.tryParse(node.allocatedQuantity ?? '') ?? 0,
      needDate: node.needAt,
      releaseDate: node.releaseAt,
      dueDate: node.dueAt,
      late: node.late ?? false,
      decision: MrpDecision.ofCode(node.decision ?? 0) ?? MrpDecision.pending,
      message: node.message ?? '',
    );
  }

  /// 通信・サーバーの異常を [MrpFailure] にする。異常が無ければ null。
  ///
  /// コードは、サーバーが返した SQLSTATE(`MRP00` など)を優先する。
  /// 通信の制限時間は `57014`(DB のタイムアウトと同じ扱い)、それ以外の通信の失敗は `NETWORK`、
  /// 認証エラー(401/403)は `HTTP_<ステータス>`。
  static MrpFailure? failureOf(OperationException? exception) {
    if (exception == null) return null;
    for (final error in exception.graphqlErrors) {
      final extensions = error.extensions ?? const {};
      final inner = extensions['exception'];
      final code = extensions['code'] ?? (inner is Map ? inner['code'] : null);
      if (code != null) return MrpFailure('$code', error.message);
    }
    final link = exception.linkException;
    if (link is ServerException) {
      final code = link.originalException is TimeoutException
          ? MrpFailure.timeout
          : (link.statusCode != null ? 'HTTP_${link.statusCode}' : 'NETWORK');
      return MrpFailure(code, '${link.originalException ?? link}');
    }
    if (link != null) {
      return MrpFailure(
        link is TimeoutException || link.originalException is TimeoutException
            ? MrpFailure.timeout
            : 'NETWORK',
        '$link',
      );
    }
    return MrpFailure('MRP_ERROR', '$exception');
  }
}
