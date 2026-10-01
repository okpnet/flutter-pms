import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$StaffCapabilityEdit {
  factory Variables$Mutation$StaffCapabilityEdit({
    required String mstrStaffCapabilityId,
    required String infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Mutation$StaffCapabilityEdit._({
    r'mstrStaffCapabilityId': mstrStaffCapabilityId,
    r'infoStaffId': infoStaffId,
    if (mstrCapabilityId != null) r'mstrCapabilityId': mstrCapabilityId,
    if (value != null) r'value': value,
    if (stop != null) r'stop': stop,
    if (remarks != null) r'remarks': remarks,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Mutation$StaffCapabilityEdit._(this._$data);

  factory Variables$Mutation$StaffCapabilityEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrStaffCapabilityId = data['mstrStaffCapabilityId'];
    result$data['mstrStaffCapabilityId'] = (l$mstrStaffCapabilityId as String);
    final l$infoStaffId = data['infoStaffId'];
    result$data['infoStaffId'] = (l$infoStaffId as String);
    if (data.containsKey('mstrCapabilityId')) {
      final l$mstrCapabilityId = data['mstrCapabilityId'];
      result$data['mstrCapabilityId'] = (l$mstrCapabilityId as String?);
    }
    if (data.containsKey('value')) {
      final l$value = data['value'];
      result$data['value'] = (l$value as String?);
    }
    if (data.containsKey('stop')) {
      final l$stop = data['stop'];
      result$data['stop'] = (l$stop as bool?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Mutation$StaffCapabilityEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStaffCapabilityId =>
      (_$data['mstrStaffCapabilityId'] as String);

  String get infoStaffId => (_$data['infoStaffId'] as String);

  String? get mstrCapabilityId => (_$data['mstrCapabilityId'] as String?);

  String? get value => (_$data['value'] as String?);

  bool? get stop => (_$data['stop'] as bool?);

  String? get remarks => (_$data['remarks'] as String?);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    result$data['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    result$data['infoStaffId'] = l$infoStaffId;
    if (_$data.containsKey('mstrCapabilityId')) {
      final l$mstrCapabilityId = mstrCapabilityId;
      result$data['mstrCapabilityId'] = l$mstrCapabilityId;
    }
    if (_$data.containsKey('value')) {
      final l$value = value;
      result$data['value'] = l$value;
    }
    if (_$data.containsKey('stop')) {
      final l$stop = stop;
      result$data['stop'] = l$stop;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    final l$jaLanguageCodeId = jaLanguageCodeId;
    result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    return result$data;
  }

  CopyWith$Variables$Mutation$StaffCapabilityEdit<
    Variables$Mutation$StaffCapabilityEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$StaffCapabilityEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$StaffCapabilityEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final lOther$mstrStaffCapabilityId = other.mstrStaffCapabilityId;
    if (l$mstrStaffCapabilityId != lOther$mstrStaffCapabilityId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (_$data.containsKey('mstrCapabilityId') !=
        other._$data.containsKey('mstrCapabilityId')) {
      return false;
    }
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (_$data.containsKey('value') != other._$data.containsKey('value')) {
      return false;
    }
    if (l$value != lOther$value) {
      return false;
    }
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (_$data.containsKey('stop') != other._$data.containsKey('stop')) {
      return false;
    }
    if (l$stop != lOther$stop) {
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
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$value = value;
    final l$stop = stop;
    final l$remarks = remarks;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      _$data.containsKey('mstrCapabilityId') ? l$mstrCapabilityId : const {},
      _$data.containsKey('value') ? l$value : const {},
      _$data.containsKey('stop') ? l$stop : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$StaffCapabilityEdit<TRes> {
  factory CopyWith$Variables$Mutation$StaffCapabilityEdit(
    Variables$Mutation$StaffCapabilityEdit instance,
    TRes Function(Variables$Mutation$StaffCapabilityEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$StaffCapabilityEdit;

  factory CopyWith$Variables$Mutation$StaffCapabilityEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StaffCapabilityEdit;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Mutation$StaffCapabilityEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffCapabilityEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$StaffCapabilityEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StaffCapabilityEdit _instance;

  final TRes Function(Variables$Mutation$StaffCapabilityEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrCapabilityId = _undefined,
    Object? value = _undefined,
    Object? stop = _undefined,
    Object? remarks = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Mutation$StaffCapabilityEdit._({
      ..._instance._$data,
      if (mstrStaffCapabilityId != _undefined && mstrStaffCapabilityId != null)
        'mstrStaffCapabilityId': (mstrStaffCapabilityId as String),
      if (infoStaffId != _undefined && infoStaffId != null)
        'infoStaffId': (infoStaffId as String),
      if (mstrCapabilityId != _undefined)
        'mstrCapabilityId': (mstrCapabilityId as String?),
      if (value != _undefined) 'value': (value as String?),
      if (stop != _undefined) 'stop': (stop as bool?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$StaffCapabilityEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffCapabilityEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StaffCapabilityEdit(this._res);

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Mutation$StaffCapabilityEdit {
  Mutation$StaffCapabilityEdit({
    this.updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StaffCapabilityEdit.fromJson(Map<String, dynamic> json) {
    final l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        json['updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit(
      updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId:
          l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ==
              null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
              (l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
  updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    _resultData['updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId'] =
        l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
            ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$StaffCapabilityEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    final lOther$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        other.updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    if (l$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId !=
        lOther$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit
    on Mutation$StaffCapabilityEdit {
  CopyWith$Mutation$StaffCapabilityEdit<Mutation$StaffCapabilityEdit>
  get copyWith => CopyWith$Mutation$StaffCapabilityEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$StaffCapabilityEdit<TRes> {
  factory CopyWith$Mutation$StaffCapabilityEdit(
    Mutation$StaffCapabilityEdit instance,
    TRes Function(Mutation$StaffCapabilityEdit) then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit;

  factory CopyWith$Mutation$StaffCapabilityEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StaffCapabilityEdit;

  TRes call({
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
    updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit<TRes>
    implements CopyWith$Mutation$StaffCapabilityEdit<TRes> {
  _CopyWithImpl$Mutation$StaffCapabilityEdit(this._instance, this._then);

  final Mutation$StaffCapabilityEdit _instance;

  final TRes Function(Mutation$StaffCapabilityEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit(
      updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId:
          updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ==
              _undefined
          ? _instance
                .updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
          : (updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
    final local$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =
        _instance
            .updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;
    return local$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ==
            null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
            local$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
            (e) => call(
              updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId: e,
            ),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit<TRes>
    implements CopyWith$Mutation$StaffCapabilityEdit<TRes> {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit(this._res);

  TRes _res;

  call({
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId?
    updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    TRes
  >
  get updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
        _res,
      );
}

const documentNodeMutationStaffCapabilityEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'StaffCapabilityEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrStaffCapabilityId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoStaffId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrCapabilityId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'value')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stop')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
                  'updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStaffCapabilityId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrStaffCapabilityId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoStaffId'),
                      value: VariableNode(name: NameNode(value: 'infoStaffId')),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStaffCapabilityPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'infoStaffId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoStaffId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrCapabilityId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrCapabilityId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'value'),
                            value: VariableNode(name: NameNode(value: 'value')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'stop'),
                            value: VariableNode(name: NameNode(value: 'stop')),
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
                  name: NameNode(value: 'mstrStaffCapability'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrStaffCapabilityId'),
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
                        name: NameNode(value: 'mstrCapabilityId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'value'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stop'),
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
                        name: NameNode(value: 'infoStaffByInfoStaffId'),
                        alias: NameNode(value: 'staff'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'infoStaffId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'infoCompanyId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'code'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sex'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'phone'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'privatePhone'),
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
                              name: NameNode(value: 'remove'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'labels'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(
                                value:
                                    'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                              ),
                              alias: NameNode(value: 'update_user'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'historyId'),
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
                                    name: NameNode(value: 'infoCompanyId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'code'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sex'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'phone'),
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
                                    name: NameNode(value: 'privatePhone'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationByNames',
                                    ),
                                    alias: NameNode(value: 'name'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedAppellationsId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryNameId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryPronunciationId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryNicknameId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                      FieldNode(
                        name: NameNode(
                          value: 'mstrCapabilityByMstrCapabilityId',
                        ),
                        alias: NameNode(value: 'capability'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrCapabilityId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'code'),
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
                              name: NameNode(value: 'referenceValue'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'max'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'min'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'step'),
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
                              name: NameNode(value: 'remove'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'labels'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationsId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryBySharedDictionaryNicknameId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'ja'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'jaLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryValuesBySharedDictionaryId',
                                          ),
                                          alias: NameNode(value: 'en'),
                                          arguments: [
                                            ArgumentNode(
                                              name: NameNode(
                                                value: 'condition',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'sharedLanguageCodeId',
                                                    ),
                                                    value: VariableNode(
                                                      name: NameNode(
                                                        value:
                                                            'enLanguageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value:
                                                            'dictionaryValue',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
                              name: NameNode(
                                value:
                                    'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                              ),
                              alias: NameNode(value: 'update_user'),
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'historyId'),
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
                                    name: NameNode(value: 'infoCompanyId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'code'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sex'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'phone'),
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
                                    name: NameNode(value: 'privatePhone'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'sharedAppellationByNames',
                                    ),
                                    alias: NameNode(value: 'name'),
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'sharedAppellationsId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryNameId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryPronunciationId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                            ],
                                          ),
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'sharedDictionaryBySharedDictionaryNicknameId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sharedDictionaryId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'ja'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'jaLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value:
                                                      'sharedDictionaryValuesBySharedDictionaryId',
                                                ),
                                                alias: NameNode(value: 'en'),
                                                arguments: [
                                                  ArgumentNode(
                                                    name: NameNode(
                                                      value: 'condition',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedLanguageCodeId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'enLanguageCodeId',
                                                            ),
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: SelectionSetNode(
                                                        selections: [
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  'dictionaryValue',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                          FieldNode(
                                                            name: NameNode(
                                                              value:
                                                                  '__typename',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: null,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: '__typename',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: '__typename',
                                                ),
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
Mutation$StaffCapabilityEdit _parserFn$Mutation$StaffCapabilityEdit(
  Map<String, dynamic> data,
) => Mutation$StaffCapabilityEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$StaffCapabilityEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$StaffCapabilityEdit?,
    );

class Options$Mutation$StaffCapabilityEdit
    extends graphql.MutationOptions<Mutation$StaffCapabilityEdit> {
  Options$Mutation$StaffCapabilityEdit({
    String? operationName,
    required Variables$Mutation$StaffCapabilityEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffCapabilityEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffCapabilityEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffCapabilityEdit>? update,
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
                     : _parserFn$Mutation$StaffCapabilityEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffCapabilityEdit,
         parserFn: _parserFn$Mutation$StaffCapabilityEdit,
       );

  final OnMutationCompleted$Mutation$StaffCapabilityEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$StaffCapabilityEdit
    extends graphql.WatchQueryOptions<Mutation$StaffCapabilityEdit> {
  WatchOptions$Mutation$StaffCapabilityEdit({
    String? operationName,
    required Variables$Mutation$StaffCapabilityEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffCapabilityEdit? typedOptimisticResult,
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
         document: documentNodeMutationStaffCapabilityEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$StaffCapabilityEdit,
       );
}

extension ClientExtension$Mutation$StaffCapabilityEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StaffCapabilityEdit>>
  mutate$StaffCapabilityEdit(
    Options$Mutation$StaffCapabilityEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$StaffCapabilityEdit>
  watchMutation$StaffCapabilityEdit(
    WatchOptions$Mutation$StaffCapabilityEdit options,
  ) => this.watchMutation(options);
}

class Mutation$StaffCapabilityEdit$HookResult {
  Mutation$StaffCapabilityEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$StaffCapabilityEdit runMutation;

  final graphql.QueryResult<Mutation$StaffCapabilityEdit> result;
}

Mutation$StaffCapabilityEdit$HookResult useMutation$StaffCapabilityEdit([
  WidgetOptions$Mutation$StaffCapabilityEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$StaffCapabilityEdit(),
  );
  return Mutation$StaffCapabilityEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$StaffCapabilityEdit>
useWatchMutation$StaffCapabilityEdit(
  WatchOptions$Mutation$StaffCapabilityEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$StaffCapabilityEdit
    extends graphql.MutationOptions<Mutation$StaffCapabilityEdit> {
  WidgetOptions$Mutation$StaffCapabilityEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffCapabilityEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffCapabilityEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffCapabilityEdit>? update,
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
                     : _parserFn$Mutation$StaffCapabilityEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffCapabilityEdit,
         parserFn: _parserFn$Mutation$StaffCapabilityEdit,
       );

  final OnMutationCompleted$Mutation$StaffCapabilityEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$StaffCapabilityEdit =
    graphql.MultiSourceResult<Mutation$StaffCapabilityEdit> Function(
      Variables$Mutation$StaffCapabilityEdit, {
      Object? optimisticResult,
      Mutation$StaffCapabilityEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$StaffCapabilityEdit =
    widgets.Widget Function(
      RunMutation$Mutation$StaffCapabilityEdit,
      graphql.QueryResult<Mutation$StaffCapabilityEdit>?,
    );

class Mutation$StaffCapabilityEdit$Widget
    extends graphql_flutter.Mutation<Mutation$StaffCapabilityEdit> {
  Mutation$StaffCapabilityEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$StaffCapabilityEdit? options,
    required Builder$Mutation$StaffCapabilityEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$StaffCapabilityEdit(),
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

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId({
    this.mstrStaffCapability,
    this.$__typename = 'UpdateMstrStaffCapabilityPayload',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffCapability = json['mstrStaffCapability'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
      mstrStaffCapability: l$mstrStaffCapability == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.fromJson(
              (l$mstrStaffCapability as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability?
  mstrStaffCapability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapability = mstrStaffCapability;
    _resultData['mstrStaffCapability'] = l$mstrStaffCapability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapability = mstrStaffCapability;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStaffCapability, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapability = mstrStaffCapability;
    final lOther$mstrStaffCapability = other.mstrStaffCapability;
    if (l$mstrStaffCapability != lOther$mstrStaffCapability) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId;

  TRes call({
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability?
    mstrStaffCapability,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
    TRes
  >
  get mstrStaffCapability;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapability = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
      mstrStaffCapability: mstrStaffCapability == _undefined
          ? _instance.mstrStaffCapability
          : (mstrStaffCapability
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
    TRes
  >
  get mstrStaffCapability {
    final local$mstrStaffCapability = _instance.mstrStaffCapability;
    return local$mstrStaffCapability == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
            local$mstrStaffCapability,
            (e) => call(mstrStaffCapability: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability?
    mstrStaffCapability,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
    TRes
  >
  get mstrStaffCapability =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability({
    required this.mstrStaffCapabilityId,
    required this.infoStaffId,
    this.mstrCapabilityId,
    this.value,
    this.stop,
    this.remarks,
    this.staff,
    this.capability,
    this.$__typename = 'MstrStaffCapability',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffCapabilityId = json['mstrStaffCapabilityId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$value = json['value'];
    final l$stop = json['stop'];
    final l$remarks = json['remarks'];
    final l$staff = json['staff'];
    final l$capability = json['capability'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
      mstrStaffCapabilityId: (l$mstrStaffCapabilityId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrCapabilityId: (l$mstrCapabilityId as String?),
      value: (l$value as String?),
      stop: (l$stop as bool?),
      remarks: (l$remarks as String?),
      staff: l$staff == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      capability: l$capability == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability.fromJson(
              (l$capability as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffCapabilityId;

  final String infoStaffId;

  final String? mstrCapabilityId;

  final String? value;

  final bool? stop;

  final String? remarks;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff?
  staff;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability?
  capability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    _resultData['mstrStaffCapabilityId'] = l$mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$value = value;
    _resultData['value'] = l$value;
    final l$stop = stop;
    _resultData['stop'] = l$stop;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$capability = capability;
    _resultData['capability'] = l$capability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final l$infoStaffId = infoStaffId;
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$value = value;
    final l$stop = stop;
    final l$remarks = remarks;
    final l$staff = staff;
    final l$capability = capability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffCapabilityId,
      l$infoStaffId,
      l$mstrCapabilityId,
      l$value,
      l$stop,
      l$remarks,
      l$staff,
      l$capability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffCapabilityId = mstrStaffCapabilityId;
    final lOther$mstrStaffCapabilityId = other.mstrStaffCapabilityId;
    if (l$mstrStaffCapabilityId != lOther$mstrStaffCapabilityId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
      return false;
    }
    final l$stop = stop;
    final lOther$stop = other.stop;
    if (l$stop != lOther$stop) {
      return false;
    }
    final l$remarks = remarks;
    final lOther$remarks = other.remarks;
    if (l$remarks != lOther$remarks) {
      return false;
    }
    final l$staff = staff;
    final lOther$staff = other.staff;
    if (l$staff != lOther$staff) {
      return false;
    }
    final l$capability = capability;
    final lOther$capability = other.capability;
    if (l$capability != lOther$capability) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability;

  TRes call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff?
    staff,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability?
    capability,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
    TRes
  >
  get staff;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
    TRes
  >
  get capability;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffCapabilityId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrCapabilityId = _undefined,
    Object? value = _undefined,
    Object? stop = _undefined,
    Object? remarks = _undefined,
    Object? staff = _undefined,
    Object? capability = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
      mstrStaffCapabilityId:
          mstrStaffCapabilityId == _undefined || mstrStaffCapabilityId == null
          ? _instance.mstrStaffCapabilityId
          : (mstrStaffCapabilityId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      mstrCapabilityId: mstrCapabilityId == _undefined
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String?),
      value: value == _undefined ? _instance.value : (value as String?),
      stop: stop == _undefined ? _instance.stop : (stop as bool?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      staff: staff == _undefined
          ? _instance.staff
          : (staff
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff?),
      capability: capability == _undefined
          ? _instance.capability
          : (capability
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
    TRes
  >
  get capability {
    final local$capability = _instance.capability;
    return local$capability == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
            local$capability,
            (e) => call(capability: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffCapabilityId,
    String? infoStaffId,
    String? mstrCapabilityId,
    String? value,
    bool? stop,
    String? remarks,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff?
    staff,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability?
    capability,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
    TRes
  >
  get staff =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
    TRes
  >
  get capability =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff({
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.privatePhone,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'InfoStaff',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$privatePhone = json['privatePhone'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      privatePhone: (l$privatePhone as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? privatePhone;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels?
  labels;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$privatePhone = privatePhone;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$privatePhone,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
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
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$update_user = update_user;
    final lOther$update_user = other.update_user;
    if (l$update_user != lOther$update_user) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff;

  TRes call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels?
    labels,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? privatePhone = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff(
    this._res,
  );

  TRes _res;

  call({
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? privatePhone,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels?
    labels,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name?
  name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability({
    required this.mstrCapabilityId,
    required this.code,
    this.detail,
    required this.referenceValue,
    this.max,
    this.min,
    this.step,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrCapability',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrCapabilityId = json['mstrCapabilityId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$referenceValue = json['referenceValue'];
    final l$max = json['max'];
    final l$min = json['min'];
    final l$step = json['step'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
      mstrCapabilityId: (l$mstrCapabilityId as String),
      code: (l$code as String),
      detail: (l$detail as String?),
      referenceValue: (l$referenceValue as String),
      max: (l$max as String?),
      min: (l$min as String?),
      step: (l$step as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrCapabilityId;

  final String code;

  final String? detail;

  final String referenceValue;

  final String? max;

  final String? min;

  final String? step;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels?
  labels;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrCapabilityId = mstrCapabilityId;
    _resultData['mstrCapabilityId'] = l$mstrCapabilityId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$referenceValue = referenceValue;
    _resultData['referenceValue'] = l$referenceValue;
    final l$max = max;
    _resultData['max'] = l$max;
    final l$min = min;
    _resultData['min'] = l$min;
    final l$step = step;
    _resultData['step'] = l$step;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrCapabilityId = mstrCapabilityId;
    final l$code = code;
    final l$detail = detail;
    final l$referenceValue = referenceValue;
    final l$max = max;
    final l$min = min;
    final l$step = step;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrCapabilityId,
      l$code,
      l$detail,
      l$referenceValue,
      l$max,
      l$min,
      l$step,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$labels,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrCapabilityId = mstrCapabilityId;
    final lOther$mstrCapabilityId = other.mstrCapabilityId;
    if (l$mstrCapabilityId != lOther$mstrCapabilityId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$referenceValue = referenceValue;
    final lOther$referenceValue = other.referenceValue;
    if (l$referenceValue != lOther$referenceValue) {
      return false;
    }
    final l$max = max;
    final lOther$max = other.max;
    if (l$max != lOther$max) {
      return false;
    }
    final l$min = min;
    final lOther$min = other.min;
    if (l$min != lOther$min) {
      return false;
    }
    final l$step = step;
    final lOther$step = other.step;
    if (l$step != lOther$step) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
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
    final l$remove = remove;
    final lOther$remove = other.remove;
    if (l$remove != lOther$remove) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$update_user = update_user;
    final lOther$update_user = other.update_user;
    if (l$update_user != lOther$update_user) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability;

  TRes call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels?
    labels,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrCapabilityId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? referenceValue = _undefined,
    Object? max = _undefined,
    Object? min = _undefined,
    Object? step = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
      mstrCapabilityId:
          mstrCapabilityId == _undefined || mstrCapabilityId == null
          ? _instance.mstrCapabilityId
          : (mstrCapabilityId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      referenceValue: referenceValue == _undefined || referenceValue == null
          ? _instance.referenceValue
          : (referenceValue as String),
      max: max == _undefined ? _instance.max : (max as String?),
      min: min == _undefined ? _instance.min : (min as String?),
      step: step == _undefined ? _instance.step : (step as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability(
    this._res,
  );

  TRes _res;

  call({
    String? mstrCapabilityId,
    String? code,
    String? detail,
    String? referenceValue,
    String? max,
    String? min,
    String? step,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels?
    labels,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user({
    required this.historyId,
    required this.infoStaffId,
    this.infoCompanyId,
    this.code,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.name,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String?),
      code: (l$code as String?),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      name: l$name == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? infoCompanyId;

  final String? code;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name?
  name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined
          ? _instance.infoCompanyId
          : (infoCompanyId as String?),
      code: code == _undefined ? _instance.code : (code as String?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    _resultData['sharedDictionaryBySharedDictionaryPronunciationId'] =
        l$sharedDictionaryBySharedDictionaryPronunciationId?.toJson();
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    _resultData['sharedDictionaryBySharedDictionaryNicknameId'] =
        l$sharedDictionaryBySharedDictionaryNicknameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$sharedDictionaryBySharedDictionaryNicknameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final lOther$sharedDictionaryBySharedDictionaryNameId =
        other.sharedDictionaryBySharedDictionaryNameId;
    if (l$sharedDictionaryBySharedDictionaryNameId !=
        lOther$sharedDictionaryBySharedDictionaryNameId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final lOther$sharedDictionaryBySharedDictionaryPronunciationId =
        other.sharedDictionaryBySharedDictionaryPronunciationId;
    if (l$sharedDictionaryBySharedDictionaryPronunciationId !=
        lOther$sharedDictionaryBySharedDictionaryPronunciationId) {
      return false;
    }
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final lOther$sharedDictionaryBySharedDictionaryNicknameId =
        other.sharedDictionaryBySharedDictionaryNicknameId;
    if (l$sharedDictionaryBySharedDictionaryNicknameId !=
        lOther$sharedDictionaryBySharedDictionaryNicknameId) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja.toJson();
    final l$en = en;
    _resultData['en'] = l$en.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$ja = ja;
    final lOther$ja = other.ja;
    if (l$ja != lOther$ja) {
      return false;
    }
    final l$en = en;
    final lOther$en = other.en;
    if (l$en != lOther$en) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: (l$dictionaryValue as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String dictionaryValue;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$dictionaryValue = dictionaryValue;
    _resultData['dictionaryValue'] = l$dictionaryValue;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$dictionaryValue = dictionaryValue;
    final l$$__typename = $__typename;
    return Object.hashAll([l$dictionaryValue, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$dictionaryValue = dictionaryValue;
    final lOther$dictionaryValue = other.dictionaryValue;
    if (l$dictionaryValue != lOther$dictionaryValue) {
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

extension UtilityExtension$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffCapabilityEdit$updateMstrStaffCapabilityByMstrStaffCapabilityIdAndInfoStaffId$mstrStaffCapability$capability$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
