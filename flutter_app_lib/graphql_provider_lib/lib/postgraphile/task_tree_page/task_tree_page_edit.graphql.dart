import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$TaskTreePageEdit {
  factory Variables$Mutation$TaskTreePageEdit({
    required String mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
  }) => Variables$Mutation$TaskTreePageEdit._({
    r'mstrTaskTreeId': mstrTaskTreeId,
    if (parentMstrTaskId != null) r'parentMstrTaskId': parentMstrTaskId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$TaskTreePageEdit._(this._$data);

  factory Variables$Mutation$TaskTreePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrTaskTreeId = data['mstrTaskTreeId'];
    result$data['mstrTaskTreeId'] = (l$mstrTaskTreeId as String);
    if (data.containsKey('parentMstrTaskId')) {
      final l$parentMstrTaskId = data['parentMstrTaskId'];
      result$data['parentMstrTaskId'] = (l$parentMstrTaskId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$TaskTreePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrTaskTreeId => (_$data['mstrTaskTreeId'] as String);

  String? get parentMstrTaskId => (_$data['parentMstrTaskId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    result$data['mstrTaskTreeId'] = l$mstrTaskTreeId;
    if (_$data.containsKey('parentMstrTaskId')) {
      final l$parentMstrTaskId = parentMstrTaskId;
      result$data['parentMstrTaskId'] = l$parentMstrTaskId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$TaskTreePageEdit<
    Variables$Mutation$TaskTreePageEdit
  >
  get copyWith => CopyWith$Variables$Mutation$TaskTreePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TaskTreePageEdit ||
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
    if (_$data.containsKey('parentMstrTaskId') !=
        other._$data.containsKey('parentMstrTaskId')) {
      return false;
    }
    if (l$parentMstrTaskId != lOther$parentMstrTaskId) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (_$data.containsKey('remarks') != other._$data.containsKey('remarks')) {
      return false;
    }
    if (l$remarks != lOther$remarks) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrTaskTreeId,
      _$data.containsKey('parentMstrTaskId') ? l$parentMstrTaskId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$TaskTreePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$TaskTreePageEdit(
    Variables$Mutation$TaskTreePageEdit instance,
    TRes Function(Variables$Mutation$TaskTreePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$TaskTreePageEdit;

  factory CopyWith$Variables$Mutation$TaskTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TaskTreePageEdit;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$TaskTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskTreePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$TaskTreePageEdit(this._instance, this._then);

  final Variables$Mutation$TaskTreePageEdit _instance;

  final TRes Function(Variables$Mutation$TaskTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$TaskTreePageEdit._({
      ..._instance._$data,
      if (mstrTaskTreeId != _undefined && mstrTaskTreeId != null)
        'mstrTaskTreeId': (mstrTaskTreeId as String),
      if (parentMstrTaskId != _undefined)
        'parentMstrTaskId': (parentMstrTaskId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$TaskTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$TaskTreePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TaskTreePageEdit(this._res);

  TRes _res;

  call({String? mstrTaskTreeId, String? parentMstrTaskId, String? remarks}) =>
      _res;
}

class Mutation$TaskTreePageEdit {
  Mutation$TaskTreePageEdit({
    this.updateMstrTaskTreeByMstrTaskTreeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TaskTreePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrTaskTreeByMstrTaskTreeId =
        json['updateMstrTaskTreeByMstrTaskTreeId'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskTreePageEdit(
      updateMstrTaskTreeByMstrTaskTreeId:
          l$updateMstrTaskTreeByMstrTaskTreeId == null
          ? null
          : Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId.fromJson(
              (l$updateMstrTaskTreeByMstrTaskTreeId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId?
  updateMstrTaskTreeByMstrTaskTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrTaskTreeByMstrTaskTreeId =
        updateMstrTaskTreeByMstrTaskTreeId;
    _resultData['updateMstrTaskTreeByMstrTaskTreeId'] =
        l$updateMstrTaskTreeByMstrTaskTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrTaskTreeByMstrTaskTreeId =
        updateMstrTaskTreeByMstrTaskTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrTaskTreeByMstrTaskTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TaskTreePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrTaskTreeByMstrTaskTreeId =
        updateMstrTaskTreeByMstrTaskTreeId;
    final lOther$updateMstrTaskTreeByMstrTaskTreeId =
        other.updateMstrTaskTreeByMstrTaskTreeId;
    if (l$updateMstrTaskTreeByMstrTaskTreeId !=
        lOther$updateMstrTaskTreeByMstrTaskTreeId) {
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

extension UtilityExtension$Mutation$TaskTreePageEdit
    on Mutation$TaskTreePageEdit {
  CopyWith$Mutation$TaskTreePageEdit<Mutation$TaskTreePageEdit> get copyWith =>
      CopyWith$Mutation$TaskTreePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$TaskTreePageEdit<TRes> {
  factory CopyWith$Mutation$TaskTreePageEdit(
    Mutation$TaskTreePageEdit instance,
    TRes Function(Mutation$TaskTreePageEdit) then,
  ) = _CopyWithImpl$Mutation$TaskTreePageEdit;

  factory CopyWith$Mutation$TaskTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TaskTreePageEdit;

  TRes call({
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId?
    updateMstrTaskTreeByMstrTaskTreeId,
    String? $__typename,
  });
  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<TRes>
  get updateMstrTaskTreeByMstrTaskTreeId;
}

class _CopyWithImpl$Mutation$TaskTreePageEdit<TRes>
    implements CopyWith$Mutation$TaskTreePageEdit<TRes> {
  _CopyWithImpl$Mutation$TaskTreePageEdit(this._instance, this._then);

  final Mutation$TaskTreePageEdit _instance;

  final TRes Function(Mutation$TaskTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrTaskTreeByMstrTaskTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskTreePageEdit(
      updateMstrTaskTreeByMstrTaskTreeId:
          updateMstrTaskTreeByMstrTaskTreeId == _undefined
          ? _instance.updateMstrTaskTreeByMstrTaskTreeId
          : (updateMstrTaskTreeByMstrTaskTreeId
                as Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<TRes>
  get updateMstrTaskTreeByMstrTaskTreeId {
    final local$updateMstrTaskTreeByMstrTaskTreeId =
        _instance.updateMstrTaskTreeByMstrTaskTreeId;
    return local$updateMstrTaskTreeByMstrTaskTreeId == null
        ? CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
            local$updateMstrTaskTreeByMstrTaskTreeId,
            (e) => call(updateMstrTaskTreeByMstrTaskTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskTreePageEdit<TRes>
    implements CopyWith$Mutation$TaskTreePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$TaskTreePageEdit(this._res);

  TRes _res;

  call({
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId?
    updateMstrTaskTreeByMstrTaskTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<TRes>
  get updateMstrTaskTreeByMstrTaskTreeId =>
      CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId.stub(
        _res,
      );
}

const documentNodeMutationTaskTreePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'TaskTreePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrTaskTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'parentMstrTaskId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'remarks')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'updateMstrTaskTreeByMstrTaskTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskTreeId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrTaskTreeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrTaskTreePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'parentMstrTaskId'),
                            value: VariableNode(
                              name: NameNode(value: 'parentMstrTaskId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'mstrTaskTree'),
                  alias: null,
                  arguments: [],
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
Mutation$TaskTreePageEdit _parserFn$Mutation$TaskTreePageEdit(
  Map<String, dynamic> data,
) => Mutation$TaskTreePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$TaskTreePageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$TaskTreePageEdit?);

class Options$Mutation$TaskTreePageEdit
    extends graphql.MutationOptions<Mutation$TaskTreePageEdit> {
  Options$Mutation$TaskTreePageEdit({
    String? operationName,
    required Variables$Mutation$TaskTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskTreePageEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$TaskTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskTreePageEdit,
         parserFn: _parserFn$Mutation$TaskTreePageEdit,
       );

  final OnMutationCompleted$Mutation$TaskTreePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$TaskTreePageEdit
    extends graphql.WatchQueryOptions<Mutation$TaskTreePageEdit> {
  WatchOptions$Mutation$TaskTreePageEdit({
    String? operationName,
    required Variables$Mutation$TaskTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskTreePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationTaskTreePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$TaskTreePageEdit,
       );
}

extension ClientExtension$Mutation$TaskTreePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TaskTreePageEdit>>
  mutate$TaskTreePageEdit(Options$Mutation$TaskTreePageEdit options) async =>
      await this.mutate(options);

  graphql.ObservableQuery<Mutation$TaskTreePageEdit>
  watchMutation$TaskTreePageEdit(
    WatchOptions$Mutation$TaskTreePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$TaskTreePageEdit$HookResult {
  Mutation$TaskTreePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$TaskTreePageEdit runMutation;

  final graphql.QueryResult<Mutation$TaskTreePageEdit> result;
}

Mutation$TaskTreePageEdit$HookResult useMutation$TaskTreePageEdit([
  WidgetOptions$Mutation$TaskTreePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$TaskTreePageEdit(),
  );
  return Mutation$TaskTreePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$TaskTreePageEdit>
useWatchMutation$TaskTreePageEdit(
  WatchOptions$Mutation$TaskTreePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$TaskTreePageEdit
    extends graphql.MutationOptions<Mutation$TaskTreePageEdit> {
  WidgetOptions$Mutation$TaskTreePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TaskTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TaskTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$TaskTreePageEdit>? update,
    graphql.OnError? onError,
  }) : onCompletedWithParsed = onCompleted,
       super(
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         context: context,
         onCompleted: onCompleted == null
             ? null
             : (data) => onCompleted(
                 data,
                 data == null
                     ? null
                     : _parserFn$Mutation$TaskTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationTaskTreePageEdit,
         parserFn: _parserFn$Mutation$TaskTreePageEdit,
       );

  final OnMutationCompleted$Mutation$TaskTreePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$TaskTreePageEdit =
    graphql.MultiSourceResult<Mutation$TaskTreePageEdit> Function(
      Variables$Mutation$TaskTreePageEdit, {
      Object? optimisticResult,
      Mutation$TaskTreePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$TaskTreePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$TaskTreePageEdit,
      graphql.QueryResult<Mutation$TaskTreePageEdit>?,
    );

class Mutation$TaskTreePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$TaskTreePageEdit> {
  Mutation$TaskTreePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$TaskTreePageEdit? options,
    required Builder$Mutation$TaskTreePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$TaskTreePageEdit(),
         builder: (run, result) => builder(
           (variables, {optimisticResult, typedOptimisticResult}) => run(
             variables.toJson(),
             optimisticResult:
                 optimisticResult ?? typedOptimisticResult?.toJson(),
           ),
           result,
         ),
       );
}

class Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId {
  Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId({
    this.mstrTaskTree,
    this.$__typename = 'UpdateMstrTaskTreePayload',
  });

  factory Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTree = json['mstrTaskTree'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
      mstrTaskTree: l$mstrTaskTree == null
          ? null
          : Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.fromJson(
              (l$mstrTaskTree as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree?
  mstrTaskTree;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTree = mstrTaskTree;
    _resultData['mstrTaskTree'] = l$mstrTaskTree?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskTree = mstrTaskTree;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskTree, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTree = mstrTaskTree;
    final lOther$mstrTaskTree = other.mstrTaskTree;
    if (l$mstrTaskTree != lOther$mstrTaskTree) {
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

extension UtilityExtension$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId
    on Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId {
  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId
  >
  get copyWith =>
      CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
  TRes
> {
  factory CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId instance,
    TRes Function(Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId)
    then,
  ) = _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId;

  factory CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId;

  TRes call({
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree?
    mstrTaskTree,
    String? $__typename,
  });
  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
    TRes
  >
  get mstrTaskTree;
}

class _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
  TRes
>
    implements
        CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
    this._instance,
    this._then,
  );

  final Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId _instance;

  final TRes Function(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTree = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
      mstrTaskTree: mstrTaskTree == _undefined
          ? _instance.mstrTaskTree
          : (mstrTaskTree
                as Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
    TRes
  >
  get mstrTaskTree {
    final local$mstrTaskTree = _instance.mstrTaskTree;
    return local$mstrTaskTree == null
        ? CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
            local$mstrTaskTree,
            (e) => call(mstrTaskTree: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
  TRes
>
    implements
        CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree?
    mstrTaskTree,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
    TRes
  >
  get mstrTaskTree =>
      CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.stub(
        _res,
      );
}

class Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree {
  Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree({
    required this.mstrTaskTreeId,
    this.parentMstrTaskId,
    this.remarks,
    this.$__typename = 'MstrTaskTree',
  });

  factory Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTreeId = json['mstrTaskTreeId'];
    final l$parentMstrTaskId = json['parentMstrTaskId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
      mstrTaskTreeId: (l$mstrTaskTreeId as String),
      parentMstrTaskId: (l$parentMstrTaskId as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskTreeId;

  final String? parentMstrTaskId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    _resultData['mstrTaskTreeId'] = l$mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    _resultData['parentMstrTaskId'] = l$parentMstrTaskId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskTreeId,
      l$parentMstrTaskId,
      l$remarks,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree
    on Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree {
  CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree
  >
  get copyWith =>
      CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
  TRes
> {
  factory CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree
    instance,
    TRes Function(
      Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree,
    )
    then,
  ) = _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree;

  factory CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
  TRes
>
    implements
        CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
          TRes
        > {
  _CopyWithImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
    this._instance,
    this._then,
  );

  final Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree
  _instance;

  final TRes Function(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
      mstrTaskTreeId: mstrTaskTreeId == _undefined || mstrTaskTreeId == null
          ? _instance.mstrTaskTreeId
          : (mstrTaskTreeId as String),
      parentMstrTaskId: parentMstrTaskId == _undefined
          ? _instance.parentMstrTaskId
          : (parentMstrTaskId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
  TRes
>
    implements
        CopyWith$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree<
          TRes
        > {
  _CopyWithStubImpl$Mutation$TaskTreePageEdit$updateMstrTaskTreeByMstrTaskTreeId$mstrTaskTree(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? remarks,
    String? $__typename,
  }) => _res;
}
