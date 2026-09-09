import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$UpdateCompany {
  factory Variables$Mutation$UpdateCompany({
    required String infoCompanyId,
    String? webPage,
    String? ceo,
    required String sharedAppellationsId,
    required String nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    required String pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    required String infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
  }) => Variables$Mutation$UpdateCompany._({
    r'infoCompanyId': infoCompanyId,
    if (webPage != null) r'webPage': webPage,
    if (ceo != null) r'ceo': ceo,
    r'sharedAppellationsId': sharedAppellationsId,
    r'nameSharedDictionaryId': nameSharedDictionaryId,
    if (nameJa != null) r'nameJa': nameJa,
    if (nameEn != null) r'nameEn': nameEn,
    r'pronunciationSharedDictionaryId': pronunciationSharedDictionaryId,
    if (pronunciationJa != null) r'pronunciationJa': pronunciationJa,
    if (pronunciationEn != null) r'pronunciationEn': pronunciationEn,
    r'infoAddressId': infoAddressId,
    if (zipCode != null) r'zipCode': zipCode,
    if (address1 != null) r'address1': address1,
    if (address2 != null) r'address2': address2,
  });

  Variables$Mutation$UpdateCompany._(this._$data);

  factory Variables$Mutation$UpdateCompany.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = data['infoCompanyId'];
    result$data['infoCompanyId'] = (l$infoCompanyId as String);
    if (data.containsKey('webPage')) {
      final l$webPage = data['webPage'];
      result$data['webPage'] = (l$webPage as String?);
    }
    if (data.containsKey('ceo')) {
      final l$ceo = data['ceo'];
      result$data['ceo'] = (l$ceo as String?);
    }
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    final l$nameSharedDictionaryId = data['nameSharedDictionaryId'];
    result$data['nameSharedDictionaryId'] =
        (l$nameSharedDictionaryId as String);
    if (data.containsKey('nameJa')) {
      final l$nameJa = data['nameJa'];
      result$data['nameJa'] = (l$nameJa as String?);
    }
    if (data.containsKey('nameEn')) {
      final l$nameEn = data['nameEn'];
      result$data['nameEn'] = (l$nameEn as String?);
    }
    final l$pronunciationSharedDictionaryId =
        data['pronunciationSharedDictionaryId'];
    result$data['pronunciationSharedDictionaryId'] =
        (l$pronunciationSharedDictionaryId as String);
    if (data.containsKey('pronunciationJa')) {
      final l$pronunciationJa = data['pronunciationJa'];
      result$data['pronunciationJa'] = (l$pronunciationJa as String?);
    }
    if (data.containsKey('pronunciationEn')) {
      final l$pronunciationEn = data['pronunciationEn'];
      result$data['pronunciationEn'] = (l$pronunciationEn as String?);
    }
    final l$infoAddressId = data['infoAddressId'];
    result$data['infoAddressId'] = (l$infoAddressId as String);
    if (data.containsKey('zipCode')) {
      final l$zipCode = data['zipCode'];
      result$data['zipCode'] = (l$zipCode as String?);
    }
    if (data.containsKey('address1')) {
      final l$address1 = data['address1'];
      result$data['address1'] = (l$address1 as String?);
    }
    if (data.containsKey('address2')) {
      final l$address2 = data['address2'];
      result$data['address2'] = (l$address2 as String?);
    }
    return Variables$Mutation$UpdateCompany._(result$data);
  }

  Map<String, dynamic> _$data;

  String get infoCompanyId => (_$data['infoCompanyId'] as String);

  String? get webPage => (_$data['webPage'] as String?);

  String? get ceo => (_$data['ceo'] as String?);

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  String get nameSharedDictionaryId =>
      (_$data['nameSharedDictionaryId'] as String);

  String? get nameJa => (_$data['nameJa'] as String?);

  String? get nameEn => (_$data['nameEn'] as String?);

  String get pronunciationSharedDictionaryId =>
      (_$data['pronunciationSharedDictionaryId'] as String);

  String? get pronunciationJa => (_$data['pronunciationJa'] as String?);

  String? get pronunciationEn => (_$data['pronunciationEn'] as String?);

  String get infoAddressId => (_$data['infoAddressId'] as String);

  String? get zipCode => (_$data['zipCode'] as String?);

  String? get address1 => (_$data['address1'] as String?);

  String? get address2 => (_$data['address2'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    result$data['infoCompanyId'] = l$infoCompanyId;
    if (_$data.containsKey('webPage')) {
      final l$webPage = webPage;
      result$data['webPage'] = l$webPage;
    }
    if (_$data.containsKey('ceo')) {
      final l$ceo = ceo;
      result$data['ceo'] = l$ceo;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    result$data['nameSharedDictionaryId'] = l$nameSharedDictionaryId;
    if (_$data.containsKey('nameJa')) {
      final l$nameJa = nameJa;
      result$data['nameJa'] = l$nameJa;
    }
    if (_$data.containsKey('nameEn')) {
      final l$nameEn = nameEn;
      result$data['nameEn'] = l$nameEn;
    }
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    result$data['pronunciationSharedDictionaryId'] =
        l$pronunciationSharedDictionaryId;
    if (_$data.containsKey('pronunciationJa')) {
      final l$pronunciationJa = pronunciationJa;
      result$data['pronunciationJa'] = l$pronunciationJa;
    }
    if (_$data.containsKey('pronunciationEn')) {
      final l$pronunciationEn = pronunciationEn;
      result$data['pronunciationEn'] = l$pronunciationEn;
    }
    final l$infoAddressId = infoAddressId;
    result$data['infoAddressId'] = l$infoAddressId;
    if (_$data.containsKey('zipCode')) {
      final l$zipCode = zipCode;
      result$data['zipCode'] = l$zipCode;
    }
    if (_$data.containsKey('address1')) {
      final l$address1 = address1;
      result$data['address1'] = l$address1;
    }
    if (_$data.containsKey('address2')) {
      final l$address2 = address2;
      result$data['address2'] = l$address2;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCompany<Variables$Mutation$UpdateCompany>
  get copyWith => CopyWith$Variables$Mutation$UpdateCompany(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateCompany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$webPage = webPage;
    final lOther$webPage = other.webPage;
    if (_$data.containsKey('webPage') != other._$data.containsKey('webPage')) {
      return false;
    }
    if (l$webPage != lOther$webPage) {
      return false;
    }
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (_$data.containsKey('ceo') != other._$data.containsKey('ceo')) {
      return false;
    }
    if (l$ceo != lOther$ceo) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final lOther$nameSharedDictionaryId = other.nameSharedDictionaryId;
    if (l$nameSharedDictionaryId != lOther$nameSharedDictionaryId) {
      return false;
    }
    final l$nameJa = nameJa;
    final lOther$nameJa = other.nameJa;
    if (_$data.containsKey('nameJa') != other._$data.containsKey('nameJa')) {
      return false;
    }
    if (l$nameJa != lOther$nameJa) {
      return false;
    }
    final l$nameEn = nameEn;
    final lOther$nameEn = other.nameEn;
    if (_$data.containsKey('nameEn') != other._$data.containsKey('nameEn')) {
      return false;
    }
    if (l$nameEn != lOther$nameEn) {
      return false;
    }
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final lOther$pronunciationSharedDictionaryId =
        other.pronunciationSharedDictionaryId;
    if (l$pronunciationSharedDictionaryId !=
        lOther$pronunciationSharedDictionaryId) {
      return false;
    }
    final l$pronunciationJa = pronunciationJa;
    final lOther$pronunciationJa = other.pronunciationJa;
    if (_$data.containsKey('pronunciationJa') !=
        other._$data.containsKey('pronunciationJa')) {
      return false;
    }
    if (l$pronunciationJa != lOther$pronunciationJa) {
      return false;
    }
    final l$pronunciationEn = pronunciationEn;
    final lOther$pronunciationEn = other.pronunciationEn;
    if (_$data.containsKey('pronunciationEn') !=
        other._$data.containsKey('pronunciationEn')) {
      return false;
    }
    if (l$pronunciationEn != lOther$pronunciationEn) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (_$data.containsKey('zipCode') != other._$data.containsKey('zipCode')) {
      return false;
    }
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (_$data.containsKey('address1') !=
        other._$data.containsKey('address1')) {
      return false;
    }
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (_$data.containsKey('address2') !=
        other._$data.containsKey('address2')) {
      return false;
    }
    if (l$address2 != lOther$address2) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$nameSharedDictionaryId = nameSharedDictionaryId;
    final l$nameJa = nameJa;
    final l$nameEn = nameEn;
    final l$pronunciationSharedDictionaryId = pronunciationSharedDictionaryId;
    final l$pronunciationJa = pronunciationJa;
    final l$pronunciationEn = pronunciationEn;
    final l$infoAddressId = infoAddressId;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    return Object.hashAll([
      l$infoCompanyId,
      _$data.containsKey('webPage') ? l$webPage : const {},
      _$data.containsKey('ceo') ? l$ceo : const {},
      l$sharedAppellationsId,
      l$nameSharedDictionaryId,
      _$data.containsKey('nameJa') ? l$nameJa : const {},
      _$data.containsKey('nameEn') ? l$nameEn : const {},
      l$pronunciationSharedDictionaryId,
      _$data.containsKey('pronunciationJa') ? l$pronunciationJa : const {},
      _$data.containsKey('pronunciationEn') ? l$pronunciationEn : const {},
      l$infoAddressId,
      _$data.containsKey('zipCode') ? l$zipCode : const {},
      _$data.containsKey('address1') ? l$address1 : const {},
      _$data.containsKey('address2') ? l$address2 : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCompany(
    Variables$Mutation$UpdateCompany instance,
    TRes Function(Variables$Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCompany;

  factory CopyWith$Variables$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCompany;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCompany(this._instance, this._then);

  final Variables$Mutation$UpdateCompany _instance;

  final TRes Function(Variables$Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? nameSharedDictionaryId = _undefined,
    Object? nameJa = _undefined,
    Object? nameEn = _undefined,
    Object? pronunciationSharedDictionaryId = _undefined,
    Object? pronunciationJa = _undefined,
    Object? pronunciationEn = _undefined,
    Object? infoAddressId = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
  }) => _then(
    Variables$Mutation$UpdateCompany._({
      ..._instance._$data,
      if (infoCompanyId != _undefined && infoCompanyId != null)
        'infoCompanyId': (infoCompanyId as String),
      if (webPage != _undefined) 'webPage': (webPage as String?),
      if (ceo != _undefined) 'ceo': (ceo as String?),
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
      if (nameSharedDictionaryId != _undefined &&
          nameSharedDictionaryId != null)
        'nameSharedDictionaryId': (nameSharedDictionaryId as String),
      if (nameJa != _undefined) 'nameJa': (nameJa as String?),
      if (nameEn != _undefined) 'nameEn': (nameEn as String?),
      if (pronunciationSharedDictionaryId != _undefined &&
          pronunciationSharedDictionaryId != null)
        'pronunciationSharedDictionaryId':
            (pronunciationSharedDictionaryId as String),
      if (pronunciationJa != _undefined)
        'pronunciationJa': (pronunciationJa as String?),
      if (pronunciationEn != _undefined)
        'pronunciationEn': (pronunciationEn as String?),
      if (infoAddressId != _undefined && infoAddressId != null)
        'infoAddressId': (infoAddressId as String),
      if (zipCode != _undefined) 'zipCode': (zipCode as String?),
      if (address1 != _undefined) 'address1': (address1 as String?),
      if (address2 != _undefined) 'address2': (address2 as String?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCompany<TRes>
    implements CopyWith$Variables$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? sharedAppellationsId,
    String? nameSharedDictionaryId,
    String? nameJa,
    String? nameEn,
    String? pronunciationSharedDictionaryId,
    String? pronunciationJa,
    String? pronunciationEn,
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
  }) => _res;
}

class Mutation$UpdateCompany {
  Mutation$UpdateCompany({
    this.updateInfoCompanyByInfoCompanyId,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateCompany.fromJson(Map<String, dynamic> json) {
    final l$updateInfoCompanyByInfoCompanyId =
        json['updateInfoCompanyByInfoCompanyId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany(
      updateInfoCompanyByInfoCompanyId:
          l$updateInfoCompanyByInfoCompanyId == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId.fromJson(
              (l$updateInfoCompanyByInfoCompanyId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId?
  updateInfoCompanyByInfoCompanyId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    _resultData['updateInfoCompanyByInfoCompanyId'] =
        l$updateInfoCompanyByInfoCompanyId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$updateInfoCompanyByInfoCompanyId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCompany || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateInfoCompanyByInfoCompanyId = updateInfoCompanyByInfoCompanyId;
    final lOther$updateInfoCompanyByInfoCompanyId =
        other.updateInfoCompanyByInfoCompanyId;
    if (l$updateInfoCompanyByInfoCompanyId !=
        lOther$updateInfoCompanyByInfoCompanyId) {
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

extension UtilityExtension$Mutation$UpdateCompany on Mutation$UpdateCompany {
  CopyWith$Mutation$UpdateCompany<Mutation$UpdateCompany> get copyWith =>
      CopyWith$Mutation$UpdateCompany(this, (i) => i);
}

abstract class CopyWith$Mutation$UpdateCompany<TRes> {
  factory CopyWith$Mutation$UpdateCompany(
    Mutation$UpdateCompany instance,
    TRes Function(Mutation$UpdateCompany) then,
  ) = _CopyWithImpl$Mutation$UpdateCompany;

  factory CopyWith$Mutation$UpdateCompany.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCompany;

  TRes call({
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId?
    updateInfoCompanyByInfoCompanyId,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId;
}

class _CopyWithImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithImpl$Mutation$UpdateCompany(this._instance, this._then);

  final Mutation$UpdateCompany _instance;

  final TRes Function(Mutation$UpdateCompany) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateInfoCompanyByInfoCompanyId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany(
      updateInfoCompanyByInfoCompanyId:
          updateInfoCompanyByInfoCompanyId == _undefined
          ? _instance.updateInfoCompanyByInfoCompanyId
          : (updateInfoCompanyByInfoCompanyId
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId {
    final local$updateInfoCompanyByInfoCompanyId =
        _instance.updateInfoCompanyByInfoCompanyId;
    return local$updateInfoCompanyByInfoCompanyId == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
            local$updateInfoCompanyByInfoCompanyId,
            (e) => call(updateInfoCompanyByInfoCompanyId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany<TRes>
    implements CopyWith$Mutation$UpdateCompany<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompany(this._res);

  TRes _res;

  call({
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId?
    updateInfoCompanyByInfoCompanyId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<TRes>
  get updateInfoCompanyByInfoCompanyId =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId.stub(
        _res,
      );
}

const documentNodeMutationUpdateCompany = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.mutation,
      name: NameNode(value: 'UpdateCompany'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoCompanyId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'webPage')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ceo')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedAppellationsId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'nameSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'nameEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(
            name: NameNode(value: 'pronunciationSharedDictionaryId'),
          ),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pronunciationJa')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'pronunciationEn')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'infoAddressId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'zipCode')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address1')),
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'address2')),
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
            name: NameNode(value: 'updateInfoCompanyByInfoCompanyId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'input'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'infoCompanyId'),
                      value: VariableNode(
                        name: NameNode(value: 'infoCompanyId'),
                      ),
                    ),
                    ObjectFieldNode(
                      name: NameNode(value: 'infoCompanyPatch'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'webPage'),
                            value: VariableNode(
                              name: NameNode(value: 'webPage'),
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'ceo'),
                            value: VariableNode(name: NameNode(value: 'ceo')),
                          ),
                          ObjectFieldNode(
                            name: NameNode(
                              value: 'sharedAppellationToSharedAppellationsId',
                            ),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateBySharedAppellationsId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationsId',
                                        ),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'sharedAppellationsId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'sharedAppellationPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryNameId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'nameSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nameJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'nameEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value:
                                                    'sharedDictionaryToSharedDictionaryPronunciationId',
                                              ),
                                              value: ObjectValueNode(
                                                fields: [
                                                  ObjectFieldNode(
                                                    name: NameNode(
                                                      value:
                                                          'updateBySharedDictionaryId',
                                                    ),
                                                    value: ObjectValueNode(
                                                      fields: [
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryId',
                                                          ),
                                                          value: VariableNode(
                                                            name: NameNode(
                                                              value:
                                                                  'pronunciationSharedDictionaryId',
                                                            ),
                                                          ),
                                                        ),
                                                        ObjectFieldNode(
                                                          name: NameNode(
                                                            value:
                                                                'sharedDictionaryPatch',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'ja',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'pronunciationJa',
                                                                  ),
                                                                ),
                                                              ),
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'en',
                                                                ),
                                                                value: VariableNode(
                                                                  name: NameNode(
                                                                    value:
                                                                        'pronunciationEn',
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ObjectFieldNode(
                            name: NameNode(value: 'infoAddressToInfoAddressId'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(
                                    value: 'updateByInfoAddressId',
                                  ),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'infoAddressId'),
                                        value: VariableNode(
                                          name: NameNode(
                                            value: 'infoAddressId',
                                          ),
                                        ),
                                      ),
                                      ObjectFieldNode(
                                        name: NameNode(
                                          value: 'infoAddressPatch',
                                        ),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(value: 'zipCode'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'zipCode',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'address1'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'address1',
                                                ),
                                              ),
                                            ),
                                            ObjectFieldNode(
                                              name: NameNode(value: 'address2'),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'address2',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                  name: NameNode(value: 'infoCompany'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'infoCompanyId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'webPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'ceo'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'sharedAppellationBySharedAppellationsId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedAppellationsId'),
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
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
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
                                    name: NameNode(value: 'sharedDictionaryId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
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
                        name: NameNode(value: 'infoAddressByInfoAddressId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'infoAddressId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'zipCode'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address1'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'address2'),
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
  ],
);
Mutation$UpdateCompany _parserFn$Mutation$UpdateCompany(
  Map<String, dynamic> data,
) => Mutation$UpdateCompany.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCompany =
    FutureOr<void> Function(Map<String, dynamic>?, Mutation$UpdateCompany?);

class Options$Mutation$UpdateCompany
    extends graphql.MutationOptions<Mutation$UpdateCompany> {
  Options$Mutation$UpdateCompany({
    String? operationName,
    required Variables$Mutation$UpdateCompany variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCompany? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCompany? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCompany>? update,
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
                 data == null ? null : _parserFn$Mutation$UpdateCompany(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateCompany,
         parserFn: _parserFn$Mutation$UpdateCompany,
       );

  final OnMutationCompleted$Mutation$UpdateCompany? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

class WatchOptions$Mutation$UpdateCompany
    extends graphql.WatchQueryOptions<Mutation$UpdateCompany> {
  WatchOptions$Mutation$UpdateCompany({
    String? operationName,
    required Variables$Mutation$UpdateCompany variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCompany? typedOptimisticResult,
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
         document: documentNodeMutationUpdateCompany,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Mutation$UpdateCompany,
       );
}

extension ClientExtension$Mutation$UpdateCompany on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCompany>> mutate$UpdateCompany(
    Options$Mutation$UpdateCompany options,
  ) async => await this.mutate(options);

  graphql.ObservableQuery<Mutation$UpdateCompany> watchMutation$UpdateCompany(
    WatchOptions$Mutation$UpdateCompany options,
  ) => this.watchMutation(options);
}

class Mutation$UpdateCompany$HookResult {
  Mutation$UpdateCompany$HookResult(this.runMutation, this.result);

  final RunMutation$Mutation$UpdateCompany runMutation;

  final graphql.QueryResult<Mutation$UpdateCompany> result;
}

Mutation$UpdateCompany$HookResult useMutation$UpdateCompany([
  WidgetOptions$Mutation$UpdateCompany? options,
]) {
  final result = graphql_flutter.useMutation(
    options ?? WidgetOptions$Mutation$UpdateCompany(),
  );
  return Mutation$UpdateCompany$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
          variables.toJson(),
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
        ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateCompany> useWatchMutation$UpdateCompany(
  WatchOptions$Mutation$UpdateCompany options,
) => graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateCompany
    extends graphql.MutationOptions<Mutation$UpdateCompany> {
  WidgetOptions$Mutation$UpdateCompany({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCompany? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCompany? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCompany>? update,
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
                 data == null ? null : _parserFn$Mutation$UpdateCompany(data),
               ),
         update: update,
         onError: onError,
         document: documentNodeMutationUpdateCompany,
         parserFn: _parserFn$Mutation$UpdateCompany,
       );

  final OnMutationCompleted$Mutation$UpdateCompany? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onCompleted == null
        ? super.properties
        : super.properties.where((property) => property != onCompleted),
    onCompletedWithParsed,
  ];
}

typedef RunMutation$Mutation$UpdateCompany =
    graphql.MultiSourceResult<Mutation$UpdateCompany> Function(
      Variables$Mutation$UpdateCompany, {
      Object? optimisticResult,
      Mutation$UpdateCompany? typedOptimisticResult,
    });
typedef Builder$Mutation$UpdateCompany =
    widgets.Widget Function(
      RunMutation$Mutation$UpdateCompany,
      graphql.QueryResult<Mutation$UpdateCompany>?,
    );

class Mutation$UpdateCompany$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateCompany> {
  Mutation$UpdateCompany$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateCompany? options,
    required Builder$Mutation$UpdateCompany builder,
  }) : super(
         key: key,
         options: options ?? WidgetOptions$Mutation$UpdateCompany(),
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

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId({
    this.infoCompany,
    this.$__typename = 'UpdateInfoCompanyPayload',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompany = json['infoCompany'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
      infoCompany: l$infoCompany == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
              (l$infoCompany as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany?
  infoCompany;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompany = infoCompany;
    _resultData['infoCompany'] = l$infoCompany?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompany = infoCompany;
    final l$$__typename = $__typename;
    return Object.hashAll([l$infoCompany, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompany = infoCompany;
    final lOther$infoCompany = other.infoCompany;
    if (l$infoCompany != lOther$infoCompany) {
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

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId
    on Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId instance,
    TRes Function(Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId) then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId;

  TRes call({
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany?
    infoCompany,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany;
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<TRes> {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId _instance;

  final TRes Function(Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompany = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
      infoCompany: infoCompany == _undefined
          ? _instance.infoCompany
          : (infoCompany
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany {
    final local$infoCompany = _instance.infoCompany;
    return local$infoCompany == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
            local$infoCompany,
            (e) => call(infoCompany: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany?
    infoCompany,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
    TRes
  >
  get infoCompany =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
        _res,
      );
}

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany({
    required this.infoCompanyId,
    this.webPage,
    this.ceo,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    this.$__typename = 'InfoCompany',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompanyId = json['infoCompanyId'];
    final l$webPage = json['webPage'];
    final l$ceo = json['ceo'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoCompanyId;

  final String? webPage;

  final String? ceo;

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$webPage = webPage;
    _resultData['webPage'] = l$webPage;
    final l$ceo = ceo;
    _resultData['ceo'] = l$ceo;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
      l$sharedAppellationBySharedAppellationsId,
      l$infoAddressByInfoAddressId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoCompanyId = infoCompanyId;
    final lOther$infoCompanyId = other.infoCompanyId;
    if (l$infoCompanyId != lOther$infoCompanyId) {
      return false;
    }
    final l$webPage = webPage;
    final lOther$webPage = other.webPage;
    if (l$webPage != lOther$webPage) {
      return false;
    }
    final l$ceo = ceo;
    final lOther$ceo = other.ceo;
    if (l$ceo != lOther$ceo) {
      return false;
    }
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final lOther$sharedAppellationBySharedAppellationsId =
        other.sharedAppellationBySharedAppellationsId;
    if (l$sharedAppellationBySharedAppellationsId !=
        lOther$sharedAppellationBySharedAppellationsId) {
      return false;
    }
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final lOther$infoAddressByInfoAddressId = other.infoAddressByInfoAddressId;
    if (l$infoAddressByInfoAddressId != lOther$infoAddressByInfoAddressId) {
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

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany
    on Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany
    instance,
    TRes Function(
      Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany
  _instance;

  final TRes Function(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      webPage: webPage == _undefined ? _instance.webPage : (webPage as String?),
      ceo: ceo == _undefined ? _instance.ceo : (ceo as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany(
    this._res,
  );

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
        _res,
      );
}

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

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
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$sharedDictionaryBySharedDictionaryPronunciationId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
    on
        Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja;
    final l$en = en;
    _resultData['en'] = l$en;
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
            is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId {
  Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.$__typename = 'InfoAddress',
  });

  factory Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      zipCode: (l$zipCode as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? zipCode;

  final String? address1;

  final String? address2;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$zipCode,
      l$address1,
      l$address2,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$zipCode = zipCode;
    final lOther$zipCode = other.zipCode;
    if (l$zipCode != lOther$zipCode) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$address2 = address2;
    final lOther$address2 = other.address2;
    if (l$address2 != lOther$address2) {
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

extension UtilityExtension$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
    on
        Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId {
  CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId;

  factory CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Mutation$UpdateCompany$updateInfoCompanyByInfoCompanyId$infoCompany$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? $__typename,
  }) => _res;
}
