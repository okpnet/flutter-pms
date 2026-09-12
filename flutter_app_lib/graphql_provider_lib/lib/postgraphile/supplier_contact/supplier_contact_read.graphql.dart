import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SupplierContactRead {
  factory Variables$Query$SupplierContactRead({
    required int first,
    int? offset,
    Input$MstrStakeholderContactCondition? condition,
    List<Enum$MstrStakeholderContactsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$SupplierContactRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$SupplierContactRead._(this._$data);

  factory Variables$Query$SupplierContactRead.fromJson(
    Map<String, dynamic> data,
  ) {
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
          : Input$MstrStakeholderContactCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => fromJson$Enum$MstrStakeholderContactsOrderBy((e as String)),
          )
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$SupplierContactRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrStakeholderContactCondition? get condition =>
      (_$data['condition'] as Input$MstrStakeholderContactCondition?);

  List<Enum$MstrStakeholderContactsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrStakeholderContactsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrStakeholderContactsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$SupplierContactRead<
    Variables$Query$SupplierContactRead
  >
  get copyWith => CopyWith$Variables$Query$SupplierContactRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierContactRead ||
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

abstract class CopyWith$Variables$Query$SupplierContactRead<TRes> {
  factory CopyWith$Variables$Query$SupplierContactRead(
    Variables$Query$SupplierContactRead instance,
    TRes Function(Variables$Query$SupplierContactRead) then,
  ) = _CopyWithImpl$Variables$Query$SupplierContactRead;

  factory CopyWith$Variables$Query$SupplierContactRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SupplierContactRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrStakeholderContactCondition? condition,
    List<Enum$MstrStakeholderContactsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$SupplierContactRead<TRes>
    implements CopyWith$Variables$Query$SupplierContactRead<TRes> {
  _CopyWithImpl$Variables$Query$SupplierContactRead(this._instance, this._then);

  final Variables$Query$SupplierContactRead _instance;

  final TRes Function(Variables$Query$SupplierContactRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$SupplierContactRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrStakeholderContactCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrStakeholderContactsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierContactRead<TRes>
    implements CopyWith$Variables$Query$SupplierContactRead<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierContactRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrStakeholderContactCondition? condition,
    List<Enum$MstrStakeholderContactsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$SupplierContactRead {
  Query$SupplierContactRead({
    this.allMstrStakeholderContacts,
    this.$__typename = 'Query',
  });

  factory Query$SupplierContactRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrStakeholderContacts = json['allMstrStakeholderContacts'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead(
      allMstrStakeholderContacts: l$allMstrStakeholderContacts == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts.fromJson(
              (l$allMstrStakeholderContacts as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierContactRead$allMstrStakeholderContacts?
  allMstrStakeholderContacts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrStakeholderContacts = allMstrStakeholderContacts;
    _resultData['allMstrStakeholderContacts'] = l$allMstrStakeholderContacts
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrStakeholderContacts = allMstrStakeholderContacts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrStakeholderContacts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierContactRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrStakeholderContacts = allMstrStakeholderContacts;
    final lOther$allMstrStakeholderContacts = other.allMstrStakeholderContacts;
    if (l$allMstrStakeholderContacts != lOther$allMstrStakeholderContacts) {
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

extension UtilityExtension$Query$SupplierContactRead
    on Query$SupplierContactRead {
  CopyWith$Query$SupplierContactRead<Query$SupplierContactRead> get copyWith =>
      CopyWith$Query$SupplierContactRead(this, (i) => i);
}

abstract class CopyWith$Query$SupplierContactRead<TRes> {
  factory CopyWith$Query$SupplierContactRead(
    Query$SupplierContactRead instance,
    TRes Function(Query$SupplierContactRead) then,
  ) = _CopyWithImpl$Query$SupplierContactRead;

  factory CopyWith$Query$SupplierContactRead.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierContactRead;

  TRes call({
    Query$SupplierContactRead$allMstrStakeholderContacts?
    allMstrStakeholderContacts,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<TRes>
  get allMstrStakeholderContacts;
}

class _CopyWithImpl$Query$SupplierContactRead<TRes>
    implements CopyWith$Query$SupplierContactRead<TRes> {
  _CopyWithImpl$Query$SupplierContactRead(this._instance, this._then);

  final Query$SupplierContactRead _instance;

  final TRes Function(Query$SupplierContactRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrStakeholderContacts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead(
      allMstrStakeholderContacts: allMstrStakeholderContacts == _undefined
          ? _instance.allMstrStakeholderContacts
          : (allMstrStakeholderContacts
                as Query$SupplierContactRead$allMstrStakeholderContacts?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<TRes>
  get allMstrStakeholderContacts {
    final local$allMstrStakeholderContacts =
        _instance.allMstrStakeholderContacts;
    return local$allMstrStakeholderContacts == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts(
            local$allMstrStakeholderContacts,
            (e) => call(allMstrStakeholderContacts: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead<TRes>
    implements CopyWith$Query$SupplierContactRead<TRes> {
  _CopyWithStubImpl$Query$SupplierContactRead(this._res);

  TRes _res;

  call({
    Query$SupplierContactRead$allMstrStakeholderContacts?
    allMstrStakeholderContacts,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<TRes>
  get allMstrStakeholderContacts =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts.stub(_res);
}

const documentNodeQuerySupplierContactRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierContactRead'),
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
            name: NameNode(value: 'MstrStakeholderContactCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrStakeholderContactsOrderBy'),
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
            name: NameNode(value: 'allMstrStakeholderContacts'),
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
                        name: NameNode(value: 'mstrStakeholderContactId'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mail'),
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
                          value: 'sharedAppellationByOfficeAppellationsId',
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
                        name: NameNode(
                          value: 'sharedAppellationByDepartmentAppellationsId',
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
                        name: NameNode(
                          value:
                              'sharedAppellationByContactPersonAppellationsId',
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
                        name: NameNode(value: 'mstrShippingKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'mstrShippingKindByMstrShippingKindId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrShippingKindId'),
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
Query$SupplierContactRead _parserFn$Query$SupplierContactRead(
  Map<String, dynamic> data,
) => Query$SupplierContactRead.fromJson(data);
typedef OnQueryComplete$Query$SupplierContactRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$SupplierContactRead?);

class Options$Query$SupplierContactRead
    extends graphql.QueryOptions<Query$SupplierContactRead> {
  Options$Query$SupplierContactRead({
    String? operationName,
    required Variables$Query$SupplierContactRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierContactRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierContactRead? onComplete,
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
                     : _parserFn$Query$SupplierContactRead(data),
               ),
         onError: onError,
         document: documentNodeQuerySupplierContactRead,
         parserFn: _parserFn$Query$SupplierContactRead,
       );

  final OnQueryComplete$Query$SupplierContactRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierContactRead
    extends graphql.WatchQueryOptions<Query$SupplierContactRead> {
  WatchOptions$Query$SupplierContactRead({
    String? operationName,
    required Variables$Query$SupplierContactRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierContactRead? typedOptimisticResult,
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
         document: documentNodeQuerySupplierContactRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierContactRead,
       );
}

class FetchMoreOptions$Query$SupplierContactRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierContactRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierContactRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierContactRead,
       );
}

extension ClientExtension$Query$SupplierContactRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierContactRead>>
  query$SupplierContactRead(Options$Query$SupplierContactRead options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$SupplierContactRead>
  watchQuery$SupplierContactRead(
    WatchOptions$Query$SupplierContactRead options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierContactRead({
    required Query$SupplierContactRead data,
    required Variables$Query$SupplierContactRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerySupplierContactRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierContactRead? readQuery$SupplierContactRead({
    required Variables$Query$SupplierContactRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySupplierContactRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SupplierContactRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierContactRead>
useQuery$SupplierContactRead(Options$Query$SupplierContactRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierContactRead>
useWatchQuery$SupplierContactRead(
  WatchOptions$Query$SupplierContactRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierContactRead$Widget
    extends graphql_flutter.Query<Query$SupplierContactRead> {
  Query$SupplierContactRead$Widget({
    widgets.Key? key,
    required Options$Query$SupplierContactRead options,
    required graphql_flutter.QueryBuilder<Query$SupplierContactRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierContactRead$allMstrStakeholderContacts {
  Query$SupplierContactRead$allMstrStakeholderContacts({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStakeholderContactsConnection',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierContactRead$allMstrStakeholderContacts$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo pageInfo;

  final List<Query$SupplierContactRead$allMstrStakeholderContacts$nodes?> nodes;

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
    if (other is! Query$SupplierContactRead$allMstrStakeholderContacts ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts
    on Query$SupplierContactRead$allMstrStakeholderContacts {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<
    Query$SupplierContactRead$allMstrStakeholderContacts
  >
  get copyWith => CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts(
    Query$SupplierContactRead$allMstrStakeholderContacts instance,
    TRes Function(Query$SupplierContactRead$allMstrStakeholderContacts) then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts;

  TRes call({
    int? totalCount,
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo? pageInfo,
    List<Query$SupplierContactRead$allMstrStakeholderContacts$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$SupplierContactRead$allMstrStakeholderContacts$nodes?>
    Function(
      Iterable<
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
          Query$SupplierContactRead$allMstrStakeholderContacts$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts<TRes>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<TRes> {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts _instance;

  final TRes Function(Query$SupplierContactRead$allMstrStakeholderContacts)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierContactRead$allMstrStakeholderContacts$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SupplierContactRead$allMstrStakeholderContacts$nodes?>
    Function(
      Iterable<
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
          Query$SupplierContactRead$allMstrStakeholderContacts$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts<TRes> {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo? pageInfo,
    List<Query$SupplierContactRead$allMstrStakeholderContacts$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo {
  Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo
    on Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo instance,
    TRes Function(Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo)
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes({
    required this.mstrStakeholderContactId,
    required this.mstrStakeholderId,
    required this.code,
    this.mail,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationByOfficeAppellationsId,
    this.sharedAppellationByDepartmentAppellationsId,
    this.sharedAppellationByContactPersonAppellationsId,
    this.mstrShippingKindId,
    this.mstrShippingKindByMstrShippingKindId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrStakeholderContact',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderContactId = json['mstrStakeholderContactId'];
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$mail = json['mail'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationByOfficeAppellationsId =
        json['sharedAppellationByOfficeAppellationsId'];
    final l$sharedAppellationByDepartmentAppellationsId =
        json['sharedAppellationByDepartmentAppellationsId'];
    final l$sharedAppellationByContactPersonAppellationsId =
        json['sharedAppellationByContactPersonAppellationsId'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$mstrShippingKindByMstrShippingKindId =
        json['mstrShippingKindByMstrShippingKindId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
      mstrStakeholderContactId: (l$mstrStakeholderContactId as String),
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      mail: (l$mail as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationByOfficeAppellationsId:
          l$sharedAppellationByOfficeAppellationsId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId.fromJson(
              (l$sharedAppellationByOfficeAppellationsId
                  as Map<String, dynamic>),
            ),
      sharedAppellationByDepartmentAppellationsId:
          l$sharedAppellationByDepartmentAppellationsId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId.fromJson(
              (l$sharedAppellationByDepartmentAppellationsId
                  as Map<String, dynamic>),
            ),
      sharedAppellationByContactPersonAppellationsId:
          l$sharedAppellationByContactPersonAppellationsId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId.fromJson(
              (l$sharedAppellationByContactPersonAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      mstrShippingKindByMstrShippingKindId:
          l$mstrShippingKindByMstrShippingKindId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId.fromJson(
              (l$mstrShippingKindByMstrShippingKindId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderContactId;

  final String mstrStakeholderId;

  final String code;

  final String? mail;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId?
  sharedAppellationByOfficeAppellationsId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId?
  sharedAppellationByDepartmentAppellationsId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId?
  sharedAppellationByContactPersonAppellationsId;

  final String? mstrShippingKindId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId?
  mstrShippingKindByMstrShippingKindId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    _resultData['mstrStakeholderContactId'] = l$mstrStakeholderContactId;
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mail = mail;
    _resultData['mail'] = l$mail;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    _resultData['sharedAppellationByOfficeAppellationsId'] =
        l$sharedAppellationByOfficeAppellationsId?.toJson();
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    _resultData['sharedAppellationByDepartmentAppellationsId'] =
        l$sharedAppellationByDepartmentAppellationsId?.toJson();
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    _resultData['sharedAppellationByContactPersonAppellationsId'] =
        l$sharedAppellationByContactPersonAppellationsId?.toJson();
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$mstrShippingKindByMstrShippingKindId =
        mstrShippingKindByMstrShippingKindId;
    _resultData['mstrShippingKindByMstrShippingKindId'] =
        l$mstrShippingKindByMstrShippingKindId?.toJson();
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
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$mail = mail;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$mstrShippingKindByMstrShippingKindId =
        mstrShippingKindByMstrShippingKindId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderContactId,
      l$mstrStakeholderId,
      l$code,
      l$mail,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationByOfficeAppellationsId,
      l$sharedAppellationByDepartmentAppellationsId,
      l$sharedAppellationByContactPersonAppellationsId,
      l$mstrShippingKindId,
      l$mstrShippingKindByMstrShippingKindId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderContactId = mstrStakeholderContactId;
    final lOther$mstrStakeholderContactId = other.mstrStakeholderContactId;
    if (l$mstrStakeholderContactId != lOther$mstrStakeholderContactId) {
      return false;
    }
    final l$mstrStakeholderId = mstrStakeholderId;
    final lOther$mstrStakeholderId = other.mstrStakeholderId;
    if (l$mstrStakeholderId != lOther$mstrStakeholderId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mail = mail;
    final lOther$mail = other.mail;
    if (l$mail != lOther$mail) {
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
    final l$sharedAppellationByOfficeAppellationsId =
        sharedAppellationByOfficeAppellationsId;
    final lOther$sharedAppellationByOfficeAppellationsId =
        other.sharedAppellationByOfficeAppellationsId;
    if (l$sharedAppellationByOfficeAppellationsId !=
        lOther$sharedAppellationByOfficeAppellationsId) {
      return false;
    }
    final l$sharedAppellationByDepartmentAppellationsId =
        sharedAppellationByDepartmentAppellationsId;
    final lOther$sharedAppellationByDepartmentAppellationsId =
        other.sharedAppellationByDepartmentAppellationsId;
    if (l$sharedAppellationByDepartmentAppellationsId !=
        lOther$sharedAppellationByDepartmentAppellationsId) {
      return false;
    }
    final l$sharedAppellationByContactPersonAppellationsId =
        sharedAppellationByContactPersonAppellationsId;
    final lOther$sharedAppellationByContactPersonAppellationsId =
        other.sharedAppellationByContactPersonAppellationsId;
    if (l$sharedAppellationByContactPersonAppellationsId !=
        lOther$sharedAppellationByContactPersonAppellationsId) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
      return false;
    }
    final l$mstrShippingKindByMstrShippingKindId =
        mstrShippingKindByMstrShippingKindId;
    final lOther$mstrShippingKindByMstrShippingKindId =
        other.mstrShippingKindByMstrShippingKindId;
    if (l$mstrShippingKindByMstrShippingKindId !=
        lOther$mstrShippingKindByMstrShippingKindId) {
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes
    on Query$SupplierContactRead$allMstrStakeholderContacts$nodes {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes instance,
    TRes Function(Query$SupplierContactRead$allMstrStakeholderContacts$nodes)
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes;

  TRes call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId?
    sharedAppellationByOfficeAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId?
    sharedAppellationByDepartmentAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId?
    sharedAppellationByContactPersonAppellationsId,
    String? mstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId?
    mstrShippingKindByMstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderContactId = _undefined,
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? mail = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationByOfficeAppellationsId = _undefined,
    Object? sharedAppellationByDepartmentAppellationsId = _undefined,
    Object? sharedAppellationByContactPersonAppellationsId = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? mstrShippingKindByMstrShippingKindId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
      mstrStakeholderContactId:
          mstrStakeholderContactId == _undefined ||
              mstrStakeholderContactId == null
          ? _instance.mstrStakeholderContactId
          : (mstrStakeholderContactId as String),
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mail: mail == _undefined ? _instance.mail : (mail as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationByOfficeAppellationsId:
          sharedAppellationByOfficeAppellationsId == _undefined
          ? _instance.sharedAppellationByOfficeAppellationsId
          : (sharedAppellationByOfficeAppellationsId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId?),
      sharedAppellationByDepartmentAppellationsId:
          sharedAppellationByDepartmentAppellationsId == _undefined
          ? _instance.sharedAppellationByDepartmentAppellationsId
          : (sharedAppellationByDepartmentAppellationsId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId?),
      sharedAppellationByContactPersonAppellationsId:
          sharedAppellationByContactPersonAppellationsId == _undefined
          ? _instance.sharedAppellationByContactPersonAppellationsId
          : (sharedAppellationByContactPersonAppellationsId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId?),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      mstrShippingKindByMstrShippingKindId:
          mstrShippingKindByMstrShippingKindId == _undefined
          ? _instance.mstrShippingKindByMstrShippingKindId
          : (mstrShippingKindByMstrShippingKindId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId {
    final local$sharedAppellationByOfficeAppellationsId =
        _instance.sharedAppellationByOfficeAppellationsId;
    return local$sharedAppellationByOfficeAppellationsId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
            local$sharedAppellationByOfficeAppellationsId,
            (e) => call(sharedAppellationByOfficeAppellationsId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId {
    final local$sharedAppellationByDepartmentAppellationsId =
        _instance.sharedAppellationByDepartmentAppellationsId;
    return local$sharedAppellationByDepartmentAppellationsId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
            local$sharedAppellationByDepartmentAppellationsId,
            (e) => call(sharedAppellationByDepartmentAppellationsId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId {
    final local$sharedAppellationByContactPersonAppellationsId =
        _instance.sharedAppellationByContactPersonAppellationsId;
    return local$sharedAppellationByContactPersonAppellationsId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
            local$sharedAppellationByContactPersonAppellationsId,
            (e) => call(sharedAppellationByContactPersonAppellationsId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId {
    final local$mstrShippingKindByMstrShippingKindId =
        _instance.mstrShippingKindByMstrShippingKindId;
    return local$mstrShippingKindByMstrShippingKindId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
            local$mstrShippingKindByMstrShippingKindId,
            (e) => call(mstrShippingKindByMstrShippingKindId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderContactId,
    String? mstrStakeholderId,
    String? code,
    String? mail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId?
    sharedAppellationByOfficeAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId?
    sharedAppellationByDepartmentAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId?
    sharedAppellationByContactPersonAppellationsId,
    String? mstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId?
    mstrShippingKindByMstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
    TRes
  >
  get sharedAppellationByOfficeAppellationsId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
    TRes
  >
  get sharedAppellationByDepartmentAppellationsId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
    TRes
  >
  get sharedAppellationByContactPersonAppellationsId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId.fromJson(
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
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId,
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
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByOfficeAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId.fromJson(
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
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId,
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
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByDepartmentAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId.fromJson(
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
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId,
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
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$sharedAppellationByContactPersonAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId({
    required this.mstrShippingKindId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrShippingKind',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
      mstrShippingKindId: (l$mstrShippingKindId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrShippingKindId;

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
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
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrShippingKindId,
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrShippingKindId = mstrShippingKindId;
    final lOther$mstrShippingKindId = other.mstrShippingKindId;
    if (l$mstrShippingKindId != lOther$mstrShippingKindId) {
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId;

  TRes call({
    String? mstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
      mstrShippingKindId:
          mstrShippingKindId == _undefined || mstrShippingKindId == null
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrShippingKindId,
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactRead$allMstrStakeholderContacts$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$SupplierContactReadUpdaterAppellation {
  factory Variables$Query$SupplierContactReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$SupplierContactReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$SupplierContactReadUpdaterAppellation._(this._$data);

  factory Variables$Query$SupplierContactReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$SupplierContactReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation<
    Variables$Query$SupplierContactReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierContactReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation(
    Variables$Query$SupplierContactReadUpdaterAppellation instance,
    TRes Function(Variables$Query$SupplierContactReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$SupplierContactReadUpdaterAppellation;

  factory CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$SupplierContactReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$SupplierContactReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$SupplierContactReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$SupplierContactReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$SupplierContactReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$SupplierContactReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierContactReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$SupplierContactReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierContactReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$SupplierContactReadUpdaterAppellation {
  Query$SupplierContactReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$SupplierContactReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$SupplierContactReadUpdaterAppellation ||
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

extension UtilityExtension$Query$SupplierContactReadUpdaterAppellation
    on Query$SupplierContactReadUpdaterAppellation {
  CopyWith$Query$SupplierContactReadUpdaterAppellation<
    Query$SupplierContactReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$SupplierContactReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$SupplierContactReadUpdaterAppellation(
    Query$SupplierContactReadUpdaterAppellation instance,
    TRes Function(Query$SupplierContactReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation;

  factory CopyWith$Query$SupplierContactReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation;

  TRes call({
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation<TRes>
    implements CopyWith$Query$SupplierContactReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$SupplierContactReadUpdaterAppellation _instance;

  final TRes Function(Query$SupplierContactReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation<TRes>
    implements CopyWith$Query$SupplierContactReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQuerySupplierContactReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierContactReadUpdaterAppellation'),
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
Query$SupplierContactReadUpdaterAppellation
_parserFn$Query$SupplierContactReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$SupplierContactReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$SupplierContactReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$SupplierContactReadUpdaterAppellation?,
    );

class Options$Query$SupplierContactReadUpdaterAppellation
    extends graphql.QueryOptions<Query$SupplierContactReadUpdaterAppellation> {
  Options$Query$SupplierContactReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$SupplierContactReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierContactReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierContactReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$SupplierContactReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQuerySupplierContactReadUpdaterAppellation,
         parserFn: _parserFn$Query$SupplierContactReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$SupplierContactReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierContactReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<Query$SupplierContactReadUpdaterAppellation> {
  WatchOptions$Query$SupplierContactReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$SupplierContactReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierContactReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQuerySupplierContactReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierContactReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$SupplierContactReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierContactReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierContactReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierContactReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$SupplierContactReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierContactReadUpdaterAppellation>>
  query$SupplierContactReadUpdaterAppellation(
    Options$Query$SupplierContactReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SupplierContactReadUpdaterAppellation>
  watchQuery$SupplierContactReadUpdaterAppellation(
    WatchOptions$Query$SupplierContactReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierContactReadUpdaterAppellation({
    required Query$SupplierContactReadUpdaterAppellation data,
    required Variables$Query$SupplierContactReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerySupplierContactReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierContactReadUpdaterAppellation?
  readQuery$SupplierContactReadUpdaterAppellation({
    required Variables$Query$SupplierContactReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySupplierContactReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SupplierContactReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierContactReadUpdaterAppellation>
useQuery$SupplierContactReadUpdaterAppellation(
  Options$Query$SupplierContactReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierContactReadUpdaterAppellation>
useWatchQuery$SupplierContactReadUpdaterAppellation(
  WatchOptions$Query$SupplierContactReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierContactReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$SupplierContactReadUpdaterAppellation> {
  Query$SupplierContactReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$SupplierContactReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$SupplierContactReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierContactReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
