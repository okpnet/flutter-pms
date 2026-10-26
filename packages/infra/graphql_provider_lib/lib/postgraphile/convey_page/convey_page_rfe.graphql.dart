import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ConveyPageRfe {
  factory Variables$Query$ConveyPageRfe({required String transConveyId}) =>
      Variables$Query$ConveyPageRfe._({r'transConveyId': transConveyId});

  Variables$Query$ConveyPageRfe._(this._$data);

  factory Variables$Query$ConveyPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transConveyId = data['transConveyId'];
    result$data['transConveyId'] = (l$transConveyId as String);
    return Variables$Query$ConveyPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transConveyId => (_$data['transConveyId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transConveyId = transConveyId;
    result$data['transConveyId'] = l$transConveyId;
    return result$data;
  }

  CopyWith$Variables$Query$ConveyPageRfe<Variables$Query$ConveyPageRfe>
  get copyWith => CopyWith$Variables$Query$ConveyPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ConveyPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConveyId = transConveyId;
    final lOther$transConveyId = other.transConveyId;
    if (l$transConveyId != lOther$transConveyId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transConveyId = transConveyId;
    return Object.hashAll([l$transConveyId]);
  }
}

abstract class CopyWith$Variables$Query$ConveyPageRfe<TRes> {
  factory CopyWith$Variables$Query$ConveyPageRfe(
    Variables$Query$ConveyPageRfe instance,
    TRes Function(Variables$Query$ConveyPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ConveyPageRfe;

  factory CopyWith$Variables$Query$ConveyPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ConveyPageRfe;

  TRes call({String? transConveyId});
}

class _CopyWithImpl$Variables$Query$ConveyPageRfe<TRes>
    implements CopyWith$Variables$Query$ConveyPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ConveyPageRfe(this._instance, this._then);

  final Variables$Query$ConveyPageRfe _instance;

  final TRes Function(Variables$Query$ConveyPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transConveyId = _undefined}) => _then(
    Variables$Query$ConveyPageRfe._({
      ..._instance._$data,
      if (transConveyId != _undefined && transConveyId != null)
        'transConveyId': (transConveyId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ConveyPageRfe<TRes>
    implements CopyWith$Variables$Query$ConveyPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ConveyPageRfe(this._res);

  TRes _res;

  call({String? transConveyId}) => _res;
}

class Query$ConveyPageRfe {
  Query$ConveyPageRfe({
    this.transConveyByTransConveyId,
    this.$__typename = 'Query',
  });

  factory Query$ConveyPageRfe.fromJson(Map<String, dynamic> json) {
    final l$transConveyByTransConveyId = json['transConveyByTransConveyId'];
    final l$$__typename = json['__typename'];
    return Query$ConveyPageRfe(
      transConveyByTransConveyId: l$transConveyByTransConveyId == null
          ? null
          : Query$ConveyPageRfe$transConveyByTransConveyId.fromJson(
              (l$transConveyByTransConveyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ConveyPageRfe$transConveyByTransConveyId?
  transConveyByTransConveyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transConveyByTransConveyId = transConveyByTransConveyId;
    _resultData['transConveyByTransConveyId'] = l$transConveyByTransConveyId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transConveyByTransConveyId = transConveyByTransConveyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transConveyByTransConveyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ConveyPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConveyByTransConveyId = transConveyByTransConveyId;
    final lOther$transConveyByTransConveyId = other.transConveyByTransConveyId;
    if (l$transConveyByTransConveyId != lOther$transConveyByTransConveyId) {
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

extension UtilityExtension$Query$ConveyPageRfe on Query$ConveyPageRfe {
  CopyWith$Query$ConveyPageRfe<Query$ConveyPageRfe> get copyWith =>
      CopyWith$Query$ConveyPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ConveyPageRfe<TRes> {
  factory CopyWith$Query$ConveyPageRfe(
    Query$ConveyPageRfe instance,
    TRes Function(Query$ConveyPageRfe) then,
  ) = _CopyWithImpl$Query$ConveyPageRfe;

  factory CopyWith$Query$ConveyPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ConveyPageRfe;

  TRes call({
    Query$ConveyPageRfe$transConveyByTransConveyId? transConveyByTransConveyId,
    String? $__typename,
  });
  CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes>
  get transConveyByTransConveyId;
}

class _CopyWithImpl$Query$ConveyPageRfe<TRes>
    implements CopyWith$Query$ConveyPageRfe<TRes> {
  _CopyWithImpl$Query$ConveyPageRfe(this._instance, this._then);

  final Query$ConveyPageRfe _instance;

  final TRes Function(Query$ConveyPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transConveyByTransConveyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ConveyPageRfe(
      transConveyByTransConveyId: transConveyByTransConveyId == _undefined
          ? _instance.transConveyByTransConveyId
          : (transConveyByTransConveyId
                as Query$ConveyPageRfe$transConveyByTransConveyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes>
  get transConveyByTransConveyId {
    final local$transConveyByTransConveyId =
        _instance.transConveyByTransConveyId;
    return local$transConveyByTransConveyId == null
        ? CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId(
            local$transConveyByTransConveyId,
            (e) => call(transConveyByTransConveyId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ConveyPageRfe<TRes>
    implements CopyWith$Query$ConveyPageRfe<TRes> {
  _CopyWithStubImpl$Query$ConveyPageRfe(this._res);

  TRes _res;

  call({
    Query$ConveyPageRfe$transConveyByTransConveyId? transConveyByTransConveyId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes>
  get transConveyByTransConveyId =>
      CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId.stub(_res);
}

const documentNodeQueryConveyPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ConveyPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transConveyId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'transConveyByTransConveyId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transConveyId'),
                value: VariableNode(name: NameNode(value: 'transConveyId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transConveyId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transVisiterId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'receive'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'conveyAt'),
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
                  name: NameNode(value: 'locationHistoryId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'locationId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'staffHistoryId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'staffId'),
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
Query$ConveyPageRfe _parserFn$Query$ConveyPageRfe(Map<String, dynamic> data) =>
    Query$ConveyPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ConveyPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ConveyPageRfe?,
);

class Options$Query$ConveyPageRfe
    extends graphql.QueryOptions<Query$ConveyPageRfe> {
  Options$Query$ConveyPageRfe({
    String? operationName,
    required Variables$Query$ConveyPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ConveyPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ConveyPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$ConveyPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryConveyPageRfe,
         parserFn: _parserFn$Query$ConveyPageRfe,
       );

  final OnQueryComplete$Query$ConveyPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ConveyPageRfe
    extends graphql.WatchQueryOptions<Query$ConveyPageRfe> {
  WatchOptions$Query$ConveyPageRfe({
    String? operationName,
    required Variables$Query$ConveyPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ConveyPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryConveyPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ConveyPageRfe,
       );
}

class FetchMoreOptions$Query$ConveyPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ConveyPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ConveyPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryConveyPageRfe,
       );
}

extension ClientExtension$Query$ConveyPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ConveyPageRfe>> query$ConveyPageRfe(
    Options$Query$ConveyPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ConveyPageRfe> watchQuery$ConveyPageRfe(
    WatchOptions$Query$ConveyPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ConveyPageRfe({
    required Query$ConveyPageRfe data,
    required Variables$Query$ConveyPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryConveyPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ConveyPageRfe? readQuery$ConveyPageRfe({
    required Variables$Query$ConveyPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryConveyPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ConveyPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ConveyPageRfe> useQuery$ConveyPageRfe(
  Options$Query$ConveyPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ConveyPageRfe> useWatchQuery$ConveyPageRfe(
  WatchOptions$Query$ConveyPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ConveyPageRfe$Widget
    extends graphql_flutter.Query<Query$ConveyPageRfe> {
  Query$ConveyPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ConveyPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ConveyPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ConveyPageRfe$transConveyByTransConveyId {
  Query$ConveyPageRfe$transConveyByTransConveyId({
    required this.transConveyId,
    required this.transVisiterId,
    this.receive,
    this.conveyAt,
    this.quantity,
    required this.locationHistoryId,
    required this.locationId,
    required this.staffHistoryId,
    required this.staffId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'TransConvey',
  });

  factory Query$ConveyPageRfe$transConveyByTransConveyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transConveyId = json['transConveyId'];
    final l$transVisiterId = json['transVisiterId'];
    final l$receive = json['receive'];
    final l$conveyAt = json['conveyAt'];
    final l$quantity = json['quantity'];
    final l$locationHistoryId = json['locationHistoryId'];
    final l$locationId = json['locationId'];
    final l$staffHistoryId = json['staffHistoryId'];
    final l$staffId = json['staffId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ConveyPageRfe$transConveyByTransConveyId(
      transConveyId: (l$transConveyId as String),
      transVisiterId: (l$transVisiterId as String),
      receive: (l$receive as bool?),
      conveyAt: (l$conveyAt as String?),
      quantity: (l$quantity as String?),
      locationHistoryId: (l$locationHistoryId as String),
      locationId: (l$locationId as String),
      staffHistoryId: (l$staffHistoryId as String),
      staffId: (l$staffId as String),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transConveyId;

  final String transVisiterId;

  final bool? receive;

  final String? conveyAt;

  final String? quantity;

  final String locationHistoryId;

  final String locationId;

  final String staffHistoryId;

  final String staffId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transConveyId = transConveyId;
    _resultData['transConveyId'] = l$transConveyId;
    final l$transVisiterId = transVisiterId;
    _resultData['transVisiterId'] = l$transVisiterId;
    final l$receive = receive;
    _resultData['receive'] = l$receive;
    final l$conveyAt = conveyAt;
    _resultData['conveyAt'] = l$conveyAt;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$locationHistoryId = locationHistoryId;
    _resultData['locationHistoryId'] = l$locationHistoryId;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$staffHistoryId = staffHistoryId;
    _resultData['staffHistoryId'] = l$staffHistoryId;
    final l$staffId = staffId;
    _resultData['staffId'] = l$staffId;
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
    final l$transConveyId = transConveyId;
    final l$transVisiterId = transVisiterId;
    final l$receive = receive;
    final l$conveyAt = conveyAt;
    final l$quantity = quantity;
    final l$locationHistoryId = locationHistoryId;
    final l$locationId = locationId;
    final l$staffHistoryId = staffHistoryId;
    final l$staffId = staffId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transConveyId,
      l$transVisiterId,
      l$receive,
      l$conveyAt,
      l$quantity,
      l$locationHistoryId,
      l$locationId,
      l$staffHistoryId,
      l$staffId,
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
    if (other is! Query$ConveyPageRfe$transConveyByTransConveyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConveyId = transConveyId;
    final lOther$transConveyId = other.transConveyId;
    if (l$transConveyId != lOther$transConveyId) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$receive = receive;
    final lOther$receive = other.receive;
    if (l$receive != lOther$receive) {
      return false;
    }
    final l$conveyAt = conveyAt;
    final lOther$conveyAt = other.conveyAt;
    if (l$conveyAt != lOther$conveyAt) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$locationHistoryId = locationHistoryId;
    final lOther$locationHistoryId = other.locationHistoryId;
    if (l$locationHistoryId != lOther$locationHistoryId) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$staffHistoryId = staffHistoryId;
    final lOther$staffHistoryId = other.staffHistoryId;
    if (l$staffHistoryId != lOther$staffHistoryId) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (l$staffId != lOther$staffId) {
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

extension UtilityExtension$Query$ConveyPageRfe$transConveyByTransConveyId
    on Query$ConveyPageRfe$transConveyByTransConveyId {
  CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<
    Query$ConveyPageRfe$transConveyByTransConveyId
  >
  get copyWith =>
      CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId(this, (i) => i);
}

abstract class CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes> {
  factory CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId(
    Query$ConveyPageRfe$transConveyByTransConveyId instance,
    TRes Function(Query$ConveyPageRfe$transConveyByTransConveyId) then,
  ) = _CopyWithImpl$Query$ConveyPageRfe$transConveyByTransConveyId;

  factory CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ConveyPageRfe$transConveyByTransConveyId;

  TRes call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ConveyPageRfe$transConveyByTransConveyId<TRes>
    implements CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes> {
  _CopyWithImpl$Query$ConveyPageRfe$transConveyByTransConveyId(
    this._instance,
    this._then,
  );

  final Query$ConveyPageRfe$transConveyByTransConveyId _instance;

  final TRes Function(Query$ConveyPageRfe$transConveyByTransConveyId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transConveyId = _undefined,
    Object? transVisiterId = _undefined,
    Object? receive = _undefined,
    Object? conveyAt = _undefined,
    Object? quantity = _undefined,
    Object? locationHistoryId = _undefined,
    Object? locationId = _undefined,
    Object? staffHistoryId = _undefined,
    Object? staffId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ConveyPageRfe$transConveyByTransConveyId(
      transConveyId: transConveyId == _undefined || transConveyId == null
          ? _instance.transConveyId
          : (transConveyId as String),
      transVisiterId: transVisiterId == _undefined || transVisiterId == null
          ? _instance.transVisiterId
          : (transVisiterId as String),
      receive: receive == _undefined ? _instance.receive : (receive as bool?),
      conveyAt: conveyAt == _undefined
          ? _instance.conveyAt
          : (conveyAt as String?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      locationHistoryId:
          locationHistoryId == _undefined || locationHistoryId == null
          ? _instance.locationHistoryId
          : (locationHistoryId as String),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      staffHistoryId: staffHistoryId == _undefined || staffHistoryId == null
          ? _instance.staffHistoryId
          : (staffHistoryId as String),
      staffId: staffId == _undefined || staffId == null
          ? _instance.staffId
          : (staffId as String),
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

class _CopyWithStubImpl$Query$ConveyPageRfe$transConveyByTransConveyId<TRes>
    implements CopyWith$Query$ConveyPageRfe$transConveyByTransConveyId<TRes> {
  _CopyWithStubImpl$Query$ConveyPageRfe$transConveyByTransConveyId(this._res);

  TRes _res;

  call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
