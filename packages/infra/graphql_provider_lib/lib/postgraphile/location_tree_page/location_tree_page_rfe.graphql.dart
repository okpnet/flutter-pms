import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$LocationTreePageRfe {
  factory Variables$Query$LocationTreePageRfe({
    required String mstrLocationTreeId,
  }) => Variables$Query$LocationTreePageRfe._({
    r'mstrLocationTreeId': mstrLocationTreeId,
  });

  Variables$Query$LocationTreePageRfe._(this._$data);

  factory Variables$Query$LocationTreePageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrLocationTreeId = data['mstrLocationTreeId'];
    result$data['mstrLocationTreeId'] = (l$mstrLocationTreeId as String);
    return Variables$Query$LocationTreePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrLocationTreeId => (_$data['mstrLocationTreeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrLocationTreeId = mstrLocationTreeId;
    result$data['mstrLocationTreeId'] = l$mstrLocationTreeId;
    return result$data;
  }

  CopyWith$Variables$Query$LocationTreePageRfe<
    Variables$Query$LocationTreePageRfe
  >
  get copyWith => CopyWith$Variables$Query$LocationTreePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$LocationTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationTreeId = mstrLocationTreeId;
    final lOther$mstrLocationTreeId = other.mstrLocationTreeId;
    if (l$mstrLocationTreeId != lOther$mstrLocationTreeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrLocationTreeId = mstrLocationTreeId;
    return Object.hashAll([l$mstrLocationTreeId]);
  }
}

abstract class CopyWith$Variables$Query$LocationTreePageRfe<TRes> {
  factory CopyWith$Variables$Query$LocationTreePageRfe(
    Variables$Query$LocationTreePageRfe instance,
    TRes Function(Variables$Query$LocationTreePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$LocationTreePageRfe;

  factory CopyWith$Variables$Query$LocationTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$LocationTreePageRfe;

  TRes call({String? mstrLocationTreeId});
}

class _CopyWithImpl$Variables$Query$LocationTreePageRfe<TRes>
    implements CopyWith$Variables$Query$LocationTreePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$LocationTreePageRfe(this._instance, this._then);

  final Variables$Query$LocationTreePageRfe _instance;

  final TRes Function(Variables$Query$LocationTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mstrLocationTreeId = _undefined}) => _then(
    Variables$Query$LocationTreePageRfe._({
      ..._instance._$data,
      if (mstrLocationTreeId != _undefined && mstrLocationTreeId != null)
        'mstrLocationTreeId': (mstrLocationTreeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$LocationTreePageRfe<TRes>
    implements CopyWith$Variables$Query$LocationTreePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$LocationTreePageRfe(this._res);

  TRes _res;

  call({String? mstrLocationTreeId}) => _res;
}

class Query$LocationTreePageRfe {
  Query$LocationTreePageRfe({
    this.mstrLocationTreeByMstrLocationTreeId,
    this.$__typename = 'Query',
  });

  factory Query$LocationTreePageRfe.fromJson(Map<String, dynamic> json) {
    final l$mstrLocationTreeByMstrLocationTreeId =
        json['mstrLocationTreeByMstrLocationTreeId'];
    final l$$__typename = json['__typename'];
    return Query$LocationTreePageRfe(
      mstrLocationTreeByMstrLocationTreeId:
          l$mstrLocationTreeByMstrLocationTreeId == null
          ? null
          : Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.fromJson(
              (l$mstrLocationTreeByMstrLocationTreeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId?
  mstrLocationTreeByMstrLocationTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationTreeByMstrLocationTreeId =
        mstrLocationTreeByMstrLocationTreeId;
    _resultData['mstrLocationTreeByMstrLocationTreeId'] =
        l$mstrLocationTreeByMstrLocationTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLocationTreeByMstrLocationTreeId =
        mstrLocationTreeByMstrLocationTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationTreeByMstrLocationTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$LocationTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationTreeByMstrLocationTreeId =
        mstrLocationTreeByMstrLocationTreeId;
    final lOther$mstrLocationTreeByMstrLocationTreeId =
        other.mstrLocationTreeByMstrLocationTreeId;
    if (l$mstrLocationTreeByMstrLocationTreeId !=
        lOther$mstrLocationTreeByMstrLocationTreeId) {
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

extension UtilityExtension$Query$LocationTreePageRfe
    on Query$LocationTreePageRfe {
  CopyWith$Query$LocationTreePageRfe<Query$LocationTreePageRfe> get copyWith =>
      CopyWith$Query$LocationTreePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$LocationTreePageRfe<TRes> {
  factory CopyWith$Query$LocationTreePageRfe(
    Query$LocationTreePageRfe instance,
    TRes Function(Query$LocationTreePageRfe) then,
  ) = _CopyWithImpl$Query$LocationTreePageRfe;

  factory CopyWith$Query$LocationTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$LocationTreePageRfe;

  TRes call({
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId?
    mstrLocationTreeByMstrLocationTreeId,
    String? $__typename,
  });
  CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<TRes>
  get mstrLocationTreeByMstrLocationTreeId;
}

class _CopyWithImpl$Query$LocationTreePageRfe<TRes>
    implements CopyWith$Query$LocationTreePageRfe<TRes> {
  _CopyWithImpl$Query$LocationTreePageRfe(this._instance, this._then);

  final Query$LocationTreePageRfe _instance;

  final TRes Function(Query$LocationTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationTreeByMstrLocationTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LocationTreePageRfe(
      mstrLocationTreeByMstrLocationTreeId:
          mstrLocationTreeByMstrLocationTreeId == _undefined
          ? _instance.mstrLocationTreeByMstrLocationTreeId
          : (mstrLocationTreeByMstrLocationTreeId
                as Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<TRes>
  get mstrLocationTreeByMstrLocationTreeId {
    final local$mstrLocationTreeByMstrLocationTreeId =
        _instance.mstrLocationTreeByMstrLocationTreeId;
    return local$mstrLocationTreeByMstrLocationTreeId == null
        ? CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
            local$mstrLocationTreeByMstrLocationTreeId,
            (e) => call(mstrLocationTreeByMstrLocationTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$LocationTreePageRfe<TRes>
    implements CopyWith$Query$LocationTreePageRfe<TRes> {
  _CopyWithStubImpl$Query$LocationTreePageRfe(this._res);

  TRes _res;

  call({
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId?
    mstrLocationTreeByMstrLocationTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<TRes>
  get mstrLocationTreeByMstrLocationTreeId =>
      CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.stub(
        _res,
      );
}

const documentNodeQueryLocationTreePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'LocationTreePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLocationTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'mstrLocationTreeByMstrLocationTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'mstrLocationTreeId'),
                value: VariableNode(
                  name: NameNode(value: 'mstrLocationTreeId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrLocationTreeId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentMstrLocationId'),
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
Query$LocationTreePageRfe _parserFn$Query$LocationTreePageRfe(
  Map<String, dynamic> data,
) => Query$LocationTreePageRfe.fromJson(data);
typedef OnQueryComplete$Query$LocationTreePageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$LocationTreePageRfe?,
);

class Options$Query$LocationTreePageRfe
    extends graphql.QueryOptions<Query$LocationTreePageRfe> {
  Options$Query$LocationTreePageRfe({
    String? operationName,
    required Variables$Query$LocationTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LocationTreePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$LocationTreePageRfe? onComplete,
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
                     : _parserFn$Query$LocationTreePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryLocationTreePageRfe,
         parserFn: _parserFn$Query$LocationTreePageRfe,
       );

  final OnQueryComplete$Query$LocationTreePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$LocationTreePageRfe
    extends graphql.WatchQueryOptions<Query$LocationTreePageRfe> {
  WatchOptions$Query$LocationTreePageRfe({
    String? operationName,
    required Variables$Query$LocationTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$LocationTreePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryLocationTreePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$LocationTreePageRfe,
       );
}

class FetchMoreOptions$Query$LocationTreePageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$LocationTreePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$LocationTreePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryLocationTreePageRfe,
       );
}

extension ClientExtension$Query$LocationTreePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$LocationTreePageRfe>>
  query$LocationTreePageRfe(Options$Query$LocationTreePageRfe options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$LocationTreePageRfe>
  watchQuery$LocationTreePageRfe(
    WatchOptions$Query$LocationTreePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$LocationTreePageRfe({
    required Query$LocationTreePageRfe data,
    required Variables$Query$LocationTreePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryLocationTreePageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$LocationTreePageRfe? readQuery$LocationTreePageRfe({
    required Variables$Query$LocationTreePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryLocationTreePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$LocationTreePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$LocationTreePageRfe>
useQuery$LocationTreePageRfe(Options$Query$LocationTreePageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$LocationTreePageRfe>
useWatchQuery$LocationTreePageRfe(
  WatchOptions$Query$LocationTreePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$LocationTreePageRfe$Widget
    extends graphql_flutter.Query<Query$LocationTreePageRfe> {
  Query$LocationTreePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$LocationTreePageRfe options,
    required graphql_flutter.QueryBuilder<Query$LocationTreePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId {
  Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId({
    required this.mstrLocationTreeId,
    this.parentMstrLocationId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'MstrLocationTree',
  });

  factory Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationTreeId = json['mstrLocationTreeId'];
    final l$parentMstrLocationId = json['parentMstrLocationId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
      mstrLocationTreeId: (l$mstrLocationTreeId as String),
      parentMstrLocationId: (l$parentMstrLocationId as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLocationTreeId;

  final String? parentMstrLocationId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationTreeId = mstrLocationTreeId;
    _resultData['mstrLocationTreeId'] = l$mstrLocationTreeId;
    final l$parentMstrLocationId = parentMstrLocationId;
    _resultData['parentMstrLocationId'] = l$parentMstrLocationId;
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
    final l$mstrLocationTreeId = mstrLocationTreeId;
    final l$parentMstrLocationId = parentMstrLocationId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationTreeId,
      l$parentMstrLocationId,
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
            is! Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationTreeId = mstrLocationTreeId;
    final lOther$mstrLocationTreeId = other.mstrLocationTreeId;
    if (l$mstrLocationTreeId != lOther$mstrLocationTreeId) {
      return false;
    }
    final l$parentMstrLocationId = parentMstrLocationId;
    final lOther$parentMstrLocationId = other.parentMstrLocationId;
    if (l$parentMstrLocationId != lOther$parentMstrLocationId) {
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

extension UtilityExtension$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId
    on Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId {
  CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId
  >
  get copyWith =>
      CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
  TRes
> {
  factory CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId instance,
    TRes Function(
      Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId,
    )
    then,
  ) = _CopyWithImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId;

  factory CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId;

  TRes call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
  TRes
>
    implements
        CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
          TRes
        > {
  _CopyWithImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
    this._instance,
    this._then,
  );

  final Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId
  _instance;

  final TRes Function(
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationTreeId = _undefined,
    Object? parentMstrLocationId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
      mstrLocationTreeId:
          mstrLocationTreeId == _undefined || mstrLocationTreeId == null
          ? _instance.mstrLocationTreeId
          : (mstrLocationTreeId as String),
      parentMstrLocationId: parentMstrLocationId == _undefined
          ? _instance.parentMstrLocationId
          : (parentMstrLocationId as String?),
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

class _CopyWithStubImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
  TRes
>
    implements
        CopyWith$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId<
          TRes
        > {
  _CopyWithStubImpl$Query$LocationTreePageRfe$mstrLocationTreeByMstrLocationTreeId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
