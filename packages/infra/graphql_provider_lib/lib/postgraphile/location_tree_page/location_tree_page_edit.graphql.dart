import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$LocationTreePageEdit {
  factory Variables$Mutation$LocationTreePageEdit({
    required String mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
  }) => Variables$Mutation$LocationTreePageEdit._({
    r'mstrLocationTreeId': mstrLocationTreeId,
    if (parentMstrLocationId != null)
      r'parentMstrLocationId': parentMstrLocationId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$LocationTreePageEdit._(this._$data);

  factory Variables$Mutation$LocationTreePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrLocationTreeId = data['mstrLocationTreeId'];
    result$data['mstrLocationTreeId'] = (l$mstrLocationTreeId as String);
    if (data.containsKey('parentMstrLocationId')) {
      final l$parentMstrLocationId = data['parentMstrLocationId'];
      result$data['parentMstrLocationId'] = (l$parentMstrLocationId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$LocationTreePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrLocationTreeId => (_$data['mstrLocationTreeId'] as String);

  String? get parentMstrLocationId =>
      (_$data['parentMstrLocationId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrLocationTreeId = mstrLocationTreeId;
    result$data['mstrLocationTreeId'] = l$mstrLocationTreeId;
    if (_$data.containsKey('parentMstrLocationId')) {
      final l$parentMstrLocationId = parentMstrLocationId;
      result$data['parentMstrLocationId'] = l$parentMstrLocationId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$LocationTreePageEdit<
    Variables$Mutation$LocationTreePageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$LocationTreePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$LocationTreePageEdit ||
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
    if (_$data.containsKey('parentMstrLocationId') !=
        other._$data.containsKey('parentMstrLocationId')) {
      return false;
    }
    if (l$parentMstrLocationId != lOther$parentMstrLocationId) {
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
    final l$mstrLocationTreeId = mstrLocationTreeId;
    final l$parentMstrLocationId = parentMstrLocationId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrLocationTreeId,
      _$data.containsKey('parentMstrLocationId')
          ? l$parentMstrLocationId
          : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$LocationTreePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$LocationTreePageEdit(
    Variables$Mutation$LocationTreePageEdit instance,
    TRes Function(Variables$Mutation$LocationTreePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$LocationTreePageEdit;

  factory CopyWith$Variables$Mutation$LocationTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$LocationTreePageEdit;

  TRes call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$LocationTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$LocationTreePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$LocationTreePageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$LocationTreePageEdit _instance;

  final TRes Function(Variables$Mutation$LocationTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationTreeId = _undefined,
    Object? parentMstrLocationId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$LocationTreePageEdit._({
      ..._instance._$data,
      if (mstrLocationTreeId != _undefined && mstrLocationTreeId != null)
        'mstrLocationTreeId': (mstrLocationTreeId as String),
      if (parentMstrLocationId != _undefined)
        'parentMstrLocationId': (parentMstrLocationId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$LocationTreePageEdit<TRes>
    implements CopyWith$Variables$Mutation$LocationTreePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$LocationTreePageEdit(this._res);

  TRes _res;

  call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
  }) => _res;
}

class Mutation$LocationTreePageEdit {
  Mutation$LocationTreePageEdit({
    this.updateMstrLocationTreeByMstrLocationTreeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$LocationTreePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrLocationTreeByMstrLocationTreeId =
        json['updateMstrLocationTreeByMstrLocationTreeId'];
    final l$$__typename = json['__typename'];
    return Mutation$LocationTreePageEdit(
      updateMstrLocationTreeByMstrLocationTreeId:
          l$updateMstrLocationTreeByMstrLocationTreeId == null
          ? null
          : Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId.fromJson(
              (l$updateMstrLocationTreeByMstrLocationTreeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId?
  updateMstrLocationTreeByMstrLocationTreeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrLocationTreeByMstrLocationTreeId =
        updateMstrLocationTreeByMstrLocationTreeId;
    _resultData['updateMstrLocationTreeByMstrLocationTreeId'] =
        l$updateMstrLocationTreeByMstrLocationTreeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrLocationTreeByMstrLocationTreeId =
        updateMstrLocationTreeByMstrLocationTreeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrLocationTreeByMstrLocationTreeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$LocationTreePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrLocationTreeByMstrLocationTreeId =
        updateMstrLocationTreeByMstrLocationTreeId;
    final lOther$updateMstrLocationTreeByMstrLocationTreeId =
        other.updateMstrLocationTreeByMstrLocationTreeId;
    if (l$updateMstrLocationTreeByMstrLocationTreeId !=
        lOther$updateMstrLocationTreeByMstrLocationTreeId) {
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

extension UtilityExtension$Mutation$LocationTreePageEdit
    on Mutation$LocationTreePageEdit {
  CopyWith$Mutation$LocationTreePageEdit<Mutation$LocationTreePageEdit>
  get copyWith => CopyWith$Mutation$LocationTreePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$LocationTreePageEdit<TRes> {
  factory CopyWith$Mutation$LocationTreePageEdit(
    Mutation$LocationTreePageEdit instance,
    TRes Function(Mutation$LocationTreePageEdit) then,
  ) = _CopyWithImpl$Mutation$LocationTreePageEdit;

  factory CopyWith$Mutation$LocationTreePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$LocationTreePageEdit;

  TRes call({
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId?
    updateMstrLocationTreeByMstrLocationTreeId,
    String? $__typename,
  });
  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
    TRes
  >
  get updateMstrLocationTreeByMstrLocationTreeId;
}

class _CopyWithImpl$Mutation$LocationTreePageEdit<TRes>
    implements CopyWith$Mutation$LocationTreePageEdit<TRes> {
  _CopyWithImpl$Mutation$LocationTreePageEdit(this._instance, this._then);

  final Mutation$LocationTreePageEdit _instance;

  final TRes Function(Mutation$LocationTreePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrLocationTreeByMstrLocationTreeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LocationTreePageEdit(
      updateMstrLocationTreeByMstrLocationTreeId:
          updateMstrLocationTreeByMstrLocationTreeId == _undefined
          ? _instance.updateMstrLocationTreeByMstrLocationTreeId
          : (updateMstrLocationTreeByMstrLocationTreeId
                as Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
    TRes
  >
  get updateMstrLocationTreeByMstrLocationTreeId {
    final local$updateMstrLocationTreeByMstrLocationTreeId =
        _instance.updateMstrLocationTreeByMstrLocationTreeId;
    return local$updateMstrLocationTreeByMstrLocationTreeId == null
        ? CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
            local$updateMstrLocationTreeByMstrLocationTreeId,
            (e) => call(updateMstrLocationTreeByMstrLocationTreeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LocationTreePageEdit<TRes>
    implements CopyWith$Mutation$LocationTreePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$LocationTreePageEdit(this._res);

  TRes _res;

  call({
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId?
    updateMstrLocationTreeByMstrLocationTreeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
    TRes
  >
  get updateMstrLocationTreeByMstrLocationTreeId =>
      CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId.stub(
        _res,
      );
}

const documentNodeMutationLocationTreePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'LocationTreePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrLocationTreeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'parentMstrLocationId')),
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
            name: NameNode(value: 'updateMstrLocationTreeByMstrLocationTreeId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLocationTreeId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrLocationTreeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrLocationTreePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'parentMstrLocationId'),
                            value: VariableNode(
                              name: NameNode(value: 'parentMstrLocationId'),
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
                  name: NameNode(value: 'mstrLocationTree'),
                  alias: null,
                  arguments: [],
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
Mutation$LocationTreePageEdit _parserFn$Mutation$LocationTreePageEdit(
  Map<String, dynamic> data,
) => Mutation$LocationTreePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$LocationTreePageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$LocationTreePageEdit?,
    );

class Options$Mutation$LocationTreePageEdit
    extends graphql.MutationOptions<Mutation$LocationTreePageEdit> {
  Options$Mutation$LocationTreePageEdit({
    String? operationName,
    required Variables$Mutation$LocationTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LocationTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LocationTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$LocationTreePageEdit>? update,
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
                     : _parserFn$Mutation$LocationTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationLocationTreePageEdit,
         parserFn: _parserFn$Mutation$LocationTreePageEdit,
       );

  final OnMutationCompleted$Mutation$LocationTreePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$LocationTreePageEdit
    extends graphql.WatchQueryOptions<Mutation$LocationTreePageEdit> {
  WatchOptions$Mutation$LocationTreePageEdit({
    String? operationName,
    required Variables$Mutation$LocationTreePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LocationTreePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationLocationTreePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$LocationTreePageEdit,
       );
}

extension ClientExtension$Mutation$LocationTreePageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$LocationTreePageEdit>>
  mutate$LocationTreePageEdit(
    Options$Mutation$LocationTreePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$LocationTreePageEdit>
  watchMutation$LocationTreePageEdit(
    WatchOptions$Mutation$LocationTreePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$LocationTreePageEdit$HookResult {
  Mutation$LocationTreePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$LocationTreePageEdit runMutation;

  final graphql.QueryResult<Mutation$LocationTreePageEdit> result;
}

Mutation$LocationTreePageEdit$HookResult useMutation$LocationTreePageEdit([
  WidgetOptions$Mutation$LocationTreePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$LocationTreePageEdit(),
  );
  return Mutation$LocationTreePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$LocationTreePageEdit>
useWatchMutation$LocationTreePageEdit(
  WatchOptions$Mutation$LocationTreePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$LocationTreePageEdit
    extends graphql.MutationOptions<Mutation$LocationTreePageEdit> {
  WidgetOptions$Mutation$LocationTreePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$LocationTreePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$LocationTreePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$LocationTreePageEdit>? update,
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
                     : _parserFn$Mutation$LocationTreePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationLocationTreePageEdit,
         parserFn: _parserFn$Mutation$LocationTreePageEdit,
       );

  final OnMutationCompleted$Mutation$LocationTreePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$LocationTreePageEdit =
    graphql.MultiSourceResult<Mutation$LocationTreePageEdit> Function(
      Variables$Mutation$LocationTreePageEdit, {
      Object? optimisticResult,
      Mutation$LocationTreePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$LocationTreePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$LocationTreePageEdit,
      graphql.QueryResult<Mutation$LocationTreePageEdit>?,
    );

class Mutation$LocationTreePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$LocationTreePageEdit> {
  Mutation$LocationTreePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$LocationTreePageEdit? options,
    required Builder$Mutation$LocationTreePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$LocationTreePageEdit(),
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

class Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId {
  Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId({
    this.mstrLocationTree,
    this.$__typename = 'UpdateMstrLocationTreePayload',
  });

  factory Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationTree = json['mstrLocationTree'];
    final l$$__typename = json['__typename'];
    return Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
      mstrLocationTree: l$mstrLocationTree == null
          ? null
          : Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.fromJson(
              (l$mstrLocationTree as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree?
  mstrLocationTree;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationTree = mstrLocationTree;
    _resultData['mstrLocationTree'] = l$mstrLocationTree?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLocationTree = mstrLocationTree;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrLocationTree, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationTree = mstrLocationTree;
    final lOther$mstrLocationTree = other.mstrLocationTree;
    if (l$mstrLocationTree != lOther$mstrLocationTree) {
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

extension UtilityExtension$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId
    on Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId {
  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId
  >
  get copyWith =>
      CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
  TRes
> {
  factory CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId
    instance,
    TRes Function(
      Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId,
    )
    then,
  ) = _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId;

  factory CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId;

  TRes call({
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree?
    mstrLocationTree,
    String? $__typename,
  });
  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
    TRes
  >
  get mstrLocationTree;
}

class _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
  TRes
>
    implements
        CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
          TRes
        > {
  _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
    this._instance,
    this._then,
  );

  final Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId
  _instance;

  final TRes Function(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationTree = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
      mstrLocationTree: mstrLocationTree == _undefined
          ? _instance.mstrLocationTree
          : (mstrLocationTree
                as Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
    TRes
  >
  get mstrLocationTree {
    final local$mstrLocationTree = _instance.mstrLocationTree;
    return local$mstrLocationTree == null
        ? CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
            local$mstrLocationTree,
            (e) => call(mstrLocationTree: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
  TRes
>
    implements
        CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree?
    mstrLocationTree,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
    TRes
  >
  get mstrLocationTree =>
      CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.stub(
        _res,
      );
}

class Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree {
  Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree({
    required this.mstrLocationTreeId,
    this.parentMstrLocationId,
    this.remarks,
    this.$__typename = 'MstrLocationTree',
  });

  factory Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationTreeId = json['mstrLocationTreeId'];
    final l$parentMstrLocationId = json['parentMstrLocationId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
      mstrLocationTreeId: (l$mstrLocationTreeId as String),
      parentMstrLocationId: (l$parentMstrLocationId as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLocationTreeId;

  final String? parentMstrLocationId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationTreeId = mstrLocationTreeId;
    _resultData['mstrLocationTreeId'] = l$mstrLocationTreeId;
    final l$parentMstrLocationId = parentMstrLocationId;
    _resultData['parentMstrLocationId'] = l$parentMstrLocationId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrLocationTreeId = mstrLocationTreeId;
    final l$parentMstrLocationId = parentMstrLocationId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationTreeId,
      l$parentMstrLocationId,
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
            is! Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree
    on
        Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree {
  CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree
  >
  get copyWith =>
      CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
  TRes
> {
  factory CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree
    instance,
    TRes Function(
      Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree,
    )
    then,
  ) = _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree;

  factory CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree;

  TRes call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
  TRes
>
    implements
        CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
          TRes
        > {
  _CopyWithImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
    this._instance,
    this._then,
  );

  final Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree
  _instance;

  final TRes Function(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationTreeId = _undefined,
    Object? parentMstrLocationId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
      mstrLocationTreeId:
          mstrLocationTreeId == _undefined || mstrLocationTreeId == null
          ? _instance.mstrLocationTreeId
          : (mstrLocationTreeId as String),
      parentMstrLocationId: parentMstrLocationId == _undefined
          ? _instance.parentMstrLocationId
          : (parentMstrLocationId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
  TRes
>
    implements
        CopyWith$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree<
          TRes
        > {
  _CopyWithStubImpl$Mutation$LocationTreePageEdit$updateMstrLocationTreeByMstrLocationTreeId$mstrLocationTree(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLocationTreeId,
    String? parentMstrLocationId,
    String? remarks,
    String? $__typename,
  }) => _res;
}
