import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$DepartmentTreePageEdit {
  factory Variables$Mutation$DepartmentTreePageEdit({
    required String infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
  }) => Variables$Mutation$DepartmentTreePageEdit._({
    r'infoDepartmentTreeId': infoDepartmentTreeId,
    if (parentInfoDepartmentId != null)
      r'parentInfoDepartmentId': parentInfoDepartmentId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$DepartmentTreePageEdit._(this._$data);

  factory Variables$Mutation$DepartmentTreePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentTreeId = data['infoDepartmentTreeId'];
    result$data['infoDepartmentTreeId'] = (l$infoDepartmentTreeId as String);
    if (data.containsKey('parentInfoDepartmentId')) {
      final l$parentInfoDepartmentId = data['parentInfoDepartmentId'];
      result$data['parentInfoDepartmentId'] =
          (l$parentInfoDepartmentId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$DepartmentTreePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoDepartmentTreeId => (_$data['infoDepartmentTreeId'] as String);

  String? get parentInfoDepartmentId =>
      (_$data['parentInfoDepartmentId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    result$data['infoDepartmentTreeId'] = l$infoDepartmentTreeId;
    if (_$data.containsKey('parentInfoDepartmentId')) {
      final l$parentInfoDepartmentId = parentInfoDepartmentId;
      result$data['parentInfoDepartmentId'] = l$parentInfoDepartmentId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$DepartmentTreePageEdit<
    Variables$Mutation$DepartmentTreePageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$DepartmentTreePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DepartmentTreePageEdit ||
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
    if (_$data.containsKey('parentInfoDepartmentId') !=
        other._$data.containsKey('parentInfoDepartmentId')) {
      return false;
    }
    if (l$parentInfoDepartmentId != lOther$parentInfoDepartmentId) {
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
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$infoDepartmentTreeId,
      _$data.containsKey('parentInfoDepartmentId')
          ? l$parentInfoDepartmentId
          : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$DepartmentTreePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$DepartmentTreePageEdit(
    Variables$Mutation$DepartmentTreePageEdit instance,
    TRes Function(Variables$Mutation$DepartmentTreePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$DepartmentTreePageEdit;

  factory CopyWith$Variables$Mutation$DepartmentTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DepartmentTreePageEdit;

  TRes call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$DepartmentTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$DepartmentTreePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$DepartmentTreePageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DepartmentTreePageEdit _instance;

  final TRes Function(Variables$Mutation$DepartmentTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentTreeId = _undefined,
    Object? parentInfoDepartmentId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$DepartmentTreePageEdit._({
      ..._instance._$data,
      if (infoDepartmentTreeId != _undefined && infoDepartmentTreeId != null)
        'infoDepartmentTreeId': (infoDepartmentTreeId as String),
      if (parentInfoDepartmentId != _undefined)
        'parentInfoDepartmentId': (parentInfoDepartmentId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$DepartmentTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$DepartmentTreePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DepartmentTreePageEdit(this._res);

  TRes _res;

  call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
  }) => _res;
}

class Mutation$DepartmentTreePageEdit {
  Mutation$DepartmentTreePageEdit({
    this.updateInfoDepartmentTreeByInfoDepartmentTreeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DepartmentTreePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        json['updateInfoDepartmentTreeByInfoDepartmentTreeId'];
    final l$$__typename = json['__typename'];
    return Mutation$DepartmentTreePageEdit(
      updateInfoDepartmentTreeByInfoDepartmentTreeId:
          l$updateInfoDepartmentTreeByInfoDepartmentTreeId == null
          ? null
          : Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId.fromJson(
              (l$updateInfoDepartmentTreeByInfoDepartmentTreeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId?
  updateInfoDepartmentTreeByInfoDepartmentTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        updateInfoDepartmentTreeByInfoDepartmentTreeId;
    _resultData['updateInfoDepartmentTreeByInfoDepartmentTreeId'] =
        l$updateInfoDepartmentTreeByInfoDepartmentTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        updateInfoDepartmentTreeByInfoDepartmentTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateInfoDepartmentTreeByInfoDepartmentTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DepartmentTreePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        updateInfoDepartmentTreeByInfoDepartmentTreeId;
    final lOther$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        other.updateInfoDepartmentTreeByInfoDepartmentTreeId;
    if (l$updateInfoDepartmentTreeByInfoDepartmentTreeId !=
        lOther$updateInfoDepartmentTreeByInfoDepartmentTreeId) {
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

extension UtilityExtension$Mutation$DepartmentTreePageEdit
    on Mutation$DepartmentTreePageEdit {
  CopyWith$Mutation$DepartmentTreePageEdit<Mutation$DepartmentTreePageEdit>
  get copyWith => CopyWith$Mutation$DepartmentTreePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$DepartmentTreePageEdit<TRes> {
  factory CopyWith$Mutation$DepartmentTreePageEdit(
    Mutation$DepartmentTreePageEdit instance,
    TRes Function(Mutation$DepartmentTreePageEdit) then,
  ) = _CopyWithImpl$Mutation$DepartmentTreePageEdit;

  factory CopyWith$Mutation$DepartmentTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DepartmentTreePageEdit;

  TRes call({
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId?
    updateInfoDepartmentTreeByInfoDepartmentTreeId,
    String? $__typename,
  });
  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get updateInfoDepartmentTreeByInfoDepartmentTreeId;
}

class _CopyWithImpl$Mutation$DepartmentTreePageEdit<TRes>
    implements CopyWith$Mutation$DepartmentTreePageEdit<TRes> {
  _CopyWithImpl$Mutation$DepartmentTreePageEdit(this._instance, this._then);

  final Mutation$DepartmentTreePageEdit _instance;

  final TRes Function(Mutation$DepartmentTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoDepartmentTreeByInfoDepartmentTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DepartmentTreePageEdit(
      updateInfoDepartmentTreeByInfoDepartmentTreeId:
          updateInfoDepartmentTreeByInfoDepartmentTreeId == _undefined
          ? _instance.updateInfoDepartmentTreeByInfoDepartmentTreeId
          : (updateInfoDepartmentTreeByInfoDepartmentTreeId
                as Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get updateInfoDepartmentTreeByInfoDepartmentTreeId {
    final local$updateInfoDepartmentTreeByInfoDepartmentTreeId =
        _instance.updateInfoDepartmentTreeByInfoDepartmentTreeId;
    return local$updateInfoDepartmentTreeByInfoDepartmentTreeId == null
        ? CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
            local$updateInfoDepartmentTreeByInfoDepartmentTreeId,
            (e) => call(updateInfoDepartmentTreeByInfoDepartmentTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DepartmentTreePageEdit<TRes>
    implements CopyWith$Mutation$DepartmentTreePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$DepartmentTreePageEdit(this._res);

  TRes _res;

  call({
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId?
    updateInfoDepartmentTreeByInfoDepartmentTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
    TRes
  >
  get updateInfoDepartmentTreeByInfoDepartmentTreeId =>
      CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId.stub(
        _res,
      );
}

const documentNodeMutationDepartmentTreePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'DepartmentTreePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoDepartmentTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'parentInfoDepartmentId'),
          ),
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
            name: NameNode(
              value: 'updateInfoDepartmentTreeByInfoDepartmentTreeId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoDepartmentTreeId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoDepartmentTreeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoDepartmentTreePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'parentInfoDepartmentId'),
                            value: VariableNode(
                              name: NameNode(value: 'parentInfoDepartmentId'),
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
                  name: NameNode(value: 'infoDepartmentTree'),
                  alias: null,
                  arguments: [],
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
Mutation$DepartmentTreePageEdit _parserFn$Mutation$DepartmentTreePageEdit(
  Map<String, dynamic> data,
) => Mutation$DepartmentTreePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$DepartmentTreePageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$DepartmentTreePageEdit?,
    );

class Options$Mutation$DepartmentTreePageEdit
    extends graphql.MutationOptions<Mutation$DepartmentTreePageEdit> {
  Options$Mutation$DepartmentTreePageEdit({
    String? operationName,
    required Variables$Mutation$DepartmentTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DepartmentTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DepartmentTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$DepartmentTreePageEdit>? update,
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
                     : _parserFn$Mutation$DepartmentTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationDepartmentTreePageEdit,
         parserFn: _parserFn$Mutation$DepartmentTreePageEdit,
       );

  final OnMutationCompleted$Mutation$DepartmentTreePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$DepartmentTreePageEdit
    extends graphql.WatchQueryOptions<Mutation$DepartmentTreePageEdit> {
  WatchOptions$Mutation$DepartmentTreePageEdit({
    String? operationName,
    required Variables$Mutation$DepartmentTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DepartmentTreePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationDepartmentTreePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$DepartmentTreePageEdit,
       );
}

extension ClientExtension$Mutation$DepartmentTreePageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DepartmentTreePageEdit>>
  mutate$DepartmentTreePageEdit(
    Options$Mutation$DepartmentTreePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$DepartmentTreePageEdit>
  watchMutation$DepartmentTreePageEdit(
    WatchOptions$Mutation$DepartmentTreePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$DepartmentTreePageEdit$HookResult {
  Mutation$DepartmentTreePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$DepartmentTreePageEdit runMutation;

  final graphql.QueryResult<Mutation$DepartmentTreePageEdit> result;
}

Mutation$DepartmentTreePageEdit$HookResult useMutation$DepartmentTreePageEdit([
  WidgetOptions$Mutation$DepartmentTreePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$DepartmentTreePageEdit(),
  );
  return Mutation$DepartmentTreePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DepartmentTreePageEdit>
useWatchMutation$DepartmentTreePageEdit(
  WatchOptions$Mutation$DepartmentTreePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DepartmentTreePageEdit
    extends graphql.MutationOptions<Mutation$DepartmentTreePageEdit> {
  WidgetOptions$Mutation$DepartmentTreePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DepartmentTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DepartmentTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$DepartmentTreePageEdit>? update,
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
                     : _parserFn$Mutation$DepartmentTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationDepartmentTreePageEdit,
         parserFn: _parserFn$Mutation$DepartmentTreePageEdit,
       );

  final OnMutationCompleted$Mutation$DepartmentTreePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$DepartmentTreePageEdit =
    graphql.MultiSourceResult<Mutation$DepartmentTreePageEdit> Function(
      Variables$Mutation$DepartmentTreePageEdit, {
      Object? optimisticResult,
      Mutation$DepartmentTreePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$DepartmentTreePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$DepartmentTreePageEdit,
      graphql.QueryResult<Mutation$DepartmentTreePageEdit>?,
    );

class Mutation$DepartmentTreePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$DepartmentTreePageEdit> {
  Mutation$DepartmentTreePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DepartmentTreePageEdit? options,
    required Builder$Mutation$DepartmentTreePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$DepartmentTreePageEdit(),
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

class Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId {
  Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId({
    this.infoDepartmentTree,
    this.$__typename = 'UpdateInfoDepartmentTreePayload',
  });

  factory Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartmentTree = json['infoDepartmentTree'];
    final l$$__typename = json['__typename'];
    return Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
      infoDepartmentTree: l$infoDepartmentTree == null
          ? null
          : Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.fromJson(
              (l$infoDepartmentTree as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree?
  infoDepartmentTree;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentTree = infoDepartmentTree;
    _resultData['infoDepartmentTree'] = l$infoDepartmentTree?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartmentTree = infoDepartmentTree;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoDepartmentTree, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoDepartmentTree = infoDepartmentTree;
    final lOther$infoDepartmentTree = other.infoDepartmentTree;
    if (l$infoDepartmentTree != lOther$infoDepartmentTree) {
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

extension UtilityExtension$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId
    on Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId {
  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId
  >
  get copyWith =>
      CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
  TRes
> {
  factory CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId
    instance,
    TRes Function(
      Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId,
    )
    then,
  ) = _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId;

  factory CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId;

  TRes call({
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree?
    infoDepartmentTree,
    String? $__typename,
  });
  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
    TRes
  >
  get infoDepartmentTree;
}

class _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
  TRes
>
    implements
        CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
          TRes
        > {
  _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
    this._instance,
    this._then,
  );

  final Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId
  _instance;

  final TRes Function(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentTree = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
      infoDepartmentTree: infoDepartmentTree == _undefined
          ? _instance.infoDepartmentTree
          : (infoDepartmentTree
                as Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
    TRes
  >
  get infoDepartmentTree {
    final local$infoDepartmentTree = _instance.infoDepartmentTree;
    return local$infoDepartmentTree == null
        ? CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
            local$infoDepartmentTree,
            (e) => call(infoDepartmentTree: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
  TRes
>
    implements
        CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree?
    infoDepartmentTree,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
    TRes
  >
  get infoDepartmentTree =>
      CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.stub(
        _res,
      );
}

class Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree {
  Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree({
    required this.infoDepartmentTreeId,
    this.parentInfoDepartmentId,
    this.remarks,
    this.$__typename = 'InfoDepartmentTree',
  });

  factory Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoDepartmentTreeId = json['infoDepartmentTreeId'];
    final l$parentInfoDepartmentId = json['parentInfoDepartmentId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
      infoDepartmentTreeId: (l$infoDepartmentTreeId as String),
      parentInfoDepartmentId: (l$parentInfoDepartmentId as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoDepartmentTreeId;

  final String? parentInfoDepartmentId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    _resultData['infoDepartmentTreeId'] = l$infoDepartmentTreeId;
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    _resultData['parentInfoDepartmentId'] = l$parentInfoDepartmentId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoDepartmentTreeId = infoDepartmentTreeId;
    final l$parentInfoDepartmentId = parentInfoDepartmentId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoDepartmentTreeId,
      l$parentInfoDepartmentId,
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
            is! Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree
    on
        Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree {
  CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree
  >
  get copyWith =>
      CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
  TRes
> {
  factory CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree
    instance,
    TRes Function(
      Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree,
    )
    then,
  ) = _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree;

  factory CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree;

  TRes call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
  TRes
>
    implements
        CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
          TRes
        > {
  _CopyWithImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
    this._instance,
    this._then,
  );

  final Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree
  _instance;

  final TRes Function(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoDepartmentTreeId = _undefined,
    Object? parentInfoDepartmentId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
      infoDepartmentTreeId:
          infoDepartmentTreeId == _undefined || infoDepartmentTreeId == null
          ? _instance.infoDepartmentTreeId
          : (infoDepartmentTreeId as String),
      parentInfoDepartmentId: parentInfoDepartmentId == _undefined
          ? _instance.parentInfoDepartmentId
          : (parentInfoDepartmentId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
  TRes
>
    implements
        CopyWith$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree<
          TRes
        > {
  _CopyWithStubImpl$Mutation$DepartmentTreePageEdit$updateInfoDepartmentTreeByInfoDepartmentTreeId$infoDepartmentTree(
    this._res,
  );

  TRes _res;

  call({
    String? infoDepartmentTreeId,
    String? parentInfoDepartmentId,
    String? remarks,
    String? $__typename,
  }) => _res;
}
