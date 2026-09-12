import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ItemActualSizeEdit {
  factory Variables$Mutation$ItemActualSizeEdit({
    required String mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? sizeValue,
    String? detail,
    String? remarks,
  }) => Variables$Mutation$ItemActualSizeEdit._({
    r'mstrItemActualSizeId': mstrItemActualSizeId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (mstrItemSizeKindId != null) r'mstrItemSizeKindId': mstrItemSizeKindId,
    if (sizeValue != null) r'sizeValue': sizeValue,
    if (detail != null) r'detail': detail,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ItemActualSizeEdit._(this._$data);

  factory Variables$Mutation$ItemActualSizeEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = data['mstrItemActualSizeId'];
    result$data['mstrItemActualSizeId'] = (l$mstrItemActualSizeId as String);
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('mstrItemSizeKindId')) {
      final l$mstrItemSizeKindId = data['mstrItemSizeKindId'];
      result$data['mstrItemSizeKindId'] = (l$mstrItemSizeKindId as String?);
    }
    if (data.containsKey('sizeValue')) {
      final l$sizeValue = data['sizeValue'];
      result$data['sizeValue'] = (l$sizeValue as String?);
    }
    if (data.containsKey('detail')) {
      final l$detail = data['detail'];
      result$data['detail'] = (l$detail as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ItemActualSizeEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrItemActualSizeId => (_$data['mstrItemActualSizeId'] as String);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get mstrItemSizeKindId => (_$data['mstrItemSizeKindId'] as String?);

  String? get sizeValue => (_$data['sizeValue'] as String?);

  String? get detail => (_$data['detail'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    result$data['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
    }
    if (_$data.containsKey('mstrItemSizeKindId')) {
      final l$mstrItemSizeKindId = mstrItemSizeKindId;
      result$data['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    }
    if (_$data.containsKey('sizeValue')) {
      final l$sizeValue = sizeValue;
      result$data['sizeValue'] = l$sizeValue;
    }
    if (_$data.containsKey('detail')) {
      final l$detail = detail;
      result$data['detail'] = l$detail;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ItemActualSizeEdit<
    Variables$Mutation$ItemActualSizeEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ItemActualSizeEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ItemActualSizeEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final lOther$mstrItemActualSizeId = other.mstrItemActualSizeId;
    if (l$mstrItemActualSizeId != lOther$mstrItemActualSizeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (_$data.containsKey('mstrItemId') !=
        other._$data.containsKey('mstrItemId')) {
      return false;
    }
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (_$data.containsKey('mstrItemSizeKindId') !=
        other._$data.containsKey('mstrItemSizeKindId')) {
      return false;
    }
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (_$data.containsKey('sizeValue') !=
        other._$data.containsKey('sizeValue')) {
      return false;
    }
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (_$data.containsKey('detail') != other._$data.containsKey('detail')) {
      return false;
    }
    if (l$detail != lOther$detail) {
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
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$sizeValue = sizeValue;
    final l$detail = detail;
    final l$remarks = remarks;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('mstrItemSizeKindId')
          ? l$mstrItemSizeKindId
          : const {},
      _$data.containsKey('sizeValue') ? l$sizeValue : const {},
      _$data.containsKey('detail') ? l$detail : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ItemActualSizeEdit<TRes> {
  factory CopyWith$Variables$Mutation$ItemActualSizeEdit(
    Variables$Mutation$ItemActualSizeEdit instance,
    TRes Function(Variables$Mutation$ItemActualSizeEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ItemActualSizeEdit;

  factory CopyWith$Variables$Mutation$ItemActualSizeEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ItemActualSizeEdit;

  TRes call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? sizeValue,
    String? detail,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ItemActualSizeEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemActualSizeEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ItemActualSizeEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ItemActualSizeEdit _instance;

  final TRes Function(Variables$Mutation$ItemActualSizeEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? sizeValue = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ItemActualSizeEdit._({
      ..._instance._$data,
      if (mstrItemActualSizeId != _undefined && mstrItemActualSizeId != null)
        'mstrItemActualSizeId': (mstrItemActualSizeId as String),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (mstrItemSizeKindId != _undefined)
        'mstrItemSizeKindId': (mstrItemSizeKindId as String?),
      if (sizeValue != _undefined) 'sizeValue': (sizeValue as String?),
      if (detail != _undefined) 'detail': (detail as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ItemActualSizeEdit<TRes>
    implements CopyWith$Variables$Mutation$ItemActualSizeEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ItemActualSizeEdit(this._res);

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? sizeValue,
    String? detail,
    String? remarks,
  }) => _res;
}

class Mutation$ItemActualSizeEdit {
  Mutation$ItemActualSizeEdit({
    this.updateMstrItemActualSizeByMstrItemActualSizeId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ItemActualSizeEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        json['updateMstrItemActualSizeByMstrItemActualSizeId'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemActualSizeEdit(
      updateMstrItemActualSizeByMstrItemActualSizeId:
          l$updateMstrItemActualSizeByMstrItemActualSizeId == null
          ? null
          : Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId.fromJson(
              (l$updateMstrItemActualSizeByMstrItemActualSizeId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
  updateMstrItemActualSizeByMstrItemActualSizeId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    _resultData['updateMstrItemActualSizeByMstrItemActualSizeId'] =
        l$updateMstrItemActualSizeByMstrItemActualSizeId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrItemActualSizeByMstrItemActualSizeId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ItemActualSizeEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrItemActualSizeByMstrItemActualSizeId =
        updateMstrItemActualSizeByMstrItemActualSizeId;
    final lOther$updateMstrItemActualSizeByMstrItemActualSizeId =
        other.updateMstrItemActualSizeByMstrItemActualSizeId;
    if (l$updateMstrItemActualSizeByMstrItemActualSizeId !=
        lOther$updateMstrItemActualSizeByMstrItemActualSizeId) {
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

extension UtilityExtension$Mutation$ItemActualSizeEdit
    on Mutation$ItemActualSizeEdit {
  CopyWith$Mutation$ItemActualSizeEdit<Mutation$ItemActualSizeEdit>
  get copyWith => CopyWith$Mutation$ItemActualSizeEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ItemActualSizeEdit<TRes> {
  factory CopyWith$Mutation$ItemActualSizeEdit(
    Mutation$ItemActualSizeEdit instance,
    TRes Function(Mutation$ItemActualSizeEdit) then,
  ) = _CopyWithImpl$Mutation$ItemActualSizeEdit;

  factory CopyWith$Mutation$ItemActualSizeEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ItemActualSizeEdit;

  TRes call({
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
    updateMstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  });
  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId;
}

class _CopyWithImpl$Mutation$ItemActualSizeEdit<TRes>
    implements CopyWith$Mutation$ItemActualSizeEdit<TRes> {
  _CopyWithImpl$Mutation$ItemActualSizeEdit(this._instance, this._then);

  final Mutation$ItemActualSizeEdit _instance;

  final TRes Function(Mutation$ItemActualSizeEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrItemActualSizeByMstrItemActualSizeId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemActualSizeEdit(
      updateMstrItemActualSizeByMstrItemActualSizeId:
          updateMstrItemActualSizeByMstrItemActualSizeId == _undefined
          ? _instance.updateMstrItemActualSizeByMstrItemActualSizeId
          : (updateMstrItemActualSizeByMstrItemActualSizeId
                as Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId {
    final local$updateMstrItemActualSizeByMstrItemActualSizeId =
        _instance.updateMstrItemActualSizeByMstrItemActualSizeId;
    return local$updateMstrItemActualSizeByMstrItemActualSizeId == null
        ? CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
            local$updateMstrItemActualSizeByMstrItemActualSizeId,
            (e) => call(updateMstrItemActualSizeByMstrItemActualSizeId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemActualSizeEdit<TRes>
    implements CopyWith$Mutation$ItemActualSizeEdit<TRes> {
  _CopyWithStubImpl$Mutation$ItemActualSizeEdit(this._res);

  TRes _res;

  call({
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId?
    updateMstrItemActualSizeByMstrItemActualSizeId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    TRes
  >
  get updateMstrItemActualSizeByMstrItemActualSizeId =>
      CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
        _res,
      );
}

const documentNodeMutationItemActualSizeEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ItemActualSizeEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemActualSizeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemSizeKindId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sizeValue')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'detail')),
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
            name: NameNode(
              value: 'updateMstrItemActualSizeByMstrItemActualSizeId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemActualSizeId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrItemActualSizeId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrItemActualSizePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemSizeKindId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemSizeKindId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sizeValue'),
                            value: VariableNode(
                              name: NameNode(value: 'sizeValue'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'detail'),
                            value: VariableNode(
                              name: NameNode(value: 'detail'),
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
                  name: NameNode(value: 'mstrItemActualSize'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrItemActualSizeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemSizeKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sizeValue'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'detail'),
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
Mutation$ItemActualSizeEdit _parserFn$Mutation$ItemActualSizeEdit(
  Map<String, dynamic> data,
) => Mutation$ItemActualSizeEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ItemActualSizeEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ItemActualSizeEdit?,
    );

class Options$Mutation$ItemActualSizeEdit
    extends graphql.MutationOptions<Mutation$ItemActualSizeEdit> {
  Options$Mutation$ItemActualSizeEdit({
    String? operationName,
    required Variables$Mutation$ItemActualSizeEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemActualSizeEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemActualSizeEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemActualSizeEdit>? update,
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
                     : _parserFn$Mutation$ItemActualSizeEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemActualSizeEdit,
         parserFn: _parserFn$Mutation$ItemActualSizeEdit,
       );

  final OnMutationCompleted$Mutation$ItemActualSizeEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ItemActualSizeEdit
    extends graphql.WatchQueryOptions<Mutation$ItemActualSizeEdit> {
  WatchOptions$Mutation$ItemActualSizeEdit({
    String? operationName,
    required Variables$Mutation$ItemActualSizeEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemActualSizeEdit? typedOptimisticResult,
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
         document: documentNodeMutationItemActualSizeEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ItemActualSizeEdit,
       );
}

extension ClientExtension$Mutation$ItemActualSizeEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ItemActualSizeEdit>>
  mutate$ItemActualSizeEdit(
    Options$Mutation$ItemActualSizeEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ItemActualSizeEdit>
  watchMutation$ItemActualSizeEdit(
    WatchOptions$Mutation$ItemActualSizeEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ItemActualSizeEdit$HookResult {
  Mutation$ItemActualSizeEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ItemActualSizeEdit runMutation;

  final graphql.QueryResult<Mutation$ItemActualSizeEdit> result;
}

Mutation$ItemActualSizeEdit$HookResult useMutation$ItemActualSizeEdit([
  WidgetOptions$Mutation$ItemActualSizeEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ItemActualSizeEdit(),
  );
  return Mutation$ItemActualSizeEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ItemActualSizeEdit>
useWatchMutation$ItemActualSizeEdit(
  WatchOptions$Mutation$ItemActualSizeEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ItemActualSizeEdit
    extends graphql.MutationOptions<Mutation$ItemActualSizeEdit> {
  WidgetOptions$Mutation$ItemActualSizeEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ItemActualSizeEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ItemActualSizeEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ItemActualSizeEdit>? update,
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
                     : _parserFn$Mutation$ItemActualSizeEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationItemActualSizeEdit,
         parserFn: _parserFn$Mutation$ItemActualSizeEdit,
       );

  final OnMutationCompleted$Mutation$ItemActualSizeEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ItemActualSizeEdit =
    graphql.MultiSourceResult<Mutation$ItemActualSizeEdit> Function(
      Variables$Mutation$ItemActualSizeEdit, {
      Object? optimisticResult,
      Mutation$ItemActualSizeEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ItemActualSizeEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ItemActualSizeEdit,
      graphql.QueryResult<Mutation$ItemActualSizeEdit>?,
    );

class Mutation$ItemActualSizeEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ItemActualSizeEdit> {
  Mutation$ItemActualSizeEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ItemActualSizeEdit? options,
    required Builder$Mutation$ItemActualSizeEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ItemActualSizeEdit(),
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

class Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId {
  Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId({
    this.mstrItemActualSize,
    this.$__typename = 'UpdateMstrItemActualSizePayload',
  });

  factory Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemActualSize = json['mstrItemActualSize'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
      mstrItemActualSize: l$mstrItemActualSize == null
          ? null
          : Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.fromJson(
              (l$mstrItemActualSize as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
  mstrItemActualSize;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSize = mstrItemActualSize;
    _resultData['mstrItemActualSize'] = l$mstrItemActualSize?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemActualSize = mstrItemActualSize;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemActualSize, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSize = mstrItemActualSize;
    final lOther$mstrItemActualSize = other.mstrItemActualSize;
    if (l$mstrItemActualSize != lOther$mstrItemActualSize) {
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

extension UtilityExtension$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId
    on Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId {
  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId
  >
  get copyWith =>
      CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
> {
  factory CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId
    instance,
    TRes Function(
      Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId;

  factory CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId;

  TRes call({
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
    mstrItemActualSize,
    String? $__typename,
  });
  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize;
}

class _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    this._instance,
    this._then,
  );

  final Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId
  _instance;

  final TRes Function(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSize = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
      mstrItemActualSize: mstrItemActualSize == _undefined
          ? _instance.mstrItemActualSize
          : (mstrItemActualSize
                as Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize {
    final local$mstrItemActualSize = _instance.mstrItemActualSize;
    return local$mstrItemActualSize == null
        ? CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
            local$mstrItemActualSize,
            (e) => call(mstrItemActualSize: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
  TRes
>
    implements
        CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize?
    mstrItemActualSize,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    TRes
  >
  get mstrItemActualSize =>
      CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
        _res,
      );
}

class Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize {
  Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize({
    required this.mstrItemActualSizeId,
    required this.mstrItemId,
    required this.mstrItemSizeKindId,
    this.sizeValue,
    this.detail,
    this.remarks,
    this.$__typename = 'MstrItemActualSize',
  });

  factory Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemActualSizeId = json['mstrItemActualSizeId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$sizeValue = json['sizeValue'];
    final l$detail = json['detail'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
      mstrItemActualSizeId: (l$mstrItemActualSizeId as String),
      mstrItemId: (l$mstrItemId as String),
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      sizeValue: (l$sizeValue as String?),
      detail: (l$detail as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemActualSizeId;

  final String mstrItemId;

  final String mstrItemSizeKindId;

  final String? sizeValue;

  final String? detail;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    _resultData['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$sizeValue = sizeValue;
    final l$detail = detail;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      l$mstrItemId,
      l$mstrItemSizeKindId,
      l$sizeValue,
      l$detail,
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
            is! Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final lOther$mstrItemActualSizeId = other.mstrItemActualSizeId;
    if (l$mstrItemActualSizeId != lOther$mstrItemActualSizeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
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

extension UtilityExtension$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
    on
        Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize {
  CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
  >
  get copyWith =>
      CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
> {
  factory CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
    instance,
    TRes Function(
      Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize,
    )
    then,
  ) = _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize;

  factory CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize;

  TRes call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? sizeValue,
    String? detail,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
>
    implements
        CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
          TRes
        > {
  _CopyWithImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    this._instance,
    this._then,
  );

  final Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize
  _instance;

  final TRes Function(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? sizeValue = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
      mstrItemActualSizeId:
          mstrItemActualSizeId == _undefined || mstrItemActualSizeId == null
          ? _instance.mstrItemActualSizeId
          : (mstrItemActualSizeId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      sizeValue: sizeValue == _undefined
          ? _instance.sizeValue
          : (sizeValue as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
  TRes
>
    implements
        CopyWith$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ItemActualSizeEdit$updateMstrItemActualSizeByMstrItemActualSizeId$mstrItemActualSize(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    String? sizeValue,
    String? detail,
    String? remarks,
    String? $__typename,
  }) => _res;
}
