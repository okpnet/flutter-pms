import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$FilePageRfe {
  factory Variables$Query$FilePageRfe({required String transFileId}) =>
      Variables$Query$FilePageRfe._({r'transFileId': transFileId});

  Variables$Query$FilePageRfe._(this._$data);

  factory Variables$Query$FilePageRfe.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transFileId = data['transFileId'];
    result$data['transFileId'] = (l$transFileId as String);
    return Variables$Query$FilePageRfe._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transFileId => (_$data['transFileId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transFileId = transFileId;
    result$data['transFileId'] = l$transFileId;
    return result$data;
  }

  CopyWith$Variables$Query$FilePageRfe<Variables$Query$FilePageRfe>
  get copyWith => CopyWith$Variables$Query$FilePageRfe(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$FilePageRfe ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transFileId = transFileId;
    final lOther$transFileId = other.transFileId;
    if (l$transFileId != lOther$transFileId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$transFileId = transFileId;
    return Object.hashAll([l$transFileId]);
  }
}

abstract class CopyWith$Variables$Query$FilePageRfe<TRes> {
  factory CopyWith$Variables$Query$FilePageRfe(
    Variables$Query$FilePageRfe instance,
    TRes Function(Variables$Query$FilePageRfe) then,
  ) = _CopyWithImpl$Variables$Query$FilePageRfe;

  factory CopyWith$Variables$Query$FilePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FilePageRfe;

  TRes call({String? transFileId});
}

class _CopyWithImpl$Variables$Query$FilePageRfe<TRes>
    implements CopyWith$Variables$Query$FilePageRfe<TRes> {
  _CopyWithImpl$Variables$Query$FilePageRfe(this._instance, this._then);

  final Variables$Query$FilePageRfe _instance;

  final TRes Function(Variables$Query$FilePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? transFileId = _undefined}) => _then(
    Variables$Query$FilePageRfe._({
      ..._instance._$data,
      if (transFileId != _undefined && transFileId != null)
        'transFileId': (transFileId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$FilePageRfe<TRes>
    implements CopyWith$Variables$Query$FilePageRfe<TRes> {
  _CopyWithStubImpl$Variables$Query$FilePageRfe(this._res);

  TRes _res;

  call({String? transFileId}) => _res;
}

class Query$FilePageRfe {
  Query$FilePageRfe({this.transFileByTransFileId, this.$__typename = 'Query'});

  factory Query$FilePageRfe.fromJson(Map<String, dynamic> json) {
    final l$transFileByTransFileId = json['transFileByTransFileId'];
    final l$$__typename = json['__typename'];
    return Query$FilePageRfe(
      transFileByTransFileId: l$transFileByTransFileId == null
          ? null
          : Query$FilePageRfe$transFileByTransFileId.fromJson(
              (l$transFileByTransFileId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FilePageRfe$transFileByTransFileId? transFileByTransFileId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transFileByTransFileId = transFileByTransFileId;
    _resultData['transFileByTransFileId'] = l$transFileByTransFileId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transFileByTransFileId = transFileByTransFileId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transFileByTransFileId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FilePageRfe || runtimeType != other.runtimeType) {
      return false;
    }
    final l$transFileByTransFileId = transFileByTransFileId;
    final lOther$transFileByTransFileId = other.transFileByTransFileId;
    if (l$transFileByTransFileId != lOther$transFileByTransFileId) {
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

extension UtilityExtension$Query$FilePageRfe on Query$FilePageRfe {
  CopyWith$Query$FilePageRfe<Query$FilePageRfe> get copyWith =>
      CopyWith$Query$FilePageRfe(this, (i) => i);
}

abstract class CopyWith$Query$FilePageRfe<TRes> {
  factory CopyWith$Query$FilePageRfe(
    Query$FilePageRfe instance,
    TRes Function(Query$FilePageRfe) then,
  ) = _CopyWithImpl$Query$FilePageRfe;

  factory CopyWith$Query$FilePageRfe.stub(TRes res) =
      _CopyWithStubImpl$Query$FilePageRfe;

  TRes call({
    Query$FilePageRfe$transFileByTransFileId? transFileByTransFileId,
    String? $__typename,
  });
  CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes>
  get transFileByTransFileId;
}

class _CopyWithImpl$Query$FilePageRfe<TRes>
    implements CopyWith$Query$FilePageRfe<TRes> {
  _CopyWithImpl$Query$FilePageRfe(this._instance, this._then);

  final Query$FilePageRfe _instance;

  final TRes Function(Query$FilePageRfe) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transFileByTransFileId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FilePageRfe(
      transFileByTransFileId: transFileByTransFileId == _undefined
          ? _instance.transFileByTransFileId
          : (transFileByTransFileId
                as Query$FilePageRfe$transFileByTransFileId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes>
  get transFileByTransFileId {
    final local$transFileByTransFileId = _instance.transFileByTransFileId;
    return local$transFileByTransFileId == null
        ? CopyWith$Query$FilePageRfe$transFileByTransFileId.stub(
            _then(_instance),
          )
        : CopyWith$Query$FilePageRfe$transFileByTransFileId(
            local$transFileByTransFileId,
            (e) => call(transFileByTransFileId: e),
          );
  }
}

class _CopyWithStubImpl$Query$FilePageRfe<TRes>
    implements CopyWith$Query$FilePageRfe<TRes> {
  _CopyWithStubImpl$Query$FilePageRfe(this._res);

  TRes _res;

  call({
    Query$FilePageRfe$transFileByTransFileId? transFileByTransFileId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes>
  get transFileByTransFileId =>
      CopyWith$Query$FilePageRfe$transFileByTransFileId.stub(_res);
}

const documentNodeQueryFilePageRfe = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FilePageRfe'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transFileId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'transFileByTransFileId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'transFileId'),
                value: VariableNode(name: NameNode(value: 'transFileId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'transFileId'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'binaryData'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'mediaType'),
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
Query$FilePageRfe _parserFn$Query$FilePageRfe(Map<String, dynamic> data) =>
    Query$FilePageRfe.fromJson(data);
typedef OnQueryComplete$Query$FilePageRfe = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FilePageRfe?,
);

class Options$Query$FilePageRfe
    extends graphql.QueryOptions<Query$FilePageRfe> {
  Options$Query$FilePageRfe({
    String? operationName,
    required Variables$Query$FilePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilePageRfe? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FilePageRfe? onComplete,
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
                 data == null ? null : _parserFn$Query$FilePageRfe(data),
               ),
         onError: onError,
         document: documentNodeQueryFilePageRfe,
         parserFn: _parserFn$Query$FilePageRfe,
       );

  final OnQueryComplete$Query$FilePageRfe? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$FilePageRfe
    extends graphql.WatchQueryOptions<Query$FilePageRfe> {
  WatchOptions$Query$FilePageRfe({
    String? operationName,
    required Variables$Query$FilePageRfe variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FilePageRfe? typedOptimisticResult,
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
         document: documentNodeQueryFilePageRfe,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$FilePageRfe,
       );
}

class FetchMoreOptions$Query$FilePageRfe extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FilePageRfe({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FilePageRfe variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryFilePageRfe,
       );
}

extension ClientExtension$Query$FilePageRfe on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FilePageRfe>> query$FilePageRfe(
    Options$Query$FilePageRfe options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$FilePageRfe> watchQuery$FilePageRfe(
    WatchOptions$Query$FilePageRfe options,
  ) => this.watchQuery(options);

  void writeQuery$FilePageRfe({
    required Query$FilePageRfe data,
    required Variables$Query$FilePageRfe variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryFilePageRfe),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$FilePageRfe? readQuery$FilePageRfe({
    required Variables$Query$FilePageRfe variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFilePageRfe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FilePageRfe.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FilePageRfe> useQuery$FilePageRfe(
  Options$Query$FilePageRfe options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FilePageRfe> useWatchQuery$FilePageRfe(
  WatchOptions$Query$FilePageRfe options,
) => graphql_flutter.useWatchQuery(options);

class Query$FilePageRfe$Widget
    extends graphql_flutter.Query<Query$FilePageRfe> {
  Query$FilePageRfe$Widget({
    widgets.Key? key,
    required Options$Query$FilePageRfe options,
    required graphql_flutter.QueryBuilder<Query$FilePageRfe> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$FilePageRfe$transFileByTransFileId {
  Query$FilePageRfe$transFileByTransFileId({
    required this.transFileId,
    required this.binaryData,
    required this.name,
    this.mediaType,
    this.remarks,
    this.updateAt,
    this.updateUserId,
    this.updateUserHistoryId,
    this.remove,
    this.$__typename = 'TransFile',
  });

  factory Query$FilePageRfe$transFileByTransFileId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transFileId = json['transFileId'];
    final l$binaryData = json['binaryData'];
    final l$name = json['name'];
    final l$mediaType = json['mediaType'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$updateUserId = json['updateUserId'];
    final l$updateUserHistoryId = json['updateUserHistoryId'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$FilePageRfe$transFileByTransFileId(
      transFileId: (l$transFileId as String),
      binaryData: (l$binaryData as String),
      name: (l$name as String),
      mediaType: (l$mediaType as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      updateUserId: (l$updateUserId as String?),
      updateUserHistoryId: (l$updateUserHistoryId as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transFileId;

  final String binaryData;

  final String name;

  final String? mediaType;

  final String? remarks;

  final String? updateAt;

  final String? updateUserId;

  final String? updateUserHistoryId;

  final bool? remove;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transFileId = transFileId;
    _resultData['transFileId'] = l$transFileId;
    final l$binaryData = binaryData;
    _resultData['binaryData'] = l$binaryData;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$mediaType = mediaType;
    _resultData['mediaType'] = l$mediaType;
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
    final l$transFileId = transFileId;
    final l$binaryData = binaryData;
    final l$name = name;
    final l$mediaType = mediaType;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$updateUserId = updateUserId;
    final l$updateUserHistoryId = updateUserHistoryId;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transFileId,
      l$binaryData,
      l$name,
      l$mediaType,
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
    if (other is! Query$FilePageRfe$transFileByTransFileId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transFileId = transFileId;
    final lOther$transFileId = other.transFileId;
    if (l$transFileId != lOther$transFileId) {
      return false;
    }
    final l$binaryData = binaryData;
    final lOther$binaryData = other.binaryData;
    if (l$binaryData != lOther$binaryData) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (l$mediaType != lOther$mediaType) {
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

extension UtilityExtension$Query$FilePageRfe$transFileByTransFileId
    on Query$FilePageRfe$transFileByTransFileId {
  CopyWith$Query$FilePageRfe$transFileByTransFileId<
    Query$FilePageRfe$transFileByTransFileId
  >
  get copyWith =>
      CopyWith$Query$FilePageRfe$transFileByTransFileId(this, (i) => i);
}

abstract class CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes> {
  factory CopyWith$Query$FilePageRfe$transFileByTransFileId(
    Query$FilePageRfe$transFileByTransFileId instance,
    TRes Function(Query$FilePageRfe$transFileByTransFileId) then,
  ) = _CopyWithImpl$Query$FilePageRfe$transFileByTransFileId;

  factory CopyWith$Query$FilePageRfe$transFileByTransFileId.stub(TRes res) =
      _CopyWithStubImpl$Query$FilePageRfe$transFileByTransFileId;

  TRes call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FilePageRfe$transFileByTransFileId<TRes>
    implements CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes> {
  _CopyWithImpl$Query$FilePageRfe$transFileByTransFileId(
    this._instance,
    this._then,
  );

  final Query$FilePageRfe$transFileByTransFileId _instance;

  final TRes Function(Query$FilePageRfe$transFileByTransFileId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transFileId = _undefined,
    Object? binaryData = _undefined,
    Object? name = _undefined,
    Object? mediaType = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? updateUserId = _undefined,
    Object? updateUserHistoryId = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$FilePageRfe$transFileByTransFileId(
      transFileId: transFileId == _undefined || transFileId == null
          ? _instance.transFileId
          : (transFileId as String),
      binaryData: binaryData == _undefined || binaryData == null
          ? _instance.binaryData
          : (binaryData as String),
      name: name == _undefined || name == null
          ? _instance.name
          : (name as String),
      mediaType: mediaType == _undefined
          ? _instance.mediaType
          : (mediaType as String?),
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

class _CopyWithStubImpl$Query$FilePageRfe$transFileByTransFileId<TRes>
    implements CopyWith$Query$FilePageRfe$transFileByTransFileId<TRes> {
  _CopyWithStubImpl$Query$FilePageRfe$transFileByTransFileId(this._res);

  TRes _res;

  call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
    String? updateAt,
    String? updateUserId,
    String? updateUserHistoryId,
    bool? remove,
    String? $__typename,
  }) => _res;
}
