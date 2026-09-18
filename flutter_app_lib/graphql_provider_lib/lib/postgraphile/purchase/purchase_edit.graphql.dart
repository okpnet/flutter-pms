import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$PurchaseEdit {
  factory Variables$Mutation$PurchaseEdit({
    required String transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$PurchaseEdit._({
    r'transPurchaseId': transPurchaseId,
    if (supplierHistoryId != null) r'supplierHistoryId': supplierHistoryId,
    if (mstrStakeholderId != null) r'mstrStakeholderId': mstrStakeholderId,
    if (contactHistoryId != null) r'contactHistoryId': contactHistoryId,
    if (mstrStakeholderContactId != null)
      r'mstrStakeholderContactId': mstrStakeholderContactId,
    if (registerAt != null) r'registerAt': registerAt,
    if (purchaseOrderDate != null) r'purchaseOrderDate': purchaseOrderDate,
    if (deadline != null) r'deadline': deadline,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$PurchaseEdit._(this._$data);

  factory Variables$Mutation$PurchaseEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transPurchaseId = data['transPurchaseId'];
    result$data['transPurchaseId'] = (l$transPurchaseId as String);
    if (data.containsKey('supplierHistoryId')) {
      final l$supplierHistoryId = data['supplierHistoryId'];
      result$data['supplierHistoryId'] = (l$supplierHistoryId as String?);
    }
    if (data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = data['mstrStakeholderId'];
      result$data['mstrStakeholderId'] = (l$mstrStakeholderId as String?);
    }
    if (data.containsKey('contactHistoryId')) {
      final l$contactHistoryId = data['contactHistoryId'];
      result$data['contactHistoryId'] = (l$contactHistoryId as String?);
    }
    if (data.containsKey('mstrStakeholderContactId')) {
      final l$mstrStakeholderContactId = data['mstrStakeholderContactId'];
      result$data['mstrStakeholderContactId'] =
          (l$mstrStakeholderContactId as String?);
    }
    if (data.containsKey('registerAt')) {
      final l$registerAt = data['registerAt'];
      result$data['registerAt'] = (l$registerAt as String?);
    }
    if (data.containsKey('purchaseOrderDate')) {
      final l$purchaseOrderDate = data['purchaseOrderDate'];
      result$data['purchaseOrderDate'] = (l$purchaseOrderDate as String?);
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
    return Variables$Mutation$PurchaseEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transPurchaseId => (_$data['transPurchaseId'] as String);

  String? get supplierHistoryId => (_$data['supplierHistoryId'] as String?);

  String? get mstrStakeholderId => (_$data['mstrStakeholderId'] as String?);

  String? get contactHistoryId => (_$data['contactHistoryId'] as String?);

  String? get mstrStakeholderContactId =>
      (_$data['mstrStakeholderContactId'] as String?);

  String? get registerAt => (_$data['registerAt'] as String?);

  String? get purchaseOrderDate => (_$data['purchaseOrderDate'] as String?);

  String? get deadline => (_$data['deadline'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transPurchaseId = transPurchaseId;
    result$data['transPurchaseId'] = l$transPurchaseId;
    if (_$data.containsKey('supplierHistoryId')) {
      final l$supplierHistoryId = supplierHistoryId;
      result$data['supplierHistoryId'] = l$supplierHistoryId;
    }
    if (_$data.containsKey('mstrStakeholderId')) {
      final l$mstrStakeholderId = mstrStakeholderId;
      result$data['mstrStakeholderId'] = l$mstrStakeholderId;
    }
    if (_$data.containsKey('contactHistoryId')) {
      final l$contactHistoryId = contactHistoryId;
      result$data['contactHistoryId'] = l$contactHistoryId;
    }
    if (_$data.containsKey('mstrStakeholderContactId')) {
      final l$mstrStakeholderContactId = mstrStakeholderContactId;
      result$data['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    }
    if (_$data.containsKey('registerAt')) {
      final l$registerAt = registerAt;
      result$data['registerAt'] = l$registerAt;
    }
    if (_$data.containsKey('purchaseOrderDate')) {
      final l$purchaseOrderDate = purchaseOrderDate;
      result$data['purchaseOrderDate'] = l$purchaseOrderDate;
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

  CopyWith$Variables$Mutation$PurchaseEdit<Variables$Mutation$PurchaseEdit>
  get copyWith => CopyWith$Variables$Mutation$PurchaseEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$PurchaseEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$supplierHistoryId = supplierHistoryId;
    final lOther$supplierHistoryId = other.supplierHistoryId;
    if (_$data.containsKey('supplierHistoryId') !=
        other._$data.containsKey('supplierHistoryId')) {
      return false;
    }
    if (l$supplierHistoryId != lOther$supplierHistoryId) {
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
    final l$contactHistoryId = contactHistoryId;
    final lOther$contactHistoryId = other.contactHistoryId;
    if (_$data.containsKey('contactHistoryId') !=
        other._$data.containsKey('contactHistoryId')) {
      return false;
    }
    if (l$contactHistoryId != lOther$contactHistoryId) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (_$data.containsKey('mstrStakeholderContactId') !=
        other._$data.containsKey('mstrStakeholderContactId')) {
      return false;
    }
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$registerAt = registerAt;
    final lOther$registerAt = other.registerAt;
    if (_$data.containsKey('registerAt') !=
        other._$data.containsKey('registerAt')) {
      return false;
    }
    if (l$registerAt != lOther$registerAt) {
      return false;
    }
    final l$purchaseOrderDate = purchaseOrderDate;
    final lOther$purchaseOrderDate = other.purchaseOrderDate;
    if (_$data.containsKey('purchaseOrderDate') !=
        other._$data.containsKey('purchaseOrderDate')) {
      return false;
    }
    if (l$purchaseOrderDate != lOther$purchaseOrderDate) {
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
    final l$transPurchaseId = transPurchaseId;
    final l$supplierHistoryId = supplierHistoryId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$registerAt = registerAt;
    final l$purchaseOrderDate = purchaseOrderDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$transPurchaseId,
      _$data.containsKey('supplierHistoryId') ? l$supplierHistoryId : const {},
      _$data.containsKey('mstrStakeholderId') ? l$mstrStakeholderId : const {},
      _$data.containsKey('contactHistoryId') ? l$contactHistoryId : const {},
      _$data.containsKey('mstrStakeholderContactId')
          ? l$mstrStakeholderContactId
          : const {},
      _$data.containsKey('registerAt') ? l$registerAt : const {},
      _$data.containsKey('purchaseOrderDate') ? l$purchaseOrderDate : const {},
      _$data.containsKey('deadline') ? l$deadline : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$PurchaseEdit<TRes> {
  factory CopyWith$Variables$Mutation$PurchaseEdit(
    Variables$Mutation$PurchaseEdit instance,
    TRes Function(Variables$Mutation$PurchaseEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$PurchaseEdit;

  factory CopyWith$Variables$Mutation$PurchaseEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$PurchaseEdit;

  TRes call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$PurchaseEdit<TRes>
    implements CopyWith$Variables$Mutation$PurchaseEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$PurchaseEdit(this._instance, this._then);

  final Variables$Mutation$PurchaseEdit _instance;

  final TRes Function(Variables$Mutation$PurchaseEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseId = _undefined,
    Object? supplierHistoryId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderContactId = _undefined,
    Object? registerAt = _undefined,
    Object? purchaseOrderDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$PurchaseEdit._({
      ..._instance._$data,
      if (transPurchaseId != _undefined && transPurchaseId != null)
        'transPurchaseId': (transPurchaseId as String),
      if (supplierHistoryId != _undefined)
        'supplierHistoryId': (supplierHistoryId as String?),
      if (mstrStakeholderId != _undefined)
        'mstrStakeholderId': (mstrStakeholderId as String?),
      if (contactHistoryId != _undefined)
        'contactHistoryId': (contactHistoryId as String?),
      if (mstrStakeholderContactId != _undefined)
        'mstrStakeholderContactId': (mstrStakeholderContactId as String?),
      if (registerAt != _undefined) 'registerAt': (registerAt as String?),
      if (purchaseOrderDate != _undefined)
        'purchaseOrderDate': (purchaseOrderDate as String?),
      if (deadline != _undefined) 'deadline': (deadline as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$PurchaseEdit<TRes>
    implements CopyWith$Variables$Mutation$PurchaseEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$PurchaseEdit(this._res);

  TRes _res;

  call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$PurchaseEdit {
  Mutation$PurchaseEdit({
    this.updateTransPurchaseByTransPurchaseId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$PurchaseEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransPurchaseByTransPurchaseId =
        json['updateTransPurchaseByTransPurchaseId'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseEdit(
      updateTransPurchaseByTransPurchaseId:
          l$updateTransPurchaseByTransPurchaseId == null
          ? null
          : Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId.fromJson(
              (l$updateTransPurchaseByTransPurchaseId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId?
  updateTransPurchaseByTransPurchaseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransPurchaseByTransPurchaseId =
        updateTransPurchaseByTransPurchaseId;
    _resultData['updateTransPurchaseByTransPurchaseId'] =
        l$updateTransPurchaseByTransPurchaseId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransPurchaseByTransPurchaseId =
        updateTransPurchaseByTransPurchaseId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateTransPurchaseByTransPurchaseId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PurchaseEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransPurchaseByTransPurchaseId =
        updateTransPurchaseByTransPurchaseId;
    final lOther$updateTransPurchaseByTransPurchaseId =
        other.updateTransPurchaseByTransPurchaseId;
    if (l$updateTransPurchaseByTransPurchaseId !=
        lOther$updateTransPurchaseByTransPurchaseId) {
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

extension UtilityExtension$Mutation$PurchaseEdit on Mutation$PurchaseEdit {
  CopyWith$Mutation$PurchaseEdit<Mutation$PurchaseEdit> get copyWith =>
      CopyWith$Mutation$PurchaseEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$PurchaseEdit<TRes> {
  factory CopyWith$Mutation$PurchaseEdit(
    Mutation$PurchaseEdit instance,
    TRes Function(Mutation$PurchaseEdit) then,
  ) = _CopyWithImpl$Mutation$PurchaseEdit;

  factory CopyWith$Mutation$PurchaseEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$PurchaseEdit;

  TRes call({
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId?
    updateTransPurchaseByTransPurchaseId,
    String? $__typename,
  });
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<TRes>
  get updateTransPurchaseByTransPurchaseId;
}

class _CopyWithImpl$Mutation$PurchaseEdit<TRes>
    implements CopyWith$Mutation$PurchaseEdit<TRes> {
  _CopyWithImpl$Mutation$PurchaseEdit(this._instance, this._then);

  final Mutation$PurchaseEdit _instance;

  final TRes Function(Mutation$PurchaseEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransPurchaseByTransPurchaseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseEdit(
      updateTransPurchaseByTransPurchaseId:
          updateTransPurchaseByTransPurchaseId == _undefined
          ? _instance.updateTransPurchaseByTransPurchaseId
          : (updateTransPurchaseByTransPurchaseId
                as Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<TRes>
  get updateTransPurchaseByTransPurchaseId {
    final local$updateTransPurchaseByTransPurchaseId =
        _instance.updateTransPurchaseByTransPurchaseId;
    return local$updateTransPurchaseByTransPurchaseId == null
        ? CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
            local$updateTransPurchaseByTransPurchaseId,
            (e) => call(updateTransPurchaseByTransPurchaseId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PurchaseEdit<TRes>
    implements CopyWith$Mutation$PurchaseEdit<TRes> {
  _CopyWithStubImpl$Mutation$PurchaseEdit(this._res);

  TRes _res;

  call({
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId?
    updateTransPurchaseByTransPurchaseId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<TRes>
  get updateTransPurchaseByTransPurchaseId =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId.stub(
        _res,
      );
}

const documentNodeMutationPurchaseEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'PurchaseEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transPurchaseId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'supplierHistoryId')),
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
          variable: VariableNode(name: NameNode(value: 'contactHistoryId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'mstrStakeholderContactId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'registerAt')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'purchaseOrderDate')),
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
            name: NameNode(value: 'updateTransPurchaseByTransPurchaseId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transPurchaseId'),
                      value: VariableNode(
                        name: NameNode(value: 'transPurchaseId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transPurchasePatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'supplierHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'supplierHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakeholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakeholderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'contactHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'contactHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakeholderContactId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakeholderContactId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'registerAt'),
                            value: VariableNode(
                              name: NameNode(value: 'registerAt'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'purchaseOrderDate'),
                            value: VariableNode(
                              name: NameNode(value: 'purchaseOrderDate'),
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
                  name: NameNode(value: 'transPurchase'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transPurchaseId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'supplierHistoryId'),
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
                        name: NameNode(value: 'contactHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakeholderContactId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'registerAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'purchaseOrderDate'),
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
                        name: NameNode(
                          value: 'transPurchaseDetailsByTransPurchaseId',
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
                                      value: 'transPurchaseDetailId',
                                    ),
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
                                    name: NameNode(value: 'quantity'),
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
Mutation$PurchaseEdit _parserFn$Mutation$PurchaseEdit(
  Map<String, dynamic> data,
) => Mutation$PurchaseEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$PurchaseEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$PurchaseEdit?);

class Options$Mutation$PurchaseEdit
    extends graphql.MutationOptions<Mutation$PurchaseEdit> {
  Options$Mutation$PurchaseEdit({
    String? operationName,
    required Variables$Mutation$PurchaseEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PurchaseEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$PurchaseEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$PurchaseEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationPurchaseEdit,
         parserFn: _parserFn$Mutation$PurchaseEdit,
       );

  final OnMutationCompleted$Mutation$PurchaseEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$PurchaseEdit
    extends graphql.WatchQueryOptions<Mutation$PurchaseEdit> {
  WatchOptions$Mutation$PurchaseEdit({
    String? operationName,
    required Variables$Mutation$PurchaseEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseEdit? typedOptimisticResult,
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
         document: documentNodeMutationPurchaseEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$PurchaseEdit,
       );
}

extension ClientExtension$Mutation$PurchaseEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$PurchaseEdit>> mutate$PurchaseEdit(
    Options$Mutation$PurchaseEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$PurchaseEdit> watchMutation$PurchaseEdit(
    WatchOptions$Mutation$PurchaseEdit options,
  ) => this.watchMutation(options);
}

class Mutation$PurchaseEdit$HookResult {
  Mutation$PurchaseEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$PurchaseEdit runMutation;

  final graphql.QueryResult<Mutation$PurchaseEdit> result;
}

Mutation$PurchaseEdit$HookResult useMutation$PurchaseEdit([
  WidgetOptions$Mutation$PurchaseEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$PurchaseEdit(),
  );
  return Mutation$PurchaseEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$PurchaseEdit> useWatchMutation$PurchaseEdit(
  WatchOptions$Mutation$PurchaseEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$PurchaseEdit
    extends graphql.MutationOptions<Mutation$PurchaseEdit> {
  WidgetOptions$Mutation$PurchaseEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$PurchaseEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$PurchaseEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$PurchaseEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$PurchaseEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationPurchaseEdit,
         parserFn: _parserFn$Mutation$PurchaseEdit,
       );

  final OnMutationCompleted$Mutation$PurchaseEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$PurchaseEdit =
    graphql.MultiSourceResult<Mutation$PurchaseEdit> Function(
      Variables$Mutation$PurchaseEdit, {
      Object? optimisticResult,
      Mutation$PurchaseEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$PurchaseEdit =
    widgets.Widget Function(
      RunMutation$Mutation$PurchaseEdit,
      graphql.QueryResult<Mutation$PurchaseEdit>?,
    );

class Mutation$PurchaseEdit$Widget
    extends graphql_flutter.Mutation<Mutation$PurchaseEdit> {
  Mutation$PurchaseEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$PurchaseEdit? options,
    required Builder$Mutation$PurchaseEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$PurchaseEdit(),
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

class Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId {
  Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId({
    this.transPurchase,
    this.$__typename = 'UpdateTransPurchasePayload',
  });

  factory Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchase = json['transPurchase'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
      transPurchase: l$transPurchase == null
          ? null
          : Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.fromJson(
              (l$transPurchase as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase?
  transPurchase;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchase = transPurchase;
    _resultData['transPurchase'] = l$transPurchase?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transPurchase = transPurchase;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transPurchase, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchase = transPurchase;
    final lOther$transPurchase = other.transPurchase;
    if (l$transPurchase != lOther$transPurchase) {
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

extension UtilityExtension$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId
    on Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId {
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
  TRes
> {
  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId instance,
    TRes Function(Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId)
    then,
  ) = _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId;

  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId;

  TRes call({
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase?
    transPurchase,
    String? $__typename,
  });
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
    TRes
  >
  get transPurchase;
}

class _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId _instance;

  final TRes Function(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchase = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
      transPurchase: transPurchase == _undefined
          ? _instance.transPurchase
          : (transPurchase
                as Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
    TRes
  >
  get transPurchase {
    final local$transPurchase = _instance.transPurchase;
    return local$transPurchase == null
        ? CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
            local$transPurchase,
            (e) => call(transPurchase: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase?
    transPurchase,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
    TRes
  >
  get transPurchase =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.stub(
        _res,
      );
}

class Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase {
  Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase({
    required this.transPurchaseId,
    required this.supplierHistoryId,
    required this.mstrStakeholderId,
    this.contactHistoryId,
    this.mstrStakeholderContactId,
    this.registerAt,
    this.purchaseOrderDate,
    this.deadline,
    this.remarks,
    this.symbol,
    required this.transPurchaseDetailsByTransPurchaseId,
    this.$__typename = 'TransPurchase',
  });

  factory Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseId = json['transPurchaseId'];
    final l$supplierHistoryId = json['supplierHistoryId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$contactHistoryId = json['contactHistoryId'];
    final l$mstrStakeholderContactId = json['mstrStakeholderContactId'];
    final l$registerAt = json['registerAt'];
    final l$purchaseOrderDate = json['purchaseOrderDate'];
    final l$deadline = json['deadline'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$transPurchaseDetailsByTransPurchaseId =
        json['transPurchaseDetailsByTransPurchaseId'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
      transPurchaseId: (l$transPurchaseId as String),
      supplierHistoryId: (l$supplierHistoryId as String),
      mstrStakeholderId: (l$mstrStakeholderId as String),
      contactHistoryId: (l$contactHistoryId as String?),
      mstrStakeholderContactId: (l$mstrStakeholderContactId as String?),
      registerAt: (l$registerAt as String?),
      purchaseOrderDate: (l$purchaseOrderDate as String?),
      deadline: (l$deadline as String?),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      transPurchaseDetailsByTransPurchaseId:
          Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId.fromJson(
            (l$transPurchaseDetailsByTransPurchaseId as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transPurchaseId;

  final String supplierHistoryId;

  final String mstrStakeholderId;

  final String? contactHistoryId;

  final String? mstrStakeholderContactId;

  final String? registerAt;

  final String? purchaseOrderDate;

  final String? deadline;

  final String? remarks;

  final String? symbol;

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId
  transPurchaseDetailsByTransPurchaseId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseId = transPurchaseId;
    _resultData['transPurchaseId'] = l$transPurchaseId;
    final l$supplierHistoryId = supplierHistoryId;
    _resultData['supplierHistoryId'] = l$supplierHistoryId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$contactHistoryId = contactHistoryId;
    _resultData['contactHistoryId'] = l$contactHistoryId;
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    _resultData['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    final l$registerAt = registerAt;
    _resultData['registerAt'] = l$registerAt;
    final l$purchaseOrderDate = purchaseOrderDate;
    _resultData['purchaseOrderDate'] = l$purchaseOrderDate;
    final l$deadline = deadline;
    _resultData['deadline'] = l$deadline;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    _resultData['transPurchaseDetailsByTransPurchaseId'] =
        l$transPurchaseDetailsByTransPurchaseId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transPurchaseId = transPurchaseId;
    final l$supplierHistoryId = supplierHistoryId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$registerAt = registerAt;
    final l$purchaseOrderDate = purchaseOrderDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transPurchaseId,
      l$supplierHistoryId,
      l$mstrStakeholderId,
      l$contactHistoryId,
      l$mstrStakeholderContactId,
      l$registerAt,
      l$purchaseOrderDate,
      l$deadline,
      l$remarks,
      l$symbol,
      l$transPurchaseDetailsByTransPurchaseId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseId = transPurchaseId;
    final lOther$transPurchaseId = other.transPurchaseId;
    if (l$transPurchaseId != lOther$transPurchaseId) {
      return false;
    }
    final l$supplierHistoryId = supplierHistoryId;
    final lOther$supplierHistoryId = other.supplierHistoryId;
    if (l$supplierHistoryId != lOther$supplierHistoryId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$contactHistoryId = contactHistoryId;
    final lOther$contactHistoryId = other.contactHistoryId;
    if (l$contactHistoryId != lOther$contactHistoryId) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$registerAt = registerAt;
    final lOther$registerAt = other.registerAt;
    if (l$registerAt != lOther$registerAt) {
      return false;
    }
    final l$purchaseOrderDate = purchaseOrderDate;
    final lOther$purchaseOrderDate = other.purchaseOrderDate;
    if (l$purchaseOrderDate != lOther$purchaseOrderDate) {
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
    final l$transPurchaseDetailsByTransPurchaseId =
        transPurchaseDetailsByTransPurchaseId;
    final lOther$transPurchaseDetailsByTransPurchaseId =
        other.transPurchaseDetailsByTransPurchaseId;
    if (l$transPurchaseDetailsByTransPurchaseId !=
        lOther$transPurchaseDetailsByTransPurchaseId) {
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

extension UtilityExtension$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase
    on Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase {
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
  TRes
> {
  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase
    instance,
    TRes Function(
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase,
    )
    then,
  ) = _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase;

  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase;

  TRes call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? remarks,
    String? symbol,
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId?
    transPurchaseDetailsByTransPurchaseId,
    String? $__typename,
  });
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId;
}

class _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase
  _instance;

  final TRes Function(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseId = _undefined,
    Object? supplierHistoryId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderContactId = _undefined,
    Object? registerAt = _undefined,
    Object? purchaseOrderDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? transPurchaseDetailsByTransPurchaseId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
      transPurchaseId: transPurchaseId == _undefined || transPurchaseId == null
          ? _instance.transPurchaseId
          : (transPurchaseId as String),
      supplierHistoryId:
          supplierHistoryId == _undefined || supplierHistoryId == null
          ? _instance.supplierHistoryId
          : (supplierHistoryId as String),
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      contactHistoryId: contactHistoryId == _undefined
          ? _instance.contactHistoryId
          : (contactHistoryId as String?),
      mstrStakeholderContactId: mstrStakeholderContactId == _undefined
          ? _instance.mstrStakeholderContactId
          : (mstrStakeholderContactId as String?),
      registerAt: registerAt == _undefined
          ? _instance.registerAt
          : (registerAt as String?),
      purchaseOrderDate: purchaseOrderDate == _undefined
          ? _instance.purchaseOrderDate
          : (purchaseOrderDate as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      transPurchaseDetailsByTransPurchaseId:
          transPurchaseDetailsByTransPurchaseId == _undefined ||
              transPurchaseDetailsByTransPurchaseId == null
          ? _instance.transPurchaseDetailsByTransPurchaseId
          : (transPurchaseDetailsByTransPurchaseId
                as Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId {
    final local$transPurchaseDetailsByTransPurchaseId =
        _instance.transPurchaseDetailsByTransPurchaseId;
    return CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
      local$transPurchaseDetailsByTransPurchaseId,
      (e) => call(transPurchaseDetailsByTransPurchaseId: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase(
    this._res,
  );

  TRes _res;

  call({
    String? transPurchaseId,
    String? supplierHistoryId,
    String? mstrStakeholderId,
    String? contactHistoryId,
    String? mstrStakeholderContactId,
    String? registerAt,
    String? purchaseOrderDate,
    String? deadline,
    String? remarks,
    String? symbol,
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId?
    transPurchaseDetailsByTransPurchaseId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
    TRes
  >
  get transPurchaseDetailsByTransPurchaseId =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId.stub(
        _res,
      );
}

class Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId {
  Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId({
    required this.nodes,
    this.$__typename = 'TransPurchaseDetailsConnection',
  });

  factory Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
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
            is! Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId ||
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

extension UtilityExtension$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId
    on
        Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId {
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
  TRes
> {
  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId
    instance,
    TRes Function(
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId,
    )
    then,
  ) = _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId;

  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId;

  TRes call({
    List<
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
          Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId
  _instance;

  final TRes Function(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
          Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes {
  Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes({
    required this.transPurchaseDetailId,
    required this.historyId,
    required this.mstrItemId,
    this.quantity,
    this.$__typename = 'TransPurchaseDetail',
  });

  factory Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transPurchaseDetailId = json['transPurchaseDetailId'];
    final l$historyId = json['historyId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$quantity = json['quantity'];
    final l$$__typename = json['__typename'];
    return Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
      transPurchaseDetailId: (l$transPurchaseDetailId as String),
      historyId: (l$historyId as String),
      mstrItemId: (l$mstrItemId as String),
      quantity: (l$quantity as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transPurchaseDetailId;

  final String historyId;

  final String mstrItemId;

  final String? quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transPurchaseDetailId = transPurchaseDetailId;
    _resultData['transPurchaseDetailId'] = l$transPurchaseDetailId;
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final l$historyId = historyId;
    final l$mstrItemId = mstrItemId;
    final l$quantity = quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transPurchaseDetailId,
      l$historyId,
      l$mstrItemId,
      l$quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transPurchaseDetailId = transPurchaseDetailId;
    final lOther$transPurchaseDetailId = other.transPurchaseDetailId;
    if (l$transPurchaseDetailId != lOther$transPurchaseDetailId) {
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
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
    on
        Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes {
  CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
  TRes
> {
  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
    instance,
    TRes Function(
      Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes;

  factory CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes;

  TRes call({
    String? transPurchaseDetailId,
    String? historyId,
    String? mstrItemId,
    String? quantity,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes
  _instance;

  final TRes Function(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transPurchaseDetailId = _undefined,
    Object? historyId = _undefined,
    Object? mstrItemId = _undefined,
    Object? quantity = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
      transPurchaseDetailId:
          transPurchaseDetailId == _undefined || transPurchaseDetailId == null
          ? _instance.transPurchaseDetailId
          : (transPurchaseDetailId as String),
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      quantity: quantity == _undefined
          ? _instance.quantity
          : (quantity as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$PurchaseEdit$updateTransPurchaseByTransPurchaseId$transPurchase$transPurchaseDetailsByTransPurchaseId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transPurchaseDetailId,
    String? historyId,
    String? mstrItemId,
    String? quantity,
    String? $__typename,
  }) => _res;
}
