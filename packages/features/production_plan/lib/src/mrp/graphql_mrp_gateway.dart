import 'dart:async';

import 'package:graphql/client.dart';
import 'package:production_plan_model/production_plan_model.dart';

import 'mrp_gateway.dart';
import 'mrp_models.dart';

/// MRP の窓口の実体(GraphQL)。メソッド `mrpExecute`(DB 関数 `tests.mrp_execute`)で計算し、
/// 実行(`trans_mrp_run`)の提案(ビュー `v_mrp_suggestion`。種類・判断は boolean の列)を読み込んで結果にする。
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
    return _resultOf(run.transMrpRunId, fallbackMode: mode, runAt: run.runAt);
  }

  @override
  Future<List<MrpIssue>> check({List<String> itemIds = const []}) async {
    final result = await client.query$MrpCheckItems(
      Options$Query$MrpCheckItems(
        variables: Variables$Query$MrpCheckItems(
          pItemIds: itemIds.isEmpty ? null : itemIds,
          first: checkLimit,
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final failure = failureOf(result.exception);
    if (failure != null) throw failure;
    final Query$MrpCheckItems$mrpCheckItems? data;
    try {
      data = result.parsedData?.mrpCheckItems;
    } on Object catch (e) {
      throw MrpFailure('MRP_PARSE', '$e');
    }
    return [
      for (final n
          in data?.nodes.whereType<Query$MrpCheckItems$mrpCheckItems$nodes>() ??
              const <Query$MrpCheckItems$mrpCheckItems$nodes>[])
        MrpIssue(
          itemCode: n.itemCode ?? '',
          message: n.message ?? '',
          severity: n.severity ?? 0,
          issueCode: n.issueCode ?? '',
        ),
    ];
  }

  @override
  Future<MrpRunResult> calculate({
    required MrpMode mode,
    required String staffId,
    List<String> orderDetailIds = const [],
    bool acceptLate = false,
  }) async {
    final data = await _mutate(
      documentNodeMutationMrpRun,
      Variables$Mutation$MrpRun(
        input: Input$MrpRunInput(
          pMode: mode.code,
          pStaffId: staffId.isEmpty ? null : staffId,
          pOrderDetailIds: orderDetailIds.isEmpty ? null : orderDetailIds,
          pAcceptLate: acceptLate,
        ),
      ).toJson(),
      'mrpRun',
    );
    return _resultOf(_runIdOf(data), fallbackMode: mode, runAt: _runAtOf(data));
  }

  @override
  Future<void> decide({
    required String runId,
    required bool adopt,
    required String staffId,
    List<String> suggestionIds = const [],
  }) async {
    // `mrp_set_decision` の引数 `p_decision`(1 = 採用、2 = 却下)。画面は状態の値を持たず、この引数にだけ使う。
    await _mutate(
      documentNodeMutationMrpSetDecision,
      Variables$Mutation$MrpSetDecision(
        input: Input$MrpSetDecisionInput(
          pRunId: runId,
          pDecision: adopt ? 1 : 2,
          pSuggestionIds: suggestionIds.isEmpty ? null : suggestionIds,
          pStaffId: staffId.isEmpty ? null : staffId,
        ),
      ).toJson(),
      'mrpSetDecision',
    );
  }

  @override
  Future<MrpRunResult> commit({
    required String runId,
    required String staffId,
    bool force = false,
  }) async {
    final data = await _mutate(
      documentNodeMutationMrpCommit,
      Variables$Mutation$MrpCommit(
        input: Input$MrpCommitInput(
          pRunId: runId,
          pStaffId: staffId.isEmpty ? null : staffId,
          pForce: force,
        ),
      ).toJson(),
      'mrpCommit',
    );
    return _resultOf(_runIdOf(data), fallbackMode: MrpMode.order, runAt: _runAtOf(data));
  }

  @override
  Future<void> discard({
    required String runId,
    required String staffId,
  }) async {
    await _mutate(
      documentNodeMutationMrpDiscard,
      Variables$Mutation$MrpDiscard(
        input: Input$MrpDiscardInput(
          pRunId: runId,
          pStaffId: staffId.isEmpty ? null : staffId,
        ),
      ).toJson(),
      'mrpDiscard',
    );
  }

  @override
  Future<MrpRunResult?> openRun() async {
    final node = await _readRun(
      Input$VMrpRunFilter(isCalculated: Input$BooleanFilter(equalTo: true)),
    );
    if (node == null) return null;
    return _resultOf(node.transMrpRunId, fallbackMode: MrpMode.order);
  }

  /// 検査(`mrp_check_items`)を読み込む最大件数。
  static const checkLimit = 500;

  /// 変更の関数(ミューテーション)を、通信の制限時間つきで呼ぶ。失敗は [MrpFailure]。
  /// 結果は、ミューテーションの名前([field])の中の生の値。
  Future<Map<String, dynamic>> _mutate(
    // 生成した文書(`documentNode…`。型は gql の `DocumentNode` で、依存を増やさないため dynamic で受ける)
    dynamic document,
    Map<String, dynamic> variables,
    String field,
  ) async {
    final result = await client.mutate(
      MutationOptions(
        document: document,
        variables: variables,
        fetchPolicy: FetchPolicy.noCache,
        queryRequestTimeout: timeout,
      ),
    );
    final failure = failureOf(result.exception);
    if (failure != null) throw failure;
    final payload = result.data?[field];
    return payload is Map<String, dynamic> ? payload : const {};
  }

  static DateTime? _runAtOf(Map<String, dynamic> payload) {
    final run = payload['transMrpRun'];
    final at = run is Map ? run['runAt'] : null;
    return at == null ? null : DateTime.tryParse('$at');
  }

  static String _runIdOf(Map<String, dynamic> payload) {
    final run = payload['transMrpRun'];
    final id = run is Map ? run['transMrpRunId'] : null;
    if (id == null) {
      throw const MrpFailure('MRP_NO_RUN', '実行の結果が返りませんでした');
    }
    return '$id';
  }

  /// 実行(`v_mrp_run`)の 1 件を読む。無ければ null。
  Future<Query$MrpRunPageRead$allVMrpRuns$nodes?> _readRun(
    Input$VMrpRunFilter filter,
  ) async {
    final result = await client.query$MrpRunPageRead(
      Options$Query$MrpRunPageRead(
        variables: Variables$Query$MrpRunPageRead(
          first: 1,
          filter: filter,
          orderBy: [Enum$VMrpRunsOrderBy.RUN_AT_DESC],
        ),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );
    final failure = failureOf(result.exception);
    if (failure != null) throw failure;
    try {
      return result.parsedData?.allVMrpRuns?.nodes
          .whereType<Query$MrpRunPageRead$allVMrpRuns$nodes>()
          .firstOrNull;
    } on Object catch (e) {
      throw MrpFailure('MRP_PARSE', '$e');
    }
  }

  /// 実行 [runId] の結果(実行の状態 + 提案の一覧)を読み込む。
  /// 実行の状態(確定済みか・再 MRP か)は、ビュー `v_mrp_run` の boolean の列。
  Future<MrpRunResult> _resultOf(
    String runId, {
    required MrpMode fallbackMode,
    DateTime? runAt,
  }) async {
    final run = await _readRun(
      Input$VMrpRunFilter(transMrpRunId: Input$UUIDFilter(equalTo: runId)),
    );
    final suggestions = await fetchSuggestions(runId);
    return MrpRunResult(
      executedAt: runAt ?? run?.runAt ?? _now(),
      mode: run == null
          ? fallbackMode
          : (run.isRerun ?? false ? MrpMode.redo : MrpMode.order),
      suggestions: suggestions,
      runId: runId,
      isCommitted: run?.isCommitted ?? false,
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
            filter: Input$VMrpSuggestionFilter(
              transMrpRunId: Input$UUIDFilter(equalTo: runId),
            ),
            orderBy: [Enum$VMrpSuggestionsOrderBy.SEQ_ASC],
            languageCodeId: languageCodeId,
          ),
          fetchPolicy: FetchPolicy.noCache,
        ),
      );
      final failure = failureOf(result.exception);
      if (failure != null) throw failure;
      final Query$MrpSuggestionPageRead$allVMrpSuggestions? data;
      try {
        data = result.parsedData?.allVMrpSuggestions;
      } on Object catch (e) {
        throw MrpFailure('MRP_PARSE', '$e');
      }
      if (data == null) return suggestions;
      final nodes = data.nodes
          .whereType<Query$MrpSuggestionPageRead$allVMrpSuggestions$nodes>()
          .toList();
      suggestions.addAll(nodes.map(_toSuggestion));
      if (nodes.isEmpty || !data.pageInfo.hasNextPage) return suggestions;
    }
  }

  MrpSuggestion _toSuggestion(
    Query$MrpSuggestionPageRead$allVMrpSuggestions$nodes node,
  ) {
    final master = node.item?.master;
    final names =
        master?.labels?.sharedDictionaryBySharedDictionaryNameId?.value.nodes;
    return MrpSuggestion(
      isPurchase: node.isPurchase ?? false,
      isProduction: node.isProduction ?? false,
      isOutsource: node.isOutsource ?? false,
      isPlan: node.isPlan ?? false,
      isException: node.isException ?? false,
      isSupplyRequest: node.isSupplyRequest ?? false,
      isNew: node.isNew ?? false,
      isChange: node.isChange ?? false,
      isCancel: node.isCancel ?? false,
      isKeep: node.isKeep ?? false,
      isOption: node.isOption ?? false,
      subjectEquipment: node.subjectEquipment ?? false,
      subjectStock: node.subjectStock ?? false,
      subjectMaster: node.subjectMaster ?? false,
      needUser: node.needUser ?? false,
      undecided: node.undecided ?? false,
      adopted: node.adopted ?? false,
      rejected: node.rejected ?? false,
      isInfo: node.isInfo ?? false,
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
      message: node.message ?? '',
      symbol: node.symbol ?? '',
      id: node.transMrpSuggestionId,
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
      // PostGraphile の --extended-errors errcode が付ける DB の SQLSTATE(extensions.exception.errcode。関数の ERRCODE)
      final code =
          extensions['errcode'] ??
          (inner is Map ? inner['errcode'] : null) ??
          extensions['code'] ??
          (inner is Map ? inner['code'] : null);
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
