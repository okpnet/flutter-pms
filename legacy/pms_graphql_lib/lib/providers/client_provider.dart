part of '../pms_graphql_provider.dart';

enum MutationType { insert, update }

// This class provides a GraphQL client with a specified endpoint and timeout duration.
// It initializes the client with default policies for queries and mutations, ensuring that all operations fetch data from the network and handle errors appropriately.
// The `query` method allows you to execute GraphQL queries with a timeout mechanism, throwing a custom exception if the operation exceeds the specified duration.
final class GraphQLClientProvider {
  final ILogger? logger;
  final String url;
  final Map<String, String> headers;
  final bool isHasura;
  final GraphQLConverterCollection? converterCollection;

  late final Duration timeLimit;
  late final GraphQLClient client;

  GraphQLClientProvider(
    this.url, {
    this.headers = const {},
    this.converterCollection,
    int? timeLimit,
    this.logger,
    this.isHasura = false,
    GraphQLClient? graphQLClient,
  }) {
    this.timeLimit = timeLimit != null
        ? Duration(seconds: timeLimit)
        : const Duration(seconds: GraphqlConstants.timeoutDurationInSeconds);
    client = graphQLClient ?? _initialize();
  }

  // GraphQLのクエリやミューテーションがタイムアウトした場合にスローされる例外を作成する関数
  GraphqlTimeoutException _createTimeoutException(String operationType) {
    return GraphqlTimeoutException(
      message:
          'GraphQL "$operationType" timed out after ${timeLimit.inSeconds} seconds',
    );
  }

  //mutationを実行する関数。引数は、MutationOptionsと、MutationOptionsのDocumentをキーにしてグループ化したもの。グループ化したものは、同じDocumentを持つオプションをinsertとupdateで分けて実行するために使用する。
  Future<GraphqlProverResult<Map<String, dynamic>>> _mutation(
    String key,
    MutationOptions options,
  ) async {
    logger?.debug(
      'mutation:${printNode(options.document)} variables:${options.variables}',
    );
    final result = await client
        .mutate(options)
        .timeout(
          timeLimit,
          onTimeout: () => throw _createTimeoutException(key),
        );
    return _createResult(result);
  }

  //複数のMutationOptionsを受け取り、hasuraかどうかで実行方法を分ける
  Future<List<GraphqlProverResult<Map<String, dynamic>>>> _execute(
    List<(MutationType, MutationOptions)> values,
  ) async {
    try {
      return isHasura
          ? await _executeHasura(values)
          : await _executeNotHasura(values);
    } catch (ex, stackTrace) {
      logger?.error(
        'Error executing mutations: $ex',
        exception: ex,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  //not hasuraの場合は、MutationOptionsのDocumentをキーにしてグループ化せずに、順番に実行する
  Future<List<GraphqlProverResult<Map<String, dynamic>>>> _executeNotHasura(
    List<(MutationType, MutationOptions)> values,
  ) async {
    //not hasura
    return await Future.wait(
      values.map((value) async {
        try {
          return await _mutation(printNode(value.$2.document), value.$2);
        } on GraphqlTimeoutException {
          rethrow;
        }
      }),
    );
  }

  //hasuraの場合は、MutationOptionsのDocumentをキーにしてグループ化し、同じDocumentを持つオプションをinsertとupdateで分けて実行する
  Future<List<GraphqlProverResult<Map<String, dynamic>>>> _executeHasura(
    List<(MutationType, MutationOptions)> values,
  ) async {
    //MutationOptionsのDocumentをキーにしてグループ化する
    final documentGroups = values.groupListsBy((key) => key.$2.document);
    //グループごとにinsertとupdateのオプションを分けて実行するrequestを作成する
    final asyncFunc =
        List<Future<GraphqlProverResult<Map<String, dynamic>>>>.empty(
          growable: true,
        );

    documentGroups.forEach((document, group) {
      //同じDocumentを持つオプションをinsertとupdateで分ける
      final insertOptions = group
          .where((value) => value.$1 == MutationType.insert)
          .map((e) => e.$2.variables.values)
          .expand((list) => list)
          .expand((map) => map)
          .toList();
      final updateOptions = group
          .where((value) => value.$1 == MutationType.update)
          .toList();

      if (insertOptions.isNotEmpty) {
        //insertオプションがある場合はinsertのrequestを作成する
        final func = () async {
          try {
            final options = MutationOptions(
              document: document,
              variables: {'objects': insertOptions},
            );
            return await _mutation(printNode(document), options);
          } on GraphqlTimeoutException {
            rethrow;
          }
        }();
        asyncFunc.add(func);
      }

      if (updateOptions.isNotEmpty) {
        //updateオプションがある場合はupdateのrequestを作成する
        for (var value in updateOptions) {
          final func = () async {
            try {
              return await _mutation(printNode(document), value.$2);
            } on GraphqlTimeoutException {
              rethrow;
            }
          }();
          asyncFunc.add(func); //リクエストを実行するFutureをリストに追加する
        }
      }
    });

    if (asyncFunc.isEmpty) {
      //リクエストがない場合は空のリストを返す
      return [];
    }
    return await Future.wait(asyncFunc);
  }

  //クエリを実行する関数。引数は、QueryOptions。クエリがタイムアウトした場合は、GraphqlTimeoutExceptionをスローする。
  Future<GraphqlProverResult<Map<dynamic, dynamic>>> query(
    QueryOptions options,
  ) async {
    try {
      logger?.debug(
        'query:${printNode(options.document)} variables:${options.variables}',
      );
      final result = await client
          .query(options)
          .timeout(
            timeLimit,
            onTimeout: () => throw _createTimeoutException('query'),
          );
      return _createResult(result);
    } catch (ex, stackTrace) {
      logger?.error(
        'Error executing query: $ex',
        exception: ex,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  GraphqlProverResult<Map<String, dynamic>> _createResult(
    QueryResult resultValue,
  ) {
    if (!resultValue.hasException) {
      return Ok<Map<String, dynamic>>(resultValue.data!);
    }

    final exception = resultValue.exception?.linkException?.originalException;

    if (exception == null &&
        resultValue.exception != null &&
        resultValue.exception!.graphqlErrors.isNotEmpty) {
      return Err<Map<String, dynamic>>(
        DeveloperError('Null'),
        graphqlErrors: resultValue.exception!.graphqlErrors.toString(),
      );
    }

    final resultErr = switch (exception) {
      ContextWriteException _ => DeveloperError(
        exception.toString(),
        internalExeption: exception,
      ),
      ContextReadException _ => DeveloperError(
        exception.toString(),
        internalExeption: exception,
      ),
      ResponseFormatException _ => ServerError(exception.toString(), 0),
      RequestFormatException _ => DeveloperError(
        exception.toString(),
        internalExeption: exception,
      ),
      ServerException _ => ServerError(
        exception.toString(),
        exception.statusCode ?? -1,
      ),
      FormatException _ => DeveloperError(
        exception.toString(),
        internalExeption: exception,
      ),
      TimeoutException _ => TimeoutError(exception.toString()),
      SocketException _ => NetworkError(exception.toString()),
      _ => throw Exception(
        '"${exception.runtimeType.toString()}" class not implement convert to "GraphqlProviderException" class.',
      ),
    };
    return Err<Map<String, dynamic>>(
      resultErr,
      graphqlErrors: resultValue.exception?.graphqlErrors.join("\r"),
      data: resultValue.data,
    );
  }

  //モデルのリストを受け取り、モデルの型に対応するコンバーターが存在するか確認する。存在しない場合は例外をスローする。モデルの型に対応するコンバーターを取得する。モデルが新規かどうかで、insertオプションかupdateオプションを作成する。作成したオプションと、モデルが新規かどうかをタプルにして返す。最後に、作成したオプションのリストを_execute関数に渡して実行する。
  Future<List<GraphqlProverResult<Map<String, dynamic>>>> save(
    List<IEditModel> models,
  ) async {
    if (converterCollection == null) {
      throw ArgumentError(
        'Converter collection is required to save models. Please provide a converter collection.',
      );
    }
    for (var model in models) {
      //モデルの型に対応するコンバーターが存在するか確認する。存在しない場合は例外をスローする
      if (!converterCollection!.hasConverterFromInstance(model)) {
        throw ArgumentError(
          'No converter found for type ${model.runtimeType}. Please add a converter for this type.',
        );
      }
    }
    //重複アイテムの除外、重複のログ
    final dupricateList = removeDuplicates(models, preferLast: true);
    final logs = dupricateList.logs.groupListsBy((log) => log.originalIndex);
    if (logs.isNotEmpty) {
      //重複の警告
      logger?.info('duplicate list:${logs.toString()}');
    }
    final values = dupricateList.uniqueList.map((model) {
      //重複をのぞいたリスト
      if (converterCollection == null) {
        throw ArgumentError(
          'Converter collection is required to save models. Please provide a converter collection.',
        );
      }
      //モデルの型に対応するコンバーターを取得する。モデルが新規かどうかで、insertオプションかupdateオプションを作成する。作成したオプションと、モデルが新規かどうかをタプルにして返す
      final converter = converterCollection!.getConverterFromInstance(model)!;
      final mutationType = model.isNew
          ? MutationType.insert
          : MutationType.update;
      final options = model.isNew
          ? converter.toInsertOptions(model)
          : converter.toUpdateOptions(model);
      return (mutationType, options);
    }).toList();
    return await _execute(values);
  }

  //GraphQLClientを初期化する関数。HttpLinkを作成し、GraphQLClientを作成する。デフォルトのポリシーは、クエリとミューテーションの両方で、ネットワークからデータを取得し、すべてのエラーを処理するように設定されている。
  GraphQLClient _initialize() {
    final httpLink = HttpLink(url, defaultHeaders: headers);
    final result = GraphQLClient(
      link: httpLink,
      queryRequestTimeout: timeLimit,

      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
      ),
    );
    logger?.debug(
      'Initializing GraphQL client: url=$url, headers=$headers, timeLimit=${timeLimit.inSeconds}s',
    );
    return result;
  }
}
