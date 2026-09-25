import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$InfoCompanyRead {
  factory Variables$Query$InfoCompanyRead({
    required int first,
    int? offset,
    Input$InfoCompanyCondition? condition,
    List<Enum$InfoCompaniesOrderBy>? orderBy,
    required bool ja,
    required bool en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    int? officesFirst,
    int? officesOffset,
    bool? removed,
  }) => Variables$Query$InfoCompanyRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (jaLanguageCodeId != null) r'jaLanguageCodeId': jaLanguageCodeId,
    if (enLanguageCodeId != null) r'enLanguageCodeId': enLanguageCodeId,
    if (officesFirst != null) r'officesFirst': officesFirst,
    if (officesOffset != null) r'officesOffset': officesOffset,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$InfoCompanyRead._(this._$data);

  factory Variables$Query$InfoCompanyRead.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('condition')) {
      final l$condition = data['condition'];
      result$data['condition'] = l$condition == null
          ? null
          : Input$InfoCompanyCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$InfoCompaniesOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    if (data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = data['jaLanguageCodeId'];
      result$data['jaLanguageCodeId'] = (l$jaLanguageCodeId as String?);
    }
    if (data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = data['enLanguageCodeId'];
      result$data['enLanguageCodeId'] = (l$enLanguageCodeId as String?);
    }
    if (data.containsKey('officesFirst')) {
      final l$officesFirst = data['officesFirst'];
      result$data['officesFirst'] = (l$officesFirst as int?);
    }
    if (data.containsKey('officesOffset')) {
      final l$officesOffset = data['officesOffset'];
      result$data['officesOffset'] = (l$officesOffset as int?);
    }
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$InfoCompanyRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$InfoCompanyCondition? get condition =>
      (_$data['condition'] as Input$InfoCompanyCondition?);

  List<Enum$InfoCompaniesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$InfoCompaniesOrderBy>?);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

  String? get jaLanguageCodeId => (_$data['jaLanguageCodeId'] as String?);

  String? get enLanguageCodeId => (_$data['enLanguageCodeId'] as String?);

  int? get officesFirst => (_$data['officesFirst'] as int?);

  int? get officesOffset => (_$data['officesOffset'] as int?);

  bool? get removed => (_$data['removed'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('condition')) {
      final l$condition = condition;
      result$data['condition'] = l$condition?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$InfoCompaniesOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    if (_$data.containsKey('jaLanguageCodeId')) {
      final l$jaLanguageCodeId = jaLanguageCodeId;
      result$data['jaLanguageCodeId'] = l$jaLanguageCodeId;
    }
    if (_$data.containsKey('enLanguageCodeId')) {
      final l$enLanguageCodeId = enLanguageCodeId;
      result$data['enLanguageCodeId'] = l$enLanguageCodeId;
    }
    if (_$data.containsKey('officesFirst')) {
      final l$officesFirst = officesFirst;
      result$data['officesFirst'] = l$officesFirst;
    }
    if (_$data.containsKey('officesOffset')) {
      final l$officesOffset = officesOffset;
      result$data['officesOffset'] = l$officesOffset;
    }
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$InfoCompanyRead<Variables$Query$InfoCompanyRead>
  get copyWith => CopyWith$Variables$Query$InfoCompanyRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$InfoCompanyRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$condition = condition;
    final lOther$condition = other.condition;
    if (_$data.containsKey('condition') !=
        other._$data.containsKey('condition')) {
      return false;
    }
    if (l$condition != lOther$condition) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
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
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final lOther$jaLanguageCodeId = other.jaLanguageCodeId;
    if (_$data.containsKey('jaLanguageCodeId') !=
        other._$data.containsKey('jaLanguageCodeId')) {
      return false;
    }
    if (l$jaLanguageCodeId != lOther$jaLanguageCodeId) {
      return false;
    }
    final l$enLanguageCodeId = enLanguageCodeId;
    final lOther$enLanguageCodeId = other.enLanguageCodeId;
    if (_$data.containsKey('enLanguageCodeId') !=
        other._$data.containsKey('enLanguageCodeId')) {
      return false;
    }
    if (l$enLanguageCodeId != lOther$enLanguageCodeId) {
      return false;
    }
    final l$officesFirst = officesFirst;
    final lOther$officesFirst = other.officesFirst;
    if (_$data.containsKey('officesFirst') !=
        other._$data.containsKey('officesFirst')) {
      return false;
    }
    if (l$officesFirst != lOther$officesFirst) {
      return false;
    }
    final l$officesOffset = officesOffset;
    final lOther$officesOffset = other.officesOffset;
    if (_$data.containsKey('officesOffset') !=
        other._$data.containsKey('officesOffset')) {
      return false;
    }
    if (l$officesOffset != lOther$officesOffset) {
      return false;
    }
    final l$removed = removed;
    final lOther$removed = other.removed;
    if (_$data.containsKey('removed') != other._$data.containsKey('removed')) {
      return false;
    }
    if (l$removed != lOther$removed) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$offset = offset;
    final l$condition = condition;
    final l$orderBy = orderBy;
    final l$ja = ja;
    final l$en = en;
    final l$jaLanguageCodeId = jaLanguageCodeId;
    final l$enLanguageCodeId = enLanguageCodeId;
    final l$officesFirst = officesFirst;
    final l$officesOffset = officesOffset;
    final l$removed = removed;
    return Object.hashAll([
      l$first,
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('condition') ? l$condition : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
                ? null
                : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      l$ja,
      l$en,
      _$data.containsKey('jaLanguageCodeId') ? l$jaLanguageCodeId : const {},
      _$data.containsKey('enLanguageCodeId') ? l$enLanguageCodeId : const {},
      _$data.containsKey('officesFirst') ? l$officesFirst : const {},
      _$data.containsKey('officesOffset') ? l$officesOffset : const {},
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$InfoCompanyRead<TRes> {
  factory CopyWith$Variables$Query$InfoCompanyRead(
    Variables$Query$InfoCompanyRead instance,
    TRes Function(Variables$Query$InfoCompanyRead) then,
  ) = _CopyWithImpl$Variables$Query$InfoCompanyRead;

  factory CopyWith$Variables$Query$InfoCompanyRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$InfoCompanyRead;

  TRes call({
    int? first,
    int? offset,
    Input$InfoCompanyCondition? condition,
    List<Enum$InfoCompaniesOrderBy>? orderBy,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    int? officesFirst,
    int? officesOffset,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$InfoCompanyRead<TRes>
    implements CopyWith$Variables$Query$InfoCompanyRead<TRes> {
  _CopyWithImpl$Variables$Query$InfoCompanyRead(this._instance, this._then);

  final Variables$Query$InfoCompanyRead _instance;

  final TRes Function(Variables$Query$InfoCompanyRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? jaLanguageCodeId = _undefined,
    Object? enLanguageCodeId = _undefined,
    Object? officesFirst = _undefined,
    Object? officesOffset = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$InfoCompanyRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$InfoCompanyCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$InfoCompaniesOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (jaLanguageCodeId != _undefined)
        'jaLanguageCodeId': (jaLanguageCodeId as String?),
      if (enLanguageCodeId != _undefined)
        'enLanguageCodeId': (enLanguageCodeId as String?),
      if (officesFirst != _undefined) 'officesFirst': (officesFirst as int?),
      if (officesOffset != _undefined) 'officesOffset': (officesOffset as int?),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$InfoCompanyRead<TRes>
    implements CopyWith$Variables$Query$InfoCompanyRead<TRes> {
  _CopyWithStubImpl$Variables$Query$InfoCompanyRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$InfoCompanyCondition? condition,
    List<Enum$InfoCompaniesOrderBy>? orderBy,
    bool? ja,
    bool? en,
    String? jaLanguageCodeId,
    String? enLanguageCodeId,
    int? officesFirst,
    int? officesOffset,
    bool? removed,
  }) => _res;
}

class Query$InfoCompanyRead {
  Query$InfoCompanyRead({this.allInfoCompanies, this.$__typename = 'Query'});

  factory Query$InfoCompanyRead.fromJson(Map<String, dynamic> json) {
    final l$allInfoCompanies = json['allInfoCompanies'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead(
      allInfoCompanies: l$allInfoCompanies == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies.fromJson(
              (l$allInfoCompanies as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InfoCompanyRead$allInfoCompanies? allInfoCompanies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allInfoCompanies = allInfoCompanies;
    _resultData['allInfoCompanies'] = l$allInfoCompanies?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allInfoCompanies = allInfoCompanies;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allInfoCompanies, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InfoCompanyRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allInfoCompanies = allInfoCompanies;
    final lOther$allInfoCompanies = other.allInfoCompanies;
    if (l$allInfoCompanies != lOther$allInfoCompanies) {
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

extension UtilityExtension$Query$InfoCompanyRead on Query$InfoCompanyRead {
  CopyWith$Query$InfoCompanyRead<Query$InfoCompanyRead> get copyWith =>
      CopyWith$Query$InfoCompanyRead(this, (i) => i);
}

abstract class CopyWith$Query$InfoCompanyRead<TRes> {
  factory CopyWith$Query$InfoCompanyRead(
    Query$InfoCompanyRead instance,
    TRes Function(Query$InfoCompanyRead) then,
  ) = _CopyWithImpl$Query$InfoCompanyRead;

  factory CopyWith$Query$InfoCompanyRead.stub(TRes res) =
      _CopyWithStubImpl$Query$InfoCompanyRead;

  TRes call({
    Query$InfoCompanyRead$allInfoCompanies? allInfoCompanies,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> get allInfoCompanies;
}

class _CopyWithImpl$Query$InfoCompanyRead<TRes>
    implements CopyWith$Query$InfoCompanyRead<TRes> {
  _CopyWithImpl$Query$InfoCompanyRead(this._instance, this._then);

  final Query$InfoCompanyRead _instance;

  final TRes Function(Query$InfoCompanyRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allInfoCompanies = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead(
      allInfoCompanies: allInfoCompanies == _undefined
          ? _instance.allInfoCompanies
          : (allInfoCompanies as Query$InfoCompanyRead$allInfoCompanies?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> get allInfoCompanies {
    final local$allInfoCompanies = _instance.allInfoCompanies;
    return local$allInfoCompanies == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies.stub(_then(_instance))
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies(
            local$allInfoCompanies,
            (e) => call(allInfoCompanies: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead<TRes>
    implements CopyWith$Query$InfoCompanyRead<TRes> {
  _CopyWithStubImpl$Query$InfoCompanyRead(this._res);

  TRes _res;

  call({
    Query$InfoCompanyRead$allInfoCompanies? allInfoCompanies,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> get allInfoCompanies =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies.stub(_res);
}

const documentNodeQueryInfoCompanyRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'InfoCompanyRead'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'first')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'offset')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'condition')),
          type: NamedTypeNode(
            name: NameNode(value: 'InfoCompanyCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'InfoCompaniesOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ListValueNode(
              values: [EnumValueNode(name: NameNode(value: 'PRIMARY_KEY_ASC'))],
            ),
          ),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'ja')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'en')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: true,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'jaLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'enLanguageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: false),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officesFirst')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '50')),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'officesOffset')),
          type: NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: false),
          defaultValue: DefaultValueNode(value: IntValueNode(value: '0')),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'removed')),
          type: NamedTypeNode(
            name: NameNode(value: 'Boolean'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: BooleanValueNode(value: false)),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'allInfoCompanies'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'first'),
                value: VariableNode(name: NameNode(value: 'first')),
              ),
              ArgumentNode(
                name: NameNode(value: 'offset'),
                value: VariableNode(name: NameNode(value: 'offset')),
              ),
              ArgumentNode(
                name: NameNode(value: 'condition'),
                value: VariableNode(name: NameNode(value: 'condition')),
              ),
              ArgumentNode(
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'orderBy')),
              ),
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'remove'),
                      value: ObjectValueNode(
                        fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equalTo'),
                            value: VariableNode(
                              name: NameNode(value: 'removed'),
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
                  name: NameNode(value: 'totalCount'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'pageInfo'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'hasNextPage'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'endCursor'),
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
                  name: NameNode(value: 'nodes'),
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'ja'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'en'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'ja'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'en'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                                    'sharedDictionaryBySharedDictionaryNicknameId',
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
                                    name: NameNode(
                                      value:
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'ja'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'jaLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'ja'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                                          'sharedDictionaryValuesBySharedDictionaryId',
                                    ),
                                    alias: NameNode(value: 'en'),
                                    arguments: [
                                      ArgumentNode(
                                        name: NameNode(value: 'condition'),
                                        value: ObjectValueNode(
                                          fields: [
                                            ObjectFieldNode(
                                              name: NameNode(
                                                value: 'sharedLanguageCodeId',
                                              ),
                                              value: VariableNode(
                                                name: NameNode(
                                                  value: 'enLanguageCodeId',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                    directives: [
                                      DirectiveNode(
                                        name: NameNode(value: 'include'),
                                        arguments: [
                                          ArgumentNode(
                                            name: NameNode(value: 'if'),
                                            value: VariableNode(
                                              name: NameNode(value: 'en'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
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
                                                  value: 'dictionaryValue',
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
                              name: NameNode(value: 'iso31663'),
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
                              name: NameNode(value: 'bill'),
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
                              name: NameNode(value: 'faxNumber'),
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
                        name: NameNode(value: 'infoOfficesByInfoCompanyId'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'first'),
                            value: VariableNode(
                              name: NameNode(value: 'officesFirst'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'offset'),
                            value: VariableNode(
                              name: NameNode(value: 'officesOffset'),
                            ),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'filter'),
                            value: ObjectValueNode(
                              fields: [
                                ObjectFieldNode(
                                  name: NameNode(value: 'remove'),
                                  value: ObjectValueNode(
                                    fields: [
                                      ObjectFieldNode(
                                        name: NameNode(value: 'equalTo'),
                                        value: VariableNode(
                                          name: NameNode(value: 'removed'),
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
                              name: NameNode(value: 'totalCount'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'pageInfo'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'hasNextPage'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'endCursor'),
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
                              name: NameNode(value: 'nodes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'infoOfficeId'),
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
                                    name: NameNode(value: 'infoAddressId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value:
                                          'sharedAppellationBySharedAppellationsId',
                                    ),
                                    alias: null,
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
                                                directives: [
                                                  DirectiveNode(
                                                    name: NameNode(
                                                      value: 'include',
                                                    ),
                                                    arguments: [
                                                      ArgumentNode(
                                                        name: NameNode(
                                                          value: 'if',
                                                        ),
                                                        value: VariableNode(
                                                          name: NameNode(
                                                            value: 'ja',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                                                directives: [
                                                  DirectiveNode(
                                                    name: NameNode(
                                                      value: 'include',
                                                    ),
                                                    arguments: [
                                                      ArgumentNode(
                                                        name: NameNode(
                                                          value: 'if',
                                                        ),
                                                        value: VariableNode(
                                                          name: NameNode(
                                                            value: 'en',
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
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
                        name: NameNode(
                          value:
                              'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                        ),
                        alias: null,
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
                              name: NameNode(value: 'sharedAppellationsId'),
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
Query$InfoCompanyRead _parserFn$Query$InfoCompanyRead(
  Map<String, dynamic> data,
) => Query$InfoCompanyRead.fromJson(data);
typedef OnQueryComplete$Query$InfoCompanyRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$InfoCompanyRead?);

class Options$Query$InfoCompanyRead
    extends graphql.QueryOptions<Query$InfoCompanyRead> {
  Options$Query$InfoCompanyRead({
    String? operationName,
    required Variables$Query$InfoCompanyRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InfoCompanyRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$InfoCompanyRead? onComplete,
    graphql.OnQueryError? onError,
  }) : onCompleteWithParsed = onComplete,
       super(
         variables: variables.toJson(),
         operationName: operationName,
         fetchPolicy: fetchPolicy,
         errorPolicy: errorPolicy,
         cacheRereadPolicy: cacheRereadPolicy,
         optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
         pollInterval: pollInterval,
         context: context,
         onComplete: onComplete == null
             ? null
             : (data) => onComplete(
                 data,
                 data == null ? null : _parserFn$Query$InfoCompanyRead(data),
               ),
         onError: onError,
         document: documentNodeQueryInfoCompanyRead,
         parserFn: _parserFn$Query$InfoCompanyRead,
       );

  final OnQueryComplete$Query$InfoCompanyRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$InfoCompanyRead
    extends graphql.WatchQueryOptions<Query$InfoCompanyRead> {
  WatchOptions$Query$InfoCompanyRead({
    String? operationName,
    required Variables$Query$InfoCompanyRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InfoCompanyRead? typedOptimisticResult,
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
         document: documentNodeQueryInfoCompanyRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$InfoCompanyRead,
       );
}

class FetchMoreOptions$Query$InfoCompanyRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$InfoCompanyRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$InfoCompanyRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryInfoCompanyRead,
       );
}

extension ClientExtension$Query$InfoCompanyRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$InfoCompanyRead>> query$InfoCompanyRead(
    Options$Query$InfoCompanyRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$InfoCompanyRead> watchQuery$InfoCompanyRead(
    WatchOptions$Query$InfoCompanyRead options,
  ) => this.watchQuery(options);

  void writeQuery$InfoCompanyRead({
    required Query$InfoCompanyRead data,
    required Variables$Query$InfoCompanyRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryInfoCompanyRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$InfoCompanyRead? readQuery$InfoCompanyRead({
    required Variables$Query$InfoCompanyRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryInfoCompanyRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$InfoCompanyRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$InfoCompanyRead> useQuery$InfoCompanyRead(
  Options$Query$InfoCompanyRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$InfoCompanyRead> useWatchQuery$InfoCompanyRead(
  WatchOptions$Query$InfoCompanyRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$InfoCompanyRead$Widget
    extends graphql_flutter.Query<Query$InfoCompanyRead> {
  Query$InfoCompanyRead$Widget({
    widgets.Key? key,
    required Options$Query$InfoCompanyRead options,
    required graphql_flutter.QueryBuilder<Query$InfoCompanyRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$InfoCompanyRead$allInfoCompanies {
  Query$InfoCompanyRead$allInfoCompanies({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'InfoCompaniesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies(
      totalCount: (l$totalCount as int),
      pageInfo: Query$InfoCompanyRead$allInfoCompanies$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$InfoCompanyRead$allInfoCompanies$pageInfo pageInfo;

  final List<Query$InfoCompanyRead$allInfoCompanies$nodes?> nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InfoCompanyRead$allInfoCompanies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies
    on Query$InfoCompanyRead$allInfoCompanies {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies<
    Query$InfoCompanyRead$allInfoCompanies
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies(this, (i) => i);
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies(
    Query$InfoCompanyRead$allInfoCompanies instance,
    TRes Function(Query$InfoCompanyRead$allInfoCompanies) then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies.stub(TRes res) =
      _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies;

  TRes call({
    int? totalCount,
    Query$InfoCompanyRead$allInfoCompanies$pageInfo? pageInfo,
    List<Query$InfoCompanyRead$allInfoCompanies$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$InfoCompanyRead$allInfoCompanies$nodes?> Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies _instance;

  final TRes Function(Query$InfoCompanyRead$allInfoCompanies) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$InfoCompanyRead$allInfoCompanies$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$InfoCompanyRead$allInfoCompanies$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$InfoCompanyRead$allInfoCompanies$nodes?> Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies<TRes> {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$InfoCompanyRead$allInfoCompanies$pageInfo? pageInfo,
    List<Query$InfoCompanyRead$allInfoCompanies$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$pageInfo {
  Query$InfoCompanyRead$allInfoCompanies$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InfoCompanyRead$allInfoCompanies$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$pageInfo
    on Query$InfoCompanyRead$allInfoCompanies$pageInfo {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<
    Query$InfoCompanyRead$allInfoCompanies$pageInfo
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo(
    Query$InfoCompanyRead$allInfoCompanies$pageInfo instance,
    TRes Function(Query$InfoCompanyRead$allInfoCompanies$pageInfo) then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$pageInfo _instance;

  final TRes Function(Query$InfoCompanyRead$allInfoCompanies$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies$pageInfo<TRes> {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes({
    required this.infoCompanyId,
    this.webPage,
    this.ceo,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    required this.infoOfficesByInfoCompanyId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'InfoCompany',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoCompanyId = json['infoCompanyId'];
    final l$webPage = json['webPage'];
    final l$ceo = json['ceo'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$infoOfficesByInfoCompanyId = json['infoOfficesByInfoCompanyId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      infoOfficesByInfoCompanyId:
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId.fromJson(
            (l$infoOfficesByInfoCompanyId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoCompanyId;

  final String? webPage;

  final String? ceo;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId
  infoOfficesByInfoCompanyId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$webPage = webPage;
    _resultData['webPage'] = l$webPage;
    final l$ceo = ceo;
    _resultData['ceo'] = l$ceo;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    _resultData['infoOfficesByInfoCompanyId'] = l$infoOfficesByInfoCompanyId
        .toJson();
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    _resultData['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'] =
        l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoCompanyId = infoCompanyId;
    final l$webPage = webPage;
    final l$ceo = ceo;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$infoAddressByInfoAddressId,
      l$infoOfficesByInfoCompanyId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InfoCompanyRead$allInfoCompanies$nodes ||
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
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    final lOther$infoOfficesByInfoCompanyId = other.infoOfficesByInfoCompanyId;
    if (l$infoOfficesByInfoCompanyId != lOther$infoOfficesByInfoCompanyId) {
      return false;
    }
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final lOther$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        other.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    if (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId !=
        lOther$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes
    on Query$InfoCompanyRead$allInfoCompanies$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes(this, (i) => i);
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<TRes> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes instance,
    TRes Function(Query$InfoCompanyRead$allInfoCompanies$nodes) then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes;

  TRes call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId?
    infoOfficesByInfoCompanyId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<TRes> {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes _instance;

  final TRes Function(Query$InfoCompanyRead$allInfoCompanies$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoCompanyId = _undefined,
    Object? webPage = _undefined,
    Object? ceo = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? infoOfficesByInfoCompanyId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes(
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      webPage: webPage == _undefined ? _instance.webPage : (webPage as String?),
      ceo: ceo == _undefined ? _instance.ceo : (ceo as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?),
      infoOfficesByInfoCompanyId:
          infoOfficesByInfoCompanyId == _undefined ||
              infoOfficesByInfoCompanyId == null
          ? _instance.infoOfficesByInfoCompanyId
          : (infoOfficesByInfoCompanyId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId {
    final local$infoOfficesByInfoCompanyId =
        _instance.infoOfficesByInfoCompanyId;
    return CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
      local$infoOfficesByInfoCompanyId,
      (e) => call(infoOfficesByInfoCompanyId: e),
    );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes<TRes>
    implements CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes<TRes> {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes(this._res);

  TRes _res;

  call({
    String? infoCompanyId,
    String? webPage,
    String? ceo,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId?
    infoOfficesByInfoCompanyId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
    TRes
  >
  get infoOfficesByInfoCompanyId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
  ja;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
  ja;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
  ja;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.iso31663,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.remarks,
    this.updateAt,
    this.remove,
    this.$__typename = 'InfoAddress',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$iso31663 = json['iso31663'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$bill = json['bill'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      iso31663: (l$iso31663 as String?),
      zipCode: (l$zipCode as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      bill: (l$bill as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? iso31663;

  final String? zipCode;

  final String? address1;

  final String? address2;

  final String? bill;

  final String? phone;

  final String? faxNumber;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$iso31663 = iso31663;
    _resultData['iso31663'] = l$iso31663;
    final l$zipCode = zipCode;
    _resultData['zipCode'] = l$zipCode;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$address2 = address2;
    _resultData['address2'] = l$address2;
    final l$bill = bill;
    _resultData['bill'] = l$bill;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoAddressId = infoAddressId;
    final l$iso31663 = iso31663;
    final l$zipCode = zipCode;
    final l$address1 = address1;
    final l$address2 = address2;
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$iso31663,
      l$zipCode,
      l$address1,
      l$address2,
      l$bill,
      l$phone,
      l$faxNumber,
      l$remarks,
      l$updateAt,
      l$remove,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
      return false;
    }
    final l$iso31663 = iso31663;
    final lOther$iso31663 = other.iso31663;
    if (l$iso31663 != lOther$iso31663) {
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
    final l$bill = bill;
    final lOther$bill = other.bill;
    if (l$bill != lOther$bill) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$faxNumber = faxNumber;
    final lOther$faxNumber = other.faxNumber;
    if (l$faxNumber != lOther$faxNumber) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId
    on Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? iso31663 = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
      infoAddressId: infoAddressId == _undefined || infoAddressId == null
          ? _instance.infoAddressId
          : (infoAddressId as String),
      iso31663: iso31663 == _undefined
          ? _instance.iso31663
          : (iso31663 as String?),
      zipCode: zipCode == _undefined ? _instance.zipCode : (zipCode as String?),
      address1: address1 == _undefined
          ? _instance.address1
          : (address1 as String?),
      address2: address2 == _undefined
          ? _instance.address2
          : (address2 as String?),
      bill: bill == _undefined ? _instance.bill : (bill as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? iso31663,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? $__typename,
  }) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'InfoOfficesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo
  pageInfo;

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
  >
  nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$pageInfo = pageInfo;
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$totalCount,
      l$pageInfo,
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId
    on Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId;

  TRes call({
    int? totalCount,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo?
    pageInfo,
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo?
    pageInfo,
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasNextPage = hasNextPage;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([l$hasNextPage, l$endCursor, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
      hasNextPage: hasNextPage == _undefined || hasNextPage == null
          ? _instance.hasNextPage
          : (hasNextPage as bool),
      endCursor: endCursor == _undefined
          ? _instance.endCursor
          : (endCursor as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes({
    required this.infoOfficeId,
    required this.infoCompanyId,
    required this.code,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.infoAddressId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoOffice',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$infoAddressId = json['infoAddressId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: (l$infoOfficeId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      infoAddressId: (l$infoAddressId as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoOfficeId;

  final String infoCompanyId;

  final String code;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final String? infoAddressId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$infoAddressId = infoAddressId;
    _resultData['infoAddressId'] = l$infoAddressId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$infoOfficeId = infoOfficeId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$infoAddressId = infoAddressId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
      l$infoCompanyId,
      l$code,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$infoAddressId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoOfficeId = infoOfficeId;
    final lOther$infoOfficeId = other.infoOfficeId;
    if (l$infoOfficeId != lOther$infoOfficeId) {
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
    final l$infoAddressId = infoAddressId;
    final lOther$infoAddressId = other.infoAddressId;
    if (l$infoAddressId != lOther$infoAddressId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
    on Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes;

  TRes call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? infoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoOfficeId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? infoAddressId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      infoAddressId: infoAddressId == _undefined
          ? _instance.infoAddressId
          : (infoAddressId as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? infoOfficeId,
    String? infoCompanyId,
    String? code,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    String? infoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    _resultData['sharedDictionaryBySharedDictionaryNameId'] =
        l$sharedDictionaryBySharedDictionaryNameId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationsId,
      l$sharedDictionaryBySharedDictionaryNameId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      ja: l$ja == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
              (l$ja as Map<String, dynamic>),
            ),
      en: l$en == null
          ? null
          : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
              (l$en as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
  ja;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
  en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$ja = ja;
    _resultData['ja'] = l$ja?.toJson();
    final l$en = en;
    _resultData['en'] = l$en?.toJson();
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja;
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en;
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      ja: ja == _undefined
          ? _instance.ja
          : (ja
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?),
      en: en == _undefined
          ? _instance.en
          : (en
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja {
    final local$ja = _instance.ja;
    return local$ja == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
            local$ja,
            (e) => call(ja: e),
          );
  }

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en {
    final local$en = _instance.en;
    return local$en == null
        ? CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
            local$en,
            (e) => call(en: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja?
    ja,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en?
    en,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    TRes
  >
  get ja =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    TRes
  >
  get en =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
        _res,
      );
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$ja$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en;

  TRes call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes ||
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId$en$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      sharedAppellationsId: (l$sharedAppellationsId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String sharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$sharedAppellationsId = sharedAppellationsId;
    _resultData['sharedAppellationsId'] = l$sharedAppellationsId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$sharedAppellationsId = sharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$sharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  }) => _res;
}
