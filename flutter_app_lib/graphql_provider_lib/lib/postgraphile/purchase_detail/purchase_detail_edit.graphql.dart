import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$PurchaseDetailEdit {
  factory Variables$Mutation$PurchaseDetailEdit({
    required String transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? historyId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$PurchaseDetailEdit._({
    r'transPurchaseDetailId': transPurchaseDetailId,
    if (transPurchaseId != null) r'transPurchaseId': transPurchaseId,
    if (restockingPurchase != null) r'restockingPurchase': restockingPurchase,
    if (quantity != null) r'quantity': quantity,
    if (period != null) r'period': period,
    if (historyId != null) r'historyId': historyId,
    if (mstrItemId != null) r'mstrItemId': mstrItemId,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$PurchaseDetailEdit._(this._$data);

  factory Variables$Mutation$PurchaseDetailEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transPurchaseDetailId = data['transPurchaseDetailId'];
    result$data['transPurchaseDetailId'] = (l$transPurchaseDetailId as String);
    if (data.containsKey('transPurchaseId')) {
      final l$transPurchaseId = data['transPurchaseId'];
      result$data['transPurchaseId'] = (l$transPurchaseId as String?);
    }
    if (data.containsKey('restockingPurchase')) {
      final l$restockingPurchase = data['restockingPurchase'];
      result$data['restockingPurchase'] = (l$restockingPurchase as bool?);
    }
    if (data.containsKey('quantity')) {
      final l$quantity = data['quantity'];
      result$data['quantity'] = (l$quantity as String?);
    }
    if (data.containsKey('period')) {
      final l$period = data['period'];
      result$data['period'] = (l$period as String?);
    }
    if (data.containsKey('historyId')) {
      final l$historyId = data['historyId'];
      result$data['historyId'] = (l$historyId as String?);
    }
    if (data.containsKey('mstrItemId')) {
      final l$mstrItemId = data['mstrItemId'];
      result$data['mstrItemId'] = (l$mstrItemId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    if (data.containsKey('symbol')) {
      final l$symbol = data['symbol'];
      result$data['symbol'] = (l$symbol as String?);
    }
    return Variables$Mutation$PurchaseDetailEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transPurchaseDetailId =>
      (_$data['transPurchaseDetailId'] as String);

  String? get transPurchaseId => (_$data['transPurchaseId'] as String?);

  bool? get restockingPurchase => (_$data['restockingPurchase'] as bool?);

  String? get quantity => (_$data['quantity'] as String?);

  String? get period => (_$data['period'] as String?);

  String? get historyId => (_$data['historyId'] as String?);

  String? get mstrItemId => (_$data['mstrItemId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transPurchaseDetailId = transPurchaseDetailId;
    result$data['transPurchaseDetailId'] = l$transPurchaseDetailId;
    if (_$data.containsKey('transPurchaseId')) {
      final l$transPurchaseId = transPurchaseId;
      result$data['transPurchaseId'] = l$transPurchaseId;
    }
    if (_$data.containsKey('restockingPurchase')) {
      final l$restockingPurchase = restockingPurchase;
      result$data['restockingPurchase'] = l$restockingPurchase;
    }
    if (_$data.containsKey('quantity')) {
      final l$quantity = quantity;
      result$data['quantity'] = l$quantity;
    }
    if (_$data.containsKey('period')) {
      final l$period = period;
      result$data['period'] = l$period;
    }
    if (_$data.containsKey('historyId')) {
      final l$historyId = historyId;
      result$data['historyId'] = l$historyId;
    }
    if (_$data.containsKey('mstrItemId')) {
      final l$mstrItemId = mstrItemId;
      result$data['mstrItemId'] = l$mstrItemId;
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

  CopyWith$Variables$Mutation$PurchaseDetailEdit<
    Variables$Mutation$PurchaseDetailEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$PurchaseDetailEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PurchaseDetailEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final lOther$transPurchaseDetailId = other.transPurchaseDetailId;
    if (l$transPurchaseDetailId != lOther$transPurchaseDetailId) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (_$data.containsKey('transPurchaseId') !=
        other._$data.containsKey('transPurchaseId')) {
      return false;
    }
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$restockingPurchase = restockingPurchase;
    final lOther$restockingPurchase = other.restockingPurchase;
    if (_$data.containsKey('restockingPurchase') !=
        other._$data.containsKey('restockingPurchase')) {
      return false;
    }
    if (l$restockingPurchase != lOther$restockingPurchase) {
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
    final l$period = period;
    final lOther$period = other.period;
    if (_$data.containsKey('period') != other._$data.containsKey('period')) {
      return false;
    }
    if (l$period != lOther$period) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (_$data.containsKey('historyId') !=
        other._$data.containsKey('historyId')) {
      return false;
    }
    if (l$historyId != lOther$historyId) {
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
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final l$transPurchaseId = transPurchaseId;
    final l$restockingPurchase = restockingPurchase;
    final l$quantity = quantity;
    final l$period = period;
    final l$historyId = historyId;
    final l$mstrItemId = mstrItemId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$transPurchaseDetailId,
      _$data.containsKey('transPurchaseId') ? l$transPurchaseId : const {},
      _$data.containsKey('restockingPurchase')
          ? l$restockingPurchase
          : const {},
      _$data.containsKey('quantity') ? l$quantity : const {},
      _$data.containsKey('period') ? l$period : const {},
      _$data.containsKey('historyId') ? l$historyId : const {},
      _$data.containsKey('mstrItemId') ? l$mstrItemId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$PurchaseDetailEdit<TRes> {
  factory CopyWith$Variables$Mutation$PurchaseDetailEdit(
    Variables$Mutation$PurchaseDetailEdit instance,
    TRes Function(Variables$Mutation$PurchaseDetailEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$PurchaseDetailEdit;

  factory CopyWith$Variables$Mutation$PurchaseDetailEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PurchaseDetailEdit;

  TRes call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? historyId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$PurchaseDetailEdit<TRes>
    implements CopyWith$Variables$Mutation$PurchaseDetailEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$PurchaseDetailEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$PurchaseDetailEdit _instance;

  final TRes Function(Variables$Mutation$PurchaseDetailEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseDetailId = _undefined,
    Object? transPurchaseId = _undefined,
    Object? restockingPurchase = _undefined,
    Object? quantity = _undefined,
    Object? period = _undefined,
    Object? historyId = _undefined,
    Object? mstrItemId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$PurchaseDetailEdit._({
      ..._instance._$data,
      if (transPurchaseDetailId != _undefined && transPurchaseDetailId != null)
        'transPurchaseDetailId': (transPurchaseDetailId as String),
      if (transPurchaseId != _undefined)
        'transPurchaseId': (transPurchaseId as String?),
      if (restockingPurchase != _undefined)
        'restockingPurchase': (restockingPurchase as bool?),
      if (quantity != _undefined) 'quantity': (quantity as String?),
      if (period != _undefined) 'period': (period as String?),
      if (historyId != _undefined) 'historyId': (historyId as String?),
      if (mstrItemId != _undefined) 'mstrItemId': (mstrItemId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PurchaseDetailEdit<TRes>
    implements CopyWith$Variables$Mutation$PurchaseDetailEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PurchaseDetailEdit(this._res);

  TRes _res;

  call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? historyId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$PurchaseDetailEdit {
  Mutation$PurchaseDetailEdit({
    this.updateTransPurchaseDetailByTransPurchaseDetailId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PurchaseDetailEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransPurchaseDetailByTransPurchaseDetailId =
        json['updateTransPurchaseDetailByTransPurchaseDetailId'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseDetailEdit(
      updateTransPurchaseDetailByTransPurchaseDetailId:
          l$updateTransPurchaseDetailByTransPurchaseDetailId == null
          ? null
          : Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId.fromJson(
              (l$updateTransPurchaseDetailByTransPurchaseDetailId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId?
  updateTransPurchaseDetailByTransPurchaseDetailId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransPurchaseDetailByTransPurchaseDetailId =
        updateTransPurchaseDetailByTransPurchaseDetailId;
    _resultData['updateTransPurchaseDetailByTransPurchaseDetailId'] =
        l$updateTransPurchaseDetailByTransPurchaseDetailId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransPurchaseDetailByTransPurchaseDetailId =
        updateTransPurchaseDetailByTransPurchaseDetailId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransPurchaseDetailByTransPurchaseDetailId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PurchaseDetailEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransPurchaseDetailByTransPurchaseDetailId =
        updateTransPurchaseDetailByTransPurchaseDetailId;
    final lOther$updateTransPurchaseDetailByTransPurchaseDetailId =
        other.updateTransPurchaseDetailByTransPurchaseDetailId;
    if (l$updateTransPurchaseDetailByTransPurchaseDetailId !=
        lOther$updateTransPurchaseDetailByTransPurchaseDetailId) {
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

extension UtilityExtension$Mutation$PurchaseDetailEdit
    on Mutation$PurchaseDetailEdit {
  CopyWith$Mutation$PurchaseDetailEdit<Mutation$PurchaseDetailEdit>
  get copyWith => CopyWith$Mutation$PurchaseDetailEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$PurchaseDetailEdit<TRes> {
  factory CopyWith$Mutation$PurchaseDetailEdit(
    Mutation$PurchaseDetailEdit instance,
    TRes Function(Mutation$PurchaseDetailEdit) then,
  ) = _CopyWithImpl$Mutation$PurchaseDetailEdit;

  factory CopyWith$Mutation$PurchaseDetailEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PurchaseDetailEdit;

  TRes call({
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId?
    updateTransPurchaseDetailByTransPurchaseDetailId,
    String? $__typename,
  });
  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
    TRes
  >
  get updateTransPurchaseDetailByTransPurchaseDetailId;
}

class _CopyWithImpl$Mutation$PurchaseDetailEdit<TRes>
    implements CopyWith$Mutation$PurchaseDetailEdit<TRes> {
  _CopyWithImpl$Mutation$PurchaseDetailEdit(this._instance, this._then);

  final Mutation$PurchaseDetailEdit _instance;

  final TRes Function(Mutation$PurchaseDetailEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransPurchaseDetailByTransPurchaseDetailId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseDetailEdit(
      updateTransPurchaseDetailByTransPurchaseDetailId:
          updateTransPurchaseDetailByTransPurchaseDetailId == _undefined
          ? _instance.updateTransPurchaseDetailByTransPurchaseDetailId
          : (updateTransPurchaseDetailByTransPurchaseDetailId
                as Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
    TRes
  >
  get updateTransPurchaseDetailByTransPurchaseDetailId {
    final local$updateTransPurchaseDetailByTransPurchaseDetailId =
        _instance.updateTransPurchaseDetailByTransPurchaseDetailId;
    return local$updateTransPurchaseDetailByTransPurchaseDetailId == null
        ? CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
            local$updateTransPurchaseDetailByTransPurchaseDetailId,
            (e) => call(updateTransPurchaseDetailByTransPurchaseDetailId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PurchaseDetailEdit<TRes>
    implements CopyWith$Mutation$PurchaseDetailEdit<TRes> {
  _CopyWithStubImpl$Mutation$PurchaseDetailEdit(this._res);

  TRes _res;

  call({
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId?
    updateTransPurchaseDetailByTransPurchaseDetailId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
    TRes
  >
  get updateTransPurchaseDetailByTransPurchaseDetailId =>
      CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId.stub(
        _res,
      );
}

const documentNodeMutationPurchaseDetailEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PurchaseDetailEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transPurchaseDetailId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transPurchaseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'restockingPurchase')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
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
          variable: VariableNode(name: NameNode(value: 'period')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'historyId')),
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
              value: 'updateTransPurchaseDetailByTransPurchaseDetailId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transPurchaseDetailId'),
                      value: VariableNode(
                        name: NameNode(value: 'transPurchaseDetailId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transPurchaseDetailPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transPurchaseId'),
                            value: VariableNode(
                              name: NameNode(value: 'transPurchaseId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'restockingPurchase'),
                            value: VariableNode(
                              name: NameNode(value: 'restockingPurchase'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'quantity'),
                            value: VariableNode(
                              name: NameNode(value: 'quantity'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'period'),
                            value: VariableNode(
                              name: NameNode(value: 'period'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'historyId'),
                            value: VariableNode(
                              name: NameNode(value: 'historyId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrItemId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrItemId'),
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
                  name: NameNode(value: 'transPurchaseDetail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transPurchaseDetailId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transPurchaseId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'restockingPurchase'),
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
                        name: NameNode(value: 'period'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'historyId'),
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
Mutation$PurchaseDetailEdit _parserFn$Mutation$PurchaseDetailEdit(
  Map<String, dynamic> data,
) => Mutation$PurchaseDetailEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$PurchaseDetailEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$PurchaseDetailEdit?,
    );

class Options$Mutation$PurchaseDetailEdit
    extends graphql.MutationOptions<Mutation$PurchaseDetailEdit> {
  Options$Mutation$PurchaseDetailEdit({
    String? operationName,
    required Variables$Mutation$PurchaseDetailEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseDetailEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PurchaseDetailEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$PurchaseDetailEdit>? update,
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
                     : _parserFn$Mutation$PurchaseDetailEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationPurchaseDetailEdit,
         parserFn: _parserFn$Mutation$PurchaseDetailEdit,
       );

  final OnMutationCompleted$Mutation$PurchaseDetailEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$PurchaseDetailEdit
    extends graphql.WatchQueryOptions<Mutation$PurchaseDetailEdit> {
  WatchOptions$Mutation$PurchaseDetailEdit({
    String? operationName,
    required Variables$Mutation$PurchaseDetailEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseDetailEdit? typedOptimisticResult,
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
         document: documentNodeMutationPurchaseDetailEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$PurchaseDetailEdit,
       );
}

extension ClientExtension$Mutation$PurchaseDetailEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PurchaseDetailEdit>>
  mutate$PurchaseDetailEdit(
    Options$Mutation$PurchaseDetailEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$PurchaseDetailEdit>
  watchMutation$PurchaseDetailEdit(
    WatchOptions$Mutation$PurchaseDetailEdit options,
  ) => this.watchMutation(options);
}

class Mutation$PurchaseDetailEdit$HookResult {
  Mutation$PurchaseDetailEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$PurchaseDetailEdit runMutation;

  final graphql.QueryResult<Mutation$PurchaseDetailEdit> result;
}

Mutation$PurchaseDetailEdit$HookResult useMutation$PurchaseDetailEdit([
  WidgetOptions$Mutation$PurchaseDetailEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$PurchaseDetailEdit(),
  );
  return Mutation$PurchaseDetailEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$PurchaseDetailEdit>
useWatchMutation$PurchaseDetailEdit(
  WatchOptions$Mutation$PurchaseDetailEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$PurchaseDetailEdit
    extends graphql.MutationOptions<Mutation$PurchaseDetailEdit> {
  WidgetOptions$Mutation$PurchaseDetailEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseDetailEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PurchaseDetailEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$PurchaseDetailEdit>? update,
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
                     : _parserFn$Mutation$PurchaseDetailEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationPurchaseDetailEdit,
         parserFn: _parserFn$Mutation$PurchaseDetailEdit,
       );

  final OnMutationCompleted$Mutation$PurchaseDetailEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$PurchaseDetailEdit =
    graphql.MultiSourceResult<Mutation$PurchaseDetailEdit> Function(
      Variables$Mutation$PurchaseDetailEdit, {
      Object? optimisticResult,
      Mutation$PurchaseDetailEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$PurchaseDetailEdit =
    widgets.Widget Function(
      RunMutation$Mutation$PurchaseDetailEdit,
      graphql.QueryResult<Mutation$PurchaseDetailEdit>?,
    );

class Mutation$PurchaseDetailEdit$Widget
    extends graphql_flutter.Mutation<Mutation$PurchaseDetailEdit> {
  Mutation$PurchaseDetailEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$PurchaseDetailEdit? options,
    required Builder$Mutation$PurchaseDetailEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$PurchaseDetailEdit(),
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

class Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId {
  Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId({
    this.transPurchaseDetail,
    this.$__typename = 'UpdateTransPurchaseDetailPayload',
  });

  factory Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseDetail = json['transPurchaseDetail'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
      transPurchaseDetail: l$transPurchaseDetail == null
          ? null
          : Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.fromJson(
              (l$transPurchaseDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail?
  transPurchaseDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseDetail = transPurchaseDetail;
    _resultData['transPurchaseDetail'] = l$transPurchaseDetail?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transPurchaseDetail = transPurchaseDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transPurchaseDetail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseDetail = transPurchaseDetail;
    final lOther$transPurchaseDetail = other.transPurchaseDetail;
    if (l$transPurchaseDetail != lOther$transPurchaseDetail) {
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

extension UtilityExtension$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId
    on Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId {
  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
  TRes
> {
  factory CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId
    instance,
    TRes Function(
      Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId,
    )
    then,
  ) = _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId;

  factory CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId;

  TRes call({
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail?
    transPurchaseDetail,
    String? $__typename,
  });
  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
    TRes
  >
  get transPurchaseDetail;
}

class _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId
  _instance;

  final TRes Function(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
      transPurchaseDetail: transPurchaseDetail == _undefined
          ? _instance.transPurchaseDetail
          : (transPurchaseDetail
                as Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
    TRes
  >
  get transPurchaseDetail {
    final local$transPurchaseDetail = _instance.transPurchaseDetail;
    return local$transPurchaseDetail == null
        ? CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
            local$transPurchaseDetail,
            (e) => call(transPurchaseDetail: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail?
    transPurchaseDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
    TRes
  >
  get transPurchaseDetail =>
      CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.stub(
        _res,
      );
}

class Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail {
  Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail({
    required this.transPurchaseDetailId,
    this.transPurchaseId,
    this.restockingPurchase,
    this.quantity,
    this.period,
    required this.historyId,
    required this.mstrItemId,
    this.remarks,
    this.symbol,
    this.$__typename = 'TransPurchaseDetail',
  });

  factory Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseDetailId = json['transPurchaseDetailId'];
    final l$transPurchaseId = json['transPurchaseId'];
    final l$restockingPurchase = json['restockingPurchase'];
    final l$quantity = json['quantity'];
    final l$period = json['period'];
    final l$historyId = json['historyId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
      transPurchaseDetailId: (l$transPurchaseDetailId as String),
      transPurchaseId: (l$transPurchaseId as String?),
      restockingPurchase: (l$restockingPurchase as bool?),
      quantity: (l$quantity as String?),
      period: (l$period as String?),
      historyId: (l$historyId as String),
      mstrItemId: (l$mstrItemId as String),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transPurchaseDetailId;

  final String? transPurchaseId;

  final bool? restockingPurchase;

  final String? quantity;

  final String? period;

  final String historyId;

  final String mstrItemId;

  final String? remarks;

  final String? symbol;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseDetailId = transPurchaseDetailId;
    _resultData['transPurchaseDetailId'] = l$transPurchaseDetailId;
    final l$transPurchaseId = transPurchaseId;
    _resultData['transPurchaseId'] = l$transPurchaseId;
    final l$restockingPurchase = restockingPurchase;
    _resultData['restockingPurchase'] = l$restockingPurchase;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$period = period;
    _resultData['period'] = l$period;
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
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
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final l$transPurchaseId = transPurchaseId;
    final l$restockingPurchase = restockingPurchase;
    final l$quantity = quantity;
    final l$period = period;
    final l$historyId = historyId;
    final l$mstrItemId = mstrItemId;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transPurchaseDetailId,
      l$transPurchaseId,
      l$restockingPurchase,
      l$quantity,
      l$period,
      l$historyId,
      l$mstrItemId,
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
            is! Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final lOther$transPurchaseDetailId = other.transPurchaseDetailId;
    if (l$transPurchaseDetailId != lOther$transPurchaseDetailId) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$restockingPurchase = restockingPurchase;
    final lOther$restockingPurchase = other.restockingPurchase;
    if (l$restockingPurchase != lOther$restockingPurchase) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$period = period;
    final lOther$period = other.period;
    if (l$period != lOther$period) {
      return false;
    }
    final l$historyId = historyId;
    final lOther$historyId = other.historyId;
    if (l$historyId != lOther$historyId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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

extension UtilityExtension$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail
    on
        Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail {
  CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
  TRes
> {
  factory CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail
    instance,
    TRes Function(
      Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail,
    )
    then,
  ) = _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail;

  factory CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail;

  TRes call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? historyId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail
  _instance;

  final TRes Function(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseDetailId = _undefined,
    Object? transPurchaseId = _undefined,
    Object? restockingPurchase = _undefined,
    Object? quantity = _undefined,
    Object? period = _undefined,
    Object? historyId = _undefined,
    Object? mstrItemId = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
      transPurchaseDetailId:
          transPurchaseDetailId == _undefined || transPurchaseDetailId == null
          ? _instance.transPurchaseDetailId
          : (transPurchaseDetailId as String),
      transPurchaseId: transPurchaseId == _undefined
          ? _instance.transPurchaseId
          : (transPurchaseId as String?),
      restockingPurchase: restockingPurchase == _undefined
          ? _instance.restockingPurchase
          : (restockingPurchase as bool?),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      period: period == _undefined ? _instance.period : (period as String?),
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseDetailEdit$updateTransPurchaseDetailByTransPurchaseDetailId$transPurchaseDetail(
    this._res,
  );

  TRes _res;

  call({
    String? transPurchaseDetailId,
    String? transPurchaseId,
    bool? restockingPurchase,
    String? quantity,
    String? period,
    String? historyId,
    String? mstrItemId,
    String? remarks,
    String? symbol,
    String? $__typename,
  }) => _res;
}
