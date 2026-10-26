import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ShippingOrderPageRfe {
  factory Variables$Query$ShippingOrderPageRfe({
    required String transShippingOrderId,
  }) => Variables$Query$ShippingOrderPageRfe._({
    r'transShippingOrderId': transShippingOrderId,
  });

  Variables$Query$ShippingOrderPageRfe._(this._$data);

  factory Variables$Query$ShippingOrderPageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderId = data['transShippingOrderId'];
    result$data['transShippingOrderId'] = (l$transShippingOrderId as String);
    return Variables$Query$ShippingOrderPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderId => (_$data['transShippingOrderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderId = transShippingOrderId;
    result$data['transShippingOrderId'] = l$transShippingOrderId;
    return result$data;
  }

  CopyWith$Variables$Query$ShippingOrderPageRfe<
    Variables$Query$ShippingOrderPageRfe
  >
  get copyWith => CopyWith$Variables$Query$ShippingOrderPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ShippingOrderPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transShippingOrderId = transShippingOrderId;
    return Object.hashAll([l$transShippingOrderId]);
  }
}

abstract class CopyWith$Variables$Query$ShippingOrderPageRfe<TRes> {
  factory CopyWith$Variables$Query$ShippingOrderPageRfe(
    Variables$Query$ShippingOrderPageRfe instance,
    TRes Function(Variables$Query$ShippingOrderPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$ShippingOrderPageRfe;

  factory CopyWith$Variables$Query$ShippingOrderPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ShippingOrderPageRfe;

  TRes call({String? transShippingOrderId});
}

class _CopyWithImpl$Variables$Query$ShippingOrderPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$ShippingOrderPageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$ShippingOrderPageRfe _instance;

  final TRes Function(Variables$Query$ShippingOrderPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transShippingOrderId = _undefined}) => _then(
    Variables$Query$ShippingOrderPageRfe._({
      ..._instance._$data,
      if (transShippingOrderId != _undefined && transShippingOrderId != null)
        'transShippingOrderId': (transShippingOrderId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ShippingOrderPageRfe<TRes>
    implements CopyWith$Variables$Query$ShippingOrderPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$ShippingOrderPageRfe(this._res);

  TRes _res;

  call({String? transShippingOrderId}) => _res;
}

class Query$ShippingOrderPageRfe {
  Query$ShippingOrderPageRfe({
    this.transShippingOrderByTransShippingOrderId,
    this.$__typename = 'Query',
  });

  factory Query$ShippingOrderPageRfe.fromJson(Map<String, dynamic> json) {
    final l$transShippingOrderByTransShippingOrderId =
        json['transShippingOrderByTransShippingOrderId'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderPageRfe(
      transShippingOrderByTransShippingOrderId:
          l$transShippingOrderByTransShippingOrderId == null
          ? null
          : Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId.fromJson(
              (l$transShippingOrderByTransShippingOrderId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId?
  transShippingOrderByTransShippingOrderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderByTransShippingOrderId =
        transShippingOrderByTransShippingOrderId;
    _resultData['transShippingOrderByTransShippingOrderId'] =
        l$transShippingOrderByTransShippingOrderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderByTransShippingOrderId =
        transShippingOrderByTransShippingOrderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderByTransShippingOrderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShippingOrderPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderByTransShippingOrderId =
        transShippingOrderByTransShippingOrderId;
    final lOther$transShippingOrderByTransShippingOrderId =
        other.transShippingOrderByTransShippingOrderId;
    if (l$transShippingOrderByTransShippingOrderId !=
        lOther$transShippingOrderByTransShippingOrderId) {
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

extension UtilityExtension$Query$ShippingOrderPageRfe
    on Query$ShippingOrderPageRfe {
  CopyWith$Query$ShippingOrderPageRfe<Query$ShippingOrderPageRfe>
  get copyWith => CopyWith$Query$ShippingOrderPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$ShippingOrderPageRfe<TRes> {
  factory CopyWith$Query$ShippingOrderPageRfe(
    Query$ShippingOrderPageRfe instance,
    TRes Function(Query$ShippingOrderPageRfe) then,
  ) = _CopyWithImpl$Query$ShippingOrderPageRfe;

  factory CopyWith$Query$ShippingOrderPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$ShippingOrderPageRfe;

  TRes call({
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId?
    transShippingOrderByTransShippingOrderId,
    String? $__typename,
  });
  CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
    TRes
  >
  get transShippingOrderByTransShippingOrderId;
}

class _CopyWithImpl$Query$ShippingOrderPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderPageRfe<TRes> {
  _CopyWithImpl$Query$ShippingOrderPageRfe(this._instance, this._then);

  final Query$ShippingOrderPageRfe _instance;

  final TRes Function(Query$ShippingOrderPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderByTransShippingOrderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderPageRfe(
      transShippingOrderByTransShippingOrderId:
          transShippingOrderByTransShippingOrderId == _undefined
          ? _instance.transShippingOrderByTransShippingOrderId
          : (transShippingOrderByTransShippingOrderId
                as Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
    TRes
  >
  get transShippingOrderByTransShippingOrderId {
    final local$transShippingOrderByTransShippingOrderId =
        _instance.transShippingOrderByTransShippingOrderId;
    return local$transShippingOrderByTransShippingOrderId == null
        ? CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
            local$transShippingOrderByTransShippingOrderId,
            (e) => call(transShippingOrderByTransShippingOrderId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ShippingOrderPageRfe<TRes>
    implements CopyWith$Query$ShippingOrderPageRfe<TRes> {
  _CopyWithStubImpl$Query$ShippingOrderPageRfe(this._res);

  TRes _res;

  call({
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId?
    transShippingOrderByTransShippingOrderId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
    TRes
  >
  get transShippingOrderByTransShippingOrderId =>
      CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId.stub(
        _res,
      );
}

const documentNodeQueryShippingOrderPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ShippingOrderPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transShippingOrderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'transShippingOrderByTransShippingOrderId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transShippingOrderId'),
                value: VariableNode(
                  name: NameNode(value: 'transShippingOrderId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transShippingOrderId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'transOrderId'),
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
                  name: NameNode(value: 'code'),
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
                  name: NameNode(value: 'stakeholderHistoryId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'stakeholderId'),
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
Query$ShippingOrderPageRfe _parserFn$Query$ShippingOrderPageRfe(
  Map<String, dynamic> data,
) => Query$ShippingOrderPageRfe.fromJson(data);
typedef OnQueryComplete$Query$ShippingOrderPageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ShippingOrderPageRfe?,
);

class Options$Query$ShippingOrderPageRfe
    extends graphql.QueryOptions<Query$ShippingOrderPageRfe> {
  Options$Query$ShippingOrderPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShippingOrderPageRfe? onComplete,
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
                     : _parserFn$Query$ShippingOrderPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryShippingOrderPageRfe,
         parserFn: _parserFn$Query$ShippingOrderPageRfe,
       );

  final OnQueryComplete$Query$ShippingOrderPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ShippingOrderPageRfe
    extends graphql.WatchQueryOptions<Query$ShippingOrderPageRfe> {
  WatchOptions$Query$ShippingOrderPageRfe({
    String? operationName,
    required Variables$Query$ShippingOrderPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShippingOrderPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryShippingOrderPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ShippingOrderPageRfe,
       );
}

class FetchMoreOptions$Query$ShippingOrderPageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShippingOrderPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ShippingOrderPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryShippingOrderPageRfe,
       );
}

extension ClientExtension$Query$ShippingOrderPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShippingOrderPageRfe>>
  query$ShippingOrderPageRfe(
    Options$Query$ShippingOrderPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ShippingOrderPageRfe>
  watchQuery$ShippingOrderPageRfe(
    WatchOptions$Query$ShippingOrderPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$ShippingOrderPageRfe({
    required Query$ShippingOrderPageRfe data,
    required Variables$Query$ShippingOrderPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryShippingOrderPageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ShippingOrderPageRfe? readQuery$ShippingOrderPageRfe({
    required Variables$Query$ShippingOrderPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryShippingOrderPageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ShippingOrderPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShippingOrderPageRfe>
useQuery$ShippingOrderPageRfe(Options$Query$ShippingOrderPageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ShippingOrderPageRfe>
useWatchQuery$ShippingOrderPageRfe(
  WatchOptions$Query$ShippingOrderPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$ShippingOrderPageRfe$Widget
    extends graphql_flutter.Query<Query$ShippingOrderPageRfe> {
  Query$ShippingOrderPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$ShippingOrderPageRfe options,
    required graphql_flutter.QueryBuilder<Query$ShippingOrderPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId {
  Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId({
    required this.transShippingOrderId,
    required this.transOrderId,
    required this.estimatedShippingDate,
    required this.code,
    required this.estimatedArrivalDate,
    this.stakeholderHistoryId,
    this.stakeholderId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'TransShippingOrder',
  });

  factory Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderId = json['transShippingOrderId'];
    final l$transOrderId = json['transOrderId'];
    final l$estimatedShippingDate = json['estimatedShippingDate'];
    final l$code = json['code'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$stakeholderHistoryId = json['stakeholderHistoryId'];
    final l$stakeholderId = json['stakeholderId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
      transShippingOrderId: (l$transShippingOrderId as String),
      transOrderId: (l$transOrderId as String),
      estimatedShippingDate: (l$estimatedShippingDate as String),
      code: (l$code as String),
      estimatedArrivalDate: (l$estimatedArrivalDate as String),
      stakeholderHistoryId: (l$stakeholderHistoryId as String?),
      stakeholderId: (l$stakeholderId as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderId;

  final String transOrderId;

  final String estimatedShippingDate;

  final String code;

  final String estimatedArrivalDate;

  final String? stakeholderHistoryId;

  final String? stakeholderId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderId = transShippingOrderId;
    _resultData['transShippingOrderId'] = l$transShippingOrderId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$estimatedShippingDate = estimatedShippingDate;
    _resultData['estimatedShippingDate'] = l$estimatedShippingDate;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
    final l$stakeholderHistoryId = stakeholderHistoryId;
    _resultData['stakeholderHistoryId'] = l$stakeholderHistoryId;
    final l$stakeholderId = stakeholderId;
    _resultData['stakeholderId'] = l$stakeholderId;
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
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderId = transOrderId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final l$stakeholderId = stakeholderId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderId,
      l$transOrderId,
      l$estimatedShippingDate,
      l$code,
      l$estimatedArrivalDate,
      l$stakeholderHistoryId,
      l$stakeholderId,
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
            is! Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
      return false;
    }
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final lOther$stakeholderHistoryId = other.stakeholderHistoryId;
    if (l$stakeholderHistoryId != lOther$stakeholderHistoryId) {
      return false;
    }
    final l$stakeholderId = stakeholderId;
    final lOther$stakeholderId = other.stakeholderId;
    if (l$stakeholderId != lOther$stakeholderId) {
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

extension UtilityExtension$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId
    on Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId {
  CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId
  >
  get copyWith =>
      CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
  TRes
> {
  factory CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId
    instance,
    TRes Function(
      Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId,
    )
    then,
  ) = _CopyWithImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId;

  factory CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId;

  TRes call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
          TRes
        > {
  _CopyWithImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
    this._instance,
    this._then,
  );

  final Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId
  _instance;

  final TRes Function(
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderId = _undefined,
    Object? transOrderId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? stakeholderHistoryId = _undefined,
    Object? stakeholderId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
      transShippingOrderId:
          transShippingOrderId == _undefined || transShippingOrderId == null
          ? _instance.transShippingOrderId
          : (transShippingOrderId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      estimatedShippingDate:
          estimatedShippingDate == _undefined || estimatedShippingDate == null
          ? _instance.estimatedShippingDate
          : (estimatedShippingDate as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      estimatedArrivalDate:
          estimatedArrivalDate == _undefined || estimatedArrivalDate == null
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String),
      stakeholderHistoryId: stakeholderHistoryId == _undefined
          ? _instance.stakeholderHistoryId
          : (stakeholderHistoryId as String?),
      stakeholderId: stakeholderId == _undefined
          ? _instance.stakeholderId
          : (stakeholderId as String?),
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

class _CopyWithStubImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
  TRes
>
    implements
        CopyWith$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId<
          TRes
        > {
  _CopyWithStubImpl$Query$ShippingOrderPageRfe$transShippingOrderByTransShippingOrderId(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
