import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$SupplierRead {
  factory Variables$Query$SupplierRead({
    required int first,
    int? offset,
    Input$MstrStakeholderCondition? condition,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$SupplierRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$SupplierRead._(this._$data);

  factory Variables$Query$SupplierRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrStakeholderCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrStakeholdersOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$SupplierRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrStakeholderCondition? get condition =>
      (_$data['condition'] as Input$MstrStakeholderCondition?);

  List<Enum$MstrStakeholdersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrStakeholdersOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrStakeholdersOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$SupplierRead<Variables$Query$SupplierRead>
  get copyWith => CopyWith$Variables$Query$SupplierRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierRead ||
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

abstract class CopyWith$Variables$Query$SupplierRead<TRes> {
  factory CopyWith$Variables$Query$SupplierRead(
    Variables$Query$SupplierRead instance,
    TRes Function(Variables$Query$SupplierRead) then,
  ) = _CopyWithImpl$Variables$Query$SupplierRead;

  factory CopyWith$Variables$Query$SupplierRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SupplierRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrStakeholderCondition? condition,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$SupplierRead<TRes>
    implements CopyWith$Variables$Query$SupplierRead<TRes> {
  _CopyWithImpl$Variables$Query$SupplierRead(this._instance, this._then);

  final Variables$Query$SupplierRead _instance;

  final TRes Function(Variables$Query$SupplierRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$SupplierRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrStakeholderCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrStakeholdersOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierRead<TRes>
    implements CopyWith$Variables$Query$SupplierRead<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrStakeholderCondition? condition,
    List<Enum$MstrStakeholdersOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$SupplierRead {
  Query$SupplierRead({this.allMstrStakeholders, this.$__typename = 'Query'});

  factory Query$SupplierRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrStakeholders = json['allMstrStakeholders'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead(
      allMstrStakeholders: l$allMstrStakeholders == null
          ? null
          : Query$SupplierRead$allMstrStakeholders.fromJson(
              (l$allMstrStakeholders as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierRead$allMstrStakeholders? allMstrStakeholders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrStakeholders = allMstrStakeholders;
    _resultData['allMstrStakeholders'] = l$allMstrStakeholders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrStakeholders = allMstrStakeholders;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrStakeholders, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrStakeholders = allMstrStakeholders;
    final lOther$allMstrStakeholders = other.allMstrStakeholders;
    if (l$allMstrStakeholders != lOther$allMstrStakeholders) {
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

extension UtilityExtension$Query$SupplierRead on Query$SupplierRead {
  CopyWith$Query$SupplierRead<Query$SupplierRead> get copyWith =>
      CopyWith$Query$SupplierRead(this, (i) => i);
}

abstract class CopyWith$Query$SupplierRead<TRes> {
  factory CopyWith$Query$SupplierRead(
    Query$SupplierRead instance,
    TRes Function(Query$SupplierRead) then,
  ) = _CopyWithImpl$Query$SupplierRead;

  factory CopyWith$Query$SupplierRead.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierRead;

  TRes call({
    Query$SupplierRead$allMstrStakeholders? allMstrStakeholders,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders<TRes> get allMstrStakeholders;
}

class _CopyWithImpl$Query$SupplierRead<TRes>
    implements CopyWith$Query$SupplierRead<TRes> {
  _CopyWithImpl$Query$SupplierRead(this._instance, this._then);

  final Query$SupplierRead _instance;

  final TRes Function(Query$SupplierRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrStakeholders = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead(
      allMstrStakeholders: allMstrStakeholders == _undefined
          ? _instance.allMstrStakeholders
          : (allMstrStakeholders as Query$SupplierRead$allMstrStakeholders?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders<TRes>
  get allMstrStakeholders {
    final local$allMstrStakeholders = _instance.allMstrStakeholders;
    return local$allMstrStakeholders == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders.stub(_then(_instance))
        : CopyWith$Query$SupplierRead$allMstrStakeholders(
            local$allMstrStakeholders,
            (e) => call(allMstrStakeholders: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead<TRes>
    implements CopyWith$Query$SupplierRead<TRes> {
  _CopyWithStubImpl$Query$SupplierRead(this._res);

  TRes _res;

  call({
    Query$SupplierRead$allMstrStakeholders? allMstrStakeholders,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders<TRes>
  get allMstrStakeholders =>
      CopyWith$Query$SupplierRead$allMstrStakeholders.stub(_res);
}

const documentNodeQuerySupplierRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierRead'),
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
            name: NameNode(value: 'MstrStakeholderCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrStakeholdersOrderBy'),
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
            name: NameNode(value: 'allMstrStakeholders'),
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
                        name: NameNode(value: 'controlCode'),
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
                          value: 'mstrStakeholderProvisionsByMstrStakeholderId',
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
                                      value: 'mstrStakeholderProvisionId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'infoProvisionByInfoProvisionId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'infoProvisionId',
                                          ),
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
                                                      name: NameNode(
                                                        value: 'ja',
                                                      ),
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
                                                      name: NameNode(
                                                        value: 'en',
                                                      ),
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
Query$SupplierRead _parserFn$Query$SupplierRead(Map<String, dynamic> data) =>
    Query$SupplierRead.fromJson(data);
typedef OnQueryComplete$Query$SupplierRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$SupplierRead?);

class Options$Query$SupplierRead
    extends graphql.QueryOptions<Query$SupplierRead> {
  Options$Query$SupplierRead({
    String? operationName,
    required Variables$Query$SupplierRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierRead? onComplete,
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
                 data == null ? null : _parserFn$Query$SupplierRead(data),
               ),
         onError: onError,
         document: documentNodeQuerySupplierRead,
         parserFn: _parserFn$Query$SupplierRead,
       );

  final OnQueryComplete$Query$SupplierRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierRead
    extends graphql.WatchQueryOptions<Query$SupplierRead> {
  WatchOptions$Query$SupplierRead({
    String? operationName,
    required Variables$Query$SupplierRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierRead? typedOptimisticResult,
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
         document: documentNodeQuerySupplierRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierRead,
       );
}

class FetchMoreOptions$Query$SupplierRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierRead,
       );
}

extension ClientExtension$Query$SupplierRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierRead>> query$SupplierRead(
    Options$Query$SupplierRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SupplierRead> watchQuery$SupplierRead(
    WatchOptions$Query$SupplierRead options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierRead({
    required Query$SupplierRead data,
    required Variables$Query$SupplierRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQuerySupplierRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierRead? readQuery$SupplierRead({
    required Variables$Query$SupplierRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQuerySupplierRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SupplierRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierRead> useQuery$SupplierRead(
  Options$Query$SupplierRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierRead> useWatchQuery$SupplierRead(
  WatchOptions$Query$SupplierRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierRead$Widget
    extends graphql_flutter.Query<Query$SupplierRead> {
  Query$SupplierRead$Widget({
    widgets.Key? key,
    required Options$Query$SupplierRead options,
    required graphql_flutter.QueryBuilder<Query$SupplierRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierRead$allMstrStakeholders {
  Query$SupplierRead$allMstrStakeholders({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrStakeholdersConnection',
  });

  factory Query$SupplierRead$allMstrStakeholders.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders(
      totalCount: (l$totalCount as int),
      pageInfo: Query$SupplierRead$allMstrStakeholders$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierRead$allMstrStakeholders$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$SupplierRead$allMstrStakeholders$pageInfo pageInfo;

  final List<Query$SupplierRead$allMstrStakeholders$nodes?> nodes;

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
    if (other is! Query$SupplierRead$allMstrStakeholders ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders
    on Query$SupplierRead$allMstrStakeholders {
  CopyWith$Query$SupplierRead$allMstrStakeholders<
    Query$SupplierRead$allMstrStakeholders
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders(this, (i) => i);
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders<TRes> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders(
    Query$SupplierRead$allMstrStakeholders instance,
    TRes Function(Query$SupplierRead$allMstrStakeholders) then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders;

  TRes call({
    int? totalCount,
    Query$SupplierRead$allMstrStakeholders$pageInfo? pageInfo,
    List<Query$SupplierRead$allMstrStakeholders$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$SupplierRead$allMstrStakeholders$nodes?> Function(
      Iterable<
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<
          Query$SupplierRead$allMstrStakeholders$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders<TRes> {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders _instance;

  final TRes Function(Query$SupplierRead$allMstrStakeholders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$SupplierRead$allMstrStakeholders$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$SupplierRead$allMstrStakeholders$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$SupplierRead$allMstrStakeholders$nodes?> Function(
      Iterable<
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<
          Query$SupplierRead$allMstrStakeholders$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders<TRes> {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$SupplierRead$allMstrStakeholders$pageInfo? pageInfo,
    List<Query$SupplierRead$allMstrStakeholders$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$SupplierRead$allMstrStakeholders$pageInfo {
  Query$SupplierRead$allMstrStakeholders$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SupplierRead$allMstrStakeholders$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$pageInfo(
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
    if (other is! Query$SupplierRead$allMstrStakeholders$pageInfo ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$pageInfo
    on Query$SupplierRead$allMstrStakeholders$pageInfo {
  CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<
    Query$SupplierRead$allMstrStakeholders$pageInfo
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo(
    Query$SupplierRead$allMstrStakeholders$pageInfo instance,
    TRes Function(Query$SupplierRead$allMstrStakeholders$pageInfo) then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$pageInfo;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$pageInfo _instance;

  final TRes Function(Query$SupplierRead$allMstrStakeholders$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$pageInfo(
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

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders$pageInfo<TRes> {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$SupplierRead$allMstrStakeholders$nodes {
  Query$SupplierRead$allMstrStakeholders$nodes({
    required this.mstrStakeholderId,
    required this.code,
    this.controlCode,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    required this.mstrStakeholderProvisionsByMstrStakeholderId,
    this.mstrShippingKindId,
    this.mstrShippingKindByMstrShippingKindId,
    this.infoAddressByInfoAddressId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        json['mstrStakeholderProvisionsByMstrStakeholderId'];
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$mstrShippingKindByMstrShippingKindId =
        json['mstrShippingKindByMstrShippingKindId'];
    final l$infoAddressByInfoAddressId = json['infoAddressByInfoAddressId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrStakeholderProvisionsByMstrStakeholderId:
          Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId.fromJson(
            (l$mstrStakeholderProvisionsByMstrStakeholderId
                as Map<String, dynamic>),
          ),
      mstrShippingKindId: (l$mstrShippingKindId as String?),
      mstrShippingKindByMstrShippingKindId:
          l$mstrShippingKindByMstrShippingKindId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId.fromJson(
              (l$mstrShippingKindByMstrShippingKindId as Map<String, dynamic>),
            ),
      infoAddressByInfoAddressId: l$infoAddressByInfoAddressId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId.fromJson(
              (l$infoAddressByInfoAddressId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final String code;

  final String? controlCode;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId
  mstrStakeholderProvisionsByMstrStakeholderId;

  final String? mstrShippingKindId;

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId?
  mstrShippingKindByMstrShippingKindId;

  final Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId?
  infoAddressByInfoAddressId;

  final Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
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
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    _resultData['mstrStakeholderProvisionsByMstrStakeholderId'] =
        l$mstrStakeholderProvisionsByMstrStakeholderId.toJson();
    final l$mstrShippingKindId = mstrShippingKindId;
    _resultData['mstrShippingKindId'] = l$mstrShippingKindId;
    final l$mstrShippingKindByMstrShippingKindId =
        mstrShippingKindByMstrShippingKindId;
    _resultData['mstrShippingKindByMstrShippingKindId'] =
        l$mstrShippingKindByMstrShippingKindId?.toJson();
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    _resultData['infoAddressByInfoAddressId'] = l$infoAddressByInfoAddressId
        ?.toJson();
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
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    final l$mstrShippingKindId = mstrShippingKindId;
    final l$mstrShippingKindByMstrShippingKindId =
        mstrShippingKindByMstrShippingKindId;
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$code,
      l$controlCode,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrStakeholderProvisionsByMstrStakeholderId,
      l$mstrShippingKindId,
      l$mstrShippingKindByMstrShippingKindId,
      l$infoAddressByInfoAddressId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupplierRead$allMstrStakeholders$nodes ||
        runtimeType != other.runtimeType) {
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
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
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
    final l$mstrStakeholderProvisionsByMstrStakeholderId =
        mstrStakeholderProvisionsByMstrStakeholderId;
    final lOther$mstrStakeholderProvisionsByMstrStakeholderId =
        other.mstrStakeholderProvisionsByMstrStakeholderId;
    if (l$mstrStakeholderProvisionsByMstrStakeholderId !=
        lOther$mstrStakeholderProvisionsByMstrStakeholderId) {
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
    final l$infoAddressByInfoAddressId = infoAddressByInfoAddressId;
    final lOther$infoAddressByInfoAddressId = other.infoAddressByInfoAddressId;
    if (l$infoAddressByInfoAddressId != lOther$infoAddressByInfoAddressId) {
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes
    on Query$SupplierRead$allMstrStakeholders$nodes {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<
    Query$SupplierRead$allMstrStakeholders$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes(this, (i) => i);
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<TRes> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes(
    Query$SupplierRead$allMstrStakeholders$nodes instance,
    TRes Function(Query$SupplierRead$allMstrStakeholders$nodes) then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes;

  TRes call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId?
    mstrStakeholderProvisionsByMstrStakeholderId,
    String? mstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId?
    mstrShippingKindByMstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<TRes> {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes _instance;

  final TRes Function(Query$SupplierRead$allMstrStakeholders$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrStakeholderProvisionsByMstrStakeholderId = _undefined,
    Object? mstrShippingKindId = _undefined,
    Object? mstrShippingKindByMstrShippingKindId = _undefined,
    Object? infoAddressByInfoAddressId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId?),
      mstrStakeholderProvisionsByMstrStakeholderId:
          mstrStakeholderProvisionsByMstrStakeholderId == _undefined ||
              mstrStakeholderProvisionsByMstrStakeholderId == null
          ? _instance.mstrStakeholderProvisionsByMstrStakeholderId
          : (mstrStakeholderProvisionsByMstrStakeholderId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId),
      mstrShippingKindId: mstrShippingKindId == _undefined
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String?),
      mstrShippingKindByMstrShippingKindId:
          mstrShippingKindByMstrShippingKindId == _undefined
          ? _instance.mstrShippingKindByMstrShippingKindId
          : (mstrShippingKindByMstrShippingKindId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId?),
      infoAddressByInfoAddressId: infoAddressByInfoAddressId == _undefined
          ? _instance.infoAddressByInfoAddressId
          : (infoAddressByInfoAddressId
                as Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId {
    final local$mstrStakeholderProvisionsByMstrStakeholderId =
        _instance.mstrStakeholderProvisionsByMstrStakeholderId;
    return CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
      local$mstrStakeholderProvisionsByMstrStakeholderId,
      (e) => call(mstrStakeholderProvisionsByMstrStakeholderId: e),
    );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId {
    final local$mstrShippingKindByMstrShippingKindId =
        _instance.mstrShippingKindByMstrShippingKindId;
    return local$mstrShippingKindByMstrShippingKindId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
            local$mstrShippingKindByMstrShippingKindId,
            (e) => call(mstrShippingKindByMstrShippingKindId: e),
          );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId {
    final local$infoAddressByInfoAddressId =
        _instance.infoAddressByInfoAddressId;
    return local$infoAddressByInfoAddressId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
            local$infoAddressByInfoAddressId,
            (e) => call(infoAddressByInfoAddressId: e),
          );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes<TRes>
    implements CopyWith$Query$SupplierRead$allMstrStakeholders$nodes<TRes> {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes(this._res);

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? code,
    String? controlCode,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId?
    mstrStakeholderProvisionsByMstrStakeholderId,
    String? mstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId?
    mstrShippingKindByMstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId?
    infoAddressByInfoAddressId,
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderProvisionsByMstrStakeholderId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
    TRes
  >
  get mstrShippingKindByMstrShippingKindId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
    TRes
  >
  get infoAddressByInfoAddressId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId {
  Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId({
    required this.nodes,
    this.$__typename = 'MstrStakeholderProvisionsConnection',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId;

  TRes call({
    List<
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes({
    required this.mstrStakeholderProvisionId,
    this.infoProvisionByInfoProvisionId,
    this.$__typename = 'MstrStakeholderProvision',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderProvisionId = json['mstrStakeholderProvisionId'];
    final l$infoProvisionByInfoProvisionId =
        json['infoProvisionByInfoProvisionId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
      mstrStakeholderProvisionId: (l$mstrStakeholderProvisionId as String),
      infoProvisionByInfoProvisionId: l$infoProvisionByInfoProvisionId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId.fromJson(
              (l$infoProvisionByInfoProvisionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderProvisionId;

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId?
  infoProvisionByInfoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    _resultData['mstrStakeholderProvisionId'] = l$mstrStakeholderProvisionId;
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    _resultData['infoProvisionByInfoProvisionId'] =
        l$infoProvisionByInfoProvisionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderProvisionId,
      l$infoProvisionByInfoProvisionId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrStakeholderProvisionId = mstrStakeholderProvisionId;
    final lOther$mstrStakeholderProvisionId = other.mstrStakeholderProvisionId;
    if (l$mstrStakeholderProvisionId != lOther$mstrStakeholderProvisionId) {
      return false;
    }
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    final lOther$infoProvisionByInfoProvisionId =
        other.infoProvisionByInfoProvisionId;
    if (l$infoProvisionByInfoProvisionId !=
        lOther$infoProvisionByInfoProvisionId) {
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes;

  TRes call({
    String? mstrStakeholderProvisionId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderProvisionId = _undefined,
    Object? infoProvisionByInfoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
      mstrStakeholderProvisionId:
          mstrStakeholderProvisionId == _undefined ||
              mstrStakeholderProvisionId == null
          ? _instance.mstrStakeholderProvisionId
          : (mstrStakeholderProvisionId as String),
      infoProvisionByInfoProvisionId:
          infoProvisionByInfoProvisionId == _undefined
          ? _instance.infoProvisionByInfoProvisionId
          : (infoProvisionByInfoProvisionId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId {
    final local$infoProvisionByInfoProvisionId =
        _instance.infoProvisionByInfoProvisionId;
    return local$infoProvisionByInfoProvisionId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
            local$infoProvisionByInfoProvisionId,
            (e) => call(infoProvisionByInfoProvisionId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderProvisionId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId({
    required this.infoProvisionId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoProvision',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoProvisionId = json['infoProvisionId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
      infoProvisionId: (l$infoProvisionId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoProvisionId;

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$infoProvisionId = infoProvisionId;
    _resultData['infoProvisionId'] = l$infoProvisionId;
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
    final l$infoProvisionId = infoProvisionId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoProvisionId,
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$infoProvisionId = infoProvisionId;
    final lOther$infoProvisionId = other.infoProvisionId;
    if (l$infoProvisionId != lOther$infoProvisionId) {
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId;

  TRes call({
    String? infoProvisionId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId(
    this._res,
  );

  TRes _res;

  call({
    String? infoProvisionId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrStakeholderProvisionsByMstrStakeholderId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId({
    required this.mstrShippingKindId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrShippingKind',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrShippingKindId = json['mstrShippingKindId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
      mstrShippingKindId: (l$mstrShippingKindId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrShippingKindId;

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId;

  TRes call({
    String? mstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrShippingKindId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
      mstrShippingKindId:
          mstrShippingKindId == _undefined || mstrShippingKindId == null
          ? _instance.mstrShippingKindId
          : (mstrShippingKindId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrShippingKindId,
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$mstrShippingKindByMstrShippingKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId {
  Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId({
    required this.infoAddressId,
    this.zipCode,
    this.address1,
    this.address2,
    this.bill,
    this.phone,
    this.faxNumber,
    this.$__typename = 'InfoAddress',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoAddressId = json['infoAddressId'];
    final l$zipCode = json['zipCode'];
    final l$address1 = json['address1'];
    final l$address2 = json['address2'];
    final l$bill = json['bill'];
    final l$phone = json['phone'];
    final l$faxNumber = json['faxNumber'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
      infoAddressId: (l$infoAddressId as String),
      zipCode: (l$zipCode as String?),
      address1: (l$address1 as String?),
      address2: (l$address2 as String?),
      bill: (l$bill as String?),
      phone: (l$phone as String?),
      faxNumber: (l$faxNumber as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoAddressId;

  final String? zipCode;

  final String? address1;

  final String? address2;

  final String? bill;

  final String? phone;

  final String? faxNumber;

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
    final l$bill = bill;
    _resultData['bill'] = l$bill;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$faxNumber = faxNumber;
    _resultData['faxNumber'] = l$faxNumber;
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
    final l$bill = bill;
    final l$phone = phone;
    final l$faxNumber = faxNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$infoAddressId,
      l$zipCode,
      l$address1,
      l$address2,
      l$bill,
      l$phone,
      l$faxNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId
    on Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId;

  TRes call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoAddressId = _undefined,
    Object? zipCode = _undefined,
    Object? address1 = _undefined,
    Object? address2 = _undefined,
    Object? bill = _undefined,
    Object? phone = _undefined,
    Object? faxNumber = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
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
      bill: bill == _undefined ? _instance.bill : (bill as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      faxNumber: faxNumber == _undefined
          ? _instance.faxNumber
          : (faxNumber as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$infoAddressByInfoAddressId(
    this._res,
  );

  TRes _res;

  call({
    String? infoAddressId,
    String? zipCode,
    String? address1,
    String? address2,
    String? bill,
    String? phone,
    String? faxNumber,
    String? $__typename,
  }) => _res;
}

class Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierRead$allMstrStakeholders$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$SupplierReadUpdaterAppellation {
  factory Variables$Query$SupplierReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$SupplierReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$SupplierReadUpdaterAppellation._(this._$data);

  factory Variables$Query$SupplierReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$SupplierReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$SupplierReadUpdaterAppellation<
    Variables$Query$SupplierReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$SupplierReadUpdaterAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SupplierReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$SupplierReadUpdaterAppellation<TRes> {
  factory CopyWith$Variables$Query$SupplierReadUpdaterAppellation(
    Variables$Query$SupplierReadUpdaterAppellation instance,
    TRes Function(Variables$Query$SupplierReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$SupplierReadUpdaterAppellation;

  factory CopyWith$Variables$Query$SupplierReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$SupplierReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$SupplierReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$SupplierReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$SupplierReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$SupplierReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$SupplierReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$SupplierReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$SupplierReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$SupplierReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$SupplierReadUpdaterAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$SupplierReadUpdaterAppellation {
  Query$SupplierReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$SupplierReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$SupplierReadUpdaterAppellation ||
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

extension UtilityExtension$Query$SupplierReadUpdaterAppellation
    on Query$SupplierReadUpdaterAppellation {
  CopyWith$Query$SupplierReadUpdaterAppellation<
    Query$SupplierReadUpdaterAppellation
  >
  get copyWith => CopyWith$Query$SupplierReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$SupplierReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$SupplierReadUpdaterAppellation(
    Query$SupplierReadUpdaterAppellation instance,
    TRes Function(Query$SupplierReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$SupplierReadUpdaterAppellation;

  factory CopyWith$Query$SupplierReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation;

  TRes call({
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$SupplierReadUpdaterAppellation<TRes>
    implements CopyWith$Query$SupplierReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$SupplierReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$SupplierReadUpdaterAppellation _instance;

  final TRes Function(Query$SupplierReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation<TRes>
    implements CopyWith$Query$SupplierReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQuerySupplierReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'SupplierReadUpdaterAppellation'),
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
Query$SupplierReadUpdaterAppellation
_parserFn$Query$SupplierReadUpdaterAppellation(Map<String, dynamic> data) =>
    Query$SupplierReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$SupplierReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$SupplierReadUpdaterAppellation?,
    );

class Options$Query$SupplierReadUpdaterAppellation
    extends graphql.QueryOptions<Query$SupplierReadUpdaterAppellation> {
  Options$Query$SupplierReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$SupplierReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupplierReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$SupplierReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQuerySupplierReadUpdaterAppellation,
         parserFn: _parserFn$Query$SupplierReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$SupplierReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$SupplierReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$SupplierReadUpdaterAppellation> {
  WatchOptions$Query$SupplierReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$SupplierReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupplierReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQuerySupplierReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$SupplierReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$SupplierReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupplierReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SupplierReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQuerySupplierReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$SupplierReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupplierReadUpdaterAppellation>>
  query$SupplierReadUpdaterAppellation(
    Options$Query$SupplierReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$SupplierReadUpdaterAppellation>
  watchQuery$SupplierReadUpdaterAppellation(
    WatchOptions$Query$SupplierReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$SupplierReadUpdaterAppellation({
    required Query$SupplierReadUpdaterAppellation data,
    required Variables$Query$SupplierReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQuerySupplierReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$SupplierReadUpdaterAppellation?
  readQuery$SupplierReadUpdaterAppellation({
    required Variables$Query$SupplierReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQuerySupplierReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SupplierReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SupplierReadUpdaterAppellation>
useQuery$SupplierReadUpdaterAppellation(
  Options$Query$SupplierReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SupplierReadUpdaterAppellation>
useWatchQuery$SupplierReadUpdaterAppellation(
  WatchOptions$Query$SupplierReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$SupplierReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$SupplierReadUpdaterAppellation> {
  Query$SupplierReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$SupplierReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<Query$SupplierReadUpdaterAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$SupplierReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
