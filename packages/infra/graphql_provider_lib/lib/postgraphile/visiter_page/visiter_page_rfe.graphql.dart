import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$VisiterPageRfe {
  factory Variables$Query$VisiterPageRfe({required String transVisiterId}) =>
      Variables$Query$VisiterPageRfe._({r'transVisiterId': transVisiterId});

  Variables$Query$VisiterPageRfe._(this._$data);

  factory Variables$Query$VisiterPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transVisiterId = data['transVisiterId'];
    result$data['transVisiterId'] = (l$transVisiterId as String);
    return Variables$Query$VisiterPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transVisiterId => (_$data['transVisiterId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transVisiterId = transVisiterId;
    result$data['transVisiterId'] = l$transVisiterId;
    return result$data;
  }

  CopyWith$Variables$Query$VisiterPageRfe<Variables$Query$VisiterPageRfe>
  get copyWith => CopyWith$Variables$Query$VisiterPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$VisiterPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transVisiterId = transVisiterId;
    return Object.hashAll([l$transVisiterId]);
  }
}

abstract class CopyWith$Variables$Query$VisiterPageRfe<TRes> {
  factory CopyWith$Variables$Query$VisiterPageRfe(
    Variables$Query$VisiterPageRfe instance,
    TRes Function(Variables$Query$VisiterPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$VisiterPageRfe;

  factory CopyWith$Variables$Query$VisiterPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$VisiterPageRfe;

  TRes call({String? transVisiterId});
}

class _CopyWithImpl$Variables$Query$VisiterPageRfe<TRes>
    implements CopyWith$Variables$Query$VisiterPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$VisiterPageRfe(this._instance, this._then);

  final Variables$Query$VisiterPageRfe _instance;

  final TRes Function(Variables$Query$VisiterPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transVisiterId = _undefined}) => _then(
    Variables$Query$VisiterPageRfe._({
      ..._instance._$data,
      if (transVisiterId != _undefined && transVisiterId != null)
        'transVisiterId': (transVisiterId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$VisiterPageRfe<TRes>
    implements CopyWith$Variables$Query$VisiterPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$VisiterPageRfe(this._res);

  TRes _res;

  call({String? transVisiterId}) => _res;
}

class Query$VisiterPageRfe {
  Query$VisiterPageRfe({
    this.transVisiterByTransVisiterId,
    this.$__typename = 'Query',
  });

  factory Query$VisiterPageRfe.fromJson(Map<String, dynamic> json) {
    final l$transVisiterByTransVisiterId = json['transVisiterByTransVisiterId'];
    final l$$__typename = json['__typename'];
    return Query$VisiterPageRfe(
      transVisiterByTransVisiterId: l$transVisiterByTransVisiterId == null
          ? null
          : Query$VisiterPageRfe$transVisiterByTransVisiterId.fromJson(
              (l$transVisiterByTransVisiterId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$VisiterPageRfe$transVisiterByTransVisiterId?
  transVisiterByTransVisiterId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transVisiterByTransVisiterId = transVisiterByTransVisiterId;
    _resultData['transVisiterByTransVisiterId'] = l$transVisiterByTransVisiterId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transVisiterByTransVisiterId = transVisiterByTransVisiterId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transVisiterByTransVisiterId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$VisiterPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiterByTransVisiterId = transVisiterByTransVisiterId;
    final lOther$transVisiterByTransVisiterId =
        other.transVisiterByTransVisiterId;
    if (l$transVisiterByTransVisiterId != lOther$transVisiterByTransVisiterId) {
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

extension UtilityExtension$Query$VisiterPageRfe on Query$VisiterPageRfe {
  CopyWith$Query$VisiterPageRfe<Query$VisiterPageRfe> get copyWith =>
      CopyWith$Query$VisiterPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$VisiterPageRfe<TRes> {
  factory CopyWith$Query$VisiterPageRfe(
    Query$VisiterPageRfe instance,
    TRes Function(Query$VisiterPageRfe) then,
  ) = _CopyWithImpl$Query$VisiterPageRfe;

  factory CopyWith$Query$VisiterPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$VisiterPageRfe;

  TRes call({
    Query$VisiterPageRfe$transVisiterByTransVisiterId?
    transVisiterByTransVisiterId,
    String? $__typename,
  });
  CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes>
  get transVisiterByTransVisiterId;
}

class _CopyWithImpl$Query$VisiterPageRfe<TRes>
    implements CopyWith$Query$VisiterPageRfe<TRes> {
  _CopyWithImpl$Query$VisiterPageRfe(this._instance, this._then);

  final Query$VisiterPageRfe _instance;

  final TRes Function(Query$VisiterPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transVisiterByTransVisiterId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$VisiterPageRfe(
      transVisiterByTransVisiterId: transVisiterByTransVisiterId == _undefined
          ? _instance.transVisiterByTransVisiterId
          : (transVisiterByTransVisiterId
                as Query$VisiterPageRfe$transVisiterByTransVisiterId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes>
  get transVisiterByTransVisiterId {
    final local$transVisiterByTransVisiterId =
        _instance.transVisiterByTransVisiterId;
    return local$transVisiterByTransVisiterId == null
        ? CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId.stub(
            _then(_instance),
          )
        : CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId(
            local$transVisiterByTransVisiterId,
            (e) => call(transVisiterByTransVisiterId: e),
          );
  }
}

class _CopyWithStubImpl$Query$VisiterPageRfe<TRes>
    implements CopyWith$Query$VisiterPageRfe<TRes> {
  _CopyWithStubImpl$Query$VisiterPageRfe(this._res);

  TRes _res;

  call({
    Query$VisiterPageRfe$transVisiterByTransVisiterId?
    transVisiterByTransVisiterId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes>
  get transVisiterByTransVisiterId =>
      CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId.stub(_res);
}

const documentNodeQueryVisiterPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'VisiterPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transVisiterId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'transVisiterByTransVisiterId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transVisiterId'),
                value: VariableNode(name: NameNode(value: 'transVisiterId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transVisiterId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transContainerId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'status'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'quantity'),
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
Query$VisiterPageRfe _parserFn$Query$VisiterPageRfe(
  Map<String, dynamic> data,
) => Query$VisiterPageRfe.fromJson(data);
typedef OnQueryComplete$Query$VisiterPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$VisiterPageRfe?,
);

class Options$Query$VisiterPageRfe
    extends graphql.QueryOptions<Query$VisiterPageRfe> {
  Options$Query$VisiterPageRfe({
    String? operationName,
    required Variables$Query$VisiterPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$VisiterPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$VisiterPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$VisiterPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryVisiterPageRfe,
         parserFn: _parserFn$Query$VisiterPageRfe,
       );

  final OnQueryComplete$Query$VisiterPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$VisiterPageRfe
    extends graphql.WatchQueryOptions<Query$VisiterPageRfe> {
  WatchOptions$Query$VisiterPageRfe({
    String? operationName,
    required Variables$Query$VisiterPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$VisiterPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryVisiterPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$VisiterPageRfe,
       );
}

class FetchMoreOptions$Query$VisiterPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$VisiterPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$VisiterPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryVisiterPageRfe,
       );
}

extension ClientExtension$Query$VisiterPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$VisiterPageRfe>> query$VisiterPageRfe(
    Options$Query$VisiterPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$VisiterPageRfe> watchQuery$VisiterPageRfe(
    WatchOptions$Query$VisiterPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$VisiterPageRfe({
    required Query$VisiterPageRfe data,
    required Variables$Query$VisiterPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryVisiterPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$VisiterPageRfe? readQuery$VisiterPageRfe({
    required Variables$Query$VisiterPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryVisiterPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$VisiterPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$VisiterPageRfe> useQuery$VisiterPageRfe(
  Options$Query$VisiterPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$VisiterPageRfe> useWatchQuery$VisiterPageRfe(
  WatchOptions$Query$VisiterPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$VisiterPageRfe$Widget
    extends graphql_flutter.Query<Query$VisiterPageRfe> {
  Query$VisiterPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$VisiterPageRfe options,
    required graphql_flutter.QueryBuilder<Query$VisiterPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$VisiterPageRfe$transVisiterByTransVisiterId {
  Query$VisiterPageRfe$transVisiterByTransVisiterId({
    required this.transVisiterId,
    required this.transContainerId,
    this.status,
    this.quantity,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'TransVisiter',
  });

  factory Query$VisiterPageRfe$transVisiterByTransVisiterId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transVisiterId = json['transVisiterId'];
    final l$transContainerId = json['transContainerId'];
    final l$status = json['status'];
    final l$quantity = json['quantity'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$VisiterPageRfe$transVisiterByTransVisiterId(
      transVisiterId: (l$transVisiterId as String),
      transContainerId: (l$transContainerId as String),
      status: (l$status as int?),
      quantity: (l$quantity as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transVisiterId;

  final String transContainerId;

  final int? status;

  final String? quantity;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transVisiterId = transVisiterId;
    _resultData['transVisiterId'] = l$transVisiterId;
    final l$transContainerId = transContainerId;
    _resultData['transContainerId'] = l$transContainerId;
    final l$status = status;
    _resultData['status'] = l$status;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
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
    final l$transVisiterId = transVisiterId;
    final l$transContainerId = transContainerId;
    final l$status = status;
    final l$quantity = quantity;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transVisiterId,
      l$transContainerId,
      l$status,
      l$quantity,
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
    if (other is! Query$VisiterPageRfe$transVisiterByTransVisiterId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$transContainerId = transContainerId;
    final lOther$transContainerId = other.transContainerId;
    if (l$transContainerId != lOther$transContainerId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Query$VisiterPageRfe$transVisiterByTransVisiterId
    on Query$VisiterPageRfe$transVisiterByTransVisiterId {
  CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<
    Query$VisiterPageRfe$transVisiterByTransVisiterId
  >
  get copyWith => CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<
  TRes
> {
  factory CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId(
    Query$VisiterPageRfe$transVisiterByTransVisiterId instance,
    TRes Function(Query$VisiterPageRfe$transVisiterByTransVisiterId) then,
  ) = _CopyWithImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId;

  factory CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId;

  TRes call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes>
    implements
        CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes> {
  _CopyWithImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId(
    this._instance,
    this._then,
  );

  final Query$VisiterPageRfe$transVisiterByTransVisiterId _instance;

  final TRes Function(Query$VisiterPageRfe$transVisiterByTransVisiterId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transVisiterId = _undefined,
    Object? transContainerId = _undefined,
    Object? status = _undefined,
    Object? quantity = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$VisiterPageRfe$transVisiterByTransVisiterId(
      transVisiterId: transVisiterId == _undefined || transVisiterId == null
          ? _instance.transVisiterId
          : (transVisiterId as String),
      transContainerId:
          transContainerId == _undefined || transContainerId == null
          ? _instance.transContainerId
          : (transContainerId as String),
      status: status == _undefined ? _instance.status : (status as int?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
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

class _CopyWithStubImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes>
    implements
        CopyWith$Query$VisiterPageRfe$transVisiterByTransVisiterId<TRes> {
  _CopyWithStubImpl$Query$VisiterPageRfe$transVisiterByTransVisiterId(
    this._res,
  );

  TRes _res;

  call({
    String? transVisiterId,
    String? transContainerId,
    int? status,
    String? quantity,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
