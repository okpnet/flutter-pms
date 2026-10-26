import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$ShippingOrderPageEdit {
  factory Variables$Mutation$ShippingOrderPageEdit({
    required String transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
  }) => Variables$Mutation$ShippingOrderPageEdit._({
    r'transShippingOrderId': transShippingOrderId,
    if (transOrderId != null) r'transOrderId': transOrderId,
    if (estimatedShippingDate != null)
      r'estimatedShippingDate': estimatedShippingDate,
    if (code != null) r'code': code,
    if (estimatedArrivalDate != null)
      r'estimatedArrivalDate': estimatedArrivalDate,
    if (stakeholderHistoryId != null)
      r'stakeholderHistoryId': stakeholderHistoryId,
    if (stakeholderId != null) r'stakeholderId': stakeholderId,
    if (remarks != null) r'remarks': remarks,
  });

  Variables$Mutation$ShippingOrderPageEdit._(this._$data);

  factory Variables$Mutation$ShippingOrderPageEdit.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderId = data['transShippingOrderId'];
    result$data['transShippingOrderId'] = (l$transShippingOrderId as String);
    if (data.containsKey('transOrderId')) {
      final l$transOrderId = data['transOrderId'];
      result$data['transOrderId'] = (l$transOrderId as String?);
    }
    if (data.containsKey('estimatedShippingDate')) {
      final l$estimatedShippingDate = data['estimatedShippingDate'];
      result$data['estimatedShippingDate'] =
          (l$estimatedShippingDate as String?);
    }
    if (data.containsKey('code')) {
      final l$code = data['code'];
      result$data['code'] = (l$code as String?);
    }
    if (data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = data['estimatedArrivalDate'];
      result$data['estimatedArrivalDate'] = (l$estimatedArrivalDate as String?);
    }
    if (data.containsKey('stakeholderHistoryId')) {
      final l$stakeholderHistoryId = data['stakeholderHistoryId'];
      result$data['stakeholderHistoryId'] = (l$stakeholderHistoryId as String?);
    }
    if (data.containsKey('stakeholderId')) {
      final l$stakeholderId = data['stakeholderId'];
      result$data['stakeholderId'] = (l$stakeholderId as String?);
    }
    if (data.containsKey('remarks')) {
      final l$remarks = data['remarks'];
      result$data['remarks'] = (l$remarks as String?);
    }
    return Variables$Mutation$ShippingOrderPageEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transShippingOrderId => (_$data['transShippingOrderId'] as String);

  String? get transOrderId => (_$data['transOrderId'] as String?);

  String? get estimatedShippingDate =>
      (_$data['estimatedShippingDate'] as String?);

  String? get code => (_$data['code'] as String?);

  String? get estimatedArrivalDate =>
      (_$data['estimatedArrivalDate'] as String?);

  String? get stakeholderHistoryId =>
      (_$data['stakeholderHistoryId'] as String?);

  String? get stakeholderId => (_$data['stakeholderId'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transShippingOrderId = transShippingOrderId;
    result$data['transShippingOrderId'] = l$transShippingOrderId;
    if (_$data.containsKey('transOrderId')) {
      final l$transOrderId = transOrderId;
      result$data['transOrderId'] = l$transOrderId;
    }
    if (_$data.containsKey('estimatedShippingDate')) {
      final l$estimatedShippingDate = estimatedShippingDate;
      result$data['estimatedShippingDate'] = l$estimatedShippingDate;
    }
    if (_$data.containsKey('code')) {
      final l$code = code;
      result$data['code'] = l$code;
    }
    if (_$data.containsKey('estimatedArrivalDate')) {
      final l$estimatedArrivalDate = estimatedArrivalDate;
      result$data['estimatedArrivalDate'] = l$estimatedArrivalDate;
    }
    if (_$data.containsKey('stakeholderHistoryId')) {
      final l$stakeholderHistoryId = stakeholderHistoryId;
      result$data['stakeholderHistoryId'] = l$stakeholderHistoryId;
    }
    if (_$data.containsKey('stakeholderId')) {
      final l$stakeholderId = stakeholderId;
      result$data['stakeholderId'] = l$stakeholderId;
    }
    if (_$data.containsKey('remarks')) {
      final l$remarks = remarks;
      result$data['remarks'] = l$remarks;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$ShippingOrderPageEdit<
    Variables$Mutation$ShippingOrderPageEdit
  >
  get copyWith =>
      CopyWith$Variables$Mutation$ShippingOrderPageEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$ShippingOrderPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
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
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (_$data.containsKey('estimatedShippingDate') !=
        other._$data.containsKey('estimatedShippingDate')) {
      return false;
    }
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
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
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final lOther$stakeholderHistoryId = other.stakeholderHistoryId;
    if (_$data.containsKey('stakeholderHistoryId') !=
        other._$data.containsKey('stakeholderHistoryId')) {
      return false;
    }
    if (l$stakeholderHistoryId != lOther$stakeholderHistoryId) {
      return false;
    }
    final l$stakeholderId = stakeholderId;
    final lOther$stakeholderId = other.stakeholderId;
    if (_$data.containsKey('stakeholderId') !=
        other._$data.containsKey('stakeholderId')) {
      return false;
    }
    if (l$stakeholderId != lOther$stakeholderId) {
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
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderId = transOrderId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final l$stakeholderId = stakeholderId;
    final l$remarks = remarks;
    return Object.hashAll([
      l$transShippingOrderId,
      _$data.containsKey('transOrderId') ? l$transOrderId : const {},
      _$data.containsKey('estimatedShippingDate')
          ? l$estimatedShippingDate
          : const {},
      _$data.containsKey('code') ? l$code : const {},
      _$data.containsKey('estimatedArrivalDate')
          ? l$estimatedArrivalDate
          : const {},
      _$data.containsKey('stakeholderHistoryId')
          ? l$stakeholderHistoryId
          : const {},
      _$data.containsKey('stakeholderId') ? l$stakeholderId : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$ShippingOrderPageEdit<TRes> {
  factory CopyWith$Variables$Mutation$ShippingOrderPageEdit(
    Variables$Mutation$ShippingOrderPageEdit instance,
    TRes Function(Variables$Mutation$ShippingOrderPageEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$ShippingOrderPageEdit;

  factory CopyWith$Variables$Mutation$ShippingOrderPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ShippingOrderPageEdit;

  TRes call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
  });
}

class _CopyWithImpl$Variables$Mutation$ShippingOrderPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingOrderPageEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$ShippingOrderPageEdit(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ShippingOrderPageEdit _instance;

  final TRes Function(Variables$Mutation$ShippingOrderPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderId = _undefined,
    Object? transOrderId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? stakeholderHistoryId = _undefined,
    Object? stakeholderId = _undefined,
    Object? remarks = _undefined,
  }) => _then(
    Variables$Mutation$ShippingOrderPageEdit._({
      ..._instance._$data,
      if (transShippingOrderId != _undefined && transShippingOrderId != null)
        'transShippingOrderId': (transShippingOrderId as String),
      if (transOrderId != _undefined) 'transOrderId': (transOrderId as String?),
      if (estimatedShippingDate != _undefined)
        'estimatedShippingDate': (estimatedShippingDate as String?),
      if (code != _undefined) 'code': (code as String?),
      if (estimatedArrivalDate != _undefined)
        'estimatedArrivalDate': (estimatedArrivalDate as String?),
      if (stakeholderHistoryId != _undefined)
        'stakeholderHistoryId': (stakeholderHistoryId as String?),
      if (stakeholderId != _undefined)
        'stakeholderId': (stakeholderId as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$ShippingOrderPageEdit<TRes>
    implements CopyWith$Variables$Mutation$ShippingOrderPageEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ShippingOrderPageEdit(this._res);

  TRes _res;

  call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
  }) => _res;
}

class Mutation$ShippingOrderPageEdit {
  Mutation$ShippingOrderPageEdit({
    this.updateTransShippingOrderByTransShippingOrderId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ShippingOrderPageEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransShippingOrderByTransShippingOrderId =
        json['updateTransShippingOrderByTransShippingOrderId'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderPageEdit(
      updateTransShippingOrderByTransShippingOrderId:
          l$updateTransShippingOrderByTransShippingOrderId == null
          ? null
          : Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId.fromJson(
              (l$updateTransShippingOrderByTransShippingOrderId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId?
  updateTransShippingOrderByTransShippingOrderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransShippingOrderByTransShippingOrderId =
        updateTransShippingOrderByTransShippingOrderId;
    _resultData['updateTransShippingOrderByTransShippingOrderId'] =
        l$updateTransShippingOrderByTransShippingOrderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransShippingOrderByTransShippingOrderId =
        updateTransShippingOrderByTransShippingOrderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransShippingOrderByTransShippingOrderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$ShippingOrderPageEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransShippingOrderByTransShippingOrderId =
        updateTransShippingOrderByTransShippingOrderId;
    final lOther$updateTransShippingOrderByTransShippingOrderId =
        other.updateTransShippingOrderByTransShippingOrderId;
    if (l$updateTransShippingOrderByTransShippingOrderId !=
        lOther$updateTransShippingOrderByTransShippingOrderId) {
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

extension UtilityExtension$Mutation$ShippingOrderPageEdit
    on Mutation$ShippingOrderPageEdit {
  CopyWith$Mutation$ShippingOrderPageEdit<Mutation$ShippingOrderPageEdit>
  get copyWith => CopyWith$Mutation$ShippingOrderPageEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$ShippingOrderPageEdit<TRes> {
  factory CopyWith$Mutation$ShippingOrderPageEdit(
    Mutation$ShippingOrderPageEdit instance,
    TRes Function(Mutation$ShippingOrderPageEdit) then,
  ) = _CopyWithImpl$Mutation$ShippingOrderPageEdit;

  factory CopyWith$Mutation$ShippingOrderPageEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ShippingOrderPageEdit;

  TRes call({
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId?
    updateTransShippingOrderByTransShippingOrderId,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
    TRes
  >
  get updateTransShippingOrderByTransShippingOrderId;
}

class _CopyWithImpl$Mutation$ShippingOrderPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderPageEdit<TRes> {
  _CopyWithImpl$Mutation$ShippingOrderPageEdit(this._instance, this._then);

  final Mutation$ShippingOrderPageEdit _instance;

  final TRes Function(Mutation$ShippingOrderPageEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransShippingOrderByTransShippingOrderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderPageEdit(
      updateTransShippingOrderByTransShippingOrderId:
          updateTransShippingOrderByTransShippingOrderId == _undefined
          ? _instance.updateTransShippingOrderByTransShippingOrderId
          : (updateTransShippingOrderByTransShippingOrderId
                as Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
    TRes
  >
  get updateTransShippingOrderByTransShippingOrderId {
    final local$updateTransShippingOrderByTransShippingOrderId =
        _instance.updateTransShippingOrderByTransShippingOrderId;
    return local$updateTransShippingOrderByTransShippingOrderId == null
        ? CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
            local$updateTransShippingOrderByTransShippingOrderId,
            (e) => call(updateTransShippingOrderByTransShippingOrderId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderPageEdit<TRes>
    implements CopyWith$Mutation$ShippingOrderPageEdit<TRes> {
  _CopyWithStubImpl$Mutation$ShippingOrderPageEdit(this._res);

  TRes _res;

  call({
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId?
    updateTransShippingOrderByTransShippingOrderId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
    TRes
  >
  get updateTransShippingOrderByTransShippingOrderId =>
      CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId.stub(
        _res,
      );
}

const documentNodeMutationShippingOrderPageEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'ShippingOrderPageEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transShippingOrderId')),
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
          variable: VariableNode(name: NameNode(value: 'stakeholderHistoryId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'stakeholderId')),
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
            name: NameNode(
              value: 'updateTransShippingOrderByTransShippingOrderId',
            ),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingOrderId'),
                      value: VariableNode(
                        name: NameNode(value: 'transShippingOrderId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transShippingOrderPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'transOrderId'),
                            value: VariableNode(
                              name: NameNode(value: 'transOrderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'estimatedShippingDate'),
                            value: VariableNode(
                              name: NameNode(value: 'estimatedShippingDate'),
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
                            name: NameNode(value: 'stakeholderHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'stakeholderHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'stakeholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'stakeholderId'),
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
                  name: NameNode(value: 'transShippingOrder'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transShippingOrderId'),
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
                        name: NameNode(value: 'estimatedShippingDate'),
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
                        name: NameNode(value: 'stakeholderHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stakeholderId'),
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
Mutation$ShippingOrderPageEdit _parserFn$Mutation$ShippingOrderPageEdit(
  Map<String, dynamic> data,
) => Mutation$ShippingOrderPageEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$ShippingOrderPageEdit =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Mutation$ShippingOrderPageEdit?,
    );

class Options$Mutation$ShippingOrderPageEdit
    extends graphql.MutationOptions<Mutation$ShippingOrderPageEdit> {
  Options$Mutation$ShippingOrderPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderPageEdit>? update,
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
                     : _parserFn$Mutation$ShippingOrderPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$ShippingOrderPageEdit
    extends graphql.WatchQueryOptions<Mutation$ShippingOrderPageEdit> {
  WatchOptions$Mutation$ShippingOrderPageEdit({
    String? operationName,
    required Variables$Mutation$ShippingOrderPageEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderPageEdit? typedOptimisticResult,
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
         document: documentNodeMutationShippingOrderPageEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$ShippingOrderPageEdit,
       );
}

extension ClientExtension$Mutation$ShippingOrderPageEdit
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ShippingOrderPageEdit>>
  mutate$ShippingOrderPageEdit(
    Options$Mutation$ShippingOrderPageEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$ShippingOrderPageEdit>
  watchMutation$ShippingOrderPageEdit(
    WatchOptions$Mutation$ShippingOrderPageEdit options,
  ) => this.watchMutation(options);
}

class Mutation$ShippingOrderPageEdit$HookResult {
  Mutation$ShippingOrderPageEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$ShippingOrderPageEdit runMutation;

  final graphql.QueryResult<Mutation$ShippingOrderPageEdit> result;
}

Mutation$ShippingOrderPageEdit$HookResult useMutation$ShippingOrderPageEdit([
  WidgetOptions$Mutation$ShippingOrderPageEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$ShippingOrderPageEdit(),
  );
  return Mutation$ShippingOrderPageEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ShippingOrderPageEdit>
useWatchMutation$ShippingOrderPageEdit(
  WatchOptions$Mutation$ShippingOrderPageEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ShippingOrderPageEdit
    extends graphql.MutationOptions<Mutation$ShippingOrderPageEdit> {
  WidgetOptions$Mutation$ShippingOrderPageEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ShippingOrderPageEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ShippingOrderPageEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$ShippingOrderPageEdit>? update,
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
                     : _parserFn$Mutation$ShippingOrderPageEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationShippingOrderPageEdit,
         parserFn: _parserFn$Mutation$ShippingOrderPageEdit,
       );

  final OnMutationCompleted$Mutation$ShippingOrderPageEdit?
  onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$ShippingOrderPageEdit =
    graphql.MultiSourceResult<Mutation$ShippingOrderPageEdit> Function(
      Variables$Mutation$ShippingOrderPageEdit, {
      Object? optimisticResult,
      Mutation$ShippingOrderPageEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$ShippingOrderPageEdit = widgets.Widget Function(
  RunMutation$Mutation$ShippingOrderPageEdit,
  graphql.QueryResult<Mutation$ShippingOrderPageEdit>?,
);

class Mutation$ShippingOrderPageEdit$Widget
    extends graphql_flutter.Mutation<Mutation$ShippingOrderPageEdit> {
  Mutation$ShippingOrderPageEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ShippingOrderPageEdit? options,
    required Builder$Mutation$ShippingOrderPageEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$ShippingOrderPageEdit(),
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

class Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId {
  Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId({
    this.transShippingOrder,
    this.$__typename = 'UpdateTransShippingOrderPayload',
  });

  factory Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrder = json['transShippingOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
      transShippingOrder: l$transShippingOrder == null
          ? null
          : Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder.fromJson(
              (l$transShippingOrder as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder?
  transShippingOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrder = transShippingOrder;
    _resultData['transShippingOrder'] = l$transShippingOrder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrder = transShippingOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transShippingOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrder = transShippingOrder;
    final lOther$transShippingOrder = other.transShippingOrder;
    if (l$transShippingOrder != lOther$transShippingOrder) {
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

extension UtilityExtension$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId
    on Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId {
  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId
    instance,
    TRes Function(
      Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId;

  factory CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId;

  TRes call({
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder?
    transShippingOrder,
    String? $__typename,
  });
  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
    TRes
  >
  get transShippingOrder;
}

class _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId
  _instance;

  final TRes Function(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrder = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
      transShippingOrder: transShippingOrder == _undefined
          ? _instance.transShippingOrder
          : (transShippingOrder
                as Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
    TRes
  >
  get transShippingOrder {
    final local$transShippingOrder = _instance.transShippingOrder;
    return local$transShippingOrder == null
        ? CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
            local$transShippingOrder,
            (e) => call(transShippingOrder: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder?
    transShippingOrder,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
    TRes
  >
  get transShippingOrder =>
      CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder.stub(
        _res,
      );
}

class Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder {
  Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder({
    required this.transShippingOrderId,
    required this.transOrderId,
    required this.estimatedShippingDate,
    required this.code,
    required this.estimatedArrivalDate,
    this.stakeholderHistoryId,
    this.stakeholderId,
    this.remarks,
    this.$__typename = 'TransShippingOrder',
  });

  factory Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transShippingOrderId = json['transShippingOrderId'];
    final l$transOrderId = json['transOrderId'];
    final l$estimatedShippingDate = json['estimatedShippingDate'];
    final l$code = json['code'];
    final l$estimatedArrivalDate = json['estimatedArrivalDate'];
    final l$stakeholderHistoryId = json['stakeholderHistoryId'];
    final l$stakeholderId = json['stakeholderId'];
    final l$remarks = json['remarks'];
    final l$$__typename = json['__typename'];
    return Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
      transShippingOrderId: (l$transShippingOrderId as String),
      transOrderId: (l$transOrderId as String),
      estimatedShippingDate: (l$estimatedShippingDate as String),
      code: (l$code as String),
      estimatedArrivalDate: (l$estimatedArrivalDate as String),
      stakeholderHistoryId: (l$stakeholderHistoryId as String?),
      stakeholderId: (l$stakeholderId as String?),
      remarks: (l$remarks as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transShippingOrderId;

  final String transOrderId;

  final String estimatedShippingDate;

  final String code;

  final String estimatedArrivalDate;

  final String? stakeholderHistoryId;

  final String? stakeholderId;

  final String? remarks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transShippingOrderId = transShippingOrderId;
    _resultData['transShippingOrderId'] = l$transShippingOrderId;
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$estimatedShippingDate = estimatedShippingDate;
    _resultData['estimatedShippingDate'] = l$estimatedShippingDate;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    _resultData['estimatedArrivalDate'] = l$estimatedArrivalDate;
    final l$stakeholderHistoryId = stakeholderHistoryId;
    _resultData['stakeholderHistoryId'] = l$stakeholderHistoryId;
    final l$stakeholderId = stakeholderId;
    _resultData['stakeholderId'] = l$stakeholderId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transShippingOrderId = transShippingOrderId;
    final l$transOrderId = transOrderId;
    final l$estimatedShippingDate = estimatedShippingDate;
    final l$code = code;
    final l$estimatedArrivalDate = estimatedArrivalDate;
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final l$stakeholderId = stakeholderId;
    final l$remarks = remarks;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transShippingOrderId,
      l$transOrderId,
      l$estimatedShippingDate,
      l$code,
      l$estimatedArrivalDate,
      l$stakeholderHistoryId,
      l$stakeholderId,
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
            is! Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transShippingOrderId = transShippingOrderId;
    final lOther$transShippingOrderId = other.transShippingOrderId;
    if (l$transShippingOrderId != lOther$transShippingOrderId) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$estimatedShippingDate = estimatedShippingDate;
    final lOther$estimatedShippingDate = other.estimatedShippingDate;
    if (l$estimatedShippingDate != lOther$estimatedShippingDate) {
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
    final l$stakeholderHistoryId = stakeholderHistoryId;
    final lOther$stakeholderHistoryId = other.stakeholderHistoryId;
    if (l$stakeholderHistoryId != lOther$stakeholderHistoryId) {
      return false;
    }
    final l$stakeholderId = stakeholderId;
    final lOther$stakeholderId = other.stakeholderId;
    if (l$stakeholderId != lOther$stakeholderId) {
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

extension UtilityExtension$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder
    on
        Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder {
  CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder
  >
  get copyWith =>
      CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
  TRes
> {
  factory CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder
    instance,
    TRes Function(
      Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder,
    )
    then,
  ) = _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder;

  factory CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder;

  TRes call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
          TRes
        > {
  _CopyWithImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
    this._instance,
    this._then,
  );

  final Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder
  _instance;

  final TRes Function(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transShippingOrderId = _undefined,
    Object? transOrderId = _undefined,
    Object? estimatedShippingDate = _undefined,
    Object? code = _undefined,
    Object? estimatedArrivalDate = _undefined,
    Object? stakeholderHistoryId = _undefined,
    Object? stakeholderId = _undefined,
    Object? remarks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
      transShippingOrderId:
          transShippingOrderId == _undefined || transShippingOrderId == null
          ? _instance.transShippingOrderId
          : (transShippingOrderId as String),
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      estimatedShippingDate:
          estimatedShippingDate == _undefined || estimatedShippingDate == null
          ? _instance.estimatedShippingDate
          : (estimatedShippingDate as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      estimatedArrivalDate:
          estimatedArrivalDate == _undefined || estimatedArrivalDate == null
          ? _instance.estimatedArrivalDate
          : (estimatedArrivalDate as String),
      stakeholderHistoryId: stakeholderHistoryId == _undefined
          ? _instance.stakeholderHistoryId
          : (stakeholderHistoryId as String?),
      stakeholderId: stakeholderId == _undefined
          ? _instance.stakeholderId
          : (stakeholderId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
  TRes
>
    implements
        CopyWith$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder<
          TRes
        > {
  _CopyWithStubImpl$Mutation$ShippingOrderPageEdit$updateTransShippingOrderByTransShippingOrderId$transShippingOrder(
    this._res,
  );

  TRes _res;

  call({
    String? transShippingOrderId,
    String? transOrderId,
    String? estimatedShippingDate,
    String? code,
    String? estimatedArrivalDate,
    String? stakeholderHistoryId,
    String? stakeholderId,
    String? remarks,
    String? $__typename,
  }) => _res;
}
