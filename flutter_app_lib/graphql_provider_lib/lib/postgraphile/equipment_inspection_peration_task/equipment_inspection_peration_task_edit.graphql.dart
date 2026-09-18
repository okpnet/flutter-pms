import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$EquipmentInspectionPerationTaskEdit {
  factory Variables$Mutation$EquipmentInspectionPerationTaskEdit({
    required String mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    String? mstrInspectionId,
    int? sequence,
    String? commencementDate,
    Input$IntervalInput? timeInterval,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$EquipmentInspectionPerationTaskEdit._({
    r'mstrInspectionOperationTaskId': mstrInspectionOperationTaskId,
    if (mstrInspectionOperationId != null)
      r'mstrInspectionOperationId': mstrInspectionOperationId,
    if (mstrInspectionId != null) r'mstrInspectionId': mstrInspectionId,
    if (sequence != null) r'sequence': sequence,
    if (commencementDate != null) r'commencementDate': commencementDate,
    if (timeInterval != null) r'timeInterval': timeInterval,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$EquipmentInspectionPerationTaskEdit._(this._$data);

  factory Variables$Mutation$EquipmentInspectionPerationTaskEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionOperationTaskId =
        data['mstrInspectionOperationTaskId'];
    result$data['mstrInspectionOperationTaskId'] =
        (l$mstrInspectionOperationTaskId as String);
    if (data.containsKey('mstrInspectionOperationId')) {
      final l$mstrInspectionOperationId = data['mstrInspectionOperationId'];
      result$data['mstrInspectionOperationId'] =
          (l$mstrInspectionOperationId as String?);
    }
    if (data.containsKey('mstrInspectionId')) {
      final l$mstrInspectionId = data['mstrInspectionId'];
      result$data['mstrInspectionId'] = (l$mstrInspectionId as String?);
    }
    if (data.containsKey('sequence')) {
      final l$sequence = data['sequence'];
      result$data['sequence'] = (l$sequence as int?);
    }
    if (data.containsKey('commencementDate')) {
      final l$commencementDate = data['commencementDate'];
      result$data['commencementDate'] = (l$commencementDate as String?);
    }
    if (data.containsKey('timeInterval')) {
      final l$timeInterval = data['timeInterval'];
      result$data['timeInterval'] = l$timeInterval == null
          ? null
          : Input$IntervalInput.fromJson(
              (l$timeInterval as Map<String, dynamic>),
            );
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
    return Variables$Mutation$EquipmentInspectionPerationTaskEdit._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  String get mstrInspectionOperationTaskId =>
      (_$data['mstrInspectionOperationTaskId'] as String);

  String? get mstrInspectionOperationId =>
      (_$data['mstrInspectionOperationId'] as String?);

  String? get mstrInspectionId => (_$data['mstrInspectionId'] as String?);

  int? get sequence => (_$data['sequence'] as int?);

  String? get commencementDate => (_$data['commencementDate'] as String?);

  Input$IntervalInput? get timeInterval =>
      (_$data['timeInterval'] as Input$IntervalInput?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    result$data['mstrInspectionOperationTaskId'] =
        l$mstrInspectionOperationTaskId;
    if (_$data.containsKey('mstrInspectionOperationId')) {
      final l$mstrInspectionOperationId = mstrInspectionOperationId;
      result$data['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    }
    if (_$data.containsKey('mstrInspectionId')) {
      final l$mstrInspectionId = mstrInspectionId;
      result$data['mstrInspectionId'] = l$mstrInspectionId;
    }
    if (_$data.containsKey('sequence')) {
      final l$sequence = sequence;
      result$data['sequence'] = l$sequence;
    }
    if (_$data.containsKey('commencementDate')) {
      final l$commencementDate = commencementDate;
      result$data['commencementDate'] = l$commencementDate;
    }
    if (_$data.containsKey('timeInterval')) {
      final l$timeInterval = timeInterval;
      result$data['timeInterval'] = l$timeInterval?.toJson();
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    if (_$data.containsKey('symbol')) {
      final l$symbol = symbol;
      result$data['symbol'] = l$symbol;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit<
    Variables$Mutation$EquipmentInspectionPerationTaskEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$EquipmentInspectionPerationTaskEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final lOther$mstrInspectionOperationTaskId =
        other.mstrInspectionOperationTaskId;
    if (l$mstrInspectionOperationTaskId !=
        lOther$mstrInspectionOperationTaskId) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (_$data.containsKey('mstrInspectionOperationId') !=
        other._$data.containsKey('mstrInspectionOperationId')) {
      return false;
    }
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (_$data.containsKey('mstrInspectionId') !=
        other._$data.containsKey('mstrInspectionId')) {
      return false;
    }
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (_$data.containsKey('sequence') !=
        other._$data.containsKey('sequence')) {
      return false;
    }
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$commencementDate = commencementDate;
    final lOther$commencementDate = other.commencementDate;
    if (_$data.containsKey('commencementDate') !=
        other._$data.containsKey('commencementDate')) {
      return false;
    }
    if (l$commencementDate != lOther$commencementDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (_$data.containsKey('timeInterval') !=
        other._$data.containsKey('timeInterval')) {
      return false;
    }
    if (l$timeInterval != lOther$timeInterval) {
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
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (_$data.containsKey('symbol') != other._$data.containsKey('symbol')) {
      return false;
    }
    if (l$symbol != lOther$symbol) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$mstrInspectionId = mstrInspectionId;
    final l$sequence = sequence;
    final l$commencementDate = commencementDate;
    final l$timeInterval = timeInterval;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$mstrInspectionOperationTaskId,
      _$data.containsKey('mstrInspectionOperationId')
          ? l$mstrInspectionOperationId
          : const {},
      _$data.containsKey('mstrInspectionId') ? l$mstrInspectionId : const {},
      _$data.containsKey('sequence') ? l$sequence : const {},
      _$data.containsKey('commencementDate') ? l$commencementDate : const {},
      _$data.containsKey('timeInterval') ? l$timeInterval : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit<
  TRes
> {
  factory CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit(
    Variables$Mutation$EquipmentInspectionPerationTaskEdit instance,
    TRes Function(Variables$Mutation$EquipmentInspectionPerationTaskEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit;

  factory CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit;

  TRes call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    String? mstrInspectionId,
    int? sequence,
    String? commencementDate,
    Input$IntervalInput? timeInterval,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit<TRes>
    implements
        CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$EquipmentInspectionPerationTaskEdit _instance;

  final TRes Function(Variables$Mutation$EquipmentInspectionPerationTaskEdit)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationTaskId = _undefined,
    Object? mstrInspectionOperationId = _undefined,
    Object? mstrInspectionId = _undefined,
    Object? sequence = _undefined,
    Object? commencementDate = _undefined,
    Object? timeInterval = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$EquipmentInspectionPerationTaskEdit._({
      ..._instance._$data,
      if (mstrInspectionOperationTaskId != _undefined &&
          mstrInspectionOperationTaskId != null)
        'mstrInspectionOperationTaskId':
            (mstrInspectionOperationTaskId as String),
      if (mstrInspectionOperationId != _undefined)
        'mstrInspectionOperationId': (mstrInspectionOperationId as String?),
      if (mstrInspectionId != _undefined)
        'mstrInspectionId': (mstrInspectionId as String?),
      if (sequence != _undefined) 'sequence': (sequence as int?),
      if (commencementDate != _undefined)
        'commencementDate': (commencementDate as String?),
      if (timeInterval != _undefined)
        'timeInterval': (timeInterval as Input$IntervalInput?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit<
  TRes
>
    implements
        CopyWith$Variables$Mutation$EquipmentInspectionPerationTaskEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$EquipmentInspectionPerationTaskEdit(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    String? mstrInspectionId,
    int? sequence,
    String? commencementDate,
    Input$IntervalInput? timeInterval,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$EquipmentInspectionPerationTaskEdit {
  Mutation$EquipmentInspectionPerationTaskEdit({
    this.updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$EquipmentInspectionPerationTaskEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        json['updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionPerationTaskEdit(
      updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId:
          l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId ==
              null
          ? null
          : Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId.fromJson(
              (l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId?
  updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
    _resultData['updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId'] =
        l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
            ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$EquipmentInspectionPerationTaskEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
    final lOther$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        other.updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
    if (l$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId !=
        lOther$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionPerationTaskEdit
    on Mutation$EquipmentInspectionPerationTaskEdit {
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit<
    Mutation$EquipmentInspectionPerationTaskEdit
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$EquipmentInspectionPerationTaskEdit<TRes> {
  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit(
    Mutation$EquipmentInspectionPerationTaskEdit instance,
    TRes Function(Mutation$EquipmentInspectionPerationTaskEdit) then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit;

  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit;

  TRes call({
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId?
    updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
    TRes
  >
  get updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionPerationTaskEdit<TRes> {
  _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionPerationTaskEdit _instance;

  final TRes Function(Mutation$EquipmentInspectionPerationTaskEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionPerationTaskEdit(
      updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId:
          updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId ==
              _undefined
          ? _instance
                .updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
          : (updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
                as Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
    TRes
  >
  get updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId {
    final local$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =
        _instance
            .updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;
    return local$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId ==
            null
        ? CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
            local$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
            (e) => call(
              updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId:
                  e,
            ),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit<TRes>
    implements CopyWith$Mutation$EquipmentInspectionPerationTaskEdit<TRes> {
  _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit(this._res);

  TRes _res;

  call({
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId?
    updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
    TRes
  >
  get updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId.stub(
        _res,
      );
}

const documentNodeMutationEquipmentInspectionPerationTaskEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'EquipmentInspectionPerationTaskEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrInspectionOperationTaskId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrInspectionOperationId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrInspectionId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sequence')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'commencementDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'timeInterval')),
          type: NamedTypeNode(
            name: NameNode(value: 'IntervalInput'),
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
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'symbol')),
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
              value:
                  'updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionOperationTaskId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrInspectionOperationTaskId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrInspectionOperationTaskPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrInspectionOperationId'),
                            value: VariableNode(
                              name: NameNode(
                                value: 'mstrInspectionOperationId',
                              ),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrInspectionId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrInspectionId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'sequence'),
                            value: VariableNode(
                              name: NameNode(value: 'sequence'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'commencementDate'),
                            value: VariableNode(
                              name: NameNode(value: 'commencementDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'timeInterval'),
                            value: VariableNode(
                              name: NameNode(value: 'timeInterval'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'remarks'),
                            value: VariableNode(
                              name: NameNode(value: 'remarks'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'symbol'),
                            value: VariableNode(
                              name: NameNode(value: 'symbol'),
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
                  name: NameNode(value: 'mstrInspectionOperationTask'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionOperationTaskId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionOperationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sequence'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'commencementDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'timeInterval'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'seconds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'minutes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'hours'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'days'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'months'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'years'),
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
                        name: NameNode(value: 'remarks'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'symbol'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'mstrInspectionByMstrInspectionId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrInspectionId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'externalInspection'),
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
Mutation$EquipmentInspectionPerationTaskEdit
_parserFn$Mutation$EquipmentInspectionPerationTaskEdit(
  Map<String, dynamic> data,
) => Mutation$EquipmentInspectionPerationTaskEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$EquipmentInspectionPerationTaskEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$EquipmentInspectionPerationTaskEdit?,
    );

class Options$Mutation$EquipmentInspectionPerationTaskEdit
    extends
        graphql.MutationOptions<Mutation$EquipmentInspectionPerationTaskEdit> {
  Options$Mutation$EquipmentInspectionPerationTaskEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionPerationTaskEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionPerationTaskEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionPerationTaskEdit?
    onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionPerationTaskEdit>?
    update,
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
                     : _parserFn$Mutation$EquipmentInspectionPerationTaskEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionPerationTaskEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionPerationTaskEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionPerationTaskEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$EquipmentInspectionPerationTaskEdit
    extends
        graphql.WatchQueryOptions<
          Mutation$EquipmentInspectionPerationTaskEdit
        > {
  WatchOptions$Mutation$EquipmentInspectionPerationTaskEdit({
    String? operationName,
    required Variables$Mutation$EquipmentInspectionPerationTaskEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionPerationTaskEdit? typedOptimisticResult,
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
         document: documentNodeMutationEquipmentInspectionPerationTaskEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$EquipmentInspectionPerationTaskEdit,
       );
}

extension ClientExtension$Mutation$EquipmentInspectionPerationTaskEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$EquipmentInspectionPerationTaskEdit>>
  mutate$EquipmentInspectionPerationTaskEdit(
    Options$Mutation$EquipmentInspectionPerationTaskEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$EquipmentInspectionPerationTaskEdit>
  watchMutation$EquipmentInspectionPerationTaskEdit(
    WatchOptions$Mutation$EquipmentInspectionPerationTaskEdit options,
  ) => this.watchMutation(options);
}

class Mutation$EquipmentInspectionPerationTaskEdit$HookResult {
  Mutation$EquipmentInspectionPerationTaskEdit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$EquipmentInspectionPerationTaskEdit runMutation;

  final graphql.QueryResult<Mutation$EquipmentInspectionPerationTaskEdit>
  result;
}

Mutation$EquipmentInspectionPerationTaskEdit$HookResult
useMutation$EquipmentInspectionPerationTaskEdit([
  WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit(),
  );
  return Mutation$EquipmentInspectionPerationTaskEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$EquipmentInspectionPerationTaskEdit>
useWatchMutation$EquipmentInspectionPerationTaskEdit(
  WatchOptions$Mutation$EquipmentInspectionPerationTaskEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit
    extends
        graphql.MutationOptions<Mutation$EquipmentInspectionPerationTaskEdit> {
  WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$EquipmentInspectionPerationTaskEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$EquipmentInspectionPerationTaskEdit?
    onCompleted,
    graphql.OnMutationUpdate<Mutation$EquipmentInspectionPerationTaskEdit>?
    update,
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
                     : _parserFn$Mutation$EquipmentInspectionPerationTaskEdit(
                         data,
                       ),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationEquipmentInspectionPerationTaskEdit,
         parserFn: _parserFn$Mutation$EquipmentInspectionPerationTaskEdit,
       );

  final OnMutationCompleted$Mutation$EquipmentInspectionPerationTaskEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$EquipmentInspectionPerationTaskEdit =
    graphql.MultiSourceResult<Mutation$EquipmentInspectionPerationTaskEdit>
    Function(
      Variables$Mutation$EquipmentInspectionPerationTaskEdit, {
      Object? optimisticResult,
      Mutation$EquipmentInspectionPerationTaskEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$EquipmentInspectionPerationTaskEdit =
    widgets.Widget Function(
      RunMutation$Mutation$EquipmentInspectionPerationTaskEdit,
      graphql.QueryResult<Mutation$EquipmentInspectionPerationTaskEdit>?,
    );

class Mutation$EquipmentInspectionPerationTaskEdit$Widget
    extends
        graphql_flutter.Mutation<Mutation$EquipmentInspectionPerationTaskEdit> {
  Mutation$EquipmentInspectionPerationTaskEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit? options,
    required Builder$Mutation$EquipmentInspectionPerationTaskEdit builder,
  }) : super(
         key: key,
         options:
             options ??
             WidgetOptions$Mutation$EquipmentInspectionPerationTaskEdit(),
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

class Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId {
  Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId({
    this.mstrInspectionOperationTask,
    this.$__typename = 'UpdateMstrInspectionOperationTaskPayload',
  });

  factory Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationTask = json['mstrInspectionOperationTask'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
      mstrInspectionOperationTask: l$mstrInspectionOperationTask == null
          ? null
          : Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.fromJson(
              (l$mstrInspectionOperationTask as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask?
  mstrInspectionOperationTask;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationTask = mstrInspectionOperationTask;
    _resultData['mstrInspectionOperationTask'] = l$mstrInspectionOperationTask
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionOperationTask = mstrInspectionOperationTask;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrInspectionOperationTask, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationTask = mstrInspectionOperationTask;
    final lOther$mstrInspectionOperationTask =
        other.mstrInspectionOperationTask;
    if (l$mstrInspectionOperationTask != lOther$mstrInspectionOperationTask) {
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

extension UtilityExtension$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
    on
        Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId {
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;

  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId;

  TRes call({
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask?
    mstrInspectionOperationTask,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
    TRes
  >
  get mstrInspectionOperationTask;
}

class _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationTask = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
      mstrInspectionOperationTask: mstrInspectionOperationTask == _undefined
          ? _instance.mstrInspectionOperationTask
          : (mstrInspectionOperationTask
                as Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
    TRes
  >
  get mstrInspectionOperationTask {
    final local$mstrInspectionOperationTask =
        _instance.mstrInspectionOperationTask;
    return local$mstrInspectionOperationTask == null
        ? CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
            local$mstrInspectionOperationTask,
            (e) => call(mstrInspectionOperationTask: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask?
    mstrInspectionOperationTask,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
    TRes
  >
  get mstrInspectionOperationTask =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask {
  Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask({
    required this.mstrInspectionOperationTaskId,
    required this.mstrInspectionOperationId,
    required this.mstrInspectionId,
    this.sequence,
    this.commencementDate,
    required this.timeInterval,
    this.remarks,
    this.symbol,
    this.mstrInspectionByMstrInspectionId,
    this.$__typename = 'MstrInspectionOperationTask',
  });

  factory Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationTaskId =
        json['mstrInspectionOperationTaskId'];
    final l$mstrInspectionOperationId = json['mstrInspectionOperationId'];
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$sequence = json['sequence'];
    final l$commencementDate = json['commencementDate'];
    final l$timeInterval = json['timeInterval'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$mstrInspectionByMstrInspectionId =
        json['mstrInspectionByMstrInspectionId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
      mstrInspectionOperationTaskId:
          (l$mstrInspectionOperationTaskId as String),
      mstrInspectionOperationId: (l$mstrInspectionOperationId as String),
      mstrInspectionId: (l$mstrInspectionId as String),
      sequence: (l$sequence as int?),
      commencementDate: (l$commencementDate as String?),
      timeInterval:
          Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval.fromJson(
            (l$timeInterval as Map<String, dynamic>),
          ),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      mstrInspectionByMstrInspectionId:
          l$mstrInspectionByMstrInspectionId == null
          ? null
          : Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId.fromJson(
              (l$mstrInspectionByMstrInspectionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationTaskId;

  final String mstrInspectionOperationId;

  final String mstrInspectionId;

  final int? sequence;

  final String? commencementDate;

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval
  timeInterval;

  final String? remarks;

  final String? symbol;

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId?
  mstrInspectionByMstrInspectionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    _resultData['mstrInspectionOperationTaskId'] =
        l$mstrInspectionOperationTaskId;
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    _resultData['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$commencementDate = commencementDate;
    _resultData['commencementDate'] = l$commencementDate;
    final l$timeInterval = timeInterval;
    _resultData['timeInterval'] = l$timeInterval.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    _resultData['mstrInspectionByMstrInspectionId'] =
        l$mstrInspectionByMstrInspectionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$mstrInspectionId = mstrInspectionId;
    final l$sequence = sequence;
    final l$commencementDate = commencementDate;
    final l$timeInterval = timeInterval;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationTaskId,
      l$mstrInspectionOperationId,
      l$mstrInspectionId,
      l$sequence,
      l$commencementDate,
      l$timeInterval,
      l$remarks,
      l$symbol,
      l$mstrInspectionByMstrInspectionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final lOther$mstrInspectionOperationTaskId =
        other.mstrInspectionOperationTaskId;
    if (l$mstrInspectionOperationTaskId !=
        lOther$mstrInspectionOperationTaskId) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$commencementDate = commencementDate;
    final lOther$commencementDate = other.commencementDate;
    if (l$commencementDate != lOther$commencementDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (l$timeInterval != lOther$timeInterval) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    final lOther$mstrInspectionByMstrInspectionId =
        other.mstrInspectionByMstrInspectionId;
    if (l$mstrInspectionByMstrInspectionId !=
        lOther$mstrInspectionByMstrInspectionId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask
    on
        Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask {
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask
    instance,
    TRes Function(
      Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask;

  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask;

  TRes call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    String? mstrInspectionId,
    int? sequence,
    String? commencementDate,
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval?
    timeInterval,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId?
    mstrInspectionByMstrInspectionId,
    String? $__typename,
  });
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
    TRes
  >
  get timeInterval;
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId;
}

class _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationTaskId = _undefined,
    Object? mstrInspectionOperationId = _undefined,
    Object? mstrInspectionId = _undefined,
    Object? sequence = _undefined,
    Object? commencementDate = _undefined,
    Object? timeInterval = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? mstrInspectionByMstrInspectionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
      mstrInspectionOperationTaskId:
          mstrInspectionOperationTaskId == _undefined ||
              mstrInspectionOperationTaskId == null
          ? _instance.mstrInspectionOperationTaskId
          : (mstrInspectionOperationTaskId as String),
      mstrInspectionOperationId:
          mstrInspectionOperationId == _undefined ||
              mstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationId
          : (mstrInspectionOperationId as String),
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      commencementDate: commencementDate == _undefined
          ? _instance.commencementDate
          : (commencementDate as String?),
      timeInterval: timeInterval == _undefined || timeInterval == null
          ? _instance.timeInterval
          : (timeInterval
                as Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      mstrInspectionByMstrInspectionId:
          mstrInspectionByMstrInspectionId == _undefined
          ? _instance.mstrInspectionByMstrInspectionId
          : (mstrInspectionByMstrInspectionId
                as Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
    TRes
  >
  get timeInterval {
    final local$timeInterval = _instance.timeInterval;
    return CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
      local$timeInterval,
      (e) => call(timeInterval: e),
    );
  }

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId {
    final local$mstrInspectionByMstrInspectionId =
        _instance.mstrInspectionByMstrInspectionId;
    return local$mstrInspectionByMstrInspectionId == null
        ? CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
            local$mstrInspectionByMstrInspectionId,
            (e) => call(mstrInspectionByMstrInspectionId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    String? mstrInspectionId,
    int? sequence,
    String? commencementDate,
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval?
    timeInterval,
    String? remarks,
    String? symbol,
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId?
    mstrInspectionByMstrInspectionId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
    TRes
  >
  get timeInterval =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval.stub(
        _res,
      );

  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId.stub(
        _res,
      );
}

class Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval {
  Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
      seconds: (l$seconds as num?)?.toDouble(),
      minutes: (l$minutes as int?),
      hours: (l$hours as int?),
      days: (l$days as int?),
      months: (l$months as int?),
      years: (l$years as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? seconds;

  final int? minutes;

  final int? hours;

  final int? days;

  final int? months;

  final int? years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$years = years;
    _resultData['years'] = l$years;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seconds = seconds;
    final l$minutes = minutes;
    final l$hours = hours;
    final l$days = days;
    final l$months = months;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seconds,
      l$minutes,
      l$hours,
      l$days,
      l$months,
      l$years,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
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

extension UtilityExtension$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval
    on
        Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval {
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval
    instance,
    TRes Function(
      Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval;

  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval;

  TRes call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seconds = _undefined,
    Object? minutes = _undefined,
    Object? hours = _undefined,
    Object? days = _undefined,
    Object? months = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      years: years == _undefined ? _instance.years : (years as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$timeInterval(
    this._res,
  );

  TRes _res;

  call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  }) => _res;
}

class Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId {
  Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId({
    required this.mstrInspectionId,
    this.externalInspection,
    required this.mstrItemId,
    this.$__typename = 'MstrInspection',
  });

  factory Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$externalInspection = json['externalInspection'];
    final l$mstrItemId = json['mstrItemId'];
    final l$$__typename = json['__typename'];
    return Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
      mstrInspectionId: (l$mstrInspectionId as String),
      externalInspection: (l$externalInspection as String?),
      mstrItemId: (l$mstrItemId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionId;

  final String? externalInspection;

  final String mstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$externalInspection = externalInspection;
    _resultData['externalInspection'] = l$externalInspection;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionId = mstrInspectionId;
    final l$externalInspection = externalInspection;
    final l$mstrItemId = mstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionId,
      l$externalInspection,
      l$mstrItemId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$externalInspection = externalInspection;
    final lOther$externalInspection = other.externalInspection;
    if (l$externalInspection != lOther$externalInspection) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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

extension UtilityExtension$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId
    on
        Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId {
  CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId
  >
  get copyWith =>
      CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
  TRes
> {
  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId
    instance,
    TRes Function(
      Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId,
    )
    then,
  ) = _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId;

  factory CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId;

  TRes call({
    String? mstrInspectionId,
    String? externalInspection,
    String? mstrItemId,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
    this._instance,
    this._then,
  );

  final Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId
  _instance;

  final TRes Function(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionId = _undefined,
    Object? externalInspection = _undefined,
    Object? mstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      externalInspection: externalInspection == _undefined
          ? _instance.externalInspection
          : (externalInspection as String?),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$EquipmentInspectionPerationTaskEdit$updateMstrInspectionOperationTaskByMstrInspectionOperationTaskId$mstrInspectionOperationTask$mstrInspectionByMstrInspectionId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionId,
    String? externalInspection,
    String? mstrItemId,
    String? $__typename,
  }) => _res;
}
