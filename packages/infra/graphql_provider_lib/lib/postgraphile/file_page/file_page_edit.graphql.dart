import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$FilePageEdit {
  factory Variables$Mutation$FilePageEdit({
    required String transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
  }) => Variables$Mutation$FilePageEdit._({
    r'transFileId': transFileId,
    if (binaryData != null) r'binaryData': binaryData,
    if (name != null) r'name': name,
    if (mediaType != null) r'mediaType': mediaType,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$FilePageEdit._(this._$data);

  factory Variables$Mutation$FilePageEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transFileId = data['transFileId'];
    result$data['transFileId'] = (l$transFileId as String);
    if (data.containsKey('binaryData')) {
      final l$binaryData = data['binaryData'];
      result$data['binaryData'] = (l$binaryData as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('mediaType')) {
      final l$mediaType = data['mediaType'];
      result$data['mediaType'] = (l$mediaType as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$FilePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transFileId => (_$data['transFileId'] as String);

  String? get binaryData => (_$data['binaryData'] as String?);

  String? get name => (_$data['name'] as String?);

  String? get mediaType => (_$data['mediaType'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transFileId = transFileId;
    result$data['transFileId'] = l$transFileId;
    if (_$data.containsKey('binaryData')) {
      final l$binaryData = binaryData;
      result$data['binaryData'] = l$binaryData;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('mediaType')) {
      final l$mediaType = mediaType;
      result$data['mediaType'] = l$mediaType;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$FilePageEdit<Variables$Mutation$FilePageEdit>
  get copyWith => CopyWith$Variables$Mutation$FilePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$FilePageEdit ||
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
    if (_$data.containsKey('binaryData') !=
        other._$data.containsKey('binaryData')) {
      return false;
    }
    if (l$binaryData != lOther$binaryData) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$mediaType = mediaType;
    final lOther$mediaType = other.mediaType;
    if (_$data.containsKey('mediaType') !=
        other._$data.containsKey('mediaType')) {
      return false;
    }
    if (l$mediaType != lOther$mediaType) {
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
    final l$transFileId = transFileId;
    final l$binaryData = binaryData;
    final l$name = name;
    final l$mediaType = mediaType;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transFileId,
      _$data.containsKey('binaryData') ? l$binaryData : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('mediaType') ? l$mediaType : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$FilePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$FilePageEdit(
    Variables$Mutation$FilePageEdit instance,
    TRes Function(Variables$Mutation$FilePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$FilePageEdit;

  factory CopyWith$Variables$Mutation$FilePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$FilePageEdit;

  TRes call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$FilePageEdit<TRes>
    implements CopyWith$Variables$Mutation$FilePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$FilePageEdit(this._instance, this._then);

  final Variables$Mutation$FilePageEdit _instance;

  final TRes Function(Variables$Mutation$FilePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transFileId = _undefined,
    Object? binaryData = _undefined,
    Object? name = _undefined,
    Object? mediaType = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$FilePageEdit._({
      ..._instance._$data,
      if (transFileId != _undefined && transFileId != null)
        'transFileId': (transFileId as String),
      if (binaryData != _undefined) 'binaryData': (binaryData as String?),
      if (name != _undefined) 'name': (name as String?),
      if (mediaType != _undefined) 'mediaType': (mediaType as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$FilePageEdit<TRes>
    implements CopyWith$Variables$Mutation$FilePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$FilePageEdit(this._res);

  TRes _res;

  call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
  }) => _res;
}

class Mutation$FilePageEdit {
  Mutation$FilePageEdit({
    this.updateTransFileByTransFileId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$FilePageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransFileByTransFileId = json['updateTransFileByTransFileId'];
    final l$$__typename = json['__typename'];
    return Mutation$FilePageEdit(
      updateTransFileByTransFileId: l$updateTransFileByTransFileId == null
          ? null
          : Mutation$FilePageEdit$updateTransFileByTransFileId.fromJson(
              (l$updateTransFileByTransFileId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FilePageEdit$updateTransFileByTransFileId?
  updateTransFileByTransFileId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransFileByTransFileId = updateTransFileByTransFileId;
    _resultData['updateTransFileByTransFileId'] = l$updateTransFileByTransFileId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransFileByTransFileId = updateTransFileByTransFileId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTransFileByTransFileId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FilePageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransFileByTransFileId = updateTransFileByTransFileId;
    final lOther$updateTransFileByTransFileId =
        other.updateTransFileByTransFileId;
    if (l$updateTransFileByTransFileId != lOther$updateTransFileByTransFileId) {
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

extension UtilityExtension$Mutation$FilePageEdit on Mutation$FilePageEdit {
  CopyWith$Mutation$FilePageEdit<Mutation$FilePageEdit> get copyWith =>
      CopyWith$Mutation$FilePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$FilePageEdit<TRes> {
  factory CopyWith$Mutation$FilePageEdit(
    Mutation$FilePageEdit instance,
    TRes Function(Mutation$FilePageEdit) then,
  ) = _CopyWithImpl$Mutation$FilePageEdit;

  factory CopyWith$Mutation$FilePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$FilePageEdit;

  TRes call({
    Mutation$FilePageEdit$updateTransFileByTransFileId?
    updateTransFileByTransFileId,
    String? $__typename,
  });
  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes>
  get updateTransFileByTransFileId;
}

class _CopyWithImpl$Mutation$FilePageEdit<TRes>
    implements CopyWith$Mutation$FilePageEdit<TRes> {
  _CopyWithImpl$Mutation$FilePageEdit(this._instance, this._then);

  final Mutation$FilePageEdit _instance;

  final TRes Function(Mutation$FilePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransFileByTransFileId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$FilePageEdit(
      updateTransFileByTransFileId: updateTransFileByTransFileId == _undefined
          ? _instance.updateTransFileByTransFileId
          : (updateTransFileByTransFileId
                as Mutation$FilePageEdit$updateTransFileByTransFileId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes>
  get updateTransFileByTransFileId {
    final local$updateTransFileByTransFileId =
        _instance.updateTransFileByTransFileId;
    return local$updateTransFileByTransFileId == null
        ? CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId(
            local$updateTransFileByTransFileId,
            (e) => call(updateTransFileByTransFileId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$FilePageEdit<TRes>
    implements CopyWith$Mutation$FilePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$FilePageEdit(this._res);

  TRes _res;

  call({
    Mutation$FilePageEdit$updateTransFileByTransFileId?
    updateTransFileByTransFileId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes>
  get updateTransFileByTransFileId =>
      CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId.stub(_res);
}

const documentNodeMutationFilePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'FilePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transFileId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'binaryData')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'name')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mediaType')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
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
            name: NameNode(value: 'updateTransFileByTransFileId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transFileId'),
                      value: VariableNode(name: NameNode(value: 'transFileId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transFilePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'binaryData'),
                            value: VariableNode(
                              name: NameNode(value: 'binaryData'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'name'),
                            value: VariableNode(name: NameNode(value: 'name')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mediaType'),
                            value: VariableNode(
                              name: NameNode(value: 'mediaType'),
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
                  name: NameNode(value: 'transFile'),
                  alias: null,
                  arguments: [],
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
Mutation$FilePageEdit _parserFn$Mutation$FilePageEdit(
  Map<String, dynamic> data,
) => Mutation$FilePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$FilePageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$FilePageEdit?);

class Options$Mutation$FilePageEdit
    extends graphql.MutationOptions<Mutation$FilePageEdit> {
  Options$Mutation$FilePageEdit({
    String? operationName,
    required Variables$Mutation$FilePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FilePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FilePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$FilePageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$FilePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationFilePageEdit,
         parserFn: _parserFn$Mutation$FilePageEdit,
       );

  final OnMutationCompleted$Mutation$FilePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$FilePageEdit
    extends graphql.WatchQueryOptions<Mutation$FilePageEdit> {
  WatchOptions$Mutation$FilePageEdit({
    String? operationName,
    required Variables$Mutation$FilePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FilePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationFilePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$FilePageEdit,
       );
}

extension ClientExtension$Mutation$FilePageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$FilePageEdit>> mutate$FilePageEdit(
    Options$Mutation$FilePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$FilePageEdit> watchMutation$FilePageEdit(
    WatchOptions$Mutation$FilePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$FilePageEdit$HookResult {
  Mutation$FilePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$FilePageEdit runMutation;

  final graphql.QueryResult<Mutation$FilePageEdit> result;
}

Mutation$FilePageEdit$HookResult useMutation$FilePageEdit([
  WidgetOptions$Mutation$FilePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$FilePageEdit(),
  );
  return Mutation$FilePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$FilePageEdit> useWatchMutation$FilePageEdit(
  WatchOptions$Mutation$FilePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$FilePageEdit
    extends graphql.MutationOptions<Mutation$FilePageEdit> {
  WidgetOptions$Mutation$FilePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$FilePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$FilePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$FilePageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$FilePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationFilePageEdit,
         parserFn: _parserFn$Mutation$FilePageEdit,
       );

  final OnMutationCompleted$Mutation$FilePageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$FilePageEdit =
    graphql.MultiSourceResult<Mutation$FilePageEdit> Function(
      Variables$Mutation$FilePageEdit, {
      Object? optimisticResult,
      Mutation$FilePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$FilePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$FilePageEdit,
      graphql.QueryResult<Mutation$FilePageEdit>?,
    );

class Mutation$FilePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$FilePageEdit> {
  Mutation$FilePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$FilePageEdit? options,
    required Builder$Mutation$FilePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$FilePageEdit(),
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

class Mutation$FilePageEdit$updateTransFileByTransFileId {
  Mutation$FilePageEdit$updateTransFileByTransFileId({
    this.transFile,
    this.$__typename = 'UpdateTransFilePayload',
  });

  factory Mutation$FilePageEdit$updateTransFileByTransFileId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transFile = json['transFile'];
    final l$$__typename = json['__typename'];
    return Mutation$FilePageEdit$updateTransFileByTransFileId(
      transFile: l$transFile == null
          ? null
          : Mutation$FilePageEdit$updateTransFileByTransFileId$transFile.fromJson(
              (l$transFile as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$FilePageEdit$updateTransFileByTransFileId$transFile? transFile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transFile = transFile;
    _resultData['transFile'] = l$transFile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transFile = transFile;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transFile, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$FilePageEdit$updateTransFileByTransFileId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transFile = transFile;
    final lOther$transFile = other.transFile;
    if (l$transFile != lOther$transFile) {
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

extension UtilityExtension$Mutation$FilePageEdit$updateTransFileByTransFileId
    on Mutation$FilePageEdit$updateTransFileByTransFileId {
  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<
    Mutation$FilePageEdit$updateTransFileByTransFileId
  >
  get copyWith => CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<
  TRes
> {
  factory CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId(
    Mutation$FilePageEdit$updateTransFileByTransFileId instance,
    TRes Function(Mutation$FilePageEdit$updateTransFileByTransFileId) then,
  ) = _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId;

  factory CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId;

  TRes call({
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile? transFile,
    String? $__typename,
  });
  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<TRes>
  get transFile;
}

class _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes>
    implements
        CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes> {
  _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId(
    this._instance,
    this._then,
  );

  final Mutation$FilePageEdit$updateTransFileByTransFileId _instance;

  final TRes Function(Mutation$FilePageEdit$updateTransFileByTransFileId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transFile = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$FilePageEdit$updateTransFileByTransFileId(
      transFile: transFile == _undefined
          ? _instance.transFile
          : (transFile
                as Mutation$FilePageEdit$updateTransFileByTransFileId$transFile?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<TRes>
  get transFile {
    final local$transFile = _instance.transFile;
    return local$transFile == null
        ? CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
            local$transFile,
            (e) => call(transFile: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes>
    implements
        CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId<TRes> {
  _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile? transFile,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<TRes>
  get transFile =>
      CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile.stub(
        _res,
      );
}

class Mutation$FilePageEdit$updateTransFileByTransFileId$transFile {
  Mutation$FilePageEdit$updateTransFileByTransFileId$transFile({
    required this.transFileId,
    required this.binaryData,
    required this.name,
    this.mediaType,
    this.remarks,
    this.$__typename = 'TransFile',
  });

  factory Mutation$FilePageEdit$updateTransFileByTransFileId$transFile.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transFileId = json['transFileId'];
    final l$binaryData = json['binaryData'];
    final l$name = json['name'];
    final l$mediaType = json['mediaType'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
      transFileId: (l$transFileId as String),
      binaryData: (l$binaryData as String),
      name: (l$name as String),
      mediaType: (l$mediaType as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transFileId;

  final String binaryData;

  final String name;

  final String? mediaType;

  final String? remarks;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transFileId,
      l$binaryData,
      l$name,
      l$mediaType,
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
            is! Mutation$FilePageEdit$updateTransFileByTransFileId$transFile ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile
    on Mutation$FilePageEdit$updateTransFileByTransFileId$transFile {
  CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile
  >
  get copyWith =>
      CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
  TRes
> {
  factory CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile instance,
    TRes Function(Mutation$FilePageEdit$updateTransFileByTransFileId$transFile)
    then,
  ) = _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile;

  factory CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile;

  TRes call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
  TRes
>
    implements
        CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
          TRes
        > {
  _CopyWithImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
    this._instance,
    this._then,
  );

  final Mutation$FilePageEdit$updateTransFileByTransFileId$transFile _instance;

  final TRes Function(
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transFileId = _undefined,
    Object? binaryData = _undefined,
    Object? name = _undefined,
    Object? mediaType = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
  TRes
>
    implements
        CopyWith$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile<
          TRes
        > {
  _CopyWithStubImpl$Mutation$FilePageEdit$updateTransFileByTransFileId$transFile(
    this._res,
  );

  TRes _res;

  call({
    String? transFileId,
    String? binaryData,
    String? name,
    String? mediaType,
    String? remarks,
    String? $__typename,
  }) => _res;
}
