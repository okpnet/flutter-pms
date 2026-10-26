import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ShippingOrderDetailPageRfe {
  factory Variables$Query$ShippingOrderDetailPageRfe({
    required String transShippingOrderDetailId,
  }) => Variables$Query$ShippingOrderDetailPageRfe._({
    r'transShippingOrderDetailId': transShippingOrderDetailId,
  });

  Variables$Query$ShippingOrderDetailPageRfe._(this._$data);

  factory Variables$Query$ShippingOrderDetailPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailId = data['transShippingOrderDetailId'];
    result$data['transShippingOrderDetailId'] =
        (l$transShippingOrderDetailId as String);
    return Variables$Query$ShippingOrderDetailPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderDetailId =>
      (_$data['transShippingOrderDetailId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    result$data['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    return result$data;
  }

  CopyWith$Variables$Query$ShippingOrderDetailPageRfe<
    Variables$Query$ShippingOrderDetailPageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$ShippingOrderDetailPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShippingOrderDetailPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    return Object.hashAll([l$transShippingOrderDetailId]);
  }
}

abstract class CopyWith$Variables$Query$ShippingOrderDetailPageRfe<TRes> {
  factory CopyWith$Variables$Query$ShippingOrderDetailPageRfe(
    Variables$Query$ShippingOrderDetailPageRfe instance,
    TRes Function(Variables$Query$ShippingOrderDetailPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ShippingOrderDetailPageRfe;

  factory CopyWith$Variables$Query$ShippingOrderDetailPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ShippingOrderDetailPageRfe;

  TRes call({String? transShippingOrderDetailId});
}

class _CopyWithImpl$Variables$Query$ShippingOrderDetailPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderDetailPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ShippingOrderDetailPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$ShippingOrderDetailPageRfe _instance;

  final TRes Function(Variables$Query$ShippingOrderDetailPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transShippingOrderDetailId = _undefined}) => _then(
    Variables$Query$ShippingOrderDetailPageRfe._({
      ..._instance._$data,
      if (transShippingOrderDetailId != _undefined &&
          transShippingOrderDetailId != null)
        'transShippingOrderDetailId': (transShippingOrderDetailId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShippingOrderDetailPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderDetailPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ShippingOrderDetailPageRfe(this._res);

  TRes _res;

  call({String? transShippingOrderDetailId}) => _res;
}

class Query$ShippingOrderDetailPageRfe {
  Query$ShippingOrderDetailPageRfe({
    this.transShippingOrderDetailByTransShippingOrderDetailId,
    this.$__typename = 'Query',
  });

  factory Query$ShippingOrderDetailPageRfe.fromJson(Map<String, dynamic> json) {
    final l$transShippingOrderDetailByTransShippingOrderDetailId =
        json['transShippingOrderDetailByTransShippingOrderDetailId'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailPageRfe(
      transShippingOrderDetailByTransShippingOrderDetailId:
          l$transShippingOrderDetailByTransShippingOrderDetailId == null
          ? null
          : Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId.fromJson(
              (l$transShippingOrderDetailByTransShippingOrderDetailId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId?
  transShippingOrderDetailByTransShippingOrderDetailId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailByTransShippingOrderDetailId =
        transShippingOrderDetailByTransShippingOrderDetailId;
    _resultData['transShippingOrderDetailByTransShippingOrderDetailId'] =
        l$transShippingOrderDetailByTransShippingOrderDetailId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailByTransShippingOrderDetailId =
        transShippingOrderDetailByTransShippingOrderDetailId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailByTransShippingOrderDetailId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShippingOrderDetailPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailByTransShippingOrderDetailId =
        transShippingOrderDetailByTransShippingOrderDetailId;
    final lOther$transShippingOrderDetailByTransShippingOrderDetailId =
        other.transShippingOrderDetailByTransShippingOrderDetailId;
    if (l$transShippingOrderDetailByTransShippingOrderDetailId !=
        lOther$transShippingOrderDetailByTransShippingOrderDetailId) {
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

extension UtilityExtension$Query$ShippingOrderDetailPageRfe
    on Query$ShippingOrderDetailPageRfe {
  CopyWith$Query$ShippingOrderDetailPageRfe<Query$ShippingOrderDetailPageRfe>
  get copyWith => CopyWith$Query$ShippingOrderDetailPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ShippingOrderDetailPageRfe<TRes> {
  factory CopyWith$Query$ShippingOrderDetailPageRfe(
    Query$ShippingOrderDetailPageRfe instance,
    TRes Function(Query$ShippingOrderDetailPageRfe) then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailPageRfe;

  factory CopyWith$Query$ShippingOrderDetailPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe;

  TRes call({
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId?
    transShippingOrderDetailByTransShippingOrderDetailId,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get transShippingOrderDetailByTransShippingOrderDetailId;
}

class _CopyWithImpl$Query$ShippingOrderDetailPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderDetailPageRfe<TRes> {
  _CopyWithImpl$Query$ShippingOrderDetailPageRfe(this._instance, this._then);

  final Query$ShippingOrderDetailPageRfe _instance;

  final TRes Function(Query$ShippingOrderDetailPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailByTransShippingOrderDetailId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailPageRfe(
      transShippingOrderDetailByTransShippingOrderDetailId:
          transShippingOrderDetailByTransShippingOrderDetailId == _undefined
          ? _instance.transShippingOrderDetailByTransShippingOrderDetailId
          : (transShippingOrderDetailByTransShippingOrderDetailId
                as Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get transShippingOrderDetailByTransShippingOrderDetailId {
    final local$transShippingOrderDetailByTransShippingOrderDetailId =
        _instance.transShippingOrderDetailByTransShippingOrderDetailId;
    return local$transShippingOrderDetailByTransShippingOrderDetailId == null
        ? CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
            local$transShippingOrderDetailByTransShippingOrderDetailId,
            (e) =>
                call(transShippingOrderDetailByTransShippingOrderDetailId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderDetailPageRfe<TRes> {
  _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe(this._res);

  TRes _res;

  call({
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId?
    transShippingOrderDetailByTransShippingOrderDetailId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get transShippingOrderDetailByTransShippingOrderDetailId =>
      CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId.stub(
        _res,
      );
}

const documentNodeQueryShippingOrderDetailPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShippingOrderDetailPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailId'),
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
              value: 'transShippingOrderDetailByTransShippingOrderDetailId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transShippingOrderDetailId'),
                value: VariableNode(
                  name: NameNode(value: 'transShippingOrderDetailId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transShippingOrderDetailId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transShippingOrderId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transOrderDetailId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'estimatedShippingDate'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'estimatedArrivalDate'),
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
Query$ShippingOrderDetailPageRfe _parserFn$Query$ShippingOrderDetailPageRfe(
  Map<String, dynamic> data,
) => Query$ShippingOrderDetailPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ShippingOrderDetailPageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ShippingOrderDetailPageRfe?,
    );

class Options$Query$ShippingOrderDetailPageRfe
    extends graphql.QueryOptions<Query$ShippingOrderDetailPageRfe> {
  Options$Query$ShippingOrderDetailPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderDetailPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShippingOrderDetailPageRfe? onComplete,
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
                     : _parserFn$Query$ShippingOrderDetailPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryShippingOrderDetailPageRfe,
         parserFn: _parserFn$Query$ShippingOrderDetailPageRfe,
       );

  final OnQueryComplete$Query$ShippingOrderDetailPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShippingOrderDetailPageRfe
    extends graphql.WatchQueryOptions<Query$ShippingOrderDetailPageRfe> {
  WatchOptions$Query$ShippingOrderDetailPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderDetailPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderDetailPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryShippingOrderDetailPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShippingOrderDetailPageRfe,
       );
}

class FetchMoreOptions$Query$ShippingOrderDetailPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShippingOrderDetailPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShippingOrderDetailPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShippingOrderDetailPageRfe,
       );
}

extension ClientExtension$Query$ShippingOrderDetailPageRfe
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShippingOrderDetailPageRfe>>
  query$ShippingOrderDetailPageRfe(
    Options$Query$ShippingOrderDetailPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShippingOrderDetailPageRfe>
  watchQuery$ShippingOrderDetailPageRfe(
    WatchOptions$Query$ShippingOrderDetailPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ShippingOrderDetailPageRfe({
    required Query$ShippingOrderDetailPageRfe data,
    required Variables$Query$ShippingOrderDetailPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryShippingOrderDetailPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShippingOrderDetailPageRfe? readQuery$ShippingOrderDetailPageRfe({
    required Variables$Query$ShippingOrderDetailPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryShippingOrderDetailPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ShippingOrderDetailPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShippingOrderDetailPageRfe>
useQuery$ShippingOrderDetailPageRfe(
  Options$Query$ShippingOrderDetailPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShippingOrderDetailPageRfe>
useWatchQuery$ShippingOrderDetailPageRfe(
  WatchOptions$Query$ShippingOrderDetailPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShippingOrderDetailPageRfe$Widget
    extends graphql_flutter.Query<Query$ShippingOrderDetailPageRfe> {
  Query$ShippingOrderDetailPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ShippingOrderDetailPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ShippingOrderDetailPageRfe>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId {
  Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId({
    required this.transShippingOrderDetailId,
    required this.transShippingOrderId,
    required this.transOrderDetailId,
    this.estimatedShippingDate,
    this.estimatedArrivalDate,
    required this.shippingQuantity,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'TransShippingOrderDetail',
  });

  factory Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$transShippingOrderId = json['transShippingOrderId'];
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$estimatedShippingDate = json['estimatedShippingDate'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      transShippingOrderId: (l$transShippingOrderId as String),
      transOrderDetailId: (l$transOrderDetailId as String),
      estimatedShippingDate: (l$estimatedShippingDate as String?),
      estimatedArrivalDate: (l$estimatedArrivalDate as String?),
      shippingQuantity: (l$shippingQuantity as String),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailId;

  final String transShippingOrderId;

  final String transOrderDetailId;

  final String? estimatedShippingDate;

  final String? estimatedArrivalDate;

  final String shippingQuantity;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    _resultData['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    final l$transShippingOrderId = transShippingOrderId;
    _resultData['transShippingOrderId'] = l$transShippingOrderId;
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$estimatedShippingDate = estimatedShippingDate;
    _resultData['estimatedShippingDate'] = l$estimatedShippingDate;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
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
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderDetailId = transOrderDetailId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$shippingQuantity = shippingQuantity;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailId,
      l$transShippingOrderId,
      l$transOrderDetailId,
      l$estimatedShippingDate,
      l$estimatedArrivalDate,
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
            is! Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
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

extension UtilityExtension$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId
    on
        Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId {
  CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId
    instance,
    TRes Function(
      Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId;

  factory CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId;

  TRes call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId
  _instance;

  final TRes Function(
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailId = _undefined,
    Object? transShippingOrderId = _undefined,
    Object? transOrderDetailId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
      transShippingOrderDetailId:
          transShippingOrderDetailId == _undefined ||
              transShippingOrderDetailId == null
          ? _instance.transShippingOrderDetailId
          : (transShippingOrderDetailId as String),
      transShippingOrderId:
          transShippingOrderId == _undefined || transShippingOrderId == null
          ? _instance.transShippingOrderId
          : (transShippingOrderId as String),
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
      estimatedShippingDate: estimatedShippingDate == _undefined
          ? _instance.estimatedShippingDate
          : (estimatedShippingDate as String?),
      estimatedArrivalDate: estimatedArrivalDate == _undefined
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String?),
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

class _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderDetailPageRfe$transShippingOrderDetailByTransShippingOrderDetailId(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
