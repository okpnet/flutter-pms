import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$AssignPageEdit {
  factory Variables$Mutation$AssignPageEdit({
    required String infoAssignId,
    String? infoStaffId,
    String? infoPositionId,
    String? infoOfficeId,
    String? infoDepartmentId,
    bool? enable,
    int? priority,
    String? remarks,
  }) => Variables$Mutation$AssignPageEdit._({
    r'infoAssignId': infoAssignId,
    if (infoStaffId != null) r'infoStaffId': infoStaffId,
    if (infoPositionId != null) r'infoPositionId': infoPositionId,
    if (infoOfficeId != null) r'infoOfficeId': infoOfficeId,
    if (infoDepartmentId != null) r'infoDepartmentId': infoDepartmentId,
    if (enable != null) r'enable': enable,
    if (priority != null) r'priority': priority,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$AssignPageEdit._(this._$data);

  factory Variables$Mutation$AssignPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$infoAssignId = data['infoAssignId'];
    result$data['infoAssignId'] = (l$infoAssignId as String);
    if (data.containsKey('infoStaffId')) {
      final l$infoStaffId = data['infoStaffId'];
      result$data['infoStaffId'] = (l$infoStaffId as String?);
    }
    if (data.containsKey('infoPositionId')) {
      final l$infoPositionId = data['infoPositionId'];
      result$data['infoPositionId'] = (l$infoPositionId as String?);
    }
    if (data.containsKey('infoOfficeId')) {
      final l$infoOfficeId = data['infoOfficeId'];
      result$data['infoOfficeId'] = (l$infoOfficeId as String?);
    }
    if (data.containsKey('infoDepartmentId')) {
      final l$infoDepartmentId = data['infoDepartmentId'];
      result$data['infoDepartmentId'] = (l$infoDepartmentId as String?);
    }
    if (data.containsKey('enable')) {
      final l$enable = data['enable'];
      result$data['enable'] = (l$enable as bool?);
    }
    if (data.containsKey('priority')) {
      final l$priority = data['priority'];
      result$data['priority'] = (l$priority as int?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$AssignPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoAssignId => (_$data['infoAssignId'] as String);

  String? get infoStaffId => (_$data['infoStaffId'] as String?);

  String? get infoPositionId => (_$data['infoPositionId'] as String?);

  String? get infoOfficeId => (_$data['infoOfficeId'] as String?);

  String? get infoDepartmentId => (_$data['infoDepartmentId'] as String?);

  bool? get enable => (_$data['enable'] as bool?);

  int? get priority => (_$data['priority'] as int?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoAssignId = infoAssignId;
    result$data['infoAssignId'] = l$infoAssignId;
    if (_$data.containsKey('infoStaffId')) {
      final l$infoStaffId = infoStaffId;
      result$data['infoStaffId'] = l$infoStaffId;
    }
    if (_$data.containsKey('infoPositionId')) {
      final l$infoPositionId = infoPositionId;
      result$data['infoPositionId'] = l$infoPositionId;
    }
    if (_$data.containsKey('infoOfficeId')) {
      final l$infoOfficeId = infoOfficeId;
      result$data['infoOfficeId'] = l$infoOfficeId;
    }
    if (_$data.containsKey('infoDepartmentId')) {
      final l$infoDepartmentId = infoDepartmentId;
      result$data['infoDepartmentId'] = l$infoDepartmentId;
    }
    if (_$data.containsKey('enable')) {
      final l$enable = enable;
      result$data['enable'] = l$enable;
    }
    if (_$data.containsKey('priority')) {
      final l$priority = priority;
      result$data['priority'] = l$priority;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$AssignPageEdit<Variables$Mutation$AssignPageEdit>
  get copyWith => CopyWith$Variables$Mutation$AssignPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AssignPageEdit ||
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
    if (_$data.containsKey('infoStaffId') !=
        other._$data.containsKey('infoStaffId')) {
      return false;
    }
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$infoPositionId = infoPositionId;
    final lOther$infoPositionId = other.infoPositionId;
    if (_$data.containsKey('infoPositionId') !=
        other._$data.containsKey('infoPositionId')) {
      return false;
    }
    if (l$infoPositionId != lOther$infoPositionId) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (_$data.containsKey('infoOfficeId') !=
        other._$data.containsKey('infoOfficeId')) {
      return false;
    }
    if (l$infoOfficeId != lOther$infoOfficeId) {
      return false;
    }
    final l$infoDepartmentId = infoDepartmentId;
    final lOther$infoDepartmentId = other.infoDepartmentId;
    if (_$data.containsKey('infoDepartmentId') !=
        other._$data.containsKey('infoDepartmentId')) {
      return false;
    }
    if (l$infoDepartmentId != lOther$infoDepartmentId) {
      return false;
    }
    final l$enable = enable;
    final lOther$enable = other.enable;
    if (_$data.containsKey('enable') != other._$data.containsKey('enable')) {
      return false;
    }
    if (l$enable != lOther$enable) {
      return false;
    }
    final l$priority = priority;
    final lOther$priority = other.priority;
    if (_$data.containsKey('priority') !=
        other._$data.containsKey('priority')) {
      return false;
    }
    if (l$priority != lOther$priority) {
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
    final l$infoAssignId = infoAssignId;
    final l$infoStaffId = infoStaffId;
    final l$infoPositionId = infoPositionId;
    final l$infoOfficeId = infoOfficeId;
    final l$infoDepartmentId = infoDepartmentId;
    final l$enable = enable;
    final l$priority = priority;
    final l$remarks = remarks;
    return Object.hashAll([
      l$infoAssignId,
      _$data.containsKey('infoStaffId') ? l$infoStaffId : const {},
      _$data.containsKey('infoPositionId') ? l$infoPositionId : const {},
      _$data.containsKey('infoOfficeId') ? l$infoOfficeId : const {},
      _$data.containsKey('infoDepartmentId') ? l$infoDepartmentId : const {},
      _$data.containsKey('enable') ? l$enable : const {},
      _$data.containsKey('priority') ? l$priority : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AssignPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$AssignPageEdit(
    Variables$Mutation$AssignPageEdit instance,
    TRes Function(Variables$Mutation$AssignPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$AssignPageEdit;

  factory CopyWith$Variables$Mutation$AssignPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AssignPageEdit;

  TRes call({
    String? infoAssignId,
    String? infoStaffId,
    String? infoPositionId,
    String? infoOfficeId,
    String? infoDepartmentId,
    bool? enable,
    int? priority,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$AssignPageEdit<TRes>
    implements CopyWith$Variables$Mutation$AssignPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$AssignPageEdit(this._instance, this._then);

  final Variables$Mutation$AssignPageEdit _instance;

  final TRes Function(Variables$Mutation$AssignPageEdit) _then;

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
  }) => _then(
    Variables$Mutation$AssignPageEdit._({
      ..._instance._$data,
      if (infoAssignId != _undefined && infoAssignId != null)
        'infoAssignId': (infoAssignId as String),
      if (infoStaffId != _undefined) 'infoStaffId': (infoStaffId as String?),
      if (infoPositionId != _undefined)
        'infoPositionId': (infoPositionId as String?),
      if (infoOfficeId != _undefined) 'infoOfficeId': (infoOfficeId as String?),
      if (infoDepartmentId != _undefined)
        'infoDepartmentId': (infoDepartmentId as String?),
      if (enable != _undefined) 'enable': (enable as bool?),
      if (priority != _undefined) 'priority': (priority as int?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$AssignPageEdit<TRes>
    implements CopyWith$Variables$Mutation$AssignPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AssignPageEdit(this._res);

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
  }) => _res;
}

class Mutation$AssignPageEdit {
  Mutation$AssignPageEdit({
    this.updateInfoAssignByInfoAssignId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AssignPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateInfoAssignByInfoAssignId =
        json['updateInfoAssignByInfoAssignId'];
    final l$$__typename = json['__typename'];
    return Mutation$AssignPageEdit(
      updateInfoAssignByInfoAssignId: l$updateInfoAssignByInfoAssignId == null
          ? null
          : Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId.fromJson(
              (l$updateInfoAssignByInfoAssignId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId?
  updateInfoAssignByInfoAssignId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoAssignByInfoAssignId = updateInfoAssignByInfoAssignId;
    _resultData['updateInfoAssignByInfoAssignId'] =
        l$updateInfoAssignByInfoAssignId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoAssignByInfoAssignId = updateInfoAssignByInfoAssignId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInfoAssignByInfoAssignId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AssignPageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoAssignByInfoAssignId = updateInfoAssignByInfoAssignId;
    final lOther$updateInfoAssignByInfoAssignId =
        other.updateInfoAssignByInfoAssignId;
    if (l$updateInfoAssignByInfoAssignId !=
        lOther$updateInfoAssignByInfoAssignId) {
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

extension UtilityExtension$Mutation$AssignPageEdit on Mutation$AssignPageEdit {
  CopyWith$Mutation$AssignPageEdit<Mutation$AssignPageEdit> get copyWith =>
      CopyWith$Mutation$AssignPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$AssignPageEdit<TRes> {
  factory CopyWith$Mutation$AssignPageEdit(
    Mutation$AssignPageEdit instance,
    TRes Function(Mutation$AssignPageEdit) then,
  ) = _CopyWithImpl$Mutation$AssignPageEdit;

  factory CopyWith$Mutation$AssignPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AssignPageEdit;

  TRes call({
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId?
    updateInfoAssignByInfoAssignId,
    String? $__typename,
  });
  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes>
  get updateInfoAssignByInfoAssignId;
}

class _CopyWithImpl$Mutation$AssignPageEdit<TRes>
    implements CopyWith$Mutation$AssignPageEdit<TRes> {
  _CopyWithImpl$Mutation$AssignPageEdit(this._instance, this._then);

  final Mutation$AssignPageEdit _instance;

  final TRes Function(Mutation$AssignPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoAssignByInfoAssignId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AssignPageEdit(
      updateInfoAssignByInfoAssignId:
          updateInfoAssignByInfoAssignId == _undefined
          ? _instance.updateInfoAssignByInfoAssignId
          : (updateInfoAssignByInfoAssignId
                as Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes>
  get updateInfoAssignByInfoAssignId {
    final local$updateInfoAssignByInfoAssignId =
        _instance.updateInfoAssignByInfoAssignId;
    return local$updateInfoAssignByInfoAssignId == null
        ? CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
            local$updateInfoAssignByInfoAssignId,
            (e) => call(updateInfoAssignByInfoAssignId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AssignPageEdit<TRes>
    implements CopyWith$Mutation$AssignPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$AssignPageEdit(this._res);

  TRes _res;

  call({
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId?
    updateInfoAssignByInfoAssignId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes>
  get updateInfoAssignByInfoAssignId =>
      CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId.stub(
        _res,
      );
}

const documentNodeMutationAssignPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'AssignPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoAssignId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoStaffId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoPositionId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoOfficeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoDepartmentId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enable')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'priority')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
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
            name: NameNode(value: 'updateInfoAssignByInfoAssignId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoAssignId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoAssignId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoAssignPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'infoStaffId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoStaffId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoPositionId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoPositionId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoOfficeId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoOfficeId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoDepartmentId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoDepartmentId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'enable'),
                            value: VariableNode(
                              name: NameNode(value: 'enable'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'priority'),
                            value: VariableNode(
                              name: NameNode(value: 'priority'),
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
                  name: NameNode(value: 'infoAssign'),
                  alias: null,
                  arguments: [],
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
Mutation$AssignPageEdit _parserFn$Mutation$AssignPageEdit(
  Map<String, dynamic> data,
) => Mutation$AssignPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$AssignPageEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$AssignPageEdit?);

class Options$Mutation$AssignPageEdit
    extends graphql.MutationOptions<Mutation$AssignPageEdit> {
  Options$Mutation$AssignPageEdit({
    String? operationName,
    required Variables$Mutation$AssignPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AssignPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AssignPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$AssignPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$AssignPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAssignPageEdit,
         parserFn: _parserFn$Mutation$AssignPageEdit,
       );

  final OnMutationCompleted$Mutation$AssignPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$AssignPageEdit
    extends graphql.WatchQueryOptions<Mutation$AssignPageEdit> {
  WatchOptions$Mutation$AssignPageEdit({
    String? operationName,
    required Variables$Mutation$AssignPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AssignPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationAssignPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$AssignPageEdit,
       );
}

extension ClientExtension$Mutation$AssignPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AssignPageEdit>> mutate$AssignPageEdit(
    Options$Mutation$AssignPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$AssignPageEdit> watchMutation$AssignPageEdit(
    WatchOptions$Mutation$AssignPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$AssignPageEdit$HookResult {
  Mutation$AssignPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$AssignPageEdit runMutation;

  final graphql.QueryResult<Mutation$AssignPageEdit> result;
}

Mutation$AssignPageEdit$HookResult useMutation$AssignPageEdit([
  WidgetOptions$Mutation$AssignPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$AssignPageEdit(),
  );
  return Mutation$AssignPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AssignPageEdit>
useWatchMutation$AssignPageEdit(WatchOptions$Mutation$AssignPageEdit options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AssignPageEdit
    extends graphql.MutationOptions<Mutation$AssignPageEdit> {
  WidgetOptions$Mutation$AssignPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AssignPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AssignPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$AssignPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$AssignPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationAssignPageEdit,
         parserFn: _parserFn$Mutation$AssignPageEdit,
       );

  final OnMutationCompleted$Mutation$AssignPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$AssignPageEdit =
    graphql.MultiSourceResult<Mutation$AssignPageEdit> Function(
      Variables$Mutation$AssignPageEdit, {
      Object? optimisticResult,
      Mutation$AssignPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$AssignPageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$AssignPageEdit,
      graphql.QueryResult<Mutation$AssignPageEdit>?,
    );

class Mutation$AssignPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$AssignPageEdit> {
  Mutation$AssignPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AssignPageEdit? options,
    required Builder$Mutation$AssignPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$AssignPageEdit(),
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

class Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId {
  Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId({
    this.infoAssign,
    this.$__typename = 'UpdateInfoAssignPayload',
  });

  factory Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAssign = json['infoAssign'];
    final l$$__typename = json['__typename'];
    return Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
      infoAssign: l$infoAssign == null
          ? null
          : Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.fromJson(
              (l$infoAssign as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign?
  infoAssign;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAssign = infoAssign;
    _resultData['infoAssign'] = l$infoAssign?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAssign = infoAssign;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoAssign, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAssign = infoAssign;
    final lOther$infoAssign = other.infoAssign;
    if (l$infoAssign != lOther$infoAssign) {
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

extension UtilityExtension$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId
    on Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId {
  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId
  >
  get copyWith =>
      CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<
  TRes
> {
  factory CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId instance,
    TRes Function(Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId) then,
  ) = _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId;

  factory CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId;

  TRes call({
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign?
    infoAssign,
    String? $__typename,
  });
  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
    TRes
  >
  get infoAssign;
}

class _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes>
    implements
        CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes> {
  _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
    this._instance,
    this._then,
  );

  final Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId _instance;

  final TRes Function(Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAssign = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
      infoAssign: infoAssign == _undefined
          ? _instance.infoAssign
          : (infoAssign
                as Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
    TRes
  >
  get infoAssign {
    final local$infoAssign = _instance.infoAssign;
    return local$infoAssign == null
        ? CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
            local$infoAssign,
            (e) => call(infoAssign: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<
  TRes
>
    implements
        CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId<TRes> {
  _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign?
    infoAssign,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
    TRes
  >
  get infoAssign =>
      CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.stub(
        _res,
      );
}

class Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign {
  Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign({
    required this.infoAssignId,
    required this.infoStaffId,
    required this.infoPositionId,
    this.infoOfficeId,
    this.infoDepartmentId,
    this.enable,
    this.priority,
    this.remarks,
    this.$__typename = 'InfoAssign',
  });

  factory Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.fromJson(
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
    final l$$__typename = json['__typename'];
    return Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
      infoAssignId: (l$infoAssignId as String),
      infoStaffId: (l$infoStaffId as String),
      infoPositionId: (l$infoPositionId as String),
      infoOfficeId: (l$infoOfficeId as String?),
      infoDepartmentId: (l$infoDepartmentId as String?),
      enable: (l$enable as bool?),
      priority: (l$priority as int?),
      remarks: (l$remarks as String?),
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
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign
    on Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign {
  CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign
  >
  get copyWith =>
      CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
  TRes
> {
  factory CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign instance,
    TRes Function(
      Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign,
    )
    then,
  ) = _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign;

  factory CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign;

  TRes call({
    String? infoAssignId,
    String? infoStaffId,
    String? infoPositionId,
    String? infoOfficeId,
    String? infoDepartmentId,
    bool? enable,
    int? priority,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
  TRes
>
    implements
        CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
          TRes
        > {
  _CopyWithImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
    this._instance,
    this._then,
  );

  final Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign
  _instance;

  final TRes Function(
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign,
  )
  _then;

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
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
  TRes
>
    implements
        CopyWith$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign<
          TRes
        > {
  _CopyWithStubImpl$Mutation$AssignPageEdit$updateInfoAssignByInfoAssignId$infoAssign(
    this._res,
  );

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
    String? $__typename,
  }) => _res;
}
