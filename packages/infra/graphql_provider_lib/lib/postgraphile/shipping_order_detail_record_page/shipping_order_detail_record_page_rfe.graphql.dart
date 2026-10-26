import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ShippingOrderDetailRecordPageRfe {
  factory Variables$Query$ShippingOrderDetailRecordPageRfe({
    required String transShippingOrderDetailRecordId,
  }) => Variables$Query$ShippingOrderDetailRecordPageRfe._({
    r'transShippingOrderDetailRecordId': transShippingOrderDetailRecordId,
  });

  Variables$Query$ShippingOrderDetailRecordPageRfe._(this._$data);

  factory Variables$Query$ShippingOrderDetailRecordPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId =
        data['transShippingOrderDetailRecordId'];
    result$data['transShippingOrderDetailRecordId'] =
        (l$transShippingOrderDetailRecordId as String);
    return Variables$Query$ShippingOrderDetailRecordPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderDetailRecordId =>
      (_$data['transShippingOrderDetailRecordId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    result$data['transShippingOrderDetailRecordId'] =
        l$transShippingOrderDetailRecordId;
    return result$data;
  }

  CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe<
    Variables$Query$ShippingOrderDetailRecordPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShippingOrderDetailRecordPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final lOther$transShippingOrderDetailRecordId =
        other.transShippingOrderDetailRecordId;
    if (l$transShippingOrderDetailRecordId !=
        lOther$transShippingOrderDetailRecordId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    return Object.hashAll([l$transShippingOrderDetailRecordId]);
  }
}

abstract class CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  factory CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe(
    Variables$Query$ShippingOrderDetailRecordPageRfe instance,
    TRes Function(Variables$Query$ShippingOrderDetailRecordPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRfe;

  factory CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRfe;

  TRes call({String? transShippingOrderDetailRecordId});
}

class _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ShippingOrderDetailRecordPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$ShippingOrderDetailRecordPageRfe _instance;

  final TRes Function(Variables$Query$ShippingOrderDetailRecordPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transShippingOrderDetailRecordId = _undefined}) => _then(
    Variables$Query$ShippingOrderDetailRecordPageRfe._({
      ..._instance._$data,
      if (transShippingOrderDetailRecordId != _undefined &&
          transShippingOrderDetailRecordId != null)
        'transShippingOrderDetailRecordId':
            (transShippingOrderDetailRecordId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ShippingOrderDetailRecordPageRfe(this._res);

  TRes _res;

  call({String? transShippingOrderDetailRecordId}) => _res;
}

class Query$ShippingOrderDetailRecordPageRfe {
  Query$ShippingOrderDetailRecordPageRfe({
    this.transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    this.$__typename = 'Query',
  });

  factory Query$ShippingOrderDetailRecordPageRfe.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        json['transShippingOrderDetailRecordByTransShippingOrderDetailRecordId'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRfe(
      transShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
          l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
              null
          ? null
          : Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId.fromJson(
              (l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
  transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    _resultData['transShippingOrderDetailRecordByTransShippingOrderDetailRecordId'] =
        l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
            ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShippingOrderDetailRecordPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    final lOther$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        other.transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    if (l$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId !=
        lOther$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRfe
    on Query$ShippingOrderDetailRecordPageRfe {
  CopyWith$Query$ShippingOrderDetailRecordPageRfe<
    Query$ShippingOrderDetailRecordPageRfe
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRfe(
    Query$ShippingOrderDetailRecordPageRfe instance,
    TRes Function(Query$ShippingOrderDetailRecordPageRfe) then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe;

  TRes call({
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
    transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRfe _instance;

  final TRes Function(Query$ShippingOrderDetailRecordPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRfe(
      transShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
          transShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
              _undefined
          ? _instance
                .transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
          : (transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
                as Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get transShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
    final local$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =
        _instance
            .transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;
    return local$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId ==
            null
        ? CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
            local$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
            (e) => call(
              transShippingOrderDetailRecordByTransShippingOrderDetailRecordId:
                  e,
            ),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderDetailRecordPageRfe<TRes> {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe(this._res);

  TRes _res;

  call({
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId?
    transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    TRes
  >
  get transShippingOrderDetailRecordByTransShippingOrderDetailRecordId =>
      CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
        _res,
      );
}

const documentNodeQueryShippingOrderDetailRecordPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShippingOrderDetailRecordPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailRecordId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(
              value: 'transShippingOrderDetailRecordByTransShippingOrderDetailRecordId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transShippingOrderDetailRecordId'),
                value: VariableNode(
                  name: NameNode(value: 'transShippingOrderDetailRecordId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transShippingOrderDetailRecordId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transShippingOrderDetailId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'shippingDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'shippingQuantity'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'remarks'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateUserId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateUserHistoryId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'remove'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'updateAt'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);
Query$ShippingOrderDetailRecordPageRfe
_parserFn$Query$ShippingOrderDetailRecordPageRfe(Map<String, dynamic> data) =>
    Query$ShippingOrderDetailRecordPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ShippingOrderDetailRecordPageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ShippingOrderDetailRecordPageRfe?,
    );

class Options$Query$ShippingOrderDetailRecordPageRfe
    extends graphql.QueryOptions<Query$ShippingOrderDetailRecordPageRfe> {
  Options$Query$ShippingOrderDetailRecordPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderDetailRecordPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailRecordPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShippingOrderDetailRecordPageRfe? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null
                     ? null
                     : _parserFn$Query$ShippingOrderDetailRecordPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryShippingOrderDetailRecordPageRfe,
         parserFn: _parserFn$Query$ShippingOrderDetailRecordPageRfe,
       );

  final OnQueryComplete$Query$ShippingOrderDetailRecordPageRfe?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShippingOrderDetailRecordPageRfe
    extends graphql.WatchQueryOptions<Query$ShippingOrderDetailRecordPageRfe> {
  WatchOptions$Query$ShippingOrderDetailRecordPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderDetailRecordPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailRecordPageRfe? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         document: documentNodeQueryShippingOrderDetailRecordPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShippingOrderDetailRecordPageRfe,
       );
}

class FetchMoreOptions$Query$ShippingOrderDetailRecordPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShippingOrderDetailRecordPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShippingOrderDetailRecordPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShippingOrderDetailRecordPageRfe,
       );
}

extension ClientExtension$Query$ShippingOrderDetailRecordPageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShippingOrderDetailRecordPageRfe>>
  query$ShippingOrderDetailRecordPageRfe(
    Options$Query$ShippingOrderDetailRecordPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShippingOrderDetailRecordPageRfe>
  watchQuery$ShippingOrderDetailRecordPageRfe(
    WatchOptions$Query$ShippingOrderDetailRecordPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ShippingOrderDetailRecordPageRfe({
    required Query$ShippingOrderDetailRecordPageRfe data,
    required Variables$Query$ShippingOrderDetailRecordPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryShippingOrderDetailRecordPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShippingOrderDetailRecordPageRfe?
  readQuery$ShippingOrderDetailRecordPageRfe({
    required Variables$Query$ShippingOrderDetailRecordPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryShippingOrderDetailRecordPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ShippingOrderDetailRecordPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShippingOrderDetailRecordPageRfe>
useQuery$ShippingOrderDetailRecordPageRfe(
  Options$Query$ShippingOrderDetailRecordPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShippingOrderDetailRecordPageRfe>
useWatchQuery$ShippingOrderDetailRecordPageRfe(
  WatchOptions$Query$ShippingOrderDetailRecordPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShippingOrderDetailRecordPageRfe$Widget
    extends graphql_flutter.Query<Query$ShippingOrderDetailRecordPageRfe> {
  Query$ShippingOrderDetailRecordPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ShippingOrderDetailRecordPageRfe options,
    required graphql_flutter.QueryBuilder<
      Query$ShippingOrderDetailRecordPageRfe
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
  Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId({
    required this.transShippingOrderDetailRecordId,
    required this.transShippingOrderDetailId,
    required this.shippingDate,
    required this.shippingQuantity,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'TransShippingOrderDetailRecord',
  });

  factory Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailRecordId =
        json['transShippingOrderDetailRecordId'];
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$shippingDate = json['shippingDate'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
      transShippingOrderDetailRecordId:
          (l$transShippingOrderDetailRecordId as String),
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      shippingDate: (l$shippingDate as String),
      shippingQuantity: (l$shippingQuantity as String),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailRecordId;

  final String transShippingOrderDetailId;

  final String shippingDate;

  final String shippingQuantity;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    _resultData['transShippingOrderDetailRecordId'] =
        l$transShippingOrderDetailRecordId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    _resultData['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    final l$shippingDate = shippingDate;
    _resultData['shippingDate'] = l$shippingDate;
    final l$shippingQuantity = shippingQuantity;
    _resultData['shippingQuantity'] = l$shippingQuantity;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$shippingDate = shippingDate;
    final l$shippingQuantity = shippingQuantity;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailRecordId,
      l$transShippingOrderDetailId,
      l$shippingDate,
      l$shippingQuantity,
      l$remarks,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$updateAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailRecordId = transShippingOrderDetailRecordId;
    final lOther$transShippingOrderDetailRecordId =
        other.transShippingOrderDetailRecordId;
    if (l$transShippingOrderDetailRecordId !=
        lOther$transShippingOrderDetailRecordId) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$shippingDate = shippingDate;
    final lOther$shippingDate = other.shippingDate;
    if (l$shippingDate != lOther$shippingDate) {
      return false;
    }
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (l$shippingQuantity != lOther$shippingQuantity) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$updateUserId = updateUserId;
    final lOther$updateUserId = other.updateUserId;
    if (l$updateUserId != lOther$updateUserId) {
      return false;
    }
    final l$updateUserHistoryId = updateUserHistoryId;
    final lOther$updateUserHistoryId = other.updateUserHistoryId;
    if (l$updateUserHistoryId != lOther$updateUserHistoryId) {
      return false;
    }
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
    on
        Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId {
  CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
    instance,
    TRes Function(
      Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  factory CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId;

  TRes call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailRecordId = _undefined,
    Object? transShippingOrderDetailId = _undefined,
    Object? shippingDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
      transShippingOrderDetailRecordId:
          transShippingOrderDetailRecordId == _undefined ||
              transShippingOrderDetailRecordId == null
          ? _instance.transShippingOrderDetailRecordId
          : (transShippingOrderDetailRecordId as String),
      transShippingOrderDetailId:
          transShippingOrderDetailId == _undefined ||
              transShippingOrderDetailId == null
          ? _instance.transShippingOrderDetailId
          : (transShippingOrderDetailId as String),
      shippingDate: shippingDate == _undefined || shippingDate == null
          ? _instance.shippingDate
          : (shippingDate as String),
      shippingQuantity:
          shippingQuantity == _undefined || shippingQuantity == null
          ? _instance.shippingQuantity
          : (shippingQuantity as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailRecordPageRfe$transShippingOrderDetailRecordByTransShippingOrderDetailRecordId(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailRecordId,
    String? transShippingOrderDetailId,
    String? shippingDate,
    String? shippingQuantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
