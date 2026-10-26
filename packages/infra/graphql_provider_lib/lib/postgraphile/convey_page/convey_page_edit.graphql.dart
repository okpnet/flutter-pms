import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ConveyPageEdit {
  factory Variables$Mutation$ConveyPageEdit({
    required String transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
  }) => Variables$Mutation$ConveyPageEdit._({
    r'transConveyId': transConveyId,
    if (transVisiterId != null) r'transVisiterId': transVisiterId,
    if (receive != null) r'receive': receive,
    if (conveyAt != null) r'conveyAt': conveyAt,
    if (quantity != null) r'quantity': quantity,
    if (locationHistoryId != null) r'locationHistoryId': locationHistoryId,
    if (locationId != null) r'locationId': locationId,
    if (staffHistoryId != null) r'staffHistoryId': staffHistoryId,
    if (staffId != null) r'staffId': staffId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ConveyPageEdit._(this._$data);

  factory Variables$Mutation$ConveyPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transConveyId = data['transConveyId'];
    result$data['transConveyId'] = (l$transConveyId as String);
    if (data.containsKey('transVisiterId')) {
      final l$transVisiterId = data['transVisiterId'];
      result$data['transVisiterId'] = (l$transVisiterId as String?);
    }
    if (data.containsKey('receive')) {
      final l$receive = data['receive'];
      result$data['receive'] = (l$receive as bool?);
    }
    if (data.containsKey('conveyAt')) {
      final l$conveyAt = data['conveyAt'];
      result$data['conveyAt'] = (l$conveyAt as String?);
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as String?);
    }
    if (data.containsKey('locationHistoryId')) {
      final l$locationHistoryId = data['locationHistoryId'];
      result$data['locationHistoryId'] = (l$locationHistoryId as String?);
    }
    if (data.containsKey('locationId')) {
      final l$locationId = data['locationId'];
      result$data['locationId'] = (l$locationId as String?);
    }
    if (data.containsKey('staffHistoryId')) {
      final l$staffHistoryId = data['staffHistoryId'];
      result$data['staffHistoryId'] = (l$staffHistoryId as String?);
    }
    if (data.containsKey('staffId')) {
      final l$staffId = data['staffId'];
      result$data['staffId'] = (l$staffId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ConveyPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transConveyId => (_$data['transConveyId'] as String);

  String? get transVisiterId => (_$data['transVisiterId'] as String?);

  bool? get receive => (_$data['receive'] as bool?);

  String? get conveyAt => (_$data['conveyAt'] as String?);

  String? get quantity => (_$data['quantity'] as String?);

  String? get locationHistoryId => (_$data['locationHistoryId'] as String?);

  String? get locationId => (_$data['locationId'] as String?);

  String? get staffHistoryId => (_$data['staffHistoryId'] as String?);

  String? get staffId => (_$data['staffId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transConveyId = transConveyId;
    result$data['transConveyId'] = l$transConveyId;
    if (_$data.containsKey('transVisiterId')) {
      final l$transVisiterId = transVisiterId;
      result$data['transVisiterId'] = l$transVisiterId;
    }
    if (_$data.containsKey('receive')) {
      final l$receive = receive;
      result$data['receive'] = l$receive;
    }
    if (_$data.containsKey('conveyAt')) {
      final l$conveyAt = conveyAt;
      result$data['conveyAt'] = l$conveyAt;
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    if (_$data.containsKey('locationHistoryId')) {
      final l$locationHistoryId = locationHistoryId;
      result$data['locationHistoryId'] = l$locationHistoryId;
    }
    if (_$data.containsKey('locationId')) {
      final l$locationId = locationId;
      result$data['locationId'] = l$locationId;
    }
    if (_$data.containsKey('staffHistoryId')) {
      final l$staffHistoryId = staffHistoryId;
      result$data['staffHistoryId'] = l$staffHistoryId;
    }
    if (_$data.containsKey('staffId')) {
      final l$staffId = staffId;
      result$data['staffId'] = l$staffId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ConveyPageEdit<Variables$Mutation$ConveyPageEdit>
  get copyWith => CopyWith$Variables$Mutation$ConveyPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ConveyPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConveyId = transConveyId;
    final lOther$transConveyId = other.transConveyId;
    if (l$transConveyId != lOther$transConveyId) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (_$data.containsKey('transVisiterId') !=
        other._$data.containsKey('transVisiterId')) {
      return false;
    }
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$receive = receive;
    final lOther$receive = other.receive;
    if (_$data.containsKey('receive') != other._$data.containsKey('receive')) {
      return false;
    }
    if (l$receive != lOther$receive) {
      return false;
    }
    final l$conveyAt = conveyAt;
    final lOther$conveyAt = other.conveyAt;
    if (_$data.containsKey('conveyAt') !=
        other._$data.containsKey('conveyAt')) {
      return false;
    }
    if (l$conveyAt != lOther$conveyAt) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$locationHistoryId = locationHistoryId;
    final lOther$locationHistoryId = other.locationHistoryId;
    if (_$data.containsKey('locationHistoryId') !=
        other._$data.containsKey('locationHistoryId')) {
      return false;
    }
    if (l$locationHistoryId != lOther$locationHistoryId) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (_$data.containsKey('locationId') !=
        other._$data.containsKey('locationId')) {
      return false;
    }
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$staffHistoryId = staffHistoryId;
    final lOther$staffHistoryId = other.staffHistoryId;
    if (_$data.containsKey('staffHistoryId') !=
        other._$data.containsKey('staffHistoryId')) {
      return false;
    }
    if (l$staffHistoryId != lOther$staffHistoryId) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (_$data.containsKey('staffId') != other._$data.containsKey('staffId')) {
      return false;
    }
    if (l$staffId != lOther$staffId) {
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
    final l$transConveyId = transConveyId;
    final l$transVisiterId = transVisiterId;
    final l$receive = receive;
    final l$conveyAt = conveyAt;
    final l$quantity = quantity;
    final l$locationHistoryId = locationHistoryId;
    final l$locationId = locationId;
    final l$staffHistoryId = staffHistoryId;
    final l$staffId = staffId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transConveyId,
      _$data.containsKey('transVisiterId') ? l$transVisiterId : const {},
      _$data.containsKey('receive') ? l$receive : const {},
      _$data.containsKey('conveyAt') ? l$conveyAt : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('locationHistoryId') ? l$locationHistoryId : const {},
      _$data.containsKey('locationId') ? l$locationId : const {},
      _$data.containsKey('staffHistoryId') ? l$staffHistoryId : const {},
      _$data.containsKey('staffId') ? l$staffId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ConveyPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ConveyPageEdit(
    Variables$Mutation$ConveyPageEdit instance,
    TRes Function(Variables$Mutation$ConveyPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ConveyPageEdit;

  factory CopyWith$Variables$Mutation$ConveyPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ConveyPageEdit;

  TRes call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ConveyPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ConveyPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ConveyPageEdit(this._instance, this._then);

  final Variables$Mutation$ConveyPageEdit _instance;

  final TRes Function(Variables$Mutation$ConveyPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transConveyId = _undefined,
    Object? transVisiterId = _undefined,
    Object? receive = _undefined,
    Object? conveyAt = _undefined,
    Object? quantity = _undefined,
    Object? locationHistoryId = _undefined,
    Object? locationId = _undefined,
    Object? staffHistoryId = _undefined,
    Object? staffId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ConveyPageEdit._({
      ..._instance._$data,
      if (transConveyId != _undefined && transConveyId != null)
        'transConveyId': (transConveyId as String),
      if (transVisiterId != _undefined)
        'transVisiterId': (transVisiterId as String?),
      if (receive != _undefined) 'receive': (receive as bool?),
      if (conveyAt != _undefined) 'conveyAt': (conveyAt as String?),
      if (quantity != _undefined) 'quantity': (quantity as String?),
      if (locationHistoryId != _undefined)
        'locationHistoryId': (locationHistoryId as String?),
      if (locationId != _undefined) 'locationId': (locationId as String?),
      if (staffHistoryId != _undefined)
        'staffHistoryId': (staffHistoryId as String?),
      if (staffId != _undefined) 'staffId': (staffId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ConveyPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ConveyPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ConveyPageEdit(this._res);

  TRes _res;

  call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
  }) => _res;
}

class Mutation$ConveyPageEdit {
  Mutation$ConveyPageEdit({
    this.updateTransConveyByTransConveyId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ConveyPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransConveyByTransConveyId =
        json['updateTransConveyByTransConveyId'];
    final l$$__typename = json['__typename'];
    return Mutation$ConveyPageEdit(
      updateTransConveyByTransConveyId:
          l$updateTransConveyByTransConveyId == null
          ? null
          : Mutation$ConveyPageEdit$updateTransConveyByTransConveyId.fromJson(
              (l$updateTransConveyByTransConveyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ConveyPageEdit$updateTransConveyByTransConveyId?
  updateTransConveyByTransConveyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransConveyByTransConveyId = updateTransConveyByTransConveyId;
    _resultData['updateTransConveyByTransConveyId'] =
        l$updateTransConveyByTransConveyId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransConveyByTransConveyId = updateTransConveyByTransConveyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTransConveyByTransConveyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConveyPageEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransConveyByTransConveyId = updateTransConveyByTransConveyId;
    final lOther$updateTransConveyByTransConveyId =
        other.updateTransConveyByTransConveyId;
    if (l$updateTransConveyByTransConveyId !=
        lOther$updateTransConveyByTransConveyId) {
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

extension UtilityExtension$Mutation$ConveyPageEdit on Mutation$ConveyPageEdit {
  CopyWith$Mutation$ConveyPageEdit<Mutation$ConveyPageEdit> get copyWith =>
      CopyWith$Mutation$ConveyPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ConveyPageEdit<TRes> {
  factory CopyWith$Mutation$ConveyPageEdit(
    Mutation$ConveyPageEdit instance,
    TRes Function(Mutation$ConveyPageEdit) then,
  ) = _CopyWithImpl$Mutation$ConveyPageEdit;

  factory CopyWith$Mutation$ConveyPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ConveyPageEdit;

  TRes call({
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId?
    updateTransConveyByTransConveyId,
    String? $__typename,
  });
  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<TRes>
  get updateTransConveyByTransConveyId;
}

class _CopyWithImpl$Mutation$ConveyPageEdit<TRes>
    implements CopyWith$Mutation$ConveyPageEdit<TRes> {
  _CopyWithImpl$Mutation$ConveyPageEdit(this._instance, this._then);

  final Mutation$ConveyPageEdit _instance;

  final TRes Function(Mutation$ConveyPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransConveyByTransConveyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConveyPageEdit(
      updateTransConveyByTransConveyId:
          updateTransConveyByTransConveyId == _undefined
          ? _instance.updateTransConveyByTransConveyId
          : (updateTransConveyByTransConveyId
                as Mutation$ConveyPageEdit$updateTransConveyByTransConveyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<TRes>
  get updateTransConveyByTransConveyId {
    final local$updateTransConveyByTransConveyId =
        _instance.updateTransConveyByTransConveyId;
    return local$updateTransConveyByTransConveyId == null
        ? CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
            local$updateTransConveyByTransConveyId,
            (e) => call(updateTransConveyByTransConveyId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ConveyPageEdit<TRes>
    implements CopyWith$Mutation$ConveyPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ConveyPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId?
    updateTransConveyByTransConveyId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<TRes>
  get updateTransConveyByTransConveyId =>
      CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId.stub(
        _res,
      );
}

const documentNodeMutationConveyPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ConveyPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transConveyId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transVisiterId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'receive')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'conveyAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'quantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'locationHistoryId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'locationId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'staffHistoryId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'staffId')),
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
            name: NameNode(value: 'updateTransConveyByTransConveyId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transConveyId'),
                      value: VariableNode(
                        name: NameNode(value: 'transConveyId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transConveyPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transVisiterId'),
                            value: VariableNode(
                              name: NameNode(value: 'transVisiterId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'receive'),
                            value: VariableNode(
                              name: NameNode(value: 'receive'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'conveyAt'),
                            value: VariableNode(
                              name: NameNode(value: 'conveyAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'quantity'),
                            value: VariableNode(
                              name: NameNode(value: 'quantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'locationHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'locationHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'locationId'),
                            value: VariableNode(
                              name: NameNode(value: 'locationId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'staffHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'staffHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'staffId'),
                            value: VariableNode(
                              name: NameNode(value: 'staffId'),
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
                  name: NameNode(value: 'transConvey'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transConveyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transVisiterId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'receive'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'conveyAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'quantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'locationHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'locationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'staffHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'staffId'),
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
Mutation$ConveyPageEdit _parserFn$Mutation$ConveyPageEdit(
  Map<String, dynamic> data,
) => Mutation$ConveyPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ConveyPageEdit = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ConveyPageEdit?,
);

class Options$Mutation$ConveyPageEdit
    extends graphql.MutationOptions<Mutation$ConveyPageEdit> {
  Options$Mutation$ConveyPageEdit({
    String? operationName,
    required Variables$Mutation$ConveyPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ConveyPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ConveyPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ConveyPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ConveyPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationConveyPageEdit,
         parserFn: _parserFn$Mutation$ConveyPageEdit,
       );

  final OnMutationCompleted$Mutation$ConveyPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ConveyPageEdit
    extends graphql.WatchQueryOptions<Mutation$ConveyPageEdit> {
  WatchOptions$Mutation$ConveyPageEdit({
    String? operationName,
    required Variables$Mutation$ConveyPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ConveyPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationConveyPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ConveyPageEdit,
       );
}

extension ClientExtension$Mutation$ConveyPageEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ConveyPageEdit>> mutate$ConveyPageEdit(
    Options$Mutation$ConveyPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ConveyPageEdit> watchMutation$ConveyPageEdit(
    WatchOptions$Mutation$ConveyPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ConveyPageEdit$HookResult {
  Mutation$ConveyPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ConveyPageEdit runMutation;

  final graphql.QueryResult<Mutation$ConveyPageEdit> result;
}

Mutation$ConveyPageEdit$HookResult useMutation$ConveyPageEdit([
  WidgetOptions$Mutation$ConveyPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ConveyPageEdit(),
  );
  return Mutation$ConveyPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ConveyPageEdit>
useWatchMutation$ConveyPageEdit(WatchOptions$Mutation$ConveyPageEdit options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ConveyPageEdit
    extends graphql.MutationOptions<Mutation$ConveyPageEdit> {
  WidgetOptions$Mutation$ConveyPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ConveyPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ConveyPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ConveyPageEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ConveyPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationConveyPageEdit,
         parserFn: _parserFn$Mutation$ConveyPageEdit,
       );

  final OnMutationCompleted$Mutation$ConveyPageEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ConveyPageEdit =
    graphql.MultiSourceResult<Mutation$ConveyPageEdit> Function(
      Variables$Mutation$ConveyPageEdit, {
      Object? optimisticResult,
      Mutation$ConveyPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ConveyPageEdit = widgets.Widget Function(
  RunMutation$Mutation$ConveyPageEdit,
  graphql.QueryResult<Mutation$ConveyPageEdit>?,
);

class Mutation$ConveyPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ConveyPageEdit> {
  Mutation$ConveyPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ConveyPageEdit? options,
    required Builder$Mutation$ConveyPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ConveyPageEdit(),
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

class Mutation$ConveyPageEdit$updateTransConveyByTransConveyId {
  Mutation$ConveyPageEdit$updateTransConveyByTransConveyId({
    this.transConvey,
    this.$__typename = 'UpdateTransConveyPayload',
  });

  factory Mutation$ConveyPageEdit$updateTransConveyByTransConveyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transConvey = json['transConvey'];
    final l$$__typename = json['__typename'];
    return Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
      transConvey: l$transConvey == null
          ? null
          : Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey.fromJson(
              (l$transConvey as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey?
  transConvey;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transConvey = transConvey;
    _resultData['transConvey'] = l$transConvey?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transConvey = transConvey;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transConvey, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ConveyPageEdit$updateTransConveyByTransConveyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConvey = transConvey;
    final lOther$transConvey = other.transConvey;
    if (l$transConvey != lOther$transConvey) {
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

extension UtilityExtension$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId
    on Mutation$ConveyPageEdit$updateTransConveyByTransConveyId {
  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId
  >
  get copyWith =>
      CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
  TRes
> {
  factory CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId instance,
    TRes Function(Mutation$ConveyPageEdit$updateTransConveyByTransConveyId)
    then,
  ) = _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId;

  factory CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId;

  TRes call({
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey?
    transConvey,
    String? $__typename,
  });
  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
    TRes
  >
  get transConvey;
}

class _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
  TRes
>
    implements
        CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
          TRes
        > {
  _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
    this._instance,
    this._then,
  );

  final Mutation$ConveyPageEdit$updateTransConveyByTransConveyId _instance;

  final TRes Function(Mutation$ConveyPageEdit$updateTransConveyByTransConveyId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transConvey = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
      transConvey: transConvey == _undefined
          ? _instance.transConvey
          : (transConvey
                as Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
    TRes
  >
  get transConvey {
    final local$transConvey = _instance.transConvey;
    return local$transConvey == null
        ? CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
            local$transConvey,
            (e) => call(transConvey: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
  TRes
>
    implements
        CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey?
    transConvey,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
    TRes
  >
  get transConvey =>
      CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey.stub(
        _res,
      );
}

class Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey {
  Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey({
    required this.transConveyId,
    required this.transVisiterId,
    this.receive,
    this.conveyAt,
    this.quantity,
    required this.locationHistoryId,
    required this.locationId,
    required this.staffHistoryId,
    required this.staffId,
    this.remarks,
    this.$__typename = 'TransConvey',
  });

  factory Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transConveyId = json['transConveyId'];
    final l$transVisiterId = json['transVisiterId'];
    final l$receive = json['receive'];
    final l$conveyAt = json['conveyAt'];
    final l$quantity = json['quantity'];
    final l$locationHistoryId = json['locationHistoryId'];
    final l$locationId = json['locationId'];
    final l$staffHistoryId = json['staffHistoryId'];
    final l$staffId = json['staffId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
      transConveyId: (l$transConveyId as String),
      transVisiterId: (l$transVisiterId as String),
      receive: (l$receive as bool?),
      conveyAt: (l$conveyAt as String?),
      quantity: (l$quantity as String?),
      locationHistoryId: (l$locationHistoryId as String),
      locationId: (l$locationId as String),
      staffHistoryId: (l$staffHistoryId as String),
      staffId: (l$staffId as String),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transConveyId;

  final String transVisiterId;

  final bool? receive;

  final String? conveyAt;

  final String? quantity;

  final String locationHistoryId;

  final String locationId;

  final String staffHistoryId;

  final String staffId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transConveyId = transConveyId;
    _resultData['transConveyId'] = l$transConveyId;
    final l$transVisiterId = transVisiterId;
    _resultData['transVisiterId'] = l$transVisiterId;
    final l$receive = receive;
    _resultData['receive'] = l$receive;
    final l$conveyAt = conveyAt;
    _resultData['conveyAt'] = l$conveyAt;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$locationHistoryId = locationHistoryId;
    _resultData['locationHistoryId'] = l$locationHistoryId;
    final l$locationId = locationId;
    _resultData['locationId'] = l$locationId;
    final l$staffHistoryId = staffHistoryId;
    _resultData['staffHistoryId'] = l$staffHistoryId;
    final l$staffId = staffId;
    _resultData['staffId'] = l$staffId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transConveyId = transConveyId;
    final l$transVisiterId = transVisiterId;
    final l$receive = receive;
    final l$conveyAt = conveyAt;
    final l$quantity = quantity;
    final l$locationHistoryId = locationHistoryId;
    final l$locationId = locationId;
    final l$staffHistoryId = staffHistoryId;
    final l$staffId = staffId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transConveyId,
      l$transVisiterId,
      l$receive,
      l$conveyAt,
      l$quantity,
      l$locationHistoryId,
      l$locationId,
      l$staffHistoryId,
      l$staffId,
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
            is! Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transConveyId = transConveyId;
    final lOther$transConveyId = other.transConveyId;
    if (l$transConveyId != lOther$transConveyId) {
      return false;
    }
    final l$transVisiterId = transVisiterId;
    final lOther$transVisiterId = other.transVisiterId;
    if (l$transVisiterId != lOther$transVisiterId) {
      return false;
    }
    final l$receive = receive;
    final lOther$receive = other.receive;
    if (l$receive != lOther$receive) {
      return false;
    }
    final l$conveyAt = conveyAt;
    final lOther$conveyAt = other.conveyAt;
    if (l$conveyAt != lOther$conveyAt) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$locationHistoryId = locationHistoryId;
    final lOther$locationHistoryId = other.locationHistoryId;
    if (l$locationHistoryId != lOther$locationHistoryId) {
      return false;
    }
    final l$locationId = locationId;
    final lOther$locationId = other.locationId;
    if (l$locationId != lOther$locationId) {
      return false;
    }
    final l$staffHistoryId = staffHistoryId;
    final lOther$staffHistoryId = other.staffHistoryId;
    if (l$staffHistoryId != lOther$staffHistoryId) {
      return false;
    }
    final l$staffId = staffId;
    final lOther$staffId = other.staffId;
    if (l$staffId != lOther$staffId) {
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

extension UtilityExtension$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey
    on Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey {
  CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey
  >
  get copyWith =>
      CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
  TRes
> {
  factory CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey
    instance,
    TRes Function(
      Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey,
    )
    then,
  ) = _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey;

  factory CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey;

  TRes call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
  TRes
>
    implements
        CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
          TRes
        > {
  _CopyWithImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
    this._instance,
    this._then,
  );

  final Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey
  _instance;

  final TRes Function(
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transConveyId = _undefined,
    Object? transVisiterId = _undefined,
    Object? receive = _undefined,
    Object? conveyAt = _undefined,
    Object? quantity = _undefined,
    Object? locationHistoryId = _undefined,
    Object? locationId = _undefined,
    Object? staffHistoryId = _undefined,
    Object? staffId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
      transConveyId: transConveyId == _undefined || transConveyId == null
          ? _instance.transConveyId
          : (transConveyId as String),
      transVisiterId: transVisiterId == _undefined || transVisiterId == null
          ? _instance.transVisiterId
          : (transVisiterId as String),
      receive: receive == _undefined ? _instance.receive : (receive as bool?),
      conveyAt: conveyAt == _undefined
          ? _instance.conveyAt
          : (conveyAt as String?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      locationHistoryId:
          locationHistoryId == _undefined || locationHistoryId == null
          ? _instance.locationHistoryId
          : (locationHistoryId as String),
      locationId: locationId == _undefined || locationId == null
          ? _instance.locationId
          : (locationId as String),
      staffHistoryId: staffHistoryId == _undefined || staffHistoryId == null
          ? _instance.staffHistoryId
          : (staffHistoryId as String),
      staffId: staffId == _undefined || staffId == null
          ? _instance.staffId
          : (staffId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
  TRes
>
    implements
        CopyWith$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ConveyPageEdit$updateTransConveyByTransConveyId$transConvey(
    this._res,
  );

  TRes _res;

  call({
    String? transConveyId,
    String? transVisiterId,
    bool? receive,
    String? conveyAt,
    String? quantity,
    String? locationHistoryId,
    String? locationId,
    String? staffHistoryId,
    String? staffId,
    String? remarks,
    String? $__typename,
  }) => _res;
}
