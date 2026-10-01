import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$StaffHeldLicensePageEdit {
  factory Variables$Mutation$StaffHeldLicensePageEdit({
    required String mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    String? remarks,
    required String jaLanguageCodeId,
    required String enLanguageCodeId,
  }) => Variables$Mutation$StaffHeldLicensePageEdit._({
    r'mstrStaffLicenseId': mstrStaffLicenseId,
    if (infoStaffId != null) r'infoStaffId': infoStaffId,
    if (mstrLicenseId != null) r'mstrLicenseId': mstrLicenseId,
    if (startAt != null) r'startAt': startAt,
    if (stopAt != null) r'stopAt': stopAt,
    if (abeyance != null) r'abeyance': abeyance,
    if (abeyanceAt != null) r'abeyanceAt': abeyanceAt,
    if (revocation != null) r'revocation': revocation,
    if (revocationAt != null) r'revocationAt': revocationAt,
    if (remarks != null) r'remarks': remarks,
    r'jaLanguageCodeId': jaLanguageCodeId,
    r'enLanguageCodeId': enLanguageCodeId,
  });

  Variables$Mutation$StaffHeldLicensePageEdit._(this._$data);

  factory Variables$Mutation$StaffHeldLicensePageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$mstrStaffLicenseId = data['mstrStaffLicenseId'];
    result$data['mstrStaffLicenseId'] = (l$mstrStaffLicenseId as String);
    if (data.containsKey('infoStaffId')) {
      final l$infoStaffId = data['infoStaffId'];
      result$data['infoStaffId'] = (l$infoStaffId as String?);
    }
    if (data.containsKey('mstrLicenseId')) {
      final l$mstrLicenseId = data['mstrLicenseId'];
      result$data['mstrLicenseId'] = (l$mstrLicenseId as String?);
    }
    if (data.containsKey('startAt')) {
      final l$startAt = data['startAt'];
      result$data['startAt'] = (l$startAt as String?);
    }
    if (data.containsKey('stopAt')) {
      final l$stopAt = data['stopAt'];
      result$data['stopAt'] = (l$stopAt as String?);
    }
    if (data.containsKey('abeyance')) {
      final l$abeyance = data['abeyance'];
      result$data['abeyance'] = (l$abeyance as bool?);
    }
    if (data.containsKey('abeyanceAt')) {
      final l$abeyanceAt = data['abeyanceAt'];
      result$data['abeyanceAt'] = (l$abeyanceAt as String?);
    }
    if (data.containsKey('revocation')) {
      final l$revocation = data['revocation'];
      result$data['revocation'] = (l$revocation as bool?);
    }
    if (data.containsKey('revocationAt')) {
      final l$revocationAt = data['revocationAt'];
      result$data['revocationAt'] = (l$revocationAt as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    final l$jaLanguageCodeId = data['jaLanguageCodeId'];
    result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String);
    final l$enLanguageCodeId = data['enLanguageCodeId'];
    result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String);
    return Variables$Mutation$StaffHeldLicensePageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mstrStaffLicenseId => (_$data['mstrStaffLicenseId'] as String);

  String? get infoStaffId => (_$data['infoStaffId'] as String?);

  String? get mstrLicenseId => (_$data['mstrLicenseId'] as String?);

  String? get startAt => (_$data['startAt'] as String?);

  String? get stopAt => (_$data['stopAt'] as String?);

  bool? get abeyance => (_$data['abeyance'] as bool?);

  String? get abeyanceAt => (_$data['abeyanceAt'] as String?);

  bool? get revocation => (_$data['revocation'] as bool?);

  String? get revocationAt => (_$data['revocationAt'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String);

  String get enLanguageCodeId => (_$data['enLanguageCodeId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    result$data['mstrStaffLicenseId'] = l$mstrStaffLicenseId;
    if (_$data.containsKey('infoStaffId')) {
      final l$infoStaffId = infoStaffId;
      result$data['infoStaffId'] = l$infoStaffId;
    }
    if (_$data.containsKey('mstrLicenseId')) {
      final l$mstrLicenseId = mstrLicenseId;
      result$data['mstrLicenseId'] = l$mstrLicenseId;
    }
    if (_$data.containsKey('startAt')) {
      final l$startAt = startAt;
      result$data['startAt'] = l$startAt;
    }
    if (_$data.containsKey('stopAt')) {
      final l$stopAt = stopAt;
      result$data['stopAt'] = l$stopAt;
    }
    if (_$data.containsKey('abeyance')) {
      final l$abeyance = abeyance;
      result$data['abeyance'] = l$abeyance;
    }
    if (_$data.containsKey('abeyanceAt')) {
      final l$abeyanceAt = abeyanceAt;
      result$data['abeyanceAt'] = l$abeyanceAt;
    }
    if (_$data.containsKey('revocation')) {
      final l$revocation = revocation;
      result$data['revocation'] = l$revocation;
    }
    if (_$data.containsKey('revocationAt')) {
      final l$revocationAt = revocationAt;
      result$data['revocationAt'] = l$revocationAt;
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

  CopyWith$Variables$Mutation$StaffHeldLicensePageEdit<
    Variables$Mutation$StaffHeldLicensePageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$StaffHeldLicensePageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$StaffHeldLicensePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final lOther$mstrStaffLicenseId = other.mstrStaffLicenseId;
    if (l$mstrStaffLicenseId != lOther$mstrStaffLicenseId) {
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
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (_$data.containsKey('mstrLicenseId') !=
        other._$data.containsKey('mstrLicenseId')) {
      return false;
    }
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (_$data.containsKey('startAt') != other._$data.containsKey('startAt')) {
      return false;
    }
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$stopAt = stopAt;
    final lOther$stopAt = other.stopAt;
    if (_$data.containsKey('stopAt') != other._$data.containsKey('stopAt')) {
      return false;
    }
    if (l$stopAt != lOther$stopAt) {
      return false;
    }
    final l$abeyance = abeyance;
    final lOther$abeyance = other.abeyance;
    if (_$data.containsKey('abeyance') !=
        other._$data.containsKey('abeyance')) {
      return false;
    }
    if (l$abeyance != lOther$abeyance) {
      return false;
    }
    final l$abeyanceAt = abeyanceAt;
    final lOther$abeyanceAt = other.abeyanceAt;
    if (_$data.containsKey('abeyanceAt') !=
        other._$data.containsKey('abeyanceAt')) {
      return false;
    }
    if (l$abeyanceAt != lOther$abeyanceAt) {
      return false;
    }
    final l$revocation = revocation;
    final lOther$revocation = other.revocation;
    if (_$data.containsKey('revocation') !=
        other._$data.containsKey('revocation')) {
      return false;
    }
    if (l$revocation != lOther$revocation) {
      return false;
    }
    final l$revocationAt = revocationAt;
    final lOther$revocationAt = other.revocationAt;
    if (_$data.containsKey('revocationAt') !=
        other._$data.containsKey('revocationAt')) {
      return false;
    }
    if (l$revocationAt != lOther$revocationAt) {
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
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final l$infoStaffId = infoStaffId;
    final l$mstrLicenseId = mstrLicenseId;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$abeyance = abeyance;
    final l$abeyanceAt = abeyanceAt;
    final l$revocation = revocation;
    final l$revocationAt = revocationAt;
    final l$remarks = remarks;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    return Object.hashAll([
      l$mstrStaffLicenseId,
      _$data.containsKey('infoStaffId') ? l$infoStaffId : const {},
      _$data.containsKey('mstrLicenseId') ? l$mstrLicenseId : const {},
      _$data.containsKey('startAt') ? l$startAt : const {},
      _$data.containsKey('stopAt') ? l$stopAt : const {},
      _$data.containsKey('abeyance') ? l$abeyance : const {},
      _$data.containsKey('abeyanceAt') ? l$abeyanceAt : const {},
      _$data.containsKey('revocation') ? l$revocation : const {},
      _$data.containsKey('revocationAt') ? l$revocationAt : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      l$jaLanguageCodeId,
      l$enLanguageCodeId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$StaffHeldLicensePageEdit<TRes> {
  factory CopyWith$Variables$Mutation$StaffHeldLicensePageEdit(
    Variables$Mutation$StaffHeldLicensePageEdit instance,
    TRes Function(Variables$Mutation$StaffHeldLicensePageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$StaffHeldLicensePageEdit;

  factory CopyWith$Variables$Mutation$StaffHeldLicensePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$StaffHeldLicensePageEdit;

  TRes call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  });
}

class _CopyWithImpl$Variables$Mutation$StaffHeldLicensePageEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffHeldLicensePageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$StaffHeldLicensePageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$StaffHeldLicensePageEdit _instance;

  final TRes Function(Variables$Mutation$StaffHeldLicensePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicenseId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrLicenseId = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? abeyance = _undefined,
    Object? abeyanceAt = _undefined,
    Object? revocation = _undefined,
    Object? revocationAt = _undefined,
    Object? remarks = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
  }) => _then(
    Variables$Mutation$StaffHeldLicensePageEdit._({
      ..._instance._$data,
      if (mstrStaffLicenseId != _undefined && mstrStaffLicenseId != null)
        'mstrStaffLicenseId': (mstrStaffLicenseId as String),
      if (infoStaffId != _undefined) 'infoStaffId': (infoStaffId as String?),
      if (mstrLicenseId != _undefined)
        'mstrLicenseId': (mstrLicenseId as String?),
      if (startAt != _undefined) 'startAt': (startAt as String?),
      if (stopAt != _undefined) 'stopAt': (stopAt as String?),
      if (abeyance != _undefined) 'abeyance': (abeyance as bool?),
      if (abeyanceAt != _undefined) 'abeyanceAt': (abeyanceAt as String?),
      if (revocation != _undefined) 'revocation': (revocation as bool?),
      if (revocationAt != _undefined) 'revocationAt': (revocationAt as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (jaLanguageCodeId != _undefined && jaLanguageCodeId != null)
        'jaLanguageCodeId': (jaLanguageCodeId as String),
      if (enLanguageCodeId != _undefined && enLanguageCodeId != null)
        'enLanguageCodeId': (enLanguageCodeId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$StaffHeldLicensePageEdit<TRes>
    implements CopyWith$Variables$Mutation$StaffHeldLicensePageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$StaffHeldLicensePageEdit(this._res);

  TRes _res;

  call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    String? remarks,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
  }) => _res;
}

class Mutation$StaffHeldLicensePageEdit {
  Mutation$StaffHeldLicensePageEdit({
    this.updateMstrStaffLicenseByMstrStaffLicenseId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$StaffHeldLicensePageEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateMstrStaffLicenseByMstrStaffLicenseId =
        json['updateMstrStaffLicenseByMstrStaffLicenseId'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit(
      updateMstrStaffLicenseByMstrStaffLicenseId:
          l$updateMstrStaffLicenseByMstrStaffLicenseId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId.fromJson(
              (l$updateMstrStaffLicenseByMstrStaffLicenseId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId?
  updateMstrStaffLicenseByMstrStaffLicenseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateMstrStaffLicenseByMstrStaffLicenseId =
        updateMstrStaffLicenseByMstrStaffLicenseId;
    _resultData['updateMstrStaffLicenseByMstrStaffLicenseId'] =
        l$updateMstrStaffLicenseByMstrStaffLicenseId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateMstrStaffLicenseByMstrStaffLicenseId =
        updateMstrStaffLicenseByMstrStaffLicenseId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateMstrStaffLicenseByMstrStaffLicenseId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$StaffHeldLicensePageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateMstrStaffLicenseByMstrStaffLicenseId =
        updateMstrStaffLicenseByMstrStaffLicenseId;
    final lOther$updateMstrStaffLicenseByMstrStaffLicenseId =
        other.updateMstrStaffLicenseByMstrStaffLicenseId;
    if (l$updateMstrStaffLicenseByMstrStaffLicenseId !=
        lOther$updateMstrStaffLicenseByMstrStaffLicenseId) {
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit
    on Mutation$StaffHeldLicensePageEdit {
  CopyWith$Mutation$StaffHeldLicensePageEdit<Mutation$StaffHeldLicensePageEdit>
  get copyWith => CopyWith$Mutation$StaffHeldLicensePageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit<TRes> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit(
    Mutation$StaffHeldLicensePageEdit instance,
    TRes Function(Mutation$StaffHeldLicensePageEdit) then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit;

  TRes call({
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId?
    updateMstrStaffLicenseByMstrStaffLicenseId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get updateMstrStaffLicenseByMstrStaffLicenseId;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit<TRes>
    implements CopyWith$Mutation$StaffHeldLicensePageEdit<TRes> {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit(this._instance, this._then);

  final Mutation$StaffHeldLicensePageEdit _instance;

  final TRes Function(Mutation$StaffHeldLicensePageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateMstrStaffLicenseByMstrStaffLicenseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit(
      updateMstrStaffLicenseByMstrStaffLicenseId:
          updateMstrStaffLicenseByMstrStaffLicenseId == _undefined
          ? _instance.updateMstrStaffLicenseByMstrStaffLicenseId
          : (updateMstrStaffLicenseByMstrStaffLicenseId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get updateMstrStaffLicenseByMstrStaffLicenseId {
    final local$updateMstrStaffLicenseByMstrStaffLicenseId =
        _instance.updateMstrStaffLicenseByMstrStaffLicenseId;
    return local$updateMstrStaffLicenseByMstrStaffLicenseId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
            local$updateMstrStaffLicenseByMstrStaffLicenseId,
            (e) => call(updateMstrStaffLicenseByMstrStaffLicenseId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit<TRes>
    implements CopyWith$Mutation$StaffHeldLicensePageEdit<TRes> {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit(this._res);

  TRes _res;

  call({
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId?
    updateMstrStaffLicenseByMstrStaffLicenseId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
    TRes
  >
  get updateMstrStaffLicenseByMstrStaffLicenseId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId.stub(
        _res,
      );
}

const documentNodeMutationStaffHeldLicensePageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'StaffHeldLicensePageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStaffLicenseId')),
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
          variable: VariableNode(name: NameNode(value: 'mstrLicenseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'startAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stopAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'abeyance')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'abeyanceAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'revocation')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'revocationAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
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
            name: NameNode(value: 'updateMstrStaffLicenseByMstrStaffLicenseId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStaffLicenseId'),
                      value: VariableNode(
                        name: NameNode(value: 'mstrStaffLicenseId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'mstrStaffLicensePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'infoStaffId'),
                            value: VariableNode(
                              name: NameNode(value: 'infoStaffId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrLicenseId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrLicenseId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'startAt'),
                            value: VariableNode(
                              name: NameNode(value: 'startAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'stopAt'),
                            value: VariableNode(
                              name: NameNode(value: 'stopAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'abeyance'),
                            value: VariableNode(
                              name: NameNode(value: 'abeyance'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'abeyanceAt'),
                            value: VariableNode(
                              name: NameNode(value: 'abeyanceAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'revocation'),
                            value: VariableNode(
                              name: NameNode(value: 'revocation'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'revocationAt'),
                            value: VariableNode(
                              name: NameNode(value: 'revocationAt'),
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
                  name: NameNode(value: 'mstrStaffLicense'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'mstrStaffLicenseId'),
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
                        name: NameNode(value: 'mstrLicenseId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'startAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stopAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'abeyance'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'abeyanceAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'revocation'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'revocationAt'),
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
                        name: NameNode(value: 'mstrLicenseByMstrLicenseId'),
                        alias: NameNode(value: 'license'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrLicenseId'),
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
                              name: NameNode(value: 'publicLicense'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'customerLicense'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'organizationLicense'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'updateInterval'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'years'),
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
                                    name: NameNode(value: 'days'),
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
                                    name: NameNode(value: 'minutes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'seconds'),
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
Mutation$StaffHeldLicensePageEdit _parserFn$Mutation$StaffHeldLicensePageEdit(
  Map<String, dynamic> data,
) => Mutation$StaffHeldLicensePageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$StaffHeldLicensePageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$StaffHeldLicensePageEdit?,
    );

class Options$Mutation$StaffHeldLicensePageEdit
    extends graphql.MutationOptions<Mutation$StaffHeldLicensePageEdit> {
  Options$Mutation$StaffHeldLicensePageEdit({
    String? operationName,
    required Variables$Mutation$StaffHeldLicensePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffHeldLicensePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffHeldLicensePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffHeldLicensePageEdit>? update,
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
                     : _parserFn$Mutation$StaffHeldLicensePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffHeldLicensePageEdit,
         parserFn: _parserFn$Mutation$StaffHeldLicensePageEdit,
       );

  final OnMutationCompleted$Mutation$StaffHeldLicensePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$StaffHeldLicensePageEdit
    extends graphql.WatchQueryOptions<Mutation$StaffHeldLicensePageEdit> {
  WatchOptions$Mutation$StaffHeldLicensePageEdit({
    String? operationName,
    required Variables$Mutation$StaffHeldLicensePageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffHeldLicensePageEdit? typedOptimisticResult,
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
         document: documentNodeMutationStaffHeldLicensePageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$StaffHeldLicensePageEdit,
       );
}

extension ClientExtension$Mutation$StaffHeldLicensePageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$StaffHeldLicensePageEdit>>
  mutate$StaffHeldLicensePageEdit(
    Options$Mutation$StaffHeldLicensePageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$StaffHeldLicensePageEdit>
  watchMutation$StaffHeldLicensePageEdit(
    WatchOptions$Mutation$StaffHeldLicensePageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$StaffHeldLicensePageEdit$HookResult {
  Mutation$StaffHeldLicensePageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$StaffHeldLicensePageEdit runMutation;

  final graphql.QueryResult<Mutation$StaffHeldLicensePageEdit> result;
}

Mutation$StaffHeldLicensePageEdit$HookResult
useMutation$StaffHeldLicensePageEdit([
  WidgetOptions$Mutation$StaffHeldLicensePageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$StaffHeldLicensePageEdit(),
  );
  return Mutation$StaffHeldLicensePageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$StaffHeldLicensePageEdit>
useWatchMutation$StaffHeldLicensePageEdit(
  WatchOptions$Mutation$StaffHeldLicensePageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$StaffHeldLicensePageEdit
    extends graphql.MutationOptions<Mutation$StaffHeldLicensePageEdit> {
  WidgetOptions$Mutation$StaffHeldLicensePageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$StaffHeldLicensePageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$StaffHeldLicensePageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$StaffHeldLicensePageEdit>? update,
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
                     : _parserFn$Mutation$StaffHeldLicensePageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationStaffHeldLicensePageEdit,
         parserFn: _parserFn$Mutation$StaffHeldLicensePageEdit,
       );

  final OnMutationCompleted$Mutation$StaffHeldLicensePageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$StaffHeldLicensePageEdit =
    graphql.MultiSourceResult<Mutation$StaffHeldLicensePageEdit> Function(
      Variables$Mutation$StaffHeldLicensePageEdit, {
      Object? optimisticResult,
      Mutation$StaffHeldLicensePageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$StaffHeldLicensePageEdit =
    widgets.Widget Function(
      RunMutation$Mutation$StaffHeldLicensePageEdit,
      graphql.QueryResult<Mutation$StaffHeldLicensePageEdit>?,
    );

class Mutation$StaffHeldLicensePageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$StaffHeldLicensePageEdit> {
  Mutation$StaffHeldLicensePageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$StaffHeldLicensePageEdit? options,
    required Builder$Mutation$StaffHeldLicensePageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$StaffHeldLicensePageEdit(),
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

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId({
    this.mstrStaffLicense,
    this.$__typename = 'UpdateMstrStaffLicensePayload',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffLicense = json['mstrStaffLicense'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
      mstrStaffLicense: l$mstrStaffLicense == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.fromJson(
              (l$mstrStaffLicense as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense?
  mstrStaffLicense;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffLicense = mstrStaffLicense;
    _resultData['mstrStaffLicense'] = l$mstrStaffLicense?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffLicense = mstrStaffLicense;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrStaffLicense, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicense = mstrStaffLicense;
    final lOther$mstrStaffLicense = other.mstrStaffLicense;
    if (l$mstrStaffLicense != lOther$mstrStaffLicense) {
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId
    on Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId;

  TRes call({
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense?
    mstrStaffLicense,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
    TRes
  >
  get mstrStaffLicense;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicense = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
      mstrStaffLicense: mstrStaffLicense == _undefined
          ? _instance.mstrStaffLicense
          : (mstrStaffLicense
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
    TRes
  >
  get mstrStaffLicense {
    final local$mstrStaffLicense = _instance.mstrStaffLicense;
    return local$mstrStaffLicense == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
            local$mstrStaffLicense,
            (e) => call(mstrStaffLicense: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense?
    mstrStaffLicense,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
    TRes
  >
  get mstrStaffLicense =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense({
    required this.mstrStaffLicenseId,
    required this.infoStaffId,
    required this.mstrLicenseId,
    this.startAt,
    required this.stopAt,
    this.abeyance,
    this.abeyanceAt,
    this.revocation,
    this.revocationAt,
    this.remarks,
    this.staff,
    this.license,
    this.$__typename = 'MstrStaffLicense',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStaffLicenseId = json['mstrStaffLicenseId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$startAt = json['startAt'];
    final l$stopAt = json['stopAt'];
    final l$abeyance = json['abeyance'];
    final l$abeyanceAt = json['abeyanceAt'];
    final l$revocation = json['revocation'];
    final l$revocationAt = json['revocationAt'];
    final l$remarks = json['remarks'];
    final l$staff = json['staff'];
    final l$license = json['license'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
      mstrStaffLicenseId: (l$mstrStaffLicenseId as String),
      infoStaffId: (l$infoStaffId as String),
      mstrLicenseId: (l$mstrLicenseId as String),
      startAt: (l$startAt as String?),
      stopAt: (l$stopAt as String),
      abeyance: (l$abeyance as bool?),
      abeyanceAt: (l$abeyanceAt as String?),
      revocation: (l$revocation as bool?),
      revocationAt: (l$revocationAt as String?),
      remarks: (l$remarks as String?),
      staff: l$staff == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff.fromJson(
              (l$staff as Map<String, dynamic>),
            ),
      license: l$license == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license.fromJson(
              (l$license as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStaffLicenseId;

  final String infoStaffId;

  final String mstrLicenseId;

  final String? startAt;

  final String stopAt;

  final bool? abeyance;

  final String? abeyanceAt;

  final bool? revocation;

  final String? revocationAt;

  final String? remarks;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff?
  staff;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license?
  license;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    _resultData['mstrStaffLicenseId'] = l$mstrStaffLicenseId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$startAt = startAt;
    _resultData['startAt'] = l$startAt;
    final l$stopAt = stopAt;
    _resultData['stopAt'] = l$stopAt;
    final l$abeyance = abeyance;
    _resultData['abeyance'] = l$abeyance;
    final l$abeyanceAt = abeyanceAt;
    _resultData['abeyanceAt'] = l$abeyanceAt;
    final l$revocation = revocation;
    _resultData['revocation'] = l$revocation;
    final l$revocationAt = revocationAt;
    _resultData['revocationAt'] = l$revocationAt;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$staff = staff;
    _resultData['staff'] = l$staff?.toJson();
    final l$license = license;
    _resultData['license'] = l$license?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final l$infoStaffId = infoStaffId;
    final l$mstrLicenseId = mstrLicenseId;
    final l$startAt = startAt;
    final l$stopAt = stopAt;
    final l$abeyance = abeyance;
    final l$abeyanceAt = abeyanceAt;
    final l$revocation = revocation;
    final l$revocationAt = revocationAt;
    final l$remarks = remarks;
    final l$staff = staff;
    final l$license = license;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStaffLicenseId,
      l$infoStaffId,
      l$mstrLicenseId,
      l$startAt,
      l$stopAt,
      l$abeyance,
      l$abeyanceAt,
      l$revocation,
      l$revocationAt,
      l$remarks,
      l$staff,
      l$license,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStaffLicenseId = mstrStaffLicenseId;
    final lOther$mstrStaffLicenseId = other.mstrStaffLicenseId;
    if (l$mstrStaffLicenseId != lOther$mstrStaffLicenseId) {
      return false;
    }
    final l$infoStaffId = infoStaffId;
    final lOther$infoStaffId = other.infoStaffId;
    if (l$infoStaffId != lOther$infoStaffId) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$stopAt = stopAt;
    final lOther$stopAt = other.stopAt;
    if (l$stopAt != lOther$stopAt) {
      return false;
    }
    final l$abeyance = abeyance;
    final lOther$abeyance = other.abeyance;
    if (l$abeyance != lOther$abeyance) {
      return false;
    }
    final l$abeyanceAt = abeyanceAt;
    final lOther$abeyanceAt = other.abeyanceAt;
    if (l$abeyanceAt != lOther$abeyanceAt) {
      return false;
    }
    final l$revocation = revocation;
    final lOther$revocation = other.revocation;
    if (l$revocation != lOther$revocation) {
      return false;
    }
    final l$revocationAt = revocationAt;
    final lOther$revocationAt = other.revocationAt;
    if (l$revocationAt != lOther$revocationAt) {
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
    final l$license = license;
    final lOther$license = other.license;
    if (l$license != lOther$license) {
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense;

  TRes call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    String? remarks,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff?
    staff,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license?
    license,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
    TRes
  >
  get staff;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
    TRes
  >
  get license;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStaffLicenseId = _undefined,
    Object? infoStaffId = _undefined,
    Object? mstrLicenseId = _undefined,
    Object? startAt = _undefined,
    Object? stopAt = _undefined,
    Object? abeyance = _undefined,
    Object? abeyanceAt = _undefined,
    Object? revocation = _undefined,
    Object? revocationAt = _undefined,
    Object? remarks = _undefined,
    Object? staff = _undefined,
    Object? license = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
      mstrStaffLicenseId:
          mstrStaffLicenseId == _undefined || mstrStaffLicenseId == null
          ? _instance.mstrStaffLicenseId
          : (mstrStaffLicenseId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      stopAt: stopAt == _undefined || stopAt == null
          ? _instance.stopAt
          : (stopAt as String),
      abeyance: abeyance == _undefined
          ? _instance.abeyance
          : (abeyance as bool?),
      abeyanceAt: abeyanceAt == _undefined
          ? _instance.abeyanceAt
          : (abeyanceAt as String?),
      revocation: revocation == _undefined
          ? _instance.revocation
          : (revocation as bool?),
      revocationAt: revocationAt == _undefined
          ? _instance.revocationAt
          : (revocationAt as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      staff: staff == _undefined
          ? _instance.staff
          : (staff
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff?),
      license: license == _undefined
          ? _instance.license
          : (license
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
    TRes
  >
  get staff {
    final local$staff = _instance.staff;
    return local$staff == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
            local$staff,
            (e) => call(staff: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
    TRes
  >
  get license {
    final local$license = _instance.license;
    return local$license == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
            local$license,
            (e) => call(license: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStaffLicenseId,
    String? infoStaffId,
    String? mstrLicenseId,
    String? startAt,
    String? stopAt,
    bool? abeyance,
    String? abeyanceAt,
    bool? revocation,
    String? revocationAt,
    String? remarks,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff?
    staff,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license?
    license,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
    TRes
  >
  get staff =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
    TRes
  >
  get license =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff({
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

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
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
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user.fromJson(
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

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels?
  labels;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff;

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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels?
    labels,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
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
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff(
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels?
    labels,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user({
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

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
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
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name.fromJson(
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

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
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
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user(
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$staff$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license({
    required this.mstrLicenseId,
    this.code,
    this.detail,
    this.publicLicense,
    this.customerLicense,
    this.organizationLicense,
    this.updateInterval,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.labels,
    this.update_user,
    this.$__typename = 'MstrLicense',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLicenseId = json['mstrLicenseId'];
    final l$code = json['code'];
    final l$detail = json['detail'];
    final l$publicLicense = json['publicLicense'];
    final l$customerLicense = json['customerLicense'];
    final l$organizationLicense = json['organizationLicense'];
    final l$updateInterval = json['updateInterval'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$labels = json['labels'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
      mstrLicenseId: (l$mstrLicenseId as String),
      code: (l$code as String?),
      detail: (l$detail as String?),
      publicLicense: (l$publicLicense as bool?),
      customerLicense: (l$customerLicense as bool?),
      organizationLicense: (l$organizationLicense as bool?),
      updateInterval: l$updateInterval == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval.fromJson(
              (l$updateInterval as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      labels: l$labels == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      update_user: l$update_user == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLicenseId;

  final String? code;

  final String? detail;

  final bool? publicLicense;

  final bool? customerLicense;

  final bool? organizationLicense;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval?
  updateInterval;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels?
  labels;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLicenseId = mstrLicenseId;
    _resultData['mstrLicenseId'] = l$mstrLicenseId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$publicLicense = publicLicense;
    _resultData['publicLicense'] = l$publicLicense;
    final l$customerLicense = customerLicense;
    _resultData['customerLicense'] = l$customerLicense;
    final l$organizationLicense = organizationLicense;
    _resultData['organizationLicense'] = l$organizationLicense;
    final l$updateInterval = updateInterval;
    _resultData['updateInterval'] = l$updateInterval?.toJson();
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
    final l$mstrLicenseId = mstrLicenseId;
    final l$code = code;
    final l$detail = detail;
    final l$publicLicense = publicLicense;
    final l$customerLicense = customerLicense;
    final l$organizationLicense = organizationLicense;
    final l$updateInterval = updateInterval;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$labels = labels;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLicenseId,
      l$code,
      l$detail,
      l$publicLicense,
      l$customerLicense,
      l$organizationLicense,
      l$updateInterval,
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLicenseId = mstrLicenseId;
    final lOther$mstrLicenseId = other.mstrLicenseId;
    if (l$mstrLicenseId != lOther$mstrLicenseId) {
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
    final l$publicLicense = publicLicense;
    final lOther$publicLicense = other.publicLicense;
    if (l$publicLicense != lOther$publicLicense) {
      return false;
    }
    final l$customerLicense = customerLicense;
    final lOther$customerLicense = other.customerLicense;
    if (l$customerLicense != lOther$customerLicense) {
      return false;
    }
    final l$organizationLicense = organizationLicense;
    final lOther$organizationLicense = other.organizationLicense;
    if (l$organizationLicense != lOther$organizationLicense) {
      return false;
    }
    final l$updateInterval = updateInterval;
    final lOther$updateInterval = other.updateInterval;
    if (l$updateInterval != lOther$updateInterval) {
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license;

  TRes call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels?
    labels,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
    TRes
  >
  get updateInterval;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
    TRes
  >
  get labels;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLicenseId = _undefined,
    Object? code = _undefined,
    Object? detail = _undefined,
    Object? publicLicense = _undefined,
    Object? customerLicense = _undefined,
    Object? organizationLicense = _undefined,
    Object? updateInterval = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? labels = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
      mstrLicenseId: mstrLicenseId == _undefined || mstrLicenseId == null
          ? _instance.mstrLicenseId
          : (mstrLicenseId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      publicLicense: publicLicense == _undefined
          ? _instance.publicLicense
          : (publicLicense as bool?),
      customerLicense: customerLicense == _undefined
          ? _instance.customerLicense
          : (customerLicense as bool?),
      organizationLicense: organizationLicense == _undefined
          ? _instance.organizationLicense
          : (organizationLicense as bool?),
      updateInterval: updateInterval == _undefined
          ? _instance.updateInterval
          : (updateInterval
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
    TRes
  >
  get updateInterval {
    final local$updateInterval = _instance.updateInterval;
    return local$updateInterval == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
            local$updateInterval,
            (e) => call(updateInterval: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLicenseId,
    String? code,
    String? detail,
    bool? publicLicense,
    bool? customerLicense,
    bool? organizationLicense,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval?
    updateInterval,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels?
    labels,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
    TRes
  >
  get updateInterval =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
    TRes
  >
  get labels =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval({
    this.years,
    this.months,
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.$__typename = 'Interval',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$years = json['years'];
    final l$months = json['months'];
    final l$days = json['days'];
    final l$hours = json['hours'];
    final l$minutes = json['minutes'];
    final l$seconds = json['seconds'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
      years: (l$years as int?),
      months: (l$months as int?),
      days: (l$days as int?),
      hours: (l$hours as int?),
      minutes: (l$minutes as int?),
      seconds: (l$seconds as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? years;

  final int? months;

  final int? days;

  final int? hours;

  final int? minutes;

  final double? seconds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$years = years;
    _resultData['years'] = l$years;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$years = years;
    final l$months = months;
    final l$days = days;
    final l$hours = hours;
    final l$minutes = minutes;
    final l$seconds = seconds;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$years,
      l$months,
      l$days,
      l$hours,
      l$minutes,
      l$seconds,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval;

  TRes call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? years = _undefined,
    Object? months = _undefined,
    Object? days = _undefined,
    Object? hours = _undefined,
    Object? minutes = _undefined,
    Object? seconds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
      years: years == _undefined ? _instance.years : (years as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$updateInterval(
    this._res,
  );

  TRes _res;

  call({
    int? years,
    int? months,
    int? days,
    int? hours,
    int? minutes,
    double? seconds,
    String? $__typename,
  }) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$labels$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user({
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

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
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
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name.fromJson(
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

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name?
    name,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
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
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user(
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name?
    name,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name.fromJson(
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
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name,
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
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.ja,
    required this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
        (l$ja as Map<String, dynamic>),
      ),
      en: Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
        (l$en as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  ja;

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined || ja == null
          ? _instance.ja
          : (ja
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja),
      en: en == _undefined || en == null
          ? _instance.en
          : (en
                as Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      local$ja,
      (e) => call(ja: e),
    );
  }

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      local$en,
      (e) => call(en: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$StaffHeldLicensePageEdit$updateMstrStaffLicenseByMstrStaffLicenseId$mstrStaffLicense$license$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
