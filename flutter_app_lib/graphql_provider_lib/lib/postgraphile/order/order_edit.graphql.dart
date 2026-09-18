import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$OrderEdit {
  factory Variables$Mutation$OrderEdit({
    required String transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => Variables$Mutation$OrderEdit._({
    r'transOrderId': transOrderId,
    if (orderNumber != null) r'orderNumber': orderNumber,
    if (customerOrderNumber != null)
      r'customerOrderNumber': customerOrderNumber,
    if (customerHistoryId != null) r'customerHistoryId': customerHistoryId,
    if (mstrStakholderId != null) r'mstrStakholderId': mstrStakholderId,
    if (contactHistoryId != null) r'contactHistoryId': contactHistoryId,
    if (mstrStakeholderConcatId != null)
      r'mstrStakeholderConcatId': mstrStakeholderConcatId,
    if (controlCode1 != null) r'controlCode1': controlCode1,
    if (controlCode2 != null) r'controlCode2': controlCode2,
    if (controlCode3 != null) r'controlCode3': controlCode3,
    if (orderProcessingDate != null)
      r'orderProcessingDate': orderProcessingDate,
    if (deliveryDate != null) r'deliveryDate': deliveryDate,
    if (deadline != null) r'deadline': deadline,
    if (remarks != null) r'remarks': remarks,
    if (symbol != null) r'symbol': symbol,
  });

  Variables$Mutation$OrderEdit._(this._$data);

  factory Variables$Mutation$OrderEdit.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$transOrderId = data['transOrderId'];
    result$data['transOrderId'] = (l$transOrderId as String);
    if (data.containsKey('orderNumber')) {
      final l$orderNumber = data['orderNumber'];
      result$data['orderNumber'] = (l$orderNumber as String?);
    }
    if (data.containsKey('customerOrderNumber')) {
      final l$customerOrderNumber = data['customerOrderNumber'];
      result$data['customerOrderNumber'] = (l$customerOrderNumber as String?);
    }
    if (data.containsKey('customerHistoryId')) {
      final l$customerHistoryId = data['customerHistoryId'];
      result$data['customerHistoryId'] = (l$customerHistoryId as String?);
    }
    if (data.containsKey('mstrStakholderId')) {
      final l$mstrStakholderId = data['mstrStakholderId'];
      result$data['mstrStakholderId'] = (l$mstrStakholderId as String?);
    }
    if (data.containsKey('contactHistoryId')) {
      final l$contactHistoryId = data['contactHistoryId'];
      result$data['contactHistoryId'] = (l$contactHistoryId as String?);
    }
    if (data.containsKey('mstrStakeholderConcatId')) {
      final l$mstrStakeholderConcatId = data['mstrStakeholderConcatId'];
      result$data['mstrStakeholderConcatId'] =
          (l$mstrStakeholderConcatId as String?);
    }
    if (data.containsKey('controlCode1')) {
      final l$controlCode1 = data['controlCode1'];
      result$data['controlCode1'] = (l$controlCode1 as String?);
    }
    if (data.containsKey('controlCode2')) {
      final l$controlCode2 = data['controlCode2'];
      result$data['controlCode2'] = (l$controlCode2 as String?);
    }
    if (data.containsKey('controlCode3')) {
      final l$controlCode3 = data['controlCode3'];
      result$data['controlCode3'] = (l$controlCode3 as String?);
    }
    if (data.containsKey('orderProcessingDate')) {
      final l$orderProcessingDate = data['orderProcessingDate'];
      result$data['orderProcessingDate'] = (l$orderProcessingDate as String?);
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
    return Variables$Mutation$OrderEdit._(result$data);
  }

  Map<String, dynamic> _$data;

  String get transOrderId => (_$data['transOrderId'] as String);

  String? get orderNumber => (_$data['orderNumber'] as String?);

  String? get customerOrderNumber => (_$data['customerOrderNumber'] as String?);

  String? get customerHistoryId => (_$data['customerHistoryId'] as String?);

  String? get mstrStakholderId => (_$data['mstrStakholderId'] as String?);

  String? get contactHistoryId => (_$data['contactHistoryId'] as String?);

  String? get mstrStakeholderConcatId =>
      (_$data['mstrStakeholderConcatId'] as String?);

  String? get controlCode1 => (_$data['controlCode1'] as String?);

  String? get controlCode2 => (_$data['controlCode2'] as String?);

  String? get controlCode3 => (_$data['controlCode3'] as String?);

  String? get orderProcessingDate => (_$data['orderProcessingDate'] as String?);

  String? get deliveryDate => (_$data['deliveryDate'] as String?);

  String? get deadline => (_$data['deadline'] as String?);

  String? get remarks => (_$data['remarks'] as String?);

  String? get symbol => (_$data['symbol'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$transOrderId = transOrderId;
    result$data['transOrderId'] = l$transOrderId;
    if (_$data.containsKey('orderNumber')) {
      final l$orderNumber = orderNumber;
      result$data['orderNumber'] = l$orderNumber;
    }
    if (_$data.containsKey('customerOrderNumber')) {
      final l$customerOrderNumber = customerOrderNumber;
      result$data['customerOrderNumber'] = l$customerOrderNumber;
    }
    if (_$data.containsKey('customerHistoryId')) {
      final l$customerHistoryId = customerHistoryId;
      result$data['customerHistoryId'] = l$customerHistoryId;
    }
    if (_$data.containsKey('mstrStakholderId')) {
      final l$mstrStakholderId = mstrStakholderId;
      result$data['mstrStakholderId'] = l$mstrStakholderId;
    }
    if (_$data.containsKey('contactHistoryId')) {
      final l$contactHistoryId = contactHistoryId;
      result$data['contactHistoryId'] = l$contactHistoryId;
    }
    if (_$data.containsKey('mstrStakeholderConcatId')) {
      final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
      result$data['mstrStakeholderConcatId'] = l$mstrStakeholderConcatId;
    }
    if (_$data.containsKey('controlCode1')) {
      final l$controlCode1 = controlCode1;
      result$data['controlCode1'] = l$controlCode1;
    }
    if (_$data.containsKey('controlCode2')) {
      final l$controlCode2 = controlCode2;
      result$data['controlCode2'] = l$controlCode2;
    }
    if (_$data.containsKey('controlCode3')) {
      final l$controlCode3 = controlCode3;
      result$data['controlCode3'] = l$controlCode3;
    }
    if (_$data.containsKey('orderProcessingDate')) {
      final l$orderProcessingDate = orderProcessingDate;
      result$data['orderProcessingDate'] = l$orderProcessingDate;
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

  CopyWith$Variables$Mutation$OrderEdit<Variables$Mutation$OrderEdit>
  get copyWith => CopyWith$Variables$Mutation$OrderEdit(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$OrderEdit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$orderNumber = orderNumber;
    final lOther$orderNumber = other.orderNumber;
    if (_$data.containsKey('orderNumber') !=
        other._$data.containsKey('orderNumber')) {
      return false;
    }
    if (l$orderNumber != lOther$orderNumber) {
      return false;
    }
    final l$customerOrderNumber = customerOrderNumber;
    final lOther$customerOrderNumber = other.customerOrderNumber;
    if (_$data.containsKey('customerOrderNumber') !=
        other._$data.containsKey('customerOrderNumber')) {
      return false;
    }
    if (l$customerOrderNumber != lOther$customerOrderNumber) {
      return false;
    }
    final l$customerHistoryId = customerHistoryId;
    final lOther$customerHistoryId = other.customerHistoryId;
    if (_$data.containsKey('customerHistoryId') !=
        other._$data.containsKey('customerHistoryId')) {
      return false;
    }
    if (l$customerHistoryId != lOther$customerHistoryId) {
      return false;
    }
    final l$mstrStakholderId = mstrStakholderId;
    final lOther$mstrStakholderId = other.mstrStakholderId;
    if (_$data.containsKey('mstrStakholderId') !=
        other._$data.containsKey('mstrStakholderId')) {
      return false;
    }
    if (l$mstrStakholderId != lOther$mstrStakholderId) {
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
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final lOther$mstrStakeholderConcatId = other.mstrStakeholderConcatId;
    if (_$data.containsKey('mstrStakeholderConcatId') !=
        other._$data.containsKey('mstrStakeholderConcatId')) {
      return false;
    }
    if (l$mstrStakeholderConcatId != lOther$mstrStakeholderConcatId) {
      return false;
    }
    final l$controlCode1 = controlCode1;
    final lOther$controlCode1 = other.controlCode1;
    if (_$data.containsKey('controlCode1') !=
        other._$data.containsKey('controlCode1')) {
      return false;
    }
    if (l$controlCode1 != lOther$controlCode1) {
      return false;
    }
    final l$controlCode2 = controlCode2;
    final lOther$controlCode2 = other.controlCode2;
    if (_$data.containsKey('controlCode2') !=
        other._$data.containsKey('controlCode2')) {
      return false;
    }
    if (l$controlCode2 != lOther$controlCode2) {
      return false;
    }
    final l$controlCode3 = controlCode3;
    final lOther$controlCode3 = other.controlCode3;
    if (_$data.containsKey('controlCode3') !=
        other._$data.containsKey('controlCode3')) {
      return false;
    }
    if (l$controlCode3 != lOther$controlCode3) {
      return false;
    }
    final l$orderProcessingDate = orderProcessingDate;
    final lOther$orderProcessingDate = other.orderProcessingDate;
    if (_$data.containsKey('orderProcessingDate') !=
        other._$data.containsKey('orderProcessingDate')) {
      return false;
    }
    if (l$orderProcessingDate != lOther$orderProcessingDate) {
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
    final l$transOrderId = transOrderId;
    final l$orderNumber = orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    final l$customerHistoryId = customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final l$controlCode1 = controlCode1;
    final l$controlCode2 = controlCode2;
    final l$controlCode3 = controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    return Object.hashAll([
      l$transOrderId,
      _$data.containsKey('orderNumber') ? l$orderNumber : const {},
      _$data.containsKey('customerOrderNumber')
          ? l$customerOrderNumber
          : const {},
      _$data.containsKey('customerHistoryId') ? l$customerHistoryId : const {},
      _$data.containsKey('mstrStakholderId') ? l$mstrStakholderId : const {},
      _$data.containsKey('contactHistoryId') ? l$contactHistoryId : const {},
      _$data.containsKey('mstrStakeholderConcatId')
          ? l$mstrStakeholderConcatId
          : const {},
      _$data.containsKey('controlCode1') ? l$controlCode1 : const {},
      _$data.containsKey('controlCode2') ? l$controlCode2 : const {},
      _$data.containsKey('controlCode3') ? l$controlCode3 : const {},
      _$data.containsKey('orderProcessingDate')
          ? l$orderProcessingDate
          : const {},
      _$data.containsKey('deliveryDate') ? l$deliveryDate : const {},
      _$data.containsKey('deadline') ? l$deadline : const {},
      _$data.containsKey('remarks') ? l$remarks : const {},
      _$data.containsKey('symbol') ? l$symbol : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$OrderEdit<TRes> {
  factory CopyWith$Variables$Mutation$OrderEdit(
    Variables$Mutation$OrderEdit instance,
    TRes Function(Variables$Mutation$OrderEdit) then,
  ) = _CopyWithImpl$Variables$Mutation$OrderEdit;

  factory CopyWith$Variables$Mutation$OrderEdit.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$OrderEdit;

  TRes call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  });
}

class _CopyWithImpl$Variables$Mutation$OrderEdit<TRes>
    implements CopyWith$Variables$Mutation$OrderEdit<TRes> {
  _CopyWithImpl$Variables$Mutation$OrderEdit(this._instance, this._then);

  final Variables$Mutation$OrderEdit _instance;

  final TRes Function(Variables$Mutation$OrderEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderId = _undefined,
    Object? orderNumber = _undefined,
    Object? customerOrderNumber = _undefined,
    Object? customerHistoryId = _undefined,
    Object? mstrStakholderId = _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderConcatId = _undefined,
    Object? controlCode1 = _undefined,
    Object? controlCode2 = _undefined,
    Object? controlCode3 = _undefined,
    Object? orderProcessingDate = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
  }) => _then(
    Variables$Mutation$OrderEdit._({
      ..._instance._$data,
      if (transOrderId != _undefined && transOrderId != null)
        'transOrderId': (transOrderId as String),
      if (orderNumber != _undefined) 'orderNumber': (orderNumber as String?),
      if (customerOrderNumber != _undefined)
        'customerOrderNumber': (customerOrderNumber as String?),
      if (customerHistoryId != _undefined)
        'customerHistoryId': (customerHistoryId as String?),
      if (mstrStakholderId != _undefined)
        'mstrStakholderId': (mstrStakholderId as String?),
      if (contactHistoryId != _undefined)
        'contactHistoryId': (contactHistoryId as String?),
      if (mstrStakeholderConcatId != _undefined)
        'mstrStakeholderConcatId': (mstrStakeholderConcatId as String?),
      if (controlCode1 != _undefined) 'controlCode1': (controlCode1 as String?),
      if (controlCode2 != _undefined) 'controlCode2': (controlCode2 as String?),
      if (controlCode3 != _undefined) 'controlCode3': (controlCode3 as String?),
      if (orderProcessingDate != _undefined)
        'orderProcessingDate': (orderProcessingDate as String?),
      if (deliveryDate != _undefined) 'deliveryDate': (deliveryDate as String?),
      if (deadline != _undefined) 'deadline': (deadline as String?),
      if (remarks != _undefined) 'remarks': (remarks as String?),
      if (symbol != _undefined) 'symbol': (symbol as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$OrderEdit<TRes>
    implements CopyWith$Variables$Mutation$OrderEdit<TRes> {
  _CopyWithStubImpl$Variables$Mutation$OrderEdit(this._res);

  TRes _res;

  call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
  }) => _res;
}

class Mutation$OrderEdit {
  Mutation$OrderEdit({
    this.updateTransOrderByTransOrderId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$OrderEdit.fromJson(Map<String, dynamic> json) {
    final l$updateTransOrderByTransOrderId =
        json['updateTransOrderByTransOrderId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderEdit(
      updateTransOrderByTransOrderId: l$updateTransOrderByTransOrderId == null
          ? null
          : Mutation$OrderEdit$updateTransOrderByTransOrderId.fromJson(
              (l$updateTransOrderByTransOrderId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrderEdit$updateTransOrderByTransOrderId?
  updateTransOrderByTransOrderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateTransOrderByTransOrderId = updateTransOrderByTransOrderId;
    _resultData['updateTransOrderByTransOrderId'] =
        l$updateTransOrderByTransOrderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateTransOrderByTransOrderId = updateTransOrderByTransOrderId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateTransOrderByTransOrderId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrderEdit || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateTransOrderByTransOrderId = updateTransOrderByTransOrderId;
    final lOther$updateTransOrderByTransOrderId =
        other.updateTransOrderByTransOrderId;
    if (l$updateTransOrderByTransOrderId !=
        lOther$updateTransOrderByTransOrderId) {
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

extension UtilityExtension$Mutation$OrderEdit on Mutation$OrderEdit {
  CopyWith$Mutation$OrderEdit<Mutation$OrderEdit> get copyWith =>
      CopyWith$Mutation$OrderEdit(this, (i) => i);
}

abstract class CopyWith$Mutation$OrderEdit<TRes> {
  factory CopyWith$Mutation$OrderEdit(
    Mutation$OrderEdit instance,
    TRes Function(Mutation$OrderEdit) then,
  ) = _CopyWithImpl$Mutation$OrderEdit;

  factory CopyWith$Mutation$OrderEdit.stub(TRes res) =
      _CopyWithStubImpl$Mutation$OrderEdit;

  TRes call({
    Mutation$OrderEdit$updateTransOrderByTransOrderId?
    updateTransOrderByTransOrderId,
    String? $__typename,
  });
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes>
  get updateTransOrderByTransOrderId;
}

class _CopyWithImpl$Mutation$OrderEdit<TRes>
    implements CopyWith$Mutation$OrderEdit<TRes> {
  _CopyWithImpl$Mutation$OrderEdit(this._instance, this._then);

  final Mutation$OrderEdit _instance;

  final TRes Function(Mutation$OrderEdit) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateTransOrderByTransOrderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderEdit(
      updateTransOrderByTransOrderId:
          updateTransOrderByTransOrderId == _undefined
          ? _instance.updateTransOrderByTransOrderId
          : (updateTransOrderByTransOrderId
                as Mutation$OrderEdit$updateTransOrderByTransOrderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes>
  get updateTransOrderByTransOrderId {
    final local$updateTransOrderByTransOrderId =
        _instance.updateTransOrderByTransOrderId;
    return local$updateTransOrderByTransOrderId == null
        ? CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId(
            local$updateTransOrderByTransOrderId,
            (e) => call(updateTransOrderByTransOrderId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrderEdit<TRes>
    implements CopyWith$Mutation$OrderEdit<TRes> {
  _CopyWithStubImpl$Mutation$OrderEdit(this._res);

  TRes _res;

  call({
    Mutation$OrderEdit$updateTransOrderByTransOrderId?
    updateTransOrderByTransOrderId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes>
  get updateTransOrderByTransOrderId =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId.stub(_res);
}

const documentNodeMutationOrderEdit = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'OrderEdit'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'transOrderId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderNumber')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'customerOrderNumber')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'customerHistoryId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrStakholderId')),
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
            name: NameNode(value: 'mstrStakeholderConcatId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'controlCode1')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'controlCode2')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'controlCode3')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderProcessingDate')),
          type: NamedTypeNode(
            name: NameNode(value: 'Datetime'),
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
            name: NameNode(value: 'updateTransOrderByTransOrderId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'transOrderId'),
                      value: VariableNode(
                        name: NameNode(value: 'transOrderId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'transOrderPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'orderNumber'),
                            value: VariableNode(
                              name: NameNode(value: 'orderNumber'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'customerOrderNumber'),
                            value: VariableNode(
                              name: NameNode(value: 'customerOrderNumber'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'customerHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'customerHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakholderId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakholderId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'contactHistoryId'),
                            value: VariableNode(
                              name: NameNode(value: 'contactHistoryId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'mstrStakeholderConcatId'),
                            value: VariableNode(
                              name: NameNode(value: 'mstrStakeholderConcatId'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode1'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode1'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode2'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode2'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'controlCode3'),
                            value: VariableNode(
                              name: NameNode(value: 'controlCode3'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'orderProcessingDate'),
                            value: VariableNode(
                              name: NameNode(value: 'orderProcessingDate'),
                            ),
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
                  name: NameNode(value: 'transOrder'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'transOrderId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'orderNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'customerOrderNumber'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'customerHistoryId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrStakholderId'),
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
                        name: NameNode(value: 'mstrStakeholderConcatId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode1'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode2'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'controlCode3'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'orderProcessingDate'),
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
                        name: NameNode(
                          value: 'transOrderDetailsByTransOrderId',
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
                                    name: NameNode(value: 'transOrderDetailId'),
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
Mutation$OrderEdit _parserFn$Mutation$OrderEdit(Map<String, dynamic> data) =>
    Mutation$OrderEdit.fromJson(data);
typedef OnMutationCompleted$Mutation$OrderEdit =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$OrderEdit?);

class Options$Mutation$OrderEdit
    extends graphql.MutationOptions<Mutation$OrderEdit> {
  Options$Mutation$OrderEdit({
    String? operationName,
    required Variables$Mutation$OrderEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrderEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrderEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$OrderEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrderEdit,
         parserFn: _parserFn$Mutation$OrderEdit,
       );

  final OnMutationCompleted$Mutation$OrderEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$OrderEdit
    extends graphql.WatchQueryOptions<Mutation$OrderEdit> {
  WatchOptions$Mutation$OrderEdit({
    String? operationName,
    required Variables$Mutation$OrderEdit variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderEdit? typedOptimisticResult,
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
         document: documentNodeMutationOrderEdit,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$OrderEdit,
       );
}

extension ClientExtension$Mutation$OrderEdit on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$OrderEdit>> mutate$OrderEdit(
    Options$Mutation$OrderEdit options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$OrderEdit> watchMutation$OrderEdit(
    WatchOptions$Mutation$OrderEdit options,
  ) => this.watchMutation(options);
}

class Mutation$OrderEdit$HookResult {
  Mutation$OrderEdit$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$OrderEdit runMutation;

  final graphql.QueryResult<Mutation$OrderEdit> result;
}

Mutation$OrderEdit$HookResult useMutation$OrderEdit([
  WidgetOptions$Mutation$OrderEdit? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$OrderEdit(),
  );
  return Mutation$OrderEdit$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$OrderEdit> useWatchMutation$OrderEdit(
  WatchOptions$Mutation$OrderEdit options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$OrderEdit
    extends graphql.MutationOptions<Mutation$OrderEdit> {
  WidgetOptions$Mutation$OrderEdit({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$OrderEdit? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$OrderEdit? onCompleted,
    graphql.OnMutationUpdate<Mutation$OrderEdit>? update,
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
                 data == null ? null : _parserFn$Mutation$OrderEdit(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationOrderEdit,
         parserFn: _parserFn$Mutation$OrderEdit,
       );

  final OnMutationCompleted$Mutation$OrderEdit? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$OrderEdit =
    graphql.MultiSourceResult<Mutation$OrderEdit> Function(
      Variables$Mutation$OrderEdit, {
      Object? optimisticResult,
      Mutation$OrderEdit? typedOptimisticResult,
    });
typedef Builder$Mutation$OrderEdit =
    widgets.Widget Function(
      RunMutation$Mutation$OrderEdit,
      graphql.QueryResult<Mutation$OrderEdit>?,
    );

class Mutation$OrderEdit$Widget
    extends graphql_flutter.Mutation<Mutation$OrderEdit> {
  Mutation$OrderEdit$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$OrderEdit? options,
    required Builder$Mutation$OrderEdit builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$OrderEdit(),
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

class Mutation$OrderEdit$updateTransOrderByTransOrderId {
  Mutation$OrderEdit$updateTransOrderByTransOrderId({
    this.transOrder,
    this.$__typename = 'UpdateTransOrderPayload',
  });

  factory Mutation$OrderEdit$updateTransOrderByTransOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrder = json['transOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderEdit$updateTransOrderByTransOrderId(
      transOrder: l$transOrder == null
          ? null
          : Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.fromJson(
              (l$transOrder as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder?
  transOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrder = transOrder;
    _resultData['transOrder'] = l$transOrder?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOrder = transOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transOrder, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$OrderEdit$updateTransOrderByTransOrderId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrder = transOrder;
    final lOther$transOrder = other.transOrder;
    if (l$transOrder != lOther$transOrder) {
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

extension UtilityExtension$Mutation$OrderEdit$updateTransOrderByTransOrderId
    on Mutation$OrderEdit$updateTransOrderByTransOrderId {
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<
    Mutation$OrderEdit$updateTransOrderByTransOrderId
  >
  get copyWith => CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<
  TRes
> {
  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId(
    Mutation$OrderEdit$updateTransOrderByTransOrderId instance,
    TRes Function(Mutation$OrderEdit$updateTransOrderByTransOrderId) then,
  ) = _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId;

  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId;

  TRes call({
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder? transOrder,
    String? $__typename,
  });
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<TRes>
  get transOrder;
}

class _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes> {
  _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId(
    this._instance,
    this._then,
  );

  final Mutation$OrderEdit$updateTransOrderByTransOrderId _instance;

  final TRes Function(Mutation$OrderEdit$updateTransOrderByTransOrderId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrder = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderEdit$updateTransOrderByTransOrderId(
      transOrder: transOrder == _undefined
          ? _instance.transOrder
          : (transOrder
                as Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<TRes>
  get transOrder {
    final local$transOrder = _instance.transOrder;
    return local$transOrder == null
        ? CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
            local$transOrder,
            (e) => call(transOrder: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId<TRes> {
  _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder? transOrder,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<TRes>
  get transOrder =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.stub(
        _res,
      );
}

class Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder {
  Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder({
    required this.transOrderId,
    required this.orderNumber,
    this.customerOrderNumber,
    this.customerHistoryId,
    this.mstrStakholderId,
    this.contactHistoryId,
    this.mstrStakeholderConcatId,
    this.controlCode1,
    this.controlCode2,
    this.controlCode3,
    this.orderProcessingDate,
    this.deliveryDate,
    this.deadline,
    this.remarks,
    this.symbol,
    required this.transOrderDetailsByTransOrderId,
    this.$__typename = 'TransOrder',
  });

  factory Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderId = json['transOrderId'];
    final l$orderNumber = json['orderNumber'];
    final l$customerOrderNumber = json['customerOrderNumber'];
    final l$customerHistoryId = json['customerHistoryId'];
    final l$mstrStakholderId = json['mstrStakholderId'];
    final l$contactHistoryId = json['contactHistoryId'];
    final l$mstrStakeholderConcatId = json['mstrStakeholderConcatId'];
    final l$controlCode1 = json['controlCode1'];
    final l$controlCode2 = json['controlCode2'];
    final l$controlCode3 = json['controlCode3'];
    final l$orderProcessingDate = json['orderProcessingDate'];
    final l$deliveryDate = json['deliveryDate'];
    final l$deadline = json['deadline'];
    final l$remarks = json['remarks'];
    final l$symbol = json['symbol'];
    final l$transOrderDetailsByTransOrderId =
        json['transOrderDetailsByTransOrderId'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
      transOrderId: (l$transOrderId as String),
      orderNumber: (l$orderNumber as String),
      customerOrderNumber: (l$customerOrderNumber as String?),
      customerHistoryId: (l$customerHistoryId as String?),
      mstrStakholderId: (l$mstrStakholderId as String?),
      contactHistoryId: (l$contactHistoryId as String?),
      mstrStakeholderConcatId: (l$mstrStakeholderConcatId as String?),
      controlCode1: (l$controlCode1 as String?),
      controlCode2: (l$controlCode2 as String?),
      controlCode3: (l$controlCode3 as String?),
      orderProcessingDate: (l$orderProcessingDate as String?),
      deliveryDate: (l$deliveryDate as String?),
      deadline: (l$deadline as String?),
      remarks: (l$remarks as String?),
      symbol: (l$symbol as String?),
      transOrderDetailsByTransOrderId:
          Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId.fromJson(
            (l$transOrderDetailsByTransOrderId as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOrderId;

  final String orderNumber;

  final String? customerOrderNumber;

  final String? customerHistoryId;

  final String? mstrStakholderId;

  final String? contactHistoryId;

  final String? mstrStakeholderConcatId;

  final String? controlCode1;

  final String? controlCode2;

  final String? controlCode3;

  final String? orderProcessingDate;

  final String? deliveryDate;

  final String? deadline;

  final String? remarks;

  final String? symbol;

  final Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId
  transOrderDetailsByTransOrderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderId = transOrderId;
    _resultData['transOrderId'] = l$transOrderId;
    final l$orderNumber = orderNumber;
    _resultData['orderNumber'] = l$orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    _resultData['customerOrderNumber'] = l$customerOrderNumber;
    final l$customerHistoryId = customerHistoryId;
    _resultData['customerHistoryId'] = l$customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    _resultData['mstrStakholderId'] = l$mstrStakholderId;
    final l$contactHistoryId = contactHistoryId;
    _resultData['contactHistoryId'] = l$contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    _resultData['mstrStakeholderConcatId'] = l$mstrStakeholderConcatId;
    final l$controlCode1 = controlCode1;
    _resultData['controlCode1'] = l$controlCode1;
    final l$controlCode2 = controlCode2;
    _resultData['controlCode2'] = l$controlCode2;
    final l$controlCode3 = controlCode3;
    _resultData['controlCode3'] = l$controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    _resultData['orderProcessingDate'] = l$orderProcessingDate;
    final l$deliveryDate = deliveryDate;
    _resultData['deliveryDate'] = l$deliveryDate;
    final l$deadline = deadline;
    _resultData['deadline'] = l$deadline;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    _resultData['transOrderDetailsByTransOrderId'] =
        l$transOrderDetailsByTransOrderId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOrderId = transOrderId;
    final l$orderNumber = orderNumber;
    final l$customerOrderNumber = customerOrderNumber;
    final l$customerHistoryId = customerHistoryId;
    final l$mstrStakholderId = mstrStakholderId;
    final l$contactHistoryId = contactHistoryId;
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final l$controlCode1 = controlCode1;
    final l$controlCode2 = controlCode2;
    final l$controlCode3 = controlCode3;
    final l$orderProcessingDate = orderProcessingDate;
    final l$deliveryDate = deliveryDate;
    final l$deadline = deadline;
    final l$remarks = remarks;
    final l$symbol = symbol;
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOrderId,
      l$orderNumber,
      l$customerOrderNumber,
      l$customerHistoryId,
      l$mstrStakholderId,
      l$contactHistoryId,
      l$mstrStakeholderConcatId,
      l$controlCode1,
      l$controlCode2,
      l$controlCode3,
      l$orderProcessingDate,
      l$deliveryDate,
      l$deadline,
      l$remarks,
      l$symbol,
      l$transOrderDetailsByTransOrderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderId = transOrderId;
    final lOther$transOrderId = other.transOrderId;
    if (l$transOrderId != lOther$transOrderId) {
      return false;
    }
    final l$orderNumber = orderNumber;
    final lOther$orderNumber = other.orderNumber;
    if (l$orderNumber != lOther$orderNumber) {
      return false;
    }
    final l$customerOrderNumber = customerOrderNumber;
    final lOther$customerOrderNumber = other.customerOrderNumber;
    if (l$customerOrderNumber != lOther$customerOrderNumber) {
      return false;
    }
    final l$customerHistoryId = customerHistoryId;
    final lOther$customerHistoryId = other.customerHistoryId;
    if (l$customerHistoryId != lOther$customerHistoryId) {
      return false;
    }
    final l$mstrStakholderId = mstrStakholderId;
    final lOther$mstrStakholderId = other.mstrStakholderId;
    if (l$mstrStakholderId != lOther$mstrStakholderId) {
      return false;
    }
    final l$contactHistoryId = contactHistoryId;
    final lOther$contactHistoryId = other.contactHistoryId;
    if (l$contactHistoryId != lOther$contactHistoryId) {
      return false;
    }
    final l$mstrStakeholderConcatId = mstrStakeholderConcatId;
    final lOther$mstrStakeholderConcatId = other.mstrStakeholderConcatId;
    if (l$mstrStakeholderConcatId != lOther$mstrStakeholderConcatId) {
      return false;
    }
    final l$controlCode1 = controlCode1;
    final lOther$controlCode1 = other.controlCode1;
    if (l$controlCode1 != lOther$controlCode1) {
      return false;
    }
    final l$controlCode2 = controlCode2;
    final lOther$controlCode2 = other.controlCode2;
    if (l$controlCode2 != lOther$controlCode2) {
      return false;
    }
    final l$controlCode3 = controlCode3;
    final lOther$controlCode3 = other.controlCode3;
    if (l$controlCode3 != lOther$controlCode3) {
      return false;
    }
    final l$orderProcessingDate = orderProcessingDate;
    final lOther$orderProcessingDate = other.orderProcessingDate;
    if (l$orderProcessingDate != lOther$orderProcessingDate) {
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
    final l$transOrderDetailsByTransOrderId = transOrderDetailsByTransOrderId;
    final lOther$transOrderDetailsByTransOrderId =
        other.transOrderDetailsByTransOrderId;
    if (l$transOrderDetailsByTransOrderId !=
        lOther$transOrderDetailsByTransOrderId) {
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

extension UtilityExtension$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder
    on Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder {
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder
  >
  get copyWith =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
  TRes
> {
  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder instance,
    TRes Function(Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder)
    then,
  ) = _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder;

  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder;

  TRes call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    String? $__typename,
  });
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId;
}

class _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
          TRes
        > {
  _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
    this._instance,
    this._then,
  );

  final Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder _instance;

  final TRes Function(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderId = _undefined,
    Object? orderNumber = _undefined,
    Object? customerOrderNumber = _undefined,
    Object? customerHistoryId = _undefined,
    Object? mstrStakholderId = _undefined,
    Object? contactHistoryId = _undefined,
    Object? mstrStakeholderConcatId = _undefined,
    Object? controlCode1 = _undefined,
    Object? controlCode2 = _undefined,
    Object? controlCode3 = _undefined,
    Object? orderProcessingDate = _undefined,
    Object? deliveryDate = _undefined,
    Object? deadline = _undefined,
    Object? remarks = _undefined,
    Object? symbol = _undefined,
    Object? transOrderDetailsByTransOrderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
      transOrderId: transOrderId == _undefined || transOrderId == null
          ? _instance.transOrderId
          : (transOrderId as String),
      orderNumber: orderNumber == _undefined || orderNumber == null
          ? _instance.orderNumber
          : (orderNumber as String),
      customerOrderNumber: customerOrderNumber == _undefined
          ? _instance.customerOrderNumber
          : (customerOrderNumber as String?),
      customerHistoryId: customerHistoryId == _undefined
          ? _instance.customerHistoryId
          : (customerHistoryId as String?),
      mstrStakholderId: mstrStakholderId == _undefined
          ? _instance.mstrStakholderId
          : (mstrStakholderId as String?),
      contactHistoryId: contactHistoryId == _undefined
          ? _instance.contactHistoryId
          : (contactHistoryId as String?),
      mstrStakeholderConcatId: mstrStakeholderConcatId == _undefined
          ? _instance.mstrStakeholderConcatId
          : (mstrStakeholderConcatId as String?),
      controlCode1: controlCode1 == _undefined
          ? _instance.controlCode1
          : (controlCode1 as String?),
      controlCode2: controlCode2 == _undefined
          ? _instance.controlCode2
          : (controlCode2 as String?),
      controlCode3: controlCode3 == _undefined
          ? _instance.controlCode3
          : (controlCode3 as String?),
      orderProcessingDate: orderProcessingDate == _undefined
          ? _instance.orderProcessingDate
          : (orderProcessingDate as String?),
      deliveryDate: deliveryDate == _undefined
          ? _instance.deliveryDate
          : (deliveryDate as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      transOrderDetailsByTransOrderId:
          transOrderDetailsByTransOrderId == _undefined ||
              transOrderDetailsByTransOrderId == null
          ? _instance.transOrderDetailsByTransOrderId
          : (transOrderDetailsByTransOrderId
                as Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId {
    final local$transOrderDetailsByTransOrderId =
        _instance.transOrderDetailsByTransOrderId;
    return CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
      local$transOrderDetailsByTransOrderId,
      (e) => call(transOrderDetailsByTransOrderId: e),
    );
  }
}

class _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder(
    this._res,
  );

  TRes _res;

  call({
    String? transOrderId,
    String? orderNumber,
    String? customerOrderNumber,
    String? customerHistoryId,
    String? mstrStakholderId,
    String? contactHistoryId,
    String? mstrStakeholderConcatId,
    String? controlCode1,
    String? controlCode2,
    String? controlCode3,
    String? orderProcessingDate,
    String? deliveryDate,
    String? deadline,
    String? remarks,
    String? symbol,
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId?
    transOrderDetailsByTransOrderId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
    TRes
  >
  get transOrderDetailsByTransOrderId =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId.stub(
        _res,
      );
}

class Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId {
  Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId({
    required this.nodes,
    this.$__typename = 'TransOrderDetailsConnection',
  });

  factory Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
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
            is! Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId ||
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

extension UtilityExtension$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId
    on
        Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId {
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId
  >
  get copyWith =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
  TRes
> {
  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId
    instance,
    TRes Function(
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId;

  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId;

  TRes call({
    List<
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
          Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
    this._instance,
    this._then,
  );

  final Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId
  _instance;

  final TRes Function(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
          Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes {
  Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes({
    required this.transOrderDetailId,
    required this.historyMstrItemId,
    required this.mstrItemId,
    this.quantity,
    this.cost,
    this.$__typename = 'TransOrderDetail',
  });

  factory Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOrderDetailId = json['transOrderDetailId'];
    final l$historyMstrItemId = json['historyMstrItemId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$quantity = json['quantity'];
    final l$cost = json['cost'];
    final l$$__typename = json['__typename'];
    return Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
      transOrderDetailId: (l$transOrderDetailId as String),
      historyMstrItemId: (l$historyMstrItemId as String),
      mstrItemId: (l$mstrItemId as String),
      quantity: (l$quantity as String?),
      cost: (l$cost as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOrderDetailId;

  final String historyMstrItemId;

  final String mstrItemId;

  final String? quantity;

  final String? cost;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOrderDetailId = transOrderDetailId;
    _resultData['transOrderDetailId'] = l$transOrderDetailId;
    final l$historyMstrItemId = historyMstrItemId;
    _resultData['historyMstrItemId'] = l$historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$cost = cost;
    _resultData['cost'] = l$cost;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOrderDetailId = transOrderDetailId;
    final l$historyMstrItemId = historyMstrItemId;
    final l$mstrItemId = mstrItemId;
    final l$quantity = quantity;
    final l$cost = cost;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOrderDetailId,
      l$historyMstrItemId,
      l$mstrItemId,
      l$quantity,
      l$cost,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOrderDetailId = transOrderDetailId;
    final lOther$transOrderDetailId = other.transOrderDetailId;
    if (l$transOrderDetailId != lOther$transOrderDetailId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
    on
        Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes {
  CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
  >
  get copyWith =>
      CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
  TRes
> {
  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
    instance,
    TRes Function(
      Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes,
    )
    then,
  ) = _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes;

  factory CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes;

  TRes call({
    String? transOrderDetailId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
          TRes
        > {
  _CopyWithImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
    this._instance,
    this._then,
  );

  final Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes
  _instance;

  final TRes Function(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOrderDetailId = _undefined,
    Object? historyMstrItemId = _undefined,
    Object? mstrItemId = _undefined,
    Object? quantity = _undefined,
    Object? cost = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
      transOrderDetailId:
          transOrderDetailId == _undefined || transOrderDetailId == null
          ? _instance.transOrderDetailId
          : (transOrderDetailId as String),
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
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
  TRes
>
    implements
        CopyWith$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Mutation$OrderEdit$updateTransOrderByTransOrderId$transOrder$transOrderDetailsByTransOrderId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transOrderDetailId,
    String? historyMstrItemId,
    String? mstrItemId,
    String? quantity,
    String? cost,
    String? $__typename,
  }) => _res;
}
