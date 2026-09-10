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
  }) => Variables$Query$InfoCompanyRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
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
                                    name: NameNode(value: 'ja'),
                                    alias: null,
                                    arguments: [],
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
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
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
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'en'),
                                    alias: null,
                                    arguments: [],
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
                        name: NameNode(value: 'infoStaffsByInfoCompanyId'),
                        alias: null,
                        arguments: [],
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
                                    name: NameNode(value: 'infoOfficeId'),
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
                                            value:
                                                'sharedDictionaryBySharedDictionaryNameId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(value: 'ja'),
                                                alias: null,
                                                arguments: [],
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
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(value: 'en'),
                                                alias: null,
                                                arguments: [],
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
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.infoAddressByInfoAddressId,
    required this.infoStaffsByInfoCompanyId,
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
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$infoStaffsByInfoCompanyId = json['infoStaffsByInfoCompanyId'];
    final l$infoOfficesByInfoCompanyId = json['infoOfficesByInfoCompanyId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes(
      infoCompanyId: (l$infoCompanyId as String),
      webPage: (l$webPage as String?),
      ceo: (l$ceo as String?),
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
      infoStaffsByInfoCompanyId:
          Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId.fromJson(
            (l$infoStaffsByInfoCompanyId as Map<String, dynamic>),
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

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId
  infoStaffsByInfoCompanyId;

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
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    _resultData['infoStaffsByInfoCompanyId'] = l$infoStaffsByInfoCompanyId
        .toJson();
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
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    final l$infoOfficesByInfoCompanyId = infoOfficesByInfoCompanyId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoCompanyId,
      l$webPage,
      l$ceo,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$infoAddressByInfoAddressId,
      l$infoStaffsByInfoCompanyId,
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
    final l$infoStaffsByInfoCompanyId = infoStaffsByInfoCompanyId;
    final lOther$infoStaffsByInfoCompanyId = other.infoStaffsByInfoCompanyId;
    if (l$infoStaffsByInfoCompanyId != lOther$infoStaffsByInfoCompanyId) {
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
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId?
    infoStaffsByInfoCompanyId,
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
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId;
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
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? infoStaffsByInfoCompanyId = _undefined,
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
      infoStaffsByInfoCompanyId:
          infoStaffsByInfoCompanyId == _undefined ||
              infoStaffsByInfoCompanyId == null
          ? _instance.infoStaffsByInfoCompanyId
          : (infoStaffsByInfoCompanyId
                as Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId),
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

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId {
    final local$infoStaffsByInfoCompanyId = _instance.infoStaffsByInfoCompanyId;
    return CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
      local$infoStaffsByInfoCompanyId,
      (e) => call(infoStaffsByInfoCompanyId: e),
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
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId?
    infoStaffsByInfoCompanyId,
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

  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
    TRes
  >
  get infoStaffsByInfoCompanyId =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId.stub(
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
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$InfoCompanyRead$allInfoCompanies$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
    String? ja,
    String? en,
    String? $__typename,
  });
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
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
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
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
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
    String? ja,
    String? en,
    String? $__typename,
  });
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
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
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
    String? ja,
    String? en,
    String? $__typename,
  }) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.$__typename = 'InfoAddress',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId ||
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
    String? zipCode,
    String? address1,
    String? address2,
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
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoAddressByInfoAddressId(
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
    String? zipCode,
    String? address1,
    String? address2,
    String? $__typename,
  }) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId({
    required this.totalCount,
    this.$__typename = 'InfoStaffsConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([l$totalCount, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$totalCount = totalCount;
    final lOther$totalCount = other.totalCount;
    if (l$totalCount != lOther$totalCount) {
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

extension UtilityExtension$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId
    on Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId {
  CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId
    instance,
    TRes Function(
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId;

  factory CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId
  _instance;

  final TRes Function(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyRead$allInfoCompanies$nodes$infoStaffsByInfoCompanyId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId({
    required this.nodes,
    this.$__typename = 'InfoOfficesConnection',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
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

  final List<
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
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
            is! Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId ||
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
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  });
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
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId(
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
    List<
      Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes {
  Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes({
    required this.infoOfficeId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoOffice',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoOfficeId = json['infoOfficeId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: (l$infoOfficeId as String),
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

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoOfficeId = infoOfficeId;
    _resultData['infoOfficeId'] = l$infoOfficeId;
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoOfficeId,
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
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes(
      infoOfficeId: infoOfficeId == _undefined || infoOfficeId == null
          ? _instance.infoOfficeId
          : (infoOfficeId as String),
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
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
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

  final Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId(
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
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
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

  TRes call({String? ja, String? en, String? $__typename});
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
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyRead$allInfoCompanies$nodes$infoOfficesByInfoCompanyId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
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

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$InfoCompanyRead$allInfoCompanies$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
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
      sharedAppellationsId: (l$sharedAppellationsId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String? sharedAppellationsId;

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
      sharedAppellationsId: sharedAppellationsId == _undefined
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String?),
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

class Variables$Query$InfoCompanyReadUpdaterAppellation {
  factory Variables$Query$InfoCompanyReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$InfoCompanyReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$InfoCompanyReadUpdaterAppellation._(this._$data);

  factory Variables$Query$InfoCompanyReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$InfoCompanyReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation<
    Variables$Query$InfoCompanyReadUpdaterAppellation
  >
  get copyWith => CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$InfoCompanyReadUpdaterAppellation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedAppellationsId = sharedAppellationsId;
    final lOther$sharedAppellationsId = other.sharedAppellationsId;
    if (l$sharedAppellationsId != lOther$sharedAppellationsId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sharedAppellationsId = sharedAppellationsId;
    return Object.hashAll([l$sharedAppellationsId]);
  }
}

abstract class CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation(
    Variables$Query$InfoCompanyReadUpdaterAppellation instance,
    TRes Function(Variables$Query$InfoCompanyReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$InfoCompanyReadUpdaterAppellation;

  factory CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$InfoCompanyReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$InfoCompanyReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$InfoCompanyReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$InfoCompanyReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$InfoCompanyReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$InfoCompanyReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$InfoCompanyReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$InfoCompanyReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$InfoCompanyReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$InfoCompanyReadUpdaterAppellation {
  Query$InfoCompanyReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$InfoCompanyReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$InfoCompanyReadUpdaterAppellation ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$InfoCompanyReadUpdaterAppellation
    on Query$InfoCompanyReadUpdaterAppellation {
  CopyWith$Query$InfoCompanyReadUpdaterAppellation<
    Query$InfoCompanyReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$InfoCompanyReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation(
    Query$InfoCompanyReadUpdaterAppellation instance,
    TRes Function(Query$InfoCompanyReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation;

  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation;

  TRes call({
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Query$InfoCompanyReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyReadUpdaterAppellation _instance;

  final TRes Function(Query$InfoCompanyReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation<TRes>
    implements CopyWith$Query$InfoCompanyReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryInfoCompanyReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'InfoCompanyReadUpdaterAppellation'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'sharedAppellationsId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'sharedAppellationBySharedAppellationsId'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'sharedAppellationsId'),
                value: VariableNode(
                  name: NameNode(value: 'sharedAppellationsId'),
                ),
              ),
            ],
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
                    value: 'sharedDictionaryBySharedDictionaryNameId',
                  ),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
                    value: 'sharedDictionaryBySharedDictionaryPronunciationId',
                  ),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
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
Query$InfoCompanyReadUpdaterAppellation
_parserFn$Query$InfoCompanyReadUpdaterAppellation(Map<String, dynamic> data) =>
    Query$InfoCompanyReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$InfoCompanyReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$InfoCompanyReadUpdaterAppellation?,
    );

class Options$Query$InfoCompanyReadUpdaterAppellation
    extends graphql.QueryOptions<Query$InfoCompanyReadUpdaterAppellation> {
  Options$Query$InfoCompanyReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$InfoCompanyReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InfoCompanyReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$InfoCompanyReadUpdaterAppellation? onComplete,
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
                 data == null
                     ? null
                     : _parserFn$Query$InfoCompanyReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryInfoCompanyReadUpdaterAppellation,
         parserFn: _parserFn$Query$InfoCompanyReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$InfoCompanyReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$InfoCompanyReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$InfoCompanyReadUpdaterAppellation> {
  WatchOptions$Query$InfoCompanyReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$InfoCompanyReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$InfoCompanyReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryInfoCompanyReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$InfoCompanyReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$InfoCompanyReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$InfoCompanyReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$InfoCompanyReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryInfoCompanyReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$InfoCompanyReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$InfoCompanyReadUpdaterAppellation>>
  query$InfoCompanyReadUpdaterAppellation(
    Options$Query$InfoCompanyReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$InfoCompanyReadUpdaterAppellation>
  watchQuery$InfoCompanyReadUpdaterAppellation(
    WatchOptions$Query$InfoCompanyReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$InfoCompanyReadUpdaterAppellation({
    required Query$InfoCompanyReadUpdaterAppellation data,
    required Variables$Query$InfoCompanyReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryInfoCompanyReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$InfoCompanyReadUpdaterAppellation?
  readQuery$InfoCompanyReadUpdaterAppellation({
    required Variables$Query$InfoCompanyReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryInfoCompanyReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$InfoCompanyReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$InfoCompanyReadUpdaterAppellation>
useQuery$InfoCompanyReadUpdaterAppellation(
  Options$Query$InfoCompanyReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$InfoCompanyReadUpdaterAppellation>
useWatchQuery$InfoCompanyReadUpdaterAppellation(
  WatchOptions$Query$InfoCompanyReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$InfoCompanyReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$InfoCompanyReadUpdaterAppellation> {
  Query$InfoCompanyReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$InfoCompanyReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$InfoCompanyReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: (l$ja as String?),
      en: (l$en as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ja;

  final String? en;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$ja = ja;
    final l$en = en;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ja, l$en, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$InfoCompanyReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
