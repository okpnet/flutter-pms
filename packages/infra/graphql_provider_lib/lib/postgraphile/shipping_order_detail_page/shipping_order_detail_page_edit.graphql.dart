import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ShippingOrderDetailPageEdit {
  factory Variables$Mutation$ShippingOrderDetailPageEdit({
    required String transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
  }) => Variables$Mutation$ShippingOrderDetailPageEdit._({
    r'transShippingOrderDetailId': transShippingOrderDetailId,
    if (transShippingOrderId != null)
      r'transShippingOrderId': transShippingOrderId,
    if (transOrderDetailId != null) r'transOrderDetailId': transOrderDetailId,
    if (estimatedShippingDate != null)
      r'estimatedShippingDate': estimatedShippingDate,
    if (estimatedArrivalDate != null)
      r'estimatedArrivalDate': estimatedArrivalDate,
    if (shippingQuantity != null) r'shippingQuantity': shippingQuantity,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ShippingOrderDetailPageEdit._(this._$data);

  factory Variables$Mutation$ShippingOrderDetailPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailId = data['transShippingOrderDetailId'];
    result$data['transShippingOrderDetailId'] =
        (l$transShippingOrderDetailId as String);
    if (data.containsKey('transShippingOrderId')) {
      final l$transShippingOrderId = data['transShippingOrderId'];
      result$data['transShippingOrderId'] = (l$transShippingOrderId as String?);
    }
    if (data.containsKey('transOrderDetailId')) {
      final l$transOrderDetailId = data['transOrderDetailId'];
      result$data['transOrderDetailId'] = (l$transOrderDetailId as String?);
    }
    if (data.containsKey('estimatedShippingDate')) {
      final l$estimatedShippingDate = data['estimatedShippingDate'];
      result$data['estimatedShippingDate'] =
          (l$estimatedShippingDate as String?);
    }
    if (data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = data['estimatedArrivalDate'];
      result$data['estimatedArrivalDate'] = (l$estimatedArrivalDate as String?);
    }
    if (data.containsKey('shippingQuantity')) {
      final l$shippingQuantity = data['shippingQuantity'];
      result$data['shippingQuantity'] = (l$shippingQuantity as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ShippingOrderDetailPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderDetailId =>
      (_$data['transShippingOrderDetailId'] as String);

  String? get transShippingOrderId =>
      (_$data['transShippingOrderId'] as String?);

  String? get transOrderDetailId => (_$data['transOrderDetailId'] as String?);

  String? get estimatedShippingDate =>
      (_$data['estimatedShippingDate'] as String?);

  String? get estimatedArrivalDate =>
      (_$data['estimatedArrivalDate'] as String?);

  String? get shippingQuantity => (_$data['shippingQuantity'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    result$data['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    if (_$data.containsKey('transShippingOrderId')) {
      final l$transShippingOrderId = transShippingOrderId;
      result$data['transShippingOrderId'] = l$transShippingOrderId;
    }
    if (_$data.containsKey('transOrderDetailId')) {
      final l$transOrderDetailId = transOrderDetailId;
      result$data['transOrderDetailId'] = l$transOrderDetailId;
    }
    if (_$data.containsKey('estimatedShippingDate')) {
      final l$estimatedShippingDate = estimatedShippingDate;
      result$data['estimatedShippingDate'] = l$estimatedShippingDate;
    }
    if (_$data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = estimatedArrivalDate;
      result$data['estimatedArrivalDate'] = l$estimatedArrivalDate;
    }
    if (_$data.containsKey('shippingQuantity')) {
      final l$shippingQuantity = shippingQuantity;
      result$data['shippingQuantity'] = l$shippingQuantity;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit<
    Variables$Mutation$ShippingOrderDetailPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ShippingOrderDetailPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (_$data.containsKey('transShippingOrderId') !=
        other._$data.containsKey('transShippingOrderId')) {
      return false;
    }
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (_$data.containsKey('transOrderDetailId') !=
        other._$data.containsKey('transOrderDetailId')) {
      return false;
    }
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (_$data.containsKey('estimatedShippingDate') !=
        other._$data.containsKey('estimatedShippingDate')) {
      return false;
    }
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
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
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (_$data.containsKey('shippingQuantity') !=
        other._$data.containsKey('shippingQuantity')) {
      return false;
    }
    if (l$shippingQuantity != lOther$shippingQuantity) {
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
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderDetailId = transOrderDetailId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$shippingQuantity = shippingQuantity;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transShippingOrderDetailId,
      _$data.containsKey('transShippingOrderId')
          ? l$transShippingOrderId
          : const {},
      _$data.containsKey('transOrderDetailId')
          ? l$transOrderDetailId
          : const {},
      _$data.containsKey('estimatedShippingDate')
          ? l$estimatedShippingDate
          : const {},
      _$data.containsKey('estimatedArrivalDate')
          ? l$estimatedArrivalDate
          : const {},
      _$data.containsKey('shippingQuantity') ? l$shippingQuantity : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit(
    Variables$Mutation$ShippingOrderDetailPageEdit instance,
    TRes Function(Variables$Mutation$ShippingOrderDetailPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ShippingOrderDetailPageEdit;

  factory CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailPageEdit;

  TRes call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ShippingOrderDetailPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ShippingOrderDetailPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ShippingOrderDetailPageEdit _instance;

  final TRes Function(Variables$Mutation$ShippingOrderDetailPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailId = _undefined,
    Object? transShippingOrderId = _undefined,
    Object? transOrderDetailId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ShippingOrderDetailPageEdit._({
      ..._instance._$data,
      if (transShippingOrderDetailId != _undefined &&
          transShippingOrderDetailId != null)
        'transShippingOrderDetailId': (transShippingOrderDetailId as String),
      if (transShippingOrderId != _undefined)
        'transShippingOrderId': (transShippingOrderId as String?),
      if (transOrderDetailId != _undefined)
        'transOrderDetailId': (transOrderDetailId as String?),
      if (estimatedShippingDate != _undefined)
        'estimatedShippingDate': (estimatedShippingDate as String?),
      if (estimatedArrivalDate != _undefined)
        'estimatedArrivalDate': (estimatedArrivalDate as String?),
      if (shippingQuantity != _undefined)
        'shippingQuantity': (shippingQuantity as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingOrderDetailPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ShippingOrderDetailPageEdit(this._res);

  TRes _res;

  call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
  }) => _res;
}

class Mutation$ShippingOrderDetailPageEdit {
  Mutation$ShippingOrderDetailPageEdit({
    this.updateTransShippingOrderDetailByTransShippingOrderDetailId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ShippingOrderDetailPageEdit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        json['updateTransShippingOrderDetailByTransShippingOrderDetailId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailPageEdit(
      updateTransShippingOrderDetailByTransShippingOrderDetailId:
          l$updateTransShippingOrderDetailByTransShippingOrderDetailId == null
          ? null
          : Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId.fromJson(
              (l$updateTransShippingOrderDetailByTransShippingOrderDetailId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId?
  updateTransShippingOrderDetailByTransShippingOrderDetailId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        updateTransShippingOrderDetailByTransShippingOrderDetailId;
    _resultData['updateTransShippingOrderDetailByTransShippingOrderDetailId'] =
        l$updateTransShippingOrderDetailByTransShippingOrderDetailId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        updateTransShippingOrderDetailByTransShippingOrderDetailId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransShippingOrderDetailByTransShippingOrderDetailId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ShippingOrderDetailPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        updateTransShippingOrderDetailByTransShippingOrderDetailId;
    final lOther$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        other.updateTransShippingOrderDetailByTransShippingOrderDetailId;
    if (l$updateTransShippingOrderDetailByTransShippingOrderDetailId !=
        lOther$updateTransShippingOrderDetailByTransShippingOrderDetailId) {
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

extension UtilityExtension$Mutation$ShippingOrderDetailPageEdit
    on Mutation$ShippingOrderDetailPageEdit {
  CopyWith$Mutation$ShippingOrderDetailPageEdit<
    Mutation$ShippingOrderDetailPageEdit
  >
  get copyWith => CopyWith$Mutation$ShippingOrderDetailPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ShippingOrderDetailPageEdit<TRes> {
  factory CopyWith$Mutation$ShippingOrderDetailPageEdit(
    Mutation$ShippingOrderDetailPageEdit instance,
    TRes Function(Mutation$ShippingOrderDetailPageEdit) then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit;

  factory CopyWith$Mutation$ShippingOrderDetailPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit;

  TRes call({
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId?
    updateTransShippingOrderDetailByTransShippingOrderDetailId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get updateTransShippingOrderDetailByTransShippingOrderDetailId;
}

class _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderDetailPageEdit<TRes> {
  _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailPageEdit _instance;

  final TRes Function(Mutation$ShippingOrderDetailPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransShippingOrderDetailByTransShippingOrderDetailId =
        _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailPageEdit(
      updateTransShippingOrderDetailByTransShippingOrderDetailId:
          updateTransShippingOrderDetailByTransShippingOrderDetailId ==
              _undefined
          ? _instance.updateTransShippingOrderDetailByTransShippingOrderDetailId
          : (updateTransShippingOrderDetailByTransShippingOrderDetailId
                as Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get updateTransShippingOrderDetailByTransShippingOrderDetailId {
    final local$updateTransShippingOrderDetailByTransShippingOrderDetailId =
        _instance.updateTransShippingOrderDetailByTransShippingOrderDetailId;
    return local$updateTransShippingOrderDetailByTransShippingOrderDetailId ==
            null
        ? CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
            local$updateTransShippingOrderDetailByTransShippingOrderDetailId,
            (e) => call(
              updateTransShippingOrderDetailByTransShippingOrderDetailId: e,
            ),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderDetailPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId?
    updateTransShippingOrderDetailByTransShippingOrderDetailId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
    TRes
  >
  get updateTransShippingOrderDetailByTransShippingOrderDetailId =>
      CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId.stub(
        _res,
      );
}

const documentNodeMutationShippingOrderDetailPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ShippingOrderDetailPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'transShippingOrderDetailId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transShippingOrderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transOrderDetailId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'estimatedShippingDate'),
          ),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
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
          variable: VariableNode(name: NameNode(value: 'shippingQuantity')),
          type: NamedTypeNode(
            name: NameNode(value: 'BigFloat'),
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
              value:
                  'updateTransShippingOrderDetailByTransShippingOrderDetailId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingOrderDetailId'),
                      value: VariableNode(
                        name: NameNode(value: 'transShippingOrderDetailId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingOrderDetailPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transShippingOrderId'),
                            value: VariableNode(
                              name: NameNode(value: 'transShippingOrderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'transOrderDetailId'),
                            value: VariableNode(
                              name: NameNode(value: 'transOrderDetailId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'estimatedShippingDate'),
                            value: VariableNode(
                              name: NameNode(value: 'estimatedShippingDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'estimatedArrivalDate'),
                            value: VariableNode(
                              name: NameNode(value: 'estimatedArrivalDate'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'shippingQuantity'),
                            value: VariableNode(
                              name: NameNode(value: 'shippingQuantity'),
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
                  name: NameNode(value: 'transShippingOrderDetail'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transShippingOrderDetailId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transShippingOrderId'),
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
                        name: NameNode(value: 'estimatedShippingDate'),
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
                        name: NameNode(value: 'shippingQuantity'),
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
Mutation$ShippingOrderDetailPageEdit
_parserFn$Mutation$ShippingOrderDetailPageEdit(Map<String, dynamic> data) =>
    Mutation$ShippingOrderDetailPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ShippingOrderDetailPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ShippingOrderDetailPageEdit?,
    );

class Options$Mutation$ShippingOrderDetailPageEdit
    extends graphql.MutationOptions<Mutation$ShippingOrderDetailPageEdit> {
  Options$Mutation$ShippingOrderDetailPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderDetailPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderDetailPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderDetailPageEdit>? update,
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
                     : _parserFn$Mutation$ShippingOrderDetailPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderDetailPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderDetailPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderDetailPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ShippingOrderDetailPageEdit
    extends graphql.WatchQueryOptions<Mutation$ShippingOrderDetailPageEdit> {
  WatchOptions$Mutation$ShippingOrderDetailPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderDetailPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationShippingOrderDetailPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ShippingOrderDetailPageEdit,
       );
}

extension ClientExtension$Mutation$ShippingOrderDetailPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ShippingOrderDetailPageEdit>>
  mutate$ShippingOrderDetailPageEdit(
    Options$Mutation$ShippingOrderDetailPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ShippingOrderDetailPageEdit>
  watchMutation$ShippingOrderDetailPageEdit(
    WatchOptions$Mutation$ShippingOrderDetailPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ShippingOrderDetailPageEdit$HookResult {
  Mutation$ShippingOrderDetailPageEdit$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ShippingOrderDetailPageEdit runMutation;

  final graphql.QueryResult<Mutation$ShippingOrderDetailPageEdit> result;
}

Mutation$ShippingOrderDetailPageEdit$HookResult
useMutation$ShippingOrderDetailPageEdit([
  WidgetOptions$Mutation$ShippingOrderDetailPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ShippingOrderDetailPageEdit(),
  );
  return Mutation$ShippingOrderDetailPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ShippingOrderDetailPageEdit>
useWatchMutation$ShippingOrderDetailPageEdit(
  WatchOptions$Mutation$ShippingOrderDetailPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ShippingOrderDetailPageEdit
    extends graphql.MutationOptions<Mutation$ShippingOrderDetailPageEdit> {
  WidgetOptions$Mutation$ShippingOrderDetailPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderDetailPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderDetailPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderDetailPageEdit>? update,
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
                     : _parserFn$Mutation$ShippingOrderDetailPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderDetailPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderDetailPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderDetailPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ShippingOrderDetailPageEdit =
    graphql.MultiSourceResult<Mutation$ShippingOrderDetailPageEdit> Function(
      Variables$Mutation$ShippingOrderDetailPageEdit, {
      Object? optimisticResult,
      Mutation$ShippingOrderDetailPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ShippingOrderDetailPageEdit = widgets.Widget Function(
  RunMutation$Mutation$ShippingOrderDetailPageEdit,
  graphql.QueryResult<Mutation$ShippingOrderDetailPageEdit>?,
);

class Mutation$ShippingOrderDetailPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ShippingOrderDetailPageEdit> {
  Mutation$ShippingOrderDetailPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ShippingOrderDetailPageEdit? options,
    required Builder$Mutation$ShippingOrderDetailPageEdit builder,
  }) : super(
         key: key,
         options:
             options ?? WidgetOptions$Mutation$ShippingOrderDetailPageEdit(),
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

class Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId {
  Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId({
    this.transShippingOrderDetail,
    this.$__typename = 'UpdateTransShippingOrderDetailPayload',
  });

  factory Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetail = json['transShippingOrderDetail'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
      transShippingOrderDetail: l$transShippingOrderDetail == null
          ? null
          : Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail.fromJson(
              (l$transShippingOrderDetail as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail?
  transShippingOrderDetail;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetail = transShippingOrderDetail;
    _resultData['transShippingOrderDetail'] = l$transShippingOrderDetail
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetail = transShippingOrderDetail;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transShippingOrderDetail, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetail = transShippingOrderDetail;
    final lOther$transShippingOrderDetail = other.transShippingOrderDetail;
    if (l$transShippingOrderDetail != lOther$transShippingOrderDetail) {
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

extension UtilityExtension$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId
    on
        Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId {
  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId
    instance,
    TRes Function(
      Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId;

  factory CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId;

  TRes call({
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail?
    transShippingOrderDetail,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
    TRes
  >
  get transShippingOrderDetail;
}

class _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId
  _instance;

  final TRes Function(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetail = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
      transShippingOrderDetail: transShippingOrderDetail == _undefined
          ? _instance.transShippingOrderDetail
          : (transShippingOrderDetail
                as Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
    TRes
  >
  get transShippingOrderDetail {
    final local$transShippingOrderDetail = _instance.transShippingOrderDetail;
    return local$transShippingOrderDetail == null
        ? CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
            local$transShippingOrderDetail,
            (e) => call(transShippingOrderDetail: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail?
    transShippingOrderDetail,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
    TRes
  >
  get transShippingOrderDetail =>
      CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail.stub(
        _res,
      );
}

class Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail {
  Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail({
    required this.transShippingOrderDetailId,
    required this.transShippingOrderId,
    required this.transOrderDetailId,
    this.estimatedShippingDate,
    this.estimatedArrivalDate,
    required this.shippingQuantity,
    this.remarks,
    this.$__typename = 'TransShippingOrderDetail',
  });

  factory Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderDetailId = json['transShippingOrderDetailId'];
    final l$transShippingOrderId = json['transShippingOrderId'];
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$estimatedShippingDate = json['estimatedShippingDate'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$shippingQuantity = json['shippingQuantity'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
      transShippingOrderDetailId: (l$transShippingOrderDetailId as String),
      transShippingOrderId: (l$transShippingOrderId as String),
      transOrderDetailId: (l$transOrderDetailId as String),
      estimatedShippingDate: (l$estimatedShippingDate as String?),
      estimatedArrivalDate: (l$estimatedArrivalDate as String?),
      shippingQuantity: (l$shippingQuantity as String),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderDetailId;

  final String transShippingOrderId;

  final String transOrderDetailId;

  final String? estimatedShippingDate;

  final String? estimatedArrivalDate;

  final String shippingQuantity;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    _resultData['transShippingOrderDetailId'] = l$transShippingOrderDetailId;
    final l$transShippingOrderId = transShippingOrderId;
    _resultData['transShippingOrderId'] = l$transShippingOrderId;
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$estimatedShippingDate = estimatedShippingDate;
    _resultData['estimatedShippingDate'] = l$estimatedShippingDate;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
    final l$shippingQuantity = shippingQuantity;
    _resultData['shippingQuantity'] = l$shippingQuantity;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderDetailId = transOrderDetailId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$shippingQuantity = shippingQuantity;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderDetailId,
      l$transShippingOrderId,
      l$transOrderDetailId,
      l$estimatedShippingDate,
      l$estimatedArrivalDate,
      l$shippingQuantity,
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
            is! Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderDetailId = transShippingOrderDetailId;
    final lOther$transShippingOrderDetailId = other.transShippingOrderDetailId;
    if (l$transShippingOrderDetailId != lOther$transShippingOrderDetailId) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
      return false;
    }
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
      return false;
    }
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final lOther$estimatedArrivalDate = other.estimatedArrivalDate;
    if (l$estimatedArrivalDate != lOther$estimatedArrivalDate) {
      return false;
    }
    final l$shippingQuantity = shippingQuantity;
    final lOther$shippingQuantity = other.shippingQuantity;
    if (l$shippingQuantity != lOther$shippingQuantity) {
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

extension UtilityExtension$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail
    on
        Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail {
  CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail
    instance,
    TRes Function(
      Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail;

  factory CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail;

  TRes call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail
  _instance;

  final TRes Function(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderDetailId = _undefined,
    Object? transShippingOrderId = _undefined,
    Object? transOrderDetailId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? shippingQuantity = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
      transShippingOrderDetailId:
          transShippingOrderDetailId == _undefined ||
              transShippingOrderDetailId == null
          ? _instance.transShippingOrderDetailId
          : (transShippingOrderDetailId as String),
      transShippingOrderId:
          transShippingOrderId == _undefined || transShippingOrderId == null
          ? _instance.transShippingOrderId
          : (transShippingOrderId as String),
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
      estimatedShippingDate: estimatedShippingDate == _undefined
          ? _instance.estimatedShippingDate
          : (estimatedShippingDate as String?),
      estimatedArrivalDate: estimatedArrivalDate == _undefined
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String?),
      shippingQuantity:
          shippingQuantity == _undefined || shippingQuantity == null
          ? _instance.shippingQuantity
          : (shippingQuantity as String),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderDetailPageEdit$updateTransShippingOrderDetailByTransShippingOrderDetailId$transShippingOrderDetail(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderDetailId,
    String? transShippingOrderId,
    String? transOrderDetailId,
    String? estimatedShippingDate,
    String? estimatedArrivalDate,
    String? shippingQuantity,
    String? remarks,
    String? $__typename,
  }) => _res;
}
