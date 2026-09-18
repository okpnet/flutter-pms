import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ShipOrderEdit {
  factory Variables$Mutation$ShipOrderEdit({
    required String transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$ShipOrderEdit._({
    r'transShippingId': transShippingId,
    if (transOrderId != null) r'transOrderId': transOrderId,
    if (edtimatedShippingDate != null)
      r'edtimatedShippingDate': edtimatedShippingDate,
    if (code != null) r'code': code,
    if (estimatedArrivalDate != null)
      r'estimatedArrivalDate': estimatedArrivalDate,
    if (historyMstrStakeholderId != null)
      r'historyMstrStakeholderId': historyMstrStakeholderId,
    if (mstrStakeholderId != null) r'mstrStakeholderId': mstrStakeholderId,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$ShipOrderEdit._(this._$data);

  factory Variables$Mutation$ShipOrderEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transShippingId = data['transShippingId'];
    result$data['transShippingId'] = (l$transShippingId as String);
    if (data.containsKey('transOrderId')) {
      final l$transOrderId = data['transOrderId'];
      result$data['transOrderId'] = (l$transOrderId as String?);
    }
    if (data.containsKey('edtimatedShippingDate')) {
      final l$edtimatedShippingDate = data['edtimatedShippingDate'];
      result$data['edtimatedShippingDate'] =
          (l$edtimatedShippingDate as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = data['estimatedArrivalDate'];
      result$data['estimatedArrivalDate'] = (l$estimatedArrivalDate as String?);
    }
    if (data.containsKey('historyMstrStakeholderId')) {
      final l$historyMstrStakeholderId = data['historyMstrStakeholderId'];
      result$data['historyMstrStakeholderId'] =
          (l$historyMstrStakeholderId as String?);
    }
    if (data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = data['mstrStakeholderId'];
      result$data['mstrStakeholderId'] = (l$mstrStakeholderId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
    return Variables$Mutation$ShipOrderEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingId => (_$data['transShippingId'] as String);

  String? get transOrderId => (_$data['transOrderId'] as String?);

  String? get edtimatedShippingDate =>
      (_$data['edtimatedShippingDate'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get estimatedArrivalDate =>
      (_$data['estimatedArrivalDate'] as String?);

  String? get historyMstrStakeholderId =>
      (_$data['historyMstrStakeholderId'] as String?);

  String? get mstrStakeholderId => (_$data['mstrStakeholderId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingId = transShippingId;
    result$data['transShippingId'] = l$transShippingId;
    if (_$data.containsKey('transOrderId')) {
      final l$transOrderId = transOrderId;
      result$data['transOrderId'] = l$transOrderId;
    }
    if (_$data.containsKey('edtimatedShippingDate')) {
      final l$edtimatedShippingDate = edtimatedShippingDate;
      result$data['edtimatedShippingDate'] = l$edtimatedShippingDate;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = estimatedArrivalDate;
      result$data['estimatedArrivalDate'] = l$estimatedArrivalDate;
    }
    if (_$data.containsKey('historyMstrStakeholderId')) {
      final l$historyMstrStakeholderId = historyMstrStakeholderId;
      result$data['historyMstrStakeholderId'] = l$historyMstrStakeholderId;
    }
    if (_$data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = mstrStakeholderId;
      result$data['mstrStakeholderId'] = l$mstrStakeholderId;
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

  CopyWith$Variables$Mutation$ShipOrderEdit<Variables$Mutation$ShipOrderEdit>
  get copyWith => CopyWith$Variables$Mutation$ShipOrderEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ShipOrderEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingId = transShippingId;
    final lOther$transShippingId = other.transShippingId;
    if (l$transShippingId != lOther$transShippingId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (_$data.containsKey('transOrderId') !=
        other._$data.containsKey('transOrderId')) {
      return false;
    }
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final lOther$edtimatedShippingDate = other.edtimatedShippingDate;
    if (_$data.containsKey('edtimatedShippingDate') !=
        other._$data.containsKey('edtimatedShippingDate')) {
      return false;
    }
    if (l$edtimatedShippingDate != lOther$edtimatedShippingDate) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (_$data.containsKey('code') != other._$data.containsKey('code')) {
      return false;
    }
    if (l$code != lOther$code) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (_$data.containsKey('estimatedArrivalDate') !=
        other._$data.containsKey('estimatedArrivalDate')) {
      return false;
    }
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
      return false;
    }
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final lOther$historyMstrStakeholderId = other.historyMstrStakeholderId;
    if (_$data.containsKey('historyMstrStakeholderId') !=
        other._$data.containsKey('historyMstrStakeholderId')) {
      return false;
    }
    if (l$historyMstrStakeholderId != lOther$historyMstrStakeholderId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (_$data.containsKey('mstrStakeholderId') !=
        other._$data.containsKey('mstrStakeholderId')) {
      return false;
    }
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
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
    final l$transShippingId = transShippingId;
    final l$transOrderId = transOrderId;
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$transShippingId,
      _$data.containsKey('transOrderId') ? l$transOrderId : const {},
      _$data.containsKey('edtimatedShippingDate')
          ? l$edtimatedShippingDate
          : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('estimatedArrivalDate')
          ? l$estimatedArrivalDate
          : const {},
      _$data.containsKey('historyMstrStakeholderId')
          ? l$historyMstrStakeholderId
          : const {},
      _$data.containsKey('mstrStakeholderId') ? l$mstrStakeholderId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ShipOrderEdit<TRes> {
  factory CopyWith$Variables$Mutation$ShipOrderEdit(
    Variables$Mutation$ShipOrderEdit instance,
    TRes Function(Variables$Mutation$ShipOrderEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ShipOrderEdit;

  factory CopyWith$Variables$Mutation$ShipOrderEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ShipOrderEdit;

  TRes call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$ShipOrderEdit<TRes>
    implements CopyWith$Variables$Mutation$ShipOrderEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ShipOrderEdit(this._instance, this._then);

  final Variables$Mutation$ShipOrderEdit _instance;

  final TRes Function(Variables$Mutation$ShipOrderEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingId = _undefined,
    Object? transOrderId = _undefined,
    Object? edtimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? historyMstrStakeholderId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$ShipOrderEdit._({
      ..._instance._$data,
      if (transShippingId != _undefined && transShippingId != null)
        'transShippingId': (transShippingId as String),
      if (transOrderId != _undefined) 'transOrderId': (transOrderId as String?),
      if (edtimatedShippingDate != _undefined)
        'edtimatedShippingDate': (edtimatedShippingDate as String?),
      if (code != _undefined) 'code': (code as String?),
      if (estimatedArrivalDate != _undefined)
        'estimatedArrivalDate': (estimatedArrivalDate as String?),
      if (historyMstrStakeholderId != _undefined)
        'historyMstrStakeholderId': (historyMstrStakeholderId as String?),
      if (mstrStakeholderId != _undefined)
        'mstrStakeholderId': (mstrStakeholderId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ShipOrderEdit<TRes>
    implements CopyWith$Variables$Mutation$ShipOrderEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ShipOrderEdit(this._res);

  TRes _res;

  call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$ShipOrderEdit {
  Mutation$ShipOrderEdit({
    this.updateTransShipOrderByTransShippingId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ShipOrderEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransShipOrderByTransShippingId =
        json['updateTransShipOrderByTransShippingId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShipOrderEdit(
      updateTransShipOrderByTransShippingId:
          l$updateTransShipOrderByTransShippingId == null
          ? null
          : Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId.fromJson(
              (l$updateTransShipOrderByTransShippingId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId?
  updateTransShipOrderByTransShippingId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransShipOrderByTransShippingId =
        updateTransShipOrderByTransShippingId;
    _resultData['updateTransShipOrderByTransShippingId'] =
        l$updateTransShipOrderByTransShippingId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransShipOrderByTransShippingId =
        updateTransShipOrderByTransShippingId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransShipOrderByTransShippingId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ShipOrderEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransShipOrderByTransShippingId =
        updateTransShipOrderByTransShippingId;
    final lOther$updateTransShipOrderByTransShippingId =
        other.updateTransShipOrderByTransShippingId;
    if (l$updateTransShipOrderByTransShippingId !=
        lOther$updateTransShipOrderByTransShippingId) {
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

extension UtilityExtension$Mutation$ShipOrderEdit on Mutation$ShipOrderEdit {
  CopyWith$Mutation$ShipOrderEdit<Mutation$ShipOrderEdit> get copyWith =>
      CopyWith$Mutation$ShipOrderEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ShipOrderEdit<TRes> {
  factory CopyWith$Mutation$ShipOrderEdit(
    Mutation$ShipOrderEdit instance,
    TRes Function(Mutation$ShipOrderEdit) then,
  ) = _CopyWithImpl$Mutation$ShipOrderEdit;

  factory CopyWith$Mutation$ShipOrderEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ShipOrderEdit;

  TRes call({
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId?
    updateTransShipOrderByTransShippingId,
    String? $__typename,
  });
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<TRes>
  get updateTransShipOrderByTransShippingId;
}

class _CopyWithImpl$Mutation$ShipOrderEdit<TRes>
    implements CopyWith$Mutation$ShipOrderEdit<TRes> {
  _CopyWithImpl$Mutation$ShipOrderEdit(this._instance, this._then);

  final Mutation$ShipOrderEdit _instance;

  final TRes Function(Mutation$ShipOrderEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransShipOrderByTransShippingId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShipOrderEdit(
      updateTransShipOrderByTransShippingId:
          updateTransShipOrderByTransShippingId == _undefined
          ? _instance.updateTransShipOrderByTransShippingId
          : (updateTransShipOrderByTransShippingId
                as Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<TRes>
  get updateTransShipOrderByTransShippingId {
    final local$updateTransShipOrderByTransShippingId =
        _instance.updateTransShipOrderByTransShippingId;
    return local$updateTransShipOrderByTransShippingId == null
        ? CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
            local$updateTransShipOrderByTransShippingId,
            (e) => call(updateTransShipOrderByTransShippingId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShipOrderEdit<TRes>
    implements CopyWith$Mutation$ShipOrderEdit<TRes> {
  _CopyWithStubImpl$Mutation$ShipOrderEdit(this._res);

  TRes _res;

  call({
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId?
    updateTransShipOrderByTransShippingId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<TRes>
  get updateTransShipOrderByTransShippingId =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId.stub(
        _res,
      );
}

const documentNodeMutationShipOrderEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ShipOrderEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transShippingId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transOrderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'edtimatedShippingDate'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'code')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'estimatedArrivalDate')),
          type: NamedTypeNode(name: NameNode(value: 'Date'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'historyMstrStakeholderId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStakeholderId')),
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
            name: NameNode(value: 'updateTransShipOrderByTransShippingId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingId'),
                      value: VariableNode(
                        name: NameNode(value: 'transShippingId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transShipOrderPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transOrderId'),
                            value: VariableNode(
                              name: NameNode(value: 'transOrderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'edtimatedShippingDate'),
                            value: VariableNode(
                              name: NameNode(value: 'edtimatedShippingDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'code'),
                            value: VariableNode(name: NameNode(value: 'code')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'estimatedArrivalDate'),
                            value: VariableNode(
                              name: NameNode(value: 'estimatedArrivalDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'historyMstrStakeholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'historyMstrStakeholderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakeholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakeholderId'),
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
                  name: NameNode(value: 'transShipOrder'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transShippingId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transOrderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'edtimatedShippingDate'),
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
                        name: NameNode(value: 'estimatedArrivalDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'historyMstrStakeholderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderId'),
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
                        name: NameNode(value: 'symbol'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'transShippingOrderDetailsByTransShippingId',
                        ),
                        alias: null,
                        arguments: [],
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
                                      value: 'transShippingOrderDetailId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'transOrderDetailId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'shippingQuantity'),
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
Mutation$ShipOrderEdit _parserFn$Mutation$ShipOrderEdit(
  Map<String, dynamic> data,
) => Mutation$ShipOrderEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ShipOrderEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$ShipOrderEdit?);

class Options$Mutation$ShipOrderEdit
    extends graphql.MutationOptions<Mutation$ShipOrderEdit> {
  Options$Mutation$ShipOrderEdit({
    String? operationName,
    required Variables$Mutation$ShipOrderEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShipOrderEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShipOrderEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShipOrderEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ShipOrderEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShipOrderEdit,
         parserFn: _parserFn$Mutation$ShipOrderEdit,
       );

  final OnMutationCompleted$Mutation$ShipOrderEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ShipOrderEdit
    extends graphql.WatchQueryOptions<Mutation$ShipOrderEdit> {
  WatchOptions$Mutation$ShipOrderEdit({
    String? operationName,
    required Variables$Mutation$ShipOrderEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShipOrderEdit? typedOptimisticResult,
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
         document: documentNodeMutationShipOrderEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ShipOrderEdit,
       );
}

extension ClientExtension$Mutation$ShipOrderEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ShipOrderEdit>> mutate$ShipOrderEdit(
    Options$Mutation$ShipOrderEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ShipOrderEdit> watchMutation$ShipOrderEdit(
    WatchOptions$Mutation$ShipOrderEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ShipOrderEdit$HookResult {
  Mutation$ShipOrderEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ShipOrderEdit runMutation;

  final graphql.QueryResult<Mutation$ShipOrderEdit> result;
}

Mutation$ShipOrderEdit$HookResult useMutation$ShipOrderEdit([
  WidgetOptions$Mutation$ShipOrderEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ShipOrderEdit(),
  );
  return Mutation$ShipOrderEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ShipOrderEdit> useWatchMutation$ShipOrderEdit(
  WatchOptions$Mutation$ShipOrderEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ShipOrderEdit
    extends graphql.MutationOptions<Mutation$ShipOrderEdit> {
  WidgetOptions$Mutation$ShipOrderEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShipOrderEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShipOrderEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShipOrderEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$ShipOrderEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShipOrderEdit,
         parserFn: _parserFn$Mutation$ShipOrderEdit,
       );

  final OnMutationCompleted$Mutation$ShipOrderEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ShipOrderEdit =
    graphql.MultiSourceResult<Mutation$ShipOrderEdit> Function(
      Variables$Mutation$ShipOrderEdit, {
      Object? optimisticResult,
      Mutation$ShipOrderEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ShipOrderEdit =
    widgets.Widget Function(
      RunMutation$Mutation$ShipOrderEdit,
      graphql.QueryResult<Mutation$ShipOrderEdit>?,
    );

class Mutation$ShipOrderEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ShipOrderEdit> {
  Mutation$ShipOrderEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ShipOrderEdit? options,
    required Builder$Mutation$ShipOrderEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ShipOrderEdit(),
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

class Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId {
  Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId({
    this.transShipOrder,
    this.$__typename = 'UpdateTransShipOrderPayload',
  });

  factory Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShipOrder = json['transShipOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
      transShipOrder: l$transShipOrder == null
          ? null
          : Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.fromJson(
              (l$transShipOrder as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder?
  transShipOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShipOrder = transShipOrder;
    _resultData['transShipOrder'] = l$transShipOrder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShipOrder = transShipOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transShipOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShipOrder = transShipOrder;
    final lOther$transShipOrder = other.transShipOrder;
    if (l$transShipOrder != lOther$transShipOrder) {
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

extension UtilityExtension$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId
    on Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId {
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId
  >
  get copyWith =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
  TRes
> {
  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId instance,
    TRes Function(Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId)
    then,
  ) = _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId;

  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId;

  TRes call({
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder?
    transShipOrder,
    String? $__typename,
  });
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
    TRes
  >
  get transShipOrder;
}

class _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
    this._instance,
    this._then,
  );

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId _instance;

  final TRes Function(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShipOrder = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
      transShipOrder: transShipOrder == _undefined
          ? _instance.transShipOrder
          : (transShipOrder
                as Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
    TRes
  >
  get transShipOrder {
    final local$transShipOrder = _instance.transShipOrder;
    return local$transShipOrder == null
        ? CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
            local$transShipOrder,
            (e) => call(transShipOrder: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder?
    transShipOrder,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
    TRes
  >
  get transShipOrder =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.stub(
        _res,
      );
}

class Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder {
  Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder({
    required this.transShippingId,
    required this.transOrderId,
    required this.edtimatedShippingDate,
    required this.code,
    required this.estimatedArrivalDate,
    this.historyMstrStakeholderId,
    this.mstrStakeholderId,
    this.remarks,
    this.symbol,
    required this.transShippingOrderDetailsByTransShippingId,
    this.$__typename = 'TransShipOrder',
  });

  factory Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingId = json['transShippingId'];
    final l$transOrderId = json['transOrderId'];
    final l$edtimatedShippingDate = json['edtimatedShippingDate'];
    final l$code = json['code'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$historyMstrStakeholderId = json['historyMstrStakeholderId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$transShippingOrderDetailsByTransShippingId =
        json['transShippingOrderDetailsByTransShippingId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
      transShippingId: (l$transShippingId as String),
      transOrderId: (l$transOrderId as String),
      edtimatedShippingDate: (l$edtimatedShippingDate as String),
      code: (l$code as String),
      estimatedArrivalDate: (l$estimatedArrivalDate as String),
      historyMstrStakeholderId: (l$historyMstrStakeholderId as String?),
      mstrStakeholderId: (l$mstrStakeholderId as String?),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      transShippingOrderDetailsByTransShippingId:
          Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId.fromJson(
            (l$transShippingOrderDetailsByTransShippingId
                as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingId;

  final String transOrderId;

  final String edtimatedShippingDate;

  final String code;

  final String estimatedArrivalDate;

  final String? historyMstrStakeholderId;

  final String? mstrStakeholderId;

  final String? remarks;

  final String? symbol;

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId
  transShippingOrderDetailsByTransShippingId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingId = transShippingId;
    _resultData['transShippingId'] = l$transShippingId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$edtimatedShippingDate = edtimatedShippingDate;
    _resultData['edtimatedShippingDate'] = l$edtimatedShippingDate;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    _resultData['historyMstrStakeholderId'] = l$historyMstrStakeholderId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    _resultData['transShippingOrderDetailsByTransShippingId'] =
        l$transShippingOrderDetailsByTransShippingId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingId = transShippingId;
    final l$transOrderId = transOrderId;
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingId,
      l$transOrderId,
      l$edtimatedShippingDate,
      l$code,
      l$estimatedArrivalDate,
      l$historyMstrStakeholderId,
      l$mstrStakeholderId,
      l$remarks,
      l$symbol,
      l$transShippingOrderDetailsByTransShippingId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingId = transShippingId;
    final lOther$transShippingId = other.transShippingId;
    if (l$transShippingId != lOther$transShippingId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$edtimatedShippingDate = edtimatedShippingDate;
    final lOther$edtimatedShippingDate = other.edtimatedShippingDate;
    if (l$edtimatedShippingDate != lOther$edtimatedShippingDate) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
      return false;
    }
    final l$historyMstrStakeholderId = historyMstrStakeholderId;
    final lOther$historyMstrStakeholderId = other.historyMstrStakeholderId;
    if (l$historyMstrStakeholderId != lOther$historyMstrStakeholderId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
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
    final l$transShippingOrderDetailsByTransShippingId =
        transShippingOrderDetailsByTransShippingId;
    final lOther$transShippingOrderDetailsByTransShippingId =
        other.transShippingOrderDetailsByTransShippingId;
    if (l$transShippingOrderDetailsByTransShippingId !=
        lOther$transShippingOrderDetailsByTransShippingId) {
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

extension UtilityExtension$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder
    on Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder {
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder
  >
  get copyWith =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
  TRes
> {
  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder
    instance,
    TRes Function(
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder;

  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder;

  TRes call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    String? remarks,
    String? symbol,
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId?
    transShippingOrderDetailsByTransShippingId,
    String? $__typename,
  });
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId;
}

class _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
          TRes
        > {
  _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
    this._instance,
    this._then,
  );

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder
  _instance;

  final TRes Function(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingId = _undefined,
    Object? transOrderId = _undefined,
    Object? edtimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? historyMstrStakeholderId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? transShippingOrderDetailsByTransShippingId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
      transShippingId: transShippingId == _undefined || transShippingId == null
          ? _instance.transShippingId
          : (transShippingId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      edtimatedShippingDate:
          edtimatedShippingDate == _undefined || edtimatedShippingDate == null
          ? _instance.edtimatedShippingDate
          : (edtimatedShippingDate as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      estimatedArrivalDate:
          estimatedArrivalDate == _undefined || estimatedArrivalDate == null
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String),
      historyMstrStakeholderId: historyMstrStakeholderId == _undefined
          ? _instance.historyMstrStakeholderId
          : (historyMstrStakeholderId as String?),
      mstrStakeholderId: mstrStakeholderId == _undefined
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      transShippingOrderDetailsByTransShippingId:
          transShippingOrderDetailsByTransShippingId == _undefined ||
              transShippingOrderDetailsByTransShippingId == null
          ? _instance.transShippingOrderDetailsByTransShippingId
          : (transShippingOrderDetailsByTransShippingId
                as Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId {
    final local$transShippingOrderDetailsByTransShippingId =
        _instance.transShippingOrderDetailsByTransShippingId;
    return CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
      local$transShippingOrderDetailsByTransShippingId,
      (e) => call(transShippingOrderDetailsByTransShippingId: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingId,
    String? transOrderId,
    String? edtimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? historyMstrStakeholderId,
    String? mstrStakeholderId,
    String? remarks,
    String? symbol,
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId?
    transShippingOrderDetailsByTransShippingId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
    TRes
  >
  get transShippingOrderDetailsByTransShippingId =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId.stub(
        _res,
      );
}

class Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId {
  Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId({
    required this.nodes,
    this.$__typename = 'TransShippingOrderDetailsConnection',
  });

  factory Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
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
            is! Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId ||
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

extension UtilityExtension$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId
    on
        Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId {
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId
  >
  get copyWith =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
  TRes
> {
  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId
    instance,
    TRes Function(
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId;

  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId;

  TRes call({
    List<
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
          Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
    this._instance,
    this._then,
  );

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId
  _instance;

  final TRes Function(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
          Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes {
  Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes({
    required this.transShippingOrderDetailId,
    required this.transOrderDetailId,
    required this.shippingQuantity,
    this.$__typename = 'TransShippingOrderDetail',
  });

  factory Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$$__typename = json['__typename'];
    return Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      transOrderDetailId: (l$transOrderDetailId as String),
      shippingQuantity: (l$shippingQuantity as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailId;

  final String transOrderDetailId;

  final String shippingQuantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    _resultData['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$shippingQuantity = shippingQuantity;
    _resultData['shippingQuantity'] = l$shippingQuantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$transOrderDetailId = transOrderDetailId;
    final l$shippingQuantity = shippingQuantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailId,
      l$transOrderDetailId,
      l$shippingQuantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (l$shippingQuantity != lOther$shippingQuantity) {
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

extension UtilityExtension$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
    on
        Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes {
  CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
  TRes
> {
  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
    instance,
    TRes Function(
      Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes;

  factory CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes;

  TRes call({
    String? transShippingOrderDetailId,
    String? transOrderDetailId,
    String? shippingQuantity,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes
  _instance;

  final TRes Function(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailId = _undefined,
    Object? transOrderDetailId = _undefined,
    Object? shippingQuantity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
      transShippingOrderDetailId:
          transShippingOrderDetailId == _undefined ||
              transShippingOrderDetailId == null
          ? _instance.transShippingOrderDetailId
          : (transShippingOrderDetailId as String),
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
      shippingQuantity:
          shippingQuantity == _undefined || shippingQuantity == null
          ? _instance.shippingQuantity
          : (shippingQuantity as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShipOrderEdit$updateTransShipOrderByTransShippingId$transShipOrder$transShippingOrderDetailsByTransShippingId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailId,
    String? transOrderDetailId,
    String? shippingQuantity,
    String? $__typename,
  }) => _res;
}
