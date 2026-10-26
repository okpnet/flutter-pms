import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TaskTreePageRfe {
  factory Variables$Query$TaskTreePageRfe({required String mstrTaskTreeId}) =>
      Variables$Query$TaskTreePageRfe._({r'mstrTaskTreeId': mstrTaskTreeId});

  Variables$Query$TaskTreePageRfe._(this._$data);

  factory Variables$Query$TaskTreePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskTreeId = data['mstrTaskTreeId'];
    result$data['mstrTaskTreeId'] = (l$mstrTaskTreeId as String);
    return Variables$Query$TaskTreePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskTreeId => (_$data['mstrTaskTreeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    result$data['mstrTaskTreeId'] = l$mstrTaskTreeId;
    return result$data;
  }

  CopyWith$Variables$Query$TaskTreePageRfe<Variables$Query$TaskTreePageRfe>
  get copyWith => CopyWith$Variables$Query$TaskTreePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TaskTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final lOther$mstrTaskTreeId = other.mstrTaskTreeId;
    if (l$mstrTaskTreeId != lOther$mstrTaskTreeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeId = mstrTaskTreeId;
    return Object.hashAll([l$mstrTaskTreeId]);
  }
}

abstract class CopyWith$Variables$Query$TaskTreePageRfe<TRes> {
  factory CopyWith$Variables$Query$TaskTreePageRfe(
    Variables$Query$TaskTreePageRfe instance,
    TRes Function(Variables$Query$TaskTreePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$TaskTreePageRfe;

  factory CopyWith$Variables$Query$TaskTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TaskTreePageRfe;

  TRes call({String? mstrTaskTreeId});
}

class _CopyWithImpl$Variables$Query$TaskTreePageRfe<TRes>
    implements CopyWith$Variables$Query$TaskTreePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$TaskTreePageRfe(this._instance, this._then);

  final Variables$Query$TaskTreePageRfe _instance;

  final TRes Function(Variables$Query$TaskTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mstrTaskTreeId = _undefined}) => _then(
    Variables$Query$TaskTreePageRfe._({
      ..._instance._$data,
      if (mstrTaskTreeId != _undefined && mstrTaskTreeId != null)
        'mstrTaskTreeId': (mstrTaskTreeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TaskTreePageRfe<TRes>
    implements CopyWith$Variables$Query$TaskTreePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$TaskTreePageRfe(this._res);

  TRes _res;

  call({String? mstrTaskTreeId}) => _res;
}

class Query$TaskTreePageRfe {
  Query$TaskTreePageRfe({
    this.mstrTaskTreeByMstrTaskTreeId,
    this.$__typename = 'Query',
  });

  factory Query$TaskTreePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrTaskTreeByMstrTaskTreeId = json['mstrTaskTreeByMstrTaskTreeId'];
    final l$$__typename = json['__typename'];
    return Query$TaskTreePageRfe(
      mstrTaskTreeByMstrTaskTreeId: l$mstrTaskTreeByMstrTaskTreeId == null
          ? null
          : Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.fromJson(
              (l$mstrTaskTreeByMstrTaskTreeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId?
  mstrTaskTreeByMstrTaskTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTreeByMstrTaskTreeId = mstrTaskTreeByMstrTaskTreeId;
    _resultData['mstrTaskTreeByMstrTaskTreeId'] = l$mstrTaskTreeByMstrTaskTreeId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeByMstrTaskTreeId = mstrTaskTreeByMstrTaskTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskTreeByMstrTaskTreeId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskTreePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTreeByMstrTaskTreeId = mstrTaskTreeByMstrTaskTreeId;
    final lOther$mstrTaskTreeByMstrTaskTreeId =
        other.mstrTaskTreeByMstrTaskTreeId;
    if (l$mstrTaskTreeByMstrTaskTreeId != lOther$mstrTaskTreeByMstrTaskTreeId) {
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

extension UtilityExtension$Query$TaskTreePageRfe on Query$TaskTreePageRfe {
  CopyWith$Query$TaskTreePageRfe<Query$TaskTreePageRfe> get copyWith =>
      CopyWith$Query$TaskTreePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$TaskTreePageRfe<TRes> {
  factory CopyWith$Query$TaskTreePageRfe(
    Query$TaskTreePageRfe instance,
    TRes Function(Query$TaskTreePageRfe) then,
  ) = _CopyWithImpl$Query$TaskTreePageRfe;

  factory CopyWith$Query$TaskTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskTreePageRfe;

  TRes call({
    Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId?
    mstrTaskTreeByMstrTaskTreeId,
    String? $__typename,
  });
  CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes>
  get mstrTaskTreeByMstrTaskTreeId;
}

class _CopyWithImpl$Query$TaskTreePageRfe<TRes>
    implements CopyWith$Query$TaskTreePageRfe<TRes> {
  _CopyWithImpl$Query$TaskTreePageRfe(this._instance, this._then);

  final Query$TaskTreePageRfe _instance;

  final TRes Function(Query$TaskTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeByMstrTaskTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskTreePageRfe(
      mstrTaskTreeByMstrTaskTreeId: mstrTaskTreeByMstrTaskTreeId == _undefined
          ? _instance.mstrTaskTreeByMstrTaskTreeId
          : (mstrTaskTreeByMstrTaskTreeId
                as Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes>
  get mstrTaskTreeByMstrTaskTreeId {
    final local$mstrTaskTreeByMstrTaskTreeId =
        _instance.mstrTaskTreeByMstrTaskTreeId;
    return local$mstrTaskTreeByMstrTaskTreeId == null
        ? CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
            local$mstrTaskTreeByMstrTaskTreeId,
            (e) => call(mstrTaskTreeByMstrTaskTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskTreePageRfe<TRes>
    implements CopyWith$Query$TaskTreePageRfe<TRes> {
  _CopyWithStubImpl$Query$TaskTreePageRfe(this._res);

  TRes _res;

  call({
    Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId?
    mstrTaskTreeByMstrTaskTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes>
  get mstrTaskTreeByMstrTaskTreeId =>
      CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.stub(_res);
}

const documentNodeQueryTaskTreePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TaskTreePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrTaskTreeByMstrTaskTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrTaskTreeId'),
                value: VariableNode(name: NameNode(value: 'mstrTaskTreeId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrTaskTreeId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentMstrTaskId'),
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
Query$TaskTreePageRfe _parserFn$Query$TaskTreePageRfe(
  Map<String, dynamic> data,
) => Query$TaskTreePageRfe.fromJson(data);
typedef OnQueryComplete$Query$TaskTreePageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TaskTreePageRfe?,
);

class Options$Query$TaskTreePageRfe
    extends graphql.QueryOptions<Query$TaskTreePageRfe> {
  Options$Query$TaskTreePageRfe({
    String? operationName,
    required Variables$Query$TaskTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskTreePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TaskTreePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$TaskTreePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryTaskTreePageRfe,
         parserFn: _parserFn$Query$TaskTreePageRfe,
       );

  final OnQueryComplete$Query$TaskTreePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TaskTreePageRfe
    extends graphql.WatchQueryOptions<Query$TaskTreePageRfe> {
  WatchOptions$Query$TaskTreePageRfe({
    String? operationName,
    required Variables$Query$TaskTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskTreePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryTaskTreePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TaskTreePageRfe,
       );
}

class FetchMoreOptions$Query$TaskTreePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TaskTreePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TaskTreePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTaskTreePageRfe,
       );
}

extension ClientExtension$Query$TaskTreePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TaskTreePageRfe>> query$TaskTreePageRfe(
    Options$Query$TaskTreePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TaskTreePageRfe> watchQuery$TaskTreePageRfe(
    WatchOptions$Query$TaskTreePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$TaskTreePageRfe({
    required Query$TaskTreePageRfe data,
    required Variables$Query$TaskTreePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTaskTreePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TaskTreePageRfe? readQuery$TaskTreePageRfe({
    required Variables$Query$TaskTreePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryTaskTreePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TaskTreePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TaskTreePageRfe> useQuery$TaskTreePageRfe(
  Options$Query$TaskTreePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TaskTreePageRfe> useWatchQuery$TaskTreePageRfe(
  WatchOptions$Query$TaskTreePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$TaskTreePageRfe$Widget
    extends graphql_flutter.Query<Query$TaskTreePageRfe> {
  Query$TaskTreePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$TaskTreePageRfe options,
    required graphql_flutter.QueryBuilder<Query$TaskTreePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId {
  Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId({
    required this.mstrTaskTreeId,
    this.parentMstrTaskId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrTaskTree',
  });

  factory Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTreeId = json['mstrTaskTreeId'];
    final l$parentMstrTaskId = json['parentMstrTaskId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
      mstrTaskTreeId: (l$mstrTaskTreeId as String),
      parentMstrTaskId: (l$parentMstrTaskId as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskTreeId;

  final String? parentMstrTaskId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    _resultData['mstrTaskTreeId'] = l$mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    _resultData['parentMstrTaskId'] = l$parentMstrTaskId;
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
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskTreeId,
      l$parentMstrTaskId,
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
    if (other is! Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final lOther$mstrTaskTreeId = other.mstrTaskTreeId;
    if (l$mstrTaskTreeId != lOther$mstrTaskTreeId) {
      return false;
    }
    final l$parentMstrTaskId = parentMstrTaskId;
    final lOther$parentMstrTaskId = other.parentMstrTaskId;
    if (l$parentMstrTaskId != lOther$parentMstrTaskId) {
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

extension UtilityExtension$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId
    on Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId {
  CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<
    Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId
  >
  get copyWith => CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<
  TRes
> {
  factory CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
    Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId instance,
    TRes Function(Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId) then,
  ) = _CopyWithImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId;

  factory CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes>
    implements
        CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes> {
  _CopyWithImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
    this._instance,
    this._then,
  );

  final Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId _instance;

  final TRes Function(Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
      mstrTaskTreeId: mstrTaskTreeId == _undefined || mstrTaskTreeId == null
          ? _instance.mstrTaskTreeId
          : (mstrTaskTreeId as String),
      parentMstrTaskId: parentMstrTaskId == _undefined
          ? _instance.parentMstrTaskId
          : (parentMstrTaskId as String?),
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

class _CopyWithStubImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes>
    implements
        CopyWith$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId<TRes> {
  _CopyWithStubImpl$Query$TaskTreePageRfe$mstrTaskTreeByMstrTaskTreeId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
