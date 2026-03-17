import 'package:graphql/client.dart';
import 'package:pms_graphql_lib/constants/graphql_constant.dart';
import 'package:pms_graphql_lib/edit_models/_base/iedit_model.dart';
import 'package:pms_graphql_lib/exceptions/graphql/graphql_exception.dart';
import 'package:pms_graphql_lib/graphql_converters/collection/graphql_converter_collection.dart';
import "package:collection/collection.dart";

enum MutationType { insert, update }

// This class provides a GraphQL client with a specified endpoint and timeout duration.
// It initializes the client with default policies for queries and mutations, ensuring that all operations fetch data from the network and handle errors appropriately.
// The `query` method allows you to execute GraphQL queries with a timeout mechanism, throwing a custom exception if the operation exceeds the specified duration.
final class GraphQLClientProvider {
  final String _url;
  final bool isHasura = false;
  final GraphQLConverterCollection converterCollection =
      CollectionFactory.createCollection();

  late final Duration timeLimit;
  late final GraphQLClient client;

  GraphQLClientProvider(
    this._url, {
    int? timeLimit,
    isHasura = false,
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
  Future<QueryResult> _mutation(String key, MutationOptions options) async {
    return await client
        .mutate(options)
        .timeout(
          timeLimit,
          onTimeout: () => throw _createTimeoutException(key),
        );
  }

  //複数のMutationOptionsを受け取り、hasuraかどうかで実行方法を分ける
  Future<List<QueryResult>> _execute(
    List<(MutationType, MutationOptions)> values,
  ) async {
    return isHasura
        ? await _executeHasura(values)
        : await _executeNotHasura(values);
  }

  //not hasuraの場合は、MutationOptionsのDocumentをキーにしてグループ化せずに、順番に実行する
  Future<List<QueryResult>> _executeNotHasura(
    List<(MutationType, MutationOptions)> values,
  ) async {
    //not hasura
    return await Future.wait(
      values.map((value) async {
        try {
          return await _mutation(value.$2.document.toString(), value.$2);
        } on GraphqlTimeoutException {
          rethrow;
        }
      }),
    );
  }

  //hasuraの場合は、MutationOptionsのDocumentをキーにしてグループ化し、同じDocumentを持つオプションをinsertとupdateで分けて実行する
  Future<List<QueryResult>> _executeHasura(
    List<(MutationType, MutationOptions)> values,
  ) async {
    //MutationOptionsのDocumentをキーにしてグループ化する
    final documentGroups = values.groupListsBy(
      (key) => key.$2.document.toString(),
    );
    //グループごとにinsertとupdateのオプションを分けて実行するrequestを作成する
    final asyncFunc = List<Future<QueryResult>>.empty(growable: true);

    documentGroups.forEach((document, group) {
      //同じDocumentを持つオプションをinsertとupdateで分ける
      final insertOptions = group
          .where((value) => value.$1 == MutationType.insert)
          .map((e) => e.$2.variables.toString());
      final updateOptions = group
          .where((value) => value.$1 == MutationType.update)
          .map((e) => e.$2.variables.toString());

      if (insertOptions.isNotEmpty) {
        //insertオプションがある場合はinsertのrequestを作成する
        final func = () async {
          try {
            final options = MutationOptions(
              document: gql(document),
              variables: {'objects': insertOptions.toList()},
            );
            return await _mutation(document, options);
          } on GraphqlTimeoutException {
            rethrow;
          }
        }();
        asyncFunc.add(func);
      }

      if (updateOptions.isNotEmpty) {
        //updateオプションがある場合はupdateのrequestを作成する
        final func = () async {
          try {
            final options = MutationOptions(
              document: gql(document),
              variables: {'objects': updateOptions.toList()},
            );
            return await _mutation(document, options);
          } on GraphqlTimeoutException {
            rethrow;
          }
        }();
        asyncFunc.add(func); //リクエストを実行するFutureをリストに追加する
      }
    });

    if (asyncFunc.isEmpty) {
      //リクエストがない場合は空のリストを返す
      return [];
    }
    return await Future.wait(asyncFunc);
  }

  //クエリを実行する関数。引数は、QueryOptions。クエリがタイムアウトした場合は、GraphqlTimeoutExceptionをスローする。
  Future<QueryResult> query(QueryOptions options) async {
    return await client
        .query(options)
        .timeout(
          timeLimit,
          onTimeout: () => throw _createTimeoutException('query'),
        );
  }

  //モデルのリストを受け取り、モデルの型に対応するコンバーターが存在するか確認する。存在しない場合は例外をスローする。モデルの型に対応するコンバーターを取得する。モデルが新規かどうかで、insertオプションかupdateオプションを作成する。作成したオプションと、モデルが新規かどうかをタプルにして返す。最後に、作成したオプションのリストを_execute関数に渡して実行する。
  Future<List<QueryResult>> save(List<IEditModel> models) async {
    for (var model in models) {
      //モデルの型に対応するコンバーターが存在するか確認する。存在しない場合は例外をスローする
      if (!converterCollection.hasConverterFromInstance(model)) {
        throw ArgumentError(
          'No converter found for type ${model.runtimeType}. Please add a converter for this type.',
        );
      }
    }

    final values = models.map((model) {
      //モデルの型に対応するコンバーターを取得する。モデルが新規かどうかで、insertオプションかupdateオプションを作成する。作成したオプションと、モデルが新規かどうかをタプルにして返す
      final converter = converterCollection.getConverterFromInstance(model)!;
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
    final httpLink = HttpLink(_url);
    final _client = GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(),
      defaultPolicies: DefaultPolicies(
        query: Policies(fetch: FetchPolicy.networkOnly, error: ErrorPolicy.all),
        mutate: Policies(
          fetch: FetchPolicy.networkOnly,
          error: ErrorPolicy.all,
        ),
      ),
    );
    return _client;
  }
}
