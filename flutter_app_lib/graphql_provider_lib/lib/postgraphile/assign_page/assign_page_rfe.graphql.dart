import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$AssignPageRfe {
  factory Variables$Query$AssignPageRfe({required String infoAssignId}) =>
      Variables$Query$AssignPageRfe._({r'infoAssignId': infoAssignId});

  Variables$Query$AssignPageRfe._(this._$data);

  factory Variables$Query$AssignPageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoAssignId = data['infoAssignId'];
    result$data['infoAssignId'] = (l$infoAssignId as String);
    return Variables$Query$AssignPageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoAssignId => (_$data['infoAssignId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoAssignId = infoAssignId;
    result$data['infoAssignId'] = l$infoAssignId;
    return result$data;
  }

  CopyWith$Variables$Query$AssignPageRfe<Variables$Query$AssignPageRfe>
  get copyWith => CopyWith$Variables$Query$AssignPageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$AssignPageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAssignId = infoAssignId;
    final lOther$infoAssignId = other.infoAssignId;
    if (l$infoAssignId != lOther$infoAssignId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoAssignId = infoAssignId;
    return Object.hashAll([l$infoAssignId]);
  }
}

abstract class CopyWith$Variables$Query$AssignPageRfe<TRes> {
  factory CopyWith$Variables$Query$AssignPageRfe(
    Variables$Query$AssignPageRfe instance,
    TRes Function(Variables$Query$AssignPageRfe) then,
  ) = _CopyWithImpl$Variables$Query$AssignPageRfe;

  factory CopyWith$Variables$Query$AssignPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$AssignPageRfe;

  TRes call({String? infoAssignId});
}

class _CopyWithImpl$Variables$Query$AssignPageRfe<TRes>
    implements CopyWith$Variables$Query$AssignPageRfe<TRes> {
  _CopyWithImpl$Variables$Query$AssignPageRfe(this._instance, this._then);

  final Variables$Query$AssignPageRfe _instance;

  final TRes Function(Variables$Query$AssignPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? infoAssignId = _undefined}) => _then(
    Variables$Query$AssignPageRfe._({
      ..._instance._$data,
      if (infoAssignId != _undefined && infoAssignId != null)
        'infoAssignId': (infoAssignId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$AssignPageRfe<TRes>
    implements CopyWith$Variables$Query$AssignPageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$AssignPageRfe(this._res);

  TRes _res;

  call({String? infoAssignId}) => _res;
}

class Query$AssignPageRfe {
  Query$AssignPageRfe({
    this.infoAssignByInfoAssignId,
    this.$__typename = 'Query',
  });

  factory Query$AssignPageRfe.fromJson(Map<String, dynamic> json) {
    final l$infoAssignByInfoAssignId = json['infoAssignByInfoAssignId'];
    final l$$__typename = json['__typename'];
    return Query$AssignPageRfe(
      infoAssignByInfoAssignId: l$infoAssignByInfoAssignId == null
          ? null
          : Query$AssignPageRfe$infoAssignByInfoAssignId.fromJson(
              (l$infoAssignByInfoAssignId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$AssignPageRfe$infoAssignByInfoAssignId? infoAssignByInfoAssignId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAssignByInfoAssignId = infoAssignByInfoAssignId;
    _resultData['infoAssignByInfoAssignId'] = l$infoAssignByInfoAssignId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAssignByInfoAssignId = infoAssignByInfoAssignId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoAssignByInfoAssignId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AssignPageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAssignByInfoAssignId = infoAssignByInfoAssignId;
    final lOther$infoAssignByInfoAssignId = other.infoAssignByInfoAssignId;
    if (l$infoAssignByInfoAssignId != lOther$infoAssignByInfoAssignId) {
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

extension UtilityExtension$Query$AssignPageRfe on Query$AssignPageRfe {
  CopyWith$Query$AssignPageRfe<Query$AssignPageRfe> get copyWith =>
      CopyWith$Query$AssignPageRfe(this, (i) => i);
}

abstract class CopyWith$Query$AssignPageRfe<TRes> {
  factory CopyWith$Query$AssignPageRfe(
    Query$AssignPageRfe instance,
    TRes Function(Query$AssignPageRfe) then,
  ) = _CopyWithImpl$Query$AssignPageRfe;

  factory CopyWith$Query$AssignPageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$AssignPageRfe;

  TRes call({
    Query$AssignPageRfe$infoAssignByInfoAssignId? infoAssignByInfoAssignId,
    String? $__typename,
  });
  CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes>
  get infoAssignByInfoAssignId;
}

class _CopyWithImpl$Query$AssignPageRfe<TRes>
    implements CopyWith$Query$AssignPageRfe<TRes> {
  _CopyWithImpl$Query$AssignPageRfe(this._instance, this._then);

  final Query$AssignPageRfe _instance;

  final TRes Function(Query$AssignPageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAssignByInfoAssignId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AssignPageRfe(
      infoAssignByInfoAssignId: infoAssignByInfoAssignId == _undefined
          ? _instance.infoAssignByInfoAssignId
          : (infoAssignByInfoAssignId
                as Query$AssignPageRfe$infoAssignByInfoAssignId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes>
  get infoAssignByInfoAssignId {
    final local$infoAssignByInfoAssignId = _instance.infoAssignByInfoAssignId;
    return local$infoAssignByInfoAssignId == null
        ? CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId.stub(
            _then(_instance),
          )
        : CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId(
            local$infoAssignByInfoAssignId,
            (e) => call(infoAssignByInfoAssignId: e),
          );
  }
}

class _CopyWithStubImpl$Query$AssignPageRfe<TRes>
    implements CopyWith$Query$AssignPageRfe<TRes> {
  _CopyWithStubImpl$Query$AssignPageRfe(this._res);

  TRes _res;

  call({
    Query$AssignPageRfe$infoAssignByInfoAssignId? infoAssignByInfoAssignId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes>
  get infoAssignByInfoAssignId =>
      CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId.stub(_res);
}

const documentNodeQueryAssignPageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'AssignPageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoAssignId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'infoAssignByInfoAssignId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'infoAssignId'),
                value: VariableNode(name: NameNode(value: 'infoAssignId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'infoAssignId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'infoStaffId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'infoPositionId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'infoOfficeId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'infoDepartmentId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'enable'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'priority'),
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
                  name: NameNode(value: 'updateAt'),
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
Query$AssignPageRfe _parserFn$Query$AssignPageRfe(Map<String, dynamic> data) =>
    Query$AssignPageRfe.fromJson(data);
typedef OnQueryComplete$Query$AssignPageRfe =
    FutureOr<void> Function(Map<String, dynamic>?, Query$AssignPageRfe?);

class Options$Query$AssignPageRfe
    extends graphql.QueryOptions<Query$AssignPageRfe> {
  Options$Query$AssignPageRfe({
    String? operationName,
    required Variables$Query$AssignPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AssignPageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AssignPageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$AssignPageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryAssignPageRfe,
         parserFn: _parserFn$Query$AssignPageRfe,
       );

  final OnQueryComplete$Query$AssignPageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$AssignPageRfe
    extends graphql.WatchQueryOptions<Query$AssignPageRfe> {
  WatchOptions$Query$AssignPageRfe({
    String? operationName,
    required Variables$Query$AssignPageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AssignPageRfe? typedOptimisticResult,
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
         document: documentNodeQueryAssignPageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$AssignPageRfe,
       );
}

class FetchMoreOptions$Query$AssignPageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AssignPageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$AssignPageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryAssignPageRfe,
       );
}

extension ClientExtension$Query$AssignPageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AssignPageRfe>> query$AssignPageRfe(
    Options$Query$AssignPageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$AssignPageRfe> watchQuery$AssignPageRfe(
    WatchOptions$Query$AssignPageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$AssignPageRfe({
    required Query$AssignPageRfe data,
    required Variables$Query$AssignPageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryAssignPageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$AssignPageRfe? readQuery$AssignPageRfe({
    required Variables$Query$AssignPageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryAssignPageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AssignPageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AssignPageRfe> useQuery$AssignPageRfe(
  Options$Query$AssignPageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$AssignPageRfe> useWatchQuery$AssignPageRfe(
  WatchOptions$Query$AssignPageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$AssignPageRfe$Widget
    extends graphql_flutter.Query<Query$AssignPageRfe> {
  Query$AssignPageRfe$Widget({
    widgets.Key? key,
    required Options$Query$AssignPageRfe options,
    required graphql_flutter.QueryBuilder<Query$AssignPageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$AssignPageRfe$infoAssignByInfoAssignId {
  Query$AssignPageRfe$infoAssignByInfoAssignId({
    required this.infoAssignId,
    required this.infoStaffId,
    required this.infoPositionId,
    this.infoOfficeId,
    this.infoDepartmentId,
    this.enable,
    this.priority,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.$__typename = 'InfoAssign',
  });

  factory Query$AssignPageRfe$infoAssignByInfoAssignId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAssignId = json['infoAssignId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoPositionId = json['infoPositionId'];
    final l$infoOfficeId = json['infoOfficeId'];
    final l$infoDepartmentId = json['infoDepartmentId'];
    final l$enable = json['enable'];
    final l$priority = json['priority'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$AssignPageRfe$infoAssignByInfoAssignId(
      infoAssignId: (l$infoAssignId as String),
      infoStaffId: (l$infoStaffId as String),
      infoPositionId: (l$infoPositionId as String),
      infoOfficeId: (l$infoOfficeId as String?),
      infoDepartmentId: (l$infoDepartmentId as String?),
      enable: (l$enable as bool?),
      priority: (l$priority as int?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAssignId;

  final String infoStaffId;

  final String infoPositionId;

  final String? infoOfficeId;

  final String? infoDepartmentId;

  final bool? enable;

  final int? priority;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAssignId = infoAssignId;
    _resultData['infoAssignId'] = l$infoAssignId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoPositionId = infoPositionId;
    _resultData['infoPositionId'] = l$infoPositionId;
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$infoDepartmentId = infoDepartmentId;
    _resultData['infoDepartmentId'] = l$infoDepartmentId;
    final l$enable = enable;
    _resultData['enable'] = l$enable;
    final l$priority = priority;
    _resultData['priority'] = l$priority;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$updateUserId = updateUserId;
    _resultData['updateUserId'] = l$updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    _resultData['updateUserHistoryId'] = l$updateUserHistoryId;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAssignId = infoAssignId;
    final l$infoStaffId = infoStaffId;
    final l$infoPositionId = infoPositionId;
    final l$infoOfficeId = infoOfficeId;
    final l$infoDepartmentId = infoDepartmentId;
    final l$enable = enable;
    final l$priority = priority;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAssignId,
      l$infoStaffId,
      l$infoPositionId,
      l$infoOfficeId,
      l$infoDepartmentId,
      l$enable,
      l$priority,
      l$remarks,
      l$updateAt,
      l$updateUserId,
      l$updateUserHistoryId,
      l$remove,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$AssignPageRfe$infoAssignByInfoAssignId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAssignId = infoAssignId;
    final lOther$infoAssignId = other.infoAssignId;
    if (l$infoAssignId != lOther$infoAssignId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
      return false;
    }
    final l$enable = enable;
    final lOther$enable = other.enable;
    if (l$enable != lOther$enable) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (l$priority != lOther$priority) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$updateAt = updateAt;
    final lOther$updateAt = other.updateAt;
    if (l$updateAt != lOther$updateAt) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$AssignPageRfe$infoAssignByInfoAssignId
    on Query$AssignPageRfe$infoAssignByInfoAssignId {
  CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<
    Query$AssignPageRfe$infoAssignByInfoAssignId
  >
  get copyWith =>
      CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId(this, (i) => i);
}

abstract class CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes> {
  factory CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId(
    Query$AssignPageRfe$infoAssignByInfoAssignId instance,
    TRes Function(Query$AssignPageRfe$infoAssignByInfoAssignId) then,
  ) = _CopyWithImpl$Query$AssignPageRfe$infoAssignByInfoAssignId;

  factory CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId.stub(TRes res) =
      _CopyWithStubImpl$Query$AssignPageRfe$infoAssignByInfoAssignId;

  TRes call({
    String? infoAssignId,
    String? infoStaffId,
    String? infoPositionId,
    String? infoOfficeId,
    String? infoDepartmentId,
    bool? enable,
    int? priority,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes>
    implements CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes> {
  _CopyWithImpl$Query$AssignPageRfe$infoAssignByInfoAssignId(
    this._instance,
    this._then,
  );

  final Query$AssignPageRfe$infoAssignByInfoAssignId _instance;

  final TRes Function(Query$AssignPageRfe$infoAssignByInfoAssignId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAssignId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoPositionId = _undefined,
    Object? infoOfficeId = _undefined,
    Object? infoDepartmentId = _undefined,
    Object? enable = _undefined,
    Object? priority = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$AssignPageRfe$infoAssignByInfoAssignId(
      infoAssignId: infoAssignId == _undefined || infoAssignId == null
          ? _instance.infoAssignId
          : (infoAssignId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoPositionId: infoPositionId == _undefined || infoPositionId == null
          ? _instance.infoPositionId
          : (infoPositionId as String),
      infoOfficeId: infoOfficeId == _undefined
          ? _instance.infoOfficeId
          : (infoOfficeId as String?),
      infoDepartmentId: infoDepartmentId == _undefined
          ? _instance.infoDepartmentId
          : (infoDepartmentId as String?),
      enable: enable == _undefined ? _instance.enable : (enable as bool?),
      priority: priority == _undefined
          ? _instance.priority
          : (priority as int?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      updateUserId: updateUserId == _undefined
          ? _instance.updateUserId
          : (updateUserId as String?),
      updateUserHistoryId: updateUserHistoryId == _undefined
          ? _instance.updateUserHistoryId
          : (updateUserHistoryId as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes>
    implements CopyWith$Query$AssignPageRfe$infoAssignByInfoAssignId<TRes> {
  _CopyWithStubImpl$Query$AssignPageRfe$infoAssignByInfoAssignId(this._res);

  TRes _res;

  call({
    String? infoAssignId,
    String? infoStaffId,
    String? infoPositionId,
    String? infoOfficeId,
    String? infoDepartmentId,
    bool? enable,
    int? priority,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  }) => _res;
}
