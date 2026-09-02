import 'package:collection/collection.dart';
import 'package:gql/language.dart';
import 'package:graphql/client.dart';
import 'dart:async';
import 'dart:io';

import 'package:logger_lib/logger_lib.dart';

import '../constants/graphql_constant.dart';
import '../edit_models/_edit_model.dart';
import '../exceptions/_exceptions.dart';
import '../extends/_extends.dart';
import '../graphql_converters/collection/_collection.dart';
import '../results/_result.dart';

/// ミューテーションがinsert・updateいずれの種別かを表す。
enum MutationType { insert, update }

/// `graphql`/`graphql_flutter` の [GraphQLClient] をラップし、呼び出しごとの
/// タイムアウト処理、ログ出力、[GraphqlProverResult] への正規化、Hasura向けの
/// ミューテーションバッチ実行をまとめて提供するクラス。
final class GraphQLClientProvider {
  /// クエリ・ミューテーションおよびエラーのログ出力先。未指定の場合はログ出力を行わない。
  final ILoggerProvider? logger;

  /// 接続先のGraphQLエンドポイントURL。
  final String url;

  /// 全リクエストに付与するHTTPヘッダー。
  final Map<String, String> headers;

  /// Hasura、Postgrapileなどの実行パス(同一ドキュメントのミューテーションをバッチ化する)を
  /// 使用するかどうかに影響する。
  final bool isBatchMutation;

  /// `save()` でモデルをミューテーションへ変換する際に使用するコンバーターの登録先。
  /// 未指定の場合、`save()` を呼び出すと例外がスローされる。
  final GraphQLConverterCollection? converterCollection;

  /// クエリ・ミューテーション1回あたりのタイムアウト時間。
  late final Duration timeLimit;

  /// 実際の通信を担う [GraphQLClient] 本体。
  late final GraphQLClient client;

  /// [GraphQLClientProvider] を生成する。[graphQLClient] を指定しない場合は
  /// [url]・[headers]・[timeLimit] を元に内部で [GraphQLClient] を初期化する。
  GraphQLClientProvider(
    this.url, {
    this.headers = const {},
    this.converterCollection,
    int? timeLimit,
    this.logger,
    this.isBatchMutation = false,
    GraphQLClient? graphQLClient,
  }) {
    this.timeLimit = timeLimit != null
        ? Duration(seconds: timeLimit)
        : const Duration(seconds: GraphqlConstants.timeoutDurationInSeconds);
    client = graphQLClient ?? _initialize();
  }

  /// [operationType] を含むメッセージを持つ [GraphqlTimeoutException] を生成する。
  /// クエリ・ミューテーションの実行時間が [timeLimit] を超えた場合に呼び出す。
  GraphqlTimeoutException _createTimeoutException(String operationType) {
    return GraphqlTimeoutException(
      message:
          'GraphQL "$operationType" timed out after ${timeLimit.inSeconds} seconds',
    );
  }

  /// [options] で指定された単一のミューテーションを実行する。[key] はログ出力・
  /// タイムアウト時のメッセージに使用する識別用文字列。実行時間が [timeLimit] を
  /// 超えた場合は [GraphqlTimeoutException] をスローする。
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

  /// [values] に含まれる複数のミューテーションを実行する。[isBatchMutation] の値に応じて
  /// [_executeHasura] または [_executeNotHasura] へ処理を振り分ける。実行中に例外が
  /// 発生した場合はログへ記録したうえで再スローする。
  Future<List<GraphqlProverResult<Map<String, dynamic>>>> _execute(
    List<(MutationType, MutationOptions)> values,
  ) async {
    try {
      return isBatchMutation
          ? await _executeHasura(values)
          : await _executeNotHasura(values);
    } catch (ex, stackTrace) {
      logger?.error(
        'Error executing mutations: $ex',
        ex: ex,
        trace: stackTrace,
      );
      rethrow;
    }
  }

  /// 非Hasura向けの実行パス。[values] の各ミューテーションをドキュメント単位で
  /// グループ化せず、それぞれ独立して並列実行する。
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

  /// Hasura向けの実行パス。[values] を [MutationOptions.document] 単位でグループ化し、
  /// 同一ドキュメントを持つinsertはすべて1つの `objects` ミューテーションへマージし、
  /// updateはモデルごとに個別実行する。
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

  /// [options] を指定してGraphQLクエリを実行する。読み取り処理を行いたい場合に
  /// 呼び出す。実行時間が [timeLimit] を超えた場合は [GraphqlTimeoutException] をスローする。
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
      logger?.error('Error executing query: $ex', ex: ex, trace: stackTrace);
      rethrow;
    }
  }

  /// [resultValue] を [GraphqlProverResult] へ正規化する。内部で発生した例外の型
  /// (`ServerException`・`SocketException`・`TimeoutException`・`FormatException` など)を
  /// パターンマッチし、対応する [GraphqlProviderException] のサブタイプへ変換する。
  /// 未対応の例外型を受け取った場合は [Exception] をスローする。
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

  /// [models] をGraphQLミューテーションとして保存する。読み書きを伴う操作全般に
  /// 呼び出す。[converterCollection] が未設定の場合、または [models] に含まれる
  /// いずれかのモデルの型に対応するコンバーターが登録されていない場合は
  /// [ArgumentError] をスローする。
  /// 警告: 保存前に [removeDuplicates] で重複するモデルを取り除くため、[models] の
  /// 内容によっては一部のモデルが実際の保存対象から除外される。
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

  /// [url]・[headers]・[timeLimit] を元に [GraphQLClient] を初期化する。
  /// クエリ・ミューテーションともにネットワークからのみデータを取得し、
  /// すべてのエラーを保持するポリシーで生成する。
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
