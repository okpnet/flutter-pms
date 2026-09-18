import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OrderDetailEdit {
  factory Variables$Mutation$OrderDetailEdit({
    required String transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$OrderDetailEdit._({
    r'transOrderDetailId': transOrderDetailId,
    if (transOrderId != null) r'transOrderId': transOrderId,
    if (historyMstrItemId != null) r'historyMstrItemId': historyMstrItemId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (quantity != null) r'quantity': quantity,
    if (cost != null) r'cost': cost,
    if (deliveryDate != null) r'deliveryDate': deliveryDate,
    if (deadline != null) r'deadline': deadline,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$OrderDetailEdit._(this._$data);

  factory Variables$Mutation$OrderDetailEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transOrderDetailId = data['transOrderDetailId'];
    result$data['transOrderDetailId'] = (l$transOrderDetailId as String);
    if (data.containsKey('transOrderId')) {
      final l$transOrderId = data['transOrderId'];
      result$data['transOrderId'] = (l$transOrderId as String?);
    }
    if (data.containsKey('historyMstrItemId')) {
      final l$historyMstrItemId = data['historyMstrItemId'];
      result$data['historyMstrItemId'] = (l$historyMstrItemId as String?);
    }
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as String?);
    }
    if (data.containsKey('cost')) {
      final l$cost = data['cost'];
      result$data['cost'] = (l$cost as String?);
    }
    if (data.containsKey('deliveryDate')) {
      final l$deliveryDate = data['deliveryDate'];
      result$data['deliveryDate'] = (l$deliveryDate as String?);
    }
    if (data.containsKey('deadline')) {
      final l$deadline = data['deadline'];
      result$data['deadline'] = (l$deadline as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
    return Variables$Mutation$OrderDetailEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transOrderDetailId => (_$data['transOrderDetailId'] as String);

  String? get transOrderId => (_$data['transOrderId'] as String?);

  String? get historyMstrItemId => (_$data['historyMstrItemId'] as String?);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get quantity => (_$data['quantity'] as String?);

  String? get cost => (_$data['cost'] as String?);

  String? get deliveryDate => (_$data['deliveryDate'] as String?);

  String? get deadline => (_$data['deadline'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transOrderDetailId = transOrderDetailId;
    result$data['transOrderDetailId'] = l$transOrderDetailId;
    if (_$data.containsKey('transOrderId')) {
      final l$transOrderId = transOrderId;
      result$data['transOrderId'] = l$transOrderId;
    }
    if (_$data.containsKey('historyMstrItemId')) {
      final l$historyMstrItemId = historyMstrItemId;
      result$data['historyMstrItemId'] = l$historyMstrItemId;
    }
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    if (_$data.containsKey('cost')) {
      final l$cost = cost;
      result$data['cost'] = l$cost;
    }
    if (_$data.containsKey('deliveryDate')) {
      final l$deliveryDate = deliveryDate;
      result$data['deliveryDate'] = l$deliveryDate;
    }
    if (_$data.containsKey('deadline')) {
      final l$deadline = deadline;
      result$data['deadline'] = l$deadline;
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

  CopyWith$Variables$Mutation$OrderDetailEdit<
    Variables$Mutation$OrderDetailEdit
  >
  get copyWith => CopyWith$Variables$Mutation$OrderDetailEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OrderDetailEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
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
    final l$historyMstrItemId = historyMstrItemId;
    final lOther$historyMstrItemId = other.historyMstrItemId;
    if (_$data.containsKey('historyMstrItemId') !=
        other._$data.containsKey('historyMstrItemId')) {
      return false;
    }
    if (l$historyMstrItemId != lOther$historyMstrItemId) {
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
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (_$data.containsKey('quantity') !=
        other._$data.containsKey('quantity')) {
      return false;
    }
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (_$data.containsKey('cost') != other._$data.containsKey('cost')) {
      return false;
    }
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$deliveryDate = deliveryDate;
    final lOther$deliveryDate = other.deliveryDate;
    if (_$data.containsKey('deliveryDate') !=
        other._$data.containsKey('deliveryDate')) {
      return false;
    }
    if (l$deliveryDate != lOther$deliveryDate) {
      return false;
    }
    final l$deadline = deadline;
    final lOther$deadline = other.deadline;
    if (_$data.containsKey('deadline') !=
        other._$data.containsKey('deadline')) {
      return false;
    }
    if (l$deadline != lOther$deadline) {
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
    final l$transOrderDetailId = transOrderDetailId;
    final l$transOrderId = transOrderId;
    final l$historyMstrItemId = historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    final l$quantity = quantity;
    final l$cost = cost;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$transOrderDetailId,
      _$data.containsKey('transOrderId') ? l$transOrderId : const {},
      _$data.containsKey('historyMstrItemId') ? l$historyMstrItemId : const {},
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('cost') ? l$cost : const {},
      _$data.containsKey('deliveryDate') ? l$deliveryDate : const {},
      _$data.containsKey('deadline') ? l$deadline : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$OrderDetailEdit<TRes> {
  factory CopyWith$Variables$Mutation$OrderDetailEdit(
    Variables$Mutation$OrderDetailEdit instance,
    TRes Function(Variables$Mutation$OrderDetailEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OrderDetailEdit;

  factory CopyWith$Variables$Mutation$OrderDetailEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OrderDetailEdit;

  TRes call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$OrderDetailEdit<TRes>
    implements CopyWith$Variables$Mutation$OrderDetailEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OrderDetailEdit(this._instance, this._then);

  final Variables$Mutation$OrderDetailEdit _instance;

  final TRes Function(Variables$Mutation$OrderDetailEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderDetailId = _undefined,
    Object? transOrderId = _undefined,
    Object? historyMstrItemId = _undefined,
    Object? mstrItemId = _undefined,
    Object? quantity = _undefined,
    Object? cost = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$OrderDetailEdit._({
      ..._instance._$data,
      if (transOrderDetailId != _undefined && transOrderDetailId != null)
        'transOrderDetailId': (transOrderDetailId as String),
      if (transOrderId != _undefined) 'transOrderId': (transOrderId as String?),
      if (historyMstrItemId != _undefined)
        'historyMstrItemId': (historyMstrItemId as String?),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (quantity != _undefined) 'quantity': (quantity as String?),
      if (cost != _undefined) 'cost': (cost as String?),
      if (deliveryDate != _undefined) 'deliveryDate': (deliveryDate as String?),
      if (deadline != _undefined) 'deadline': (deadline as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$OrderDetailEdit<TRes>
    implements CopyWith$Variables$Mutation$OrderDetailEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OrderDetailEdit(this._res);

  TRes _res;

  call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$OrderDetailEdit {
  Mutation$OrderDetailEdit({
    this.updateTransOrderDetailByTransOrderDetailId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OrderDetailEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransOrderDetailByTransOrderDetailId =
        json['updateTransOrderDetailByTransOrderDetailId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderDetailEdit(
      updateTransOrderDetailByTransOrderDetailId:
          l$updateTransOrderDetailByTransOrderDetailId == null
          ? null
          : Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId.fromJson(
              (l$updateTransOrderDetailByTransOrderDetailId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId?
  updateTransOrderDetailByTransOrderDetailId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransOrderDetailByTransOrderDetailId =
        updateTransOrderDetailByTransOrderDetailId;
    _resultData['updateTransOrderDetailByTransOrderDetailId'] =
        l$updateTransOrderDetailByTransOrderDetailId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransOrderDetailByTransOrderDetailId =
        updateTransOrderDetailByTransOrderDetailId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransOrderDetailByTransOrderDetailId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrderDetailEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransOrderDetailByTransOrderDetailId =
        updateTransOrderDetailByTransOrderDetailId;
    final lOther$updateTransOrderDetailByTransOrderDetailId =
        other.updateTransOrderDetailByTransOrderDetailId;
    if (l$updateTransOrderDetailByTransOrderDetailId !=
        lOther$updateTransOrderDetailByTransOrderDetailId) {
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

extension UtilityExtension$Mutation$OrderDetailEdit
    on Mutation$OrderDetailEdit {
  CopyWith$Mutation$OrderDetailEdit<Mutation$OrderDetailEdit> get copyWith =>
      CopyWith$Mutation$OrderDetailEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OrderDetailEdit<TRes> {
  factory CopyWith$Mutation$OrderDetailEdit(
    Mutation$OrderDetailEdit instance,
    TRes Function(Mutation$OrderDetailEdit) then,
  ) = _CopyWithImpl$Mutation$OrderDetailEdit;

  factory CopyWith$Mutation$OrderDetailEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OrderDetailEdit;

  TRes call({
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId?
    updateTransOrderDetailByTransOrderDetailId,
    String? $__typename,
  });
  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
    TRes
  >
  get updateTransOrderDetailByTransOrderDetailId;
}

class _CopyWithImpl$Mutation$OrderDetailEdit<TRes>
    implements CopyWith$Mutation$OrderDetailEdit<TRes> {
  _CopyWithImpl$Mutation$OrderDetailEdit(this._instance, this._then);

  final Mutation$OrderDetailEdit _instance;

  final TRes Function(Mutation$OrderDetailEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransOrderDetailByTransOrderDetailId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderDetailEdit(
      updateTransOrderDetailByTransOrderDetailId:
          updateTransOrderDetailByTransOrderDetailId == _undefined
          ? _instance.updateTransOrderDetailByTransOrderDetailId
          : (updateTransOrderDetailByTransOrderDetailId
                as Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
    TRes
  >
  get updateTransOrderDetailByTransOrderDetailId {
    final local$updateTransOrderDetailByTransOrderDetailId =
        _instance.updateTransOrderDetailByTransOrderDetailId;
    return local$updateTransOrderDetailByTransOrderDetailId == null
        ? CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
            local$updateTransOrderDetailByTransOrderDetailId,
            (e) => call(updateTransOrderDetailByTransOrderDetailId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrderDetailEdit<TRes>
    implements CopyWith$Mutation$OrderDetailEdit<TRes> {
  _CopyWithStubImpl$Mutation$OrderDetailEdit(this._res);

  TRes _res;

  call({
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId?
    updateTransOrderDetailByTransOrderDetailId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
    TRes
  >
  get updateTransOrderDetailByTransOrderDetailId =>
      CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId.stub(
        _res,
      );
}

const documentNodeMutationOrderDetailEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OrderDetailEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transOrderDetailId')),
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
          variable: VariableNode(name: NameNode(value: 'historyMstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
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
          variable: VariableNode(name: NameNode(value: 'quantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'cost')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deliveryDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'deadline')),
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
            name: NameNode(value: 'updateTransOrderDetailByTransOrderDetailId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transOrderDetailId'),
                      value: VariableNode(
                        name: NameNode(value: 'transOrderDetailId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transOrderDetailPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transOrderId'),
                            value: VariableNode(
                              name: NameNode(value: 'transOrderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'historyMstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'historyMstrItemId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'quantity'),
                            value: VariableNode(
                              name: NameNode(value: 'quantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'cost'),
                            value: VariableNode(name: NameNode(value: 'cost')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'deliveryDate'),
                            value: VariableNode(
                              name: NameNode(value: 'deliveryDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'deadline'),
                            value: VariableNode(
                              name: NameNode(value: 'deadline'),
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
                  name: NameNode(value: 'transOrderDetail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transOrderDetailId'),
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
                        name: NameNode(value: 'historyMstrItemId'),
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
                        name: NameNode(value: 'quantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'cost'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deliveryDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'deadline'),
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
Mutation$OrderDetailEdit _parserFn$Mutation$OrderDetailEdit(
  Map<String, dynamic> data,
) => Mutation$OrderDetailEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OrderDetailEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$OrderDetailEdit?);

class Options$Mutation$OrderDetailEdit
    extends graphql.MutationOptions<Mutation$OrderDetailEdit> {
  Options$Mutation$OrderDetailEdit({
    String? operationName,
    required Variables$Mutation$OrderDetailEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderDetailEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrderDetailEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrderDetailEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$OrderDetailEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrderDetailEdit,
         parserFn: _parserFn$Mutation$OrderDetailEdit,
       );

  final OnMutationCompleted$Mutation$OrderDetailEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OrderDetailEdit
    extends graphql.WatchQueryOptions<Mutation$OrderDetailEdit> {
  WatchOptions$Mutation$OrderDetailEdit({
    String? operationName,
    required Variables$Mutation$OrderDetailEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderDetailEdit? typedOptimisticResult,
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
         document: documentNodeMutationOrderDetailEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OrderDetailEdit,
       );
}

extension ClientExtension$Mutation$OrderDetailEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OrderDetailEdit>> mutate$OrderDetailEdit(
    Options$Mutation$OrderDetailEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OrderDetailEdit>
  watchMutation$OrderDetailEdit(
    WatchOptions$Mutation$OrderDetailEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OrderDetailEdit$HookResult {
  Mutation$OrderDetailEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OrderDetailEdit runMutation;

  final graphql.QueryResult<Mutation$OrderDetailEdit> result;
}

Mutation$OrderDetailEdit$HookResult useMutation$OrderDetailEdit([
  WidgetOptions$Mutation$OrderDetailEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OrderDetailEdit(),
  );
  return Mutation$OrderDetailEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OrderDetailEdit>
useWatchMutation$OrderDetailEdit(
  WatchOptions$Mutation$OrderDetailEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OrderDetailEdit
    extends graphql.MutationOptions<Mutation$OrderDetailEdit> {
  WidgetOptions$Mutation$OrderDetailEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderDetailEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrderDetailEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrderDetailEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$OrderDetailEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrderDetailEdit,
         parserFn: _parserFn$Mutation$OrderDetailEdit,
       );

  final OnMutationCompleted$Mutation$OrderDetailEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OrderDetailEdit =
    graphql.MultiSourceResult<Mutation$OrderDetailEdit> Function(
      Variables$Mutation$OrderDetailEdit, {
      Object? optimisticResult,
      Mutation$OrderDetailEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OrderDetailEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OrderDetailEdit,
      graphql.QueryResult<Mutation$OrderDetailEdit>?,
    );

class Mutation$OrderDetailEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OrderDetailEdit> {
  Mutation$OrderDetailEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OrderDetailEdit? options,
    required Builder$Mutation$OrderDetailEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OrderDetailEdit(),
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

class Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId {
  Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId({
    this.transOrderDetail,
    this.$__typename = 'UpdateTransOrderDetailPayload',
  });

  factory Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderDetail = json['transOrderDetail'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
      transOrderDetail: l$transOrderDetail == null
          ? null
          : Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.fromJson(
              (l$transOrderDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail?
  transOrderDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderDetail = transOrderDetail;
    _resultData['transOrderDetail'] = l$transOrderDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOrderDetail = transOrderDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transOrderDetail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderDetail = transOrderDetail;
    final lOther$transOrderDetail = other.transOrderDetail;
    if (l$transOrderDetail != lOther$transOrderDetail) {
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

extension UtilityExtension$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId
    on Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId {
  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId
  >
  get copyWith =>
      CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
  TRes
> {
  factory CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId
    instance,
    TRes Function(
      Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId;

  factory CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId;

  TRes call({
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail?
    transOrderDetail,
    String? $__typename,
  });
  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
    TRes
  >
  get transOrderDetail;
}

class _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
  TRes
>
    implements
        CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
    this._instance,
    this._then,
  );

  final Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId
  _instance;

  final TRes Function(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
      transOrderDetail: transOrderDetail == _undefined
          ? _instance.transOrderDetail
          : (transOrderDetail
                as Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
    TRes
  >
  get transOrderDetail {
    final local$transOrderDetail = _instance.transOrderDetail;
    return local$transOrderDetail == null
        ? CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
            local$transOrderDetail,
            (e) => call(transOrderDetail: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
  TRes
>
    implements
        CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail?
    transOrderDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
    TRes
  >
  get transOrderDetail =>
      CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.stub(
        _res,
      );
}

class Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail {
  Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail({
    required this.transOrderDetailId,
    required this.transOrderId,
    required this.historyMstrItemId,
    required this.mstrItemId,
    this.quantity,
    this.cost,
    this.deliveryDate,
    this.deadline,
    this.remarks,
    this.symbol,
    this.$__typename = 'TransOrderDetail',
  });

  factory Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$transOrderId = json['transOrderId'];
    final l$historyMstrItemId = json['historyMstrItemId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$quantity = json['quantity'];
    final l$cost = json['cost'];
    final l$deliveryDate = json['deliveryDate'];
    final l$deadline = json['deadline'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
      transOrderDetailId: (l$transOrderDetailId as String),
      transOrderId: (l$transOrderId as String),
      historyMstrItemId: (l$historyMstrItemId as String),
      mstrItemId: (l$mstrItemId as String),
      quantity: (l$quantity as String?),
      cost: (l$cost as String?),
      deliveryDate: (l$deliveryDate as String?),
      deadline: (l$deadline as String?),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOrderDetailId;

  final String transOrderId;

  final String historyMstrItemId;

  final String mstrItemId;

  final String? quantity;

  final String? cost;

  final String? deliveryDate;

  final String? deadline;

  final String? remarks;

  final String? symbol;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$historyMstrItemId = historyMstrItemId;
    _resultData['historyMstrItemId'] = l$historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$cost = cost;
    _resultData['cost'] = l$cost;
    final l$deliveryDate = deliveryDate;
    _resultData['deliveryDate'] = l$deliveryDate;
    final l$deadline = deadline;
    _resultData['deadline'] = l$deadline;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOrderDetailId = transOrderDetailId;
    final l$transOrderId = transOrderId;
    final l$historyMstrItemId = historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    final l$quantity = quantity;
    final l$cost = cost;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOrderDetailId,
      l$transOrderId,
      l$historyMstrItemId,
      l$mstrItemId,
      l$quantity,
      l$cost,
      l$deliveryDate,
      l$deadline,
      l$remarks,
      l$symbol,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$historyMstrItemId = historyMstrItemId;
    final lOther$historyMstrItemId = other.historyMstrItemId;
    if (l$historyMstrItemId != lOther$historyMstrItemId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$deliveryDate = deliveryDate;
    final lOther$deliveryDate = other.deliveryDate;
    if (l$deliveryDate != lOther$deliveryDate) {
      return false;
    }
    final l$deadline = deadline;
    final lOther$deadline = other.deadline;
    if (l$deadline != lOther$deadline) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail
    on
        Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail {
  CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail
  >
  get copyWith =>
      CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
  TRes
> {
  factory CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail
    instance,
    TRes Function(
      Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail;

  factory CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail;

  TRes call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
  TRes
>
    implements
        CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
          TRes
        > {
  _CopyWithImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
    this._instance,
    this._then,
  );

  final Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail
  _instance;

  final TRes Function(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderDetailId = _undefined,
    Object? transOrderId = _undefined,
    Object? historyMstrItemId = _undefined,
    Object? mstrItemId = _undefined,
    Object? quantity = _undefined,
    Object? cost = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      historyMstrItemId:
          historyMstrItemId == _undefined || historyMstrItemId == null
          ? _instance.historyMstrItemId
          : (historyMstrItemId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      cost: cost == _undefined ? _instance.cost : (cost as String?),
      deliveryDate: deliveryDate == _undefined
          ? _instance.deliveryDate
          : (deliveryDate as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
  TRes
>
    implements
        CopyWith$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrderDetailEdit$updateTransOrderDetailByTransOrderDetailId$transOrderDetail(
    this._res,
  );

  TRes _res;

  call({
    String? transOrderDetailId,
    String? transOrderId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
    String? $__typename,
  }) => _res;
}
