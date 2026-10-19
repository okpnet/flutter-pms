import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$DepartmentTreePageRfe {
  factory Variables$Query$DepartmentTreePageRfe({
    required String infoDepartmentTreeId,
  }) => Variables$Query$DepartmentTreePageRfe._({
    r'infoDepartmentTreeId': infoDepartmentTreeId,
  });

  Variables$Query$DepartmentTreePageRfe._(this._$data);

  factory Variables$Query$DepartmentTreePageRfe.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentTreeId = data['infoDepartmentTreeId'];
    result$data['infoDepartmentTreeId'] = (l$infoDepartmentTreeId as String);
    return Variables$Query$DepartmentTreePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoDepartmentTreeId => (_$data['infoDepartmentTreeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    result$data['infoDepartmentTreeId'] = l$infoDepartmentTreeId;
    return result$data;
  }

  CopyWith$Variables$Query$DepartmentTreePageRfe<
    Variables$Query$DepartmentTreePageRfe
  >
  get copyWith =>
      CopyWith$Variables$Query$DepartmentTreePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DepartmentTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    final lOther$infoDepartmentTreeId = other.infoDepartmentTreeId;
    if (l$infoDepartmentTreeId != lOther$infoDepartmentTreeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    return Object.hashAll([l$infoDepartmentTreeId]);
  }
}

abstract class CopyWith$Variables$Query$DepartmentTreePageRfe<TRes> {
  factory CopyWith$Variables$Query$DepartmentTreePageRfe(
    Variables$Query$DepartmentTreePageRfe instance,
    TRes Function(Variables$Query$DepartmentTreePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$DepartmentTreePageRfe;

  factory CopyWith$Variables$Query$DepartmentTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DepartmentTreePageRfe;

  TRes call({String? infoDepartmentTreeId});
}

class _CopyWithImpl$Variables$Query$DepartmentTreePageRfe<TRes>
    implements CopyWith$Variables$Query$DepartmentTreePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$DepartmentTreePageRfe(
    this._instance,
    this._then,
  );

  final Variables$Query$DepartmentTreePageRfe _instance;

  final TRes Function(Variables$Query$DepartmentTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? infoDepartmentTreeId = _undefined}) => _then(
    Variables$Query$DepartmentTreePageRfe._({
      ..._instance._$data,
      if (infoDepartmentTreeId != _undefined && infoDepartmentTreeId != null)
        'infoDepartmentTreeId': (infoDepartmentTreeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$DepartmentTreePageRfe<TRes>
    implements CopyWith$Variables$Query$DepartmentTreePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$DepartmentTreePageRfe(this._res);

  TRes _res;

  call({String? infoDepartmentTreeId}) => _res;
}

class Query$DepartmentTreePageRfe {
  Query$DepartmentTreePageRfe({
    this.infoDepartmentTreeByInfoDepartmentTreeId,
    this.$__typename = 'Query',
  });

  factory Query$DepartmentTreePageRfe.fromJson(Map<String, dynamic> json) {
    final l$infoDepartmentTreeByInfoDepartmentTreeId =
        json['infoDepartmentTreeByInfoDepartmentTreeId'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentTreePageRfe(
      infoDepartmentTreeByInfoDepartmentTreeId:
          l$infoDepartmentTreeByInfoDepartmentTreeId == null
          ? null
          : Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.fromJson(
              (l$infoDepartmentTreeByInfoDepartmentTreeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId?
  infoDepartmentTreeByInfoDepartmentTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentTreeByInfoDepartmentTreeId =
        infoDepartmentTreeByInfoDepartmentTreeId;
    _resultData['infoDepartmentTreeByInfoDepartmentTreeId'] =
        l$infoDepartmentTreeByInfoDepartmentTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartmentTreeByInfoDepartmentTreeId =
        infoDepartmentTreeByInfoDepartmentTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentTreeByInfoDepartmentTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DepartmentTreePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentTreeByInfoDepartmentTreeId =
        infoDepartmentTreeByInfoDepartmentTreeId;
    final lOther$infoDepartmentTreeByInfoDepartmentTreeId =
        other.infoDepartmentTreeByInfoDepartmentTreeId;
    if (l$infoDepartmentTreeByInfoDepartmentTreeId !=
        lOther$infoDepartmentTreeByInfoDepartmentTreeId) {
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

extension UtilityExtension$Query$DepartmentTreePageRfe
    on Query$DepartmentTreePageRfe {
  CopyWith$Query$DepartmentTreePageRfe<Query$DepartmentTreePageRfe>
  get copyWith => CopyWith$Query$DepartmentTreePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$DepartmentTreePageRfe<TRes> {
  factory CopyWith$Query$DepartmentTreePageRfe(
    Query$DepartmentTreePageRfe instance,
    TRes Function(Query$DepartmentTreePageRfe) then,
  ) = _CopyWithImpl$Query$DepartmentTreePageRfe;

  factory CopyWith$Query$DepartmentTreePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$DepartmentTreePageRfe;

  TRes call({
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId?
    infoDepartmentTreeByInfoDepartmentTreeId,
    String? $__typename,
  });
  CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get infoDepartmentTreeByInfoDepartmentTreeId;
}

class _CopyWithImpl$Query$DepartmentTreePageRfe<TRes>
    implements CopyWith$Query$DepartmentTreePageRfe<TRes> {
  _CopyWithImpl$Query$DepartmentTreePageRfe(this._instance, this._then);

  final Query$DepartmentTreePageRfe _instance;

  final TRes Function(Query$DepartmentTreePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentTreeByInfoDepartmentTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentTreePageRfe(
      infoDepartmentTreeByInfoDepartmentTreeId:
          infoDepartmentTreeByInfoDepartmentTreeId == _undefined
          ? _instance.infoDepartmentTreeByInfoDepartmentTreeId
          : (infoDepartmentTreeByInfoDepartmentTreeId
                as Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get infoDepartmentTreeByInfoDepartmentTreeId {
    final local$infoDepartmentTreeByInfoDepartmentTreeId =
        _instance.infoDepartmentTreeByInfoDepartmentTreeId;
    return local$infoDepartmentTreeByInfoDepartmentTreeId == null
        ? CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
            local$infoDepartmentTreeByInfoDepartmentTreeId,
            (e) => call(infoDepartmentTreeByInfoDepartmentTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Query$DepartmentTreePageRfe<TRes>
    implements CopyWith$Query$DepartmentTreePageRfe<TRes> {
  _CopyWithStubImpl$Query$DepartmentTreePageRfe(this._res);

  TRes _res;

  call({
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId?
    infoDepartmentTreeByInfoDepartmentTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get infoDepartmentTreeByInfoDepartmentTreeId =>
      CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.stub(
        _res,
      );
}

const documentNodeQueryDepartmentTreePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'DepartmentTreePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoDepartmentTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'infoDepartmentTreeByInfoDepartmentTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoDepartmentTreeId'),
                value: VariableNode(
                  name: NameNode(value: 'infoDepartmentTreeId'),
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoDepartmentTreeId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'parentInfoDepartmentId'),
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
Query$DepartmentTreePageRfe _parserFn$Query$DepartmentTreePageRfe(
  Map<String, dynamic> data,
) => Query$DepartmentTreePageRfe.fromJson(data);
typedef OnQueryComplete$Query$DepartmentTreePageRfe =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$DepartmentTreePageRfe?,
    );

class Options$Query$DepartmentTreePageRfe
    extends graphql.QueryOptions<Query$DepartmentTreePageRfe> {
  Options$Query$DepartmentTreePageRfe({
    String? operationName,
    required Variables$Query$DepartmentTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DepartmentTreePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DepartmentTreePageRfe? onComplete,
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
                     : _parserFn$Query$DepartmentTreePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryDepartmentTreePageRfe,
         parserFn: _parserFn$Query$DepartmentTreePageRfe,
       );

  final OnQueryComplete$Query$DepartmentTreePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$DepartmentTreePageRfe
    extends graphql.WatchQueryOptions<Query$DepartmentTreePageRfe> {
  WatchOptions$Query$DepartmentTreePageRfe({
    String? operationName,
    required Variables$Query$DepartmentTreePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DepartmentTreePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryDepartmentTreePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$DepartmentTreePageRfe,
       );
}

class FetchMoreOptions$Query$DepartmentTreePageRfe
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DepartmentTreePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DepartmentTreePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryDepartmentTreePageRfe,
       );
}

extension ClientExtension$Query$DepartmentTreePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DepartmentTreePageRfe>>
  query$DepartmentTreePageRfe(
    Options$Query$DepartmentTreePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$DepartmentTreePageRfe>
  watchQuery$DepartmentTreePageRfe(
    WatchOptions$Query$DepartmentTreePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$DepartmentTreePageRfe({
    required Query$DepartmentTreePageRfe data,
    required Variables$Query$DepartmentTreePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryDepartmentTreePageRfe,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$DepartmentTreePageRfe? readQuery$DepartmentTreePageRfe({
    required Variables$Query$DepartmentTreePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryDepartmentTreePageRfe,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DepartmentTreePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$DepartmentTreePageRfe>
useQuery$DepartmentTreePageRfe(Options$Query$DepartmentTreePageRfe options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$DepartmentTreePageRfe>
useWatchQuery$DepartmentTreePageRfe(
  WatchOptions$Query$DepartmentTreePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$DepartmentTreePageRfe$Widget
    extends graphql_flutter.Query<Query$DepartmentTreePageRfe> {
  Query$DepartmentTreePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$DepartmentTreePageRfe options,
    required graphql_flutter.QueryBuilder<Query$DepartmentTreePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId {
  Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId({
    required this.infoDepartmentTreeId,
    this.parentInfoDepartmentId,
    this.remarks,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.updateAt,
    this.$__typename = 'InfoDepartmentTree',
  });

  factory Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartmentTreeId = json['infoDepartmentTreeId'];
    final l$parentInfoDepartmentId = json['parentInfoDepartmentId'];
    final l$remarks = json['remarks'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$updateAt = json['updateAt'];
    final l$$__typename = json['__typename'];
    return Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
      infoDepartmentTreeId: (l$infoDepartmentTreeId as String),
      parentInfoDepartmentId: (l$parentInfoDepartmentId as String?),
      remarks: (l$remarks as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      updateAt: (l$updateAt as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoDepartmentTreeId;

  final String? parentInfoDepartmentId;

  final String? remarks;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String? updateAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    _resultData['infoDepartmentTreeId'] = l$infoDepartmentTreeId;
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    _resultData['parentInfoDepartmentId'] = l$parentInfoDepartmentId;
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
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    final l$remarks = remarks;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$updateAt = updateAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentTreeId,
      l$parentInfoDepartmentId,
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
            is! Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    final lOther$infoDepartmentTreeId = other.infoDepartmentTreeId;
    if (l$infoDepartmentTreeId != lOther$infoDepartmentTreeId) {
      return false;
    }
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    final lOther$parentInfoDepartmentId = other.parentInfoDepartmentId;
    if (l$parentInfoDepartmentId != lOther$parentInfoDepartmentId) {
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

extension UtilityExtension$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId
    on Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId {
  CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId
  >
  get copyWith =>
      CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
  TRes
> {
  factory CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId
    instance,
    TRes Function(
      Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId,
    )
    then,
  ) = _CopyWithImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId;

  factory CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId;

  TRes call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
  TRes
>
    implements
        CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
          TRes
        > {
  _CopyWithImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
    this._instance,
    this._then,
  );

  final Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId
  _instance;

  final TRes Function(
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentTreeId = _undefined,
    Object? parentInfoDepartmentId = _undefined,
    Object? remarks = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? updateAt = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
      infoDepartmentTreeId:
          infoDepartmentTreeId == _undefined || infoDepartmentTreeId == null
          ? _instance.infoDepartmentTreeId
          : (infoDepartmentTreeId as String),
      parentInfoDepartmentId: parentInfoDepartmentId == _undefined
          ? _instance.parentInfoDepartmentId
          : (parentInfoDepartmentId as String?),
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

class _CopyWithStubImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
  TRes
>
    implements
        CopyWith$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId<
          TRes
        > {
  _CopyWithStubImpl$Query$DepartmentTreePageRfe$infoDepartmentTreeByInfoDepartmentTreeId(
    this._res,
  );

  TRes _res;

  call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? updateAt,
    String? $__typename,
  }) => _res;
}
