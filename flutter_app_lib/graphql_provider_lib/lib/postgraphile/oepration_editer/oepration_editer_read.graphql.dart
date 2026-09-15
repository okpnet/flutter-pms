import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OeprationEditerRead {
  factory Variables$Query$OeprationEditerRead({
    required int first,
    int? offset,
    Input$MstrOperationCondition? condition,
    List<Enum$MstrOperationsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$OeprationEditerRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$OeprationEditerRead._(this._$data);

  factory Variables$Query$OeprationEditerRead.fromJson(
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
          : Input$MstrOperationCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrOperationsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$OeprationEditerRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrOperationCondition? get condition =>
      (_$data['condition'] as Input$MstrOperationCondition?);

  List<Enum$MstrOperationsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrOperationsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrOperationsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$OeprationEditerRead<
    Variables$Query$OeprationEditerRead
  >
  get copyWith => CopyWith$Variables$Query$OeprationEditerRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OeprationEditerRead ||
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

abstract class CopyWith$Variables$Query$OeprationEditerRead<TRes> {
  factory CopyWith$Variables$Query$OeprationEditerRead(
    Variables$Query$OeprationEditerRead instance,
    TRes Function(Variables$Query$OeprationEditerRead) then,
  ) = _CopyWithImpl$Variables$Query$OeprationEditerRead;

  factory CopyWith$Variables$Query$OeprationEditerRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OeprationEditerRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrOperationCondition? condition,
    List<Enum$MstrOperationsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$OeprationEditerRead<TRes>
    implements CopyWith$Variables$Query$OeprationEditerRead<TRes> {
  _CopyWithImpl$Variables$Query$OeprationEditerRead(this._instance, this._then);

  final Variables$Query$OeprationEditerRead _instance;

  final TRes Function(Variables$Query$OeprationEditerRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$OeprationEditerRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrOperationCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrOperationsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OeprationEditerRead<TRes>
    implements CopyWith$Variables$Query$OeprationEditerRead<TRes> {
  _CopyWithStubImpl$Variables$Query$OeprationEditerRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrOperationCondition? condition,
    List<Enum$MstrOperationsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$OeprationEditerRead {
  Query$OeprationEditerRead({
    this.allMstrOperations,
    this.$__typename = 'Query',
  });

  factory Query$OeprationEditerRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrOperations = json['allMstrOperations'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead(
      allMstrOperations: l$allMstrOperations == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations.fromJson(
              (l$allMstrOperations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OeprationEditerRead$allMstrOperations? allMstrOperations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrOperations = allMstrOperations;
    _resultData['allMstrOperations'] = l$allMstrOperations?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrOperations = allMstrOperations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrOperations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OeprationEditerRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrOperations = allMstrOperations;
    final lOther$allMstrOperations = other.allMstrOperations;
    if (l$allMstrOperations != lOther$allMstrOperations) {
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

extension UtilityExtension$Query$OeprationEditerRead
    on Query$OeprationEditerRead {
  CopyWith$Query$OeprationEditerRead<Query$OeprationEditerRead> get copyWith =>
      CopyWith$Query$OeprationEditerRead(this, (i) => i);
}

abstract class CopyWith$Query$OeprationEditerRead<TRes> {
  factory CopyWith$Query$OeprationEditerRead(
    Query$OeprationEditerRead instance,
    TRes Function(Query$OeprationEditerRead) then,
  ) = _CopyWithImpl$Query$OeprationEditerRead;

  factory CopyWith$Query$OeprationEditerRead.stub(TRes res) =
      _CopyWithStubImpl$Query$OeprationEditerRead;

  TRes call({
    Query$OeprationEditerRead$allMstrOperations? allMstrOperations,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes>
  get allMstrOperations;
}

class _CopyWithImpl$Query$OeprationEditerRead<TRes>
    implements CopyWith$Query$OeprationEditerRead<TRes> {
  _CopyWithImpl$Query$OeprationEditerRead(this._instance, this._then);

  final Query$OeprationEditerRead _instance;

  final TRes Function(Query$OeprationEditerRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrOperations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead(
      allMstrOperations: allMstrOperations == _undefined
          ? _instance.allMstrOperations
          : (allMstrOperations as Query$OeprationEditerRead$allMstrOperations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes>
  get allMstrOperations {
    final local$allMstrOperations = _instance.allMstrOperations;
    return local$allMstrOperations == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations(
            local$allMstrOperations,
            (e) => call(allMstrOperations: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead<TRes>
    implements CopyWith$Query$OeprationEditerRead<TRes> {
  _CopyWithStubImpl$Query$OeprationEditerRead(this._res);

  TRes _res;

  call({
    Query$OeprationEditerRead$allMstrOperations? allMstrOperations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes>
  get allMstrOperations =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations.stub(_res);
}

const documentNodeQueryOeprationEditerRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OeprationEditerRead'),
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
            name: NameNode(value: 'MstrOperationCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrOperationsOrderBy'),
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
            name: NameNode(value: 'allMstrOperations'),
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
                        name: NameNode(value: 'mstrOperationId'),
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
                        name: NameNode(value: 'detail'),
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
                          value: 'mstrOperationTasksByMstrOperationId',
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
                                      value: 'mstrOperationTaskId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'mstrTaskId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'sequence'),
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
                                    name: NameNode(
                                      value:
                                          'mstrItemOperationTasksByMstrOperationTaskId',
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
                                                  value:
                                                      'mstrItemOperationTaskId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'mstrItemId',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'sequence',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'defaultInterval',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: SelectionSetNode(
                                                  selections: [
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'seconds',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'minutes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'hours',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'days',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'months',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet: null,
                                                    ),
                                                    FieldNode(
                                                      name: NameNode(
                                                        value: 'years',
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
Query$OeprationEditerRead _parserFn$Query$OeprationEditerRead(
  Map<String, dynamic> data,
) => Query$OeprationEditerRead.fromJson(data);
typedef OnQueryComplete$Query$OeprationEditerRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OeprationEditerRead?);

class Options$Query$OeprationEditerRead
    extends graphql.QueryOptions<Query$OeprationEditerRead> {
  Options$Query$OeprationEditerRead({
    String? operationName,
    required Variables$Query$OeprationEditerRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OeprationEditerRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OeprationEditerRead? onComplete,
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
                     : _parserFn$Query$OeprationEditerRead(data),
               ),
         onError: onError,
         document: documentNodeQueryOeprationEditerRead,
         parserFn: _parserFn$Query$OeprationEditerRead,
       );

  final OnQueryComplete$Query$OeprationEditerRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OeprationEditerRead
    extends graphql.WatchQueryOptions<Query$OeprationEditerRead> {
  WatchOptions$Query$OeprationEditerRead({
    String? operationName,
    required Variables$Query$OeprationEditerRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OeprationEditerRead? typedOptimisticResult,
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
         document: documentNodeQueryOeprationEditerRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OeprationEditerRead,
       );
}

class FetchMoreOptions$Query$OeprationEditerRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OeprationEditerRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OeprationEditerRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOeprationEditerRead,
       );
}

extension ClientExtension$Query$OeprationEditerRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OeprationEditerRead>>
  query$OeprationEditerRead(Options$Query$OeprationEditerRead options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$OeprationEditerRead>
  watchQuery$OeprationEditerRead(
    WatchOptions$Query$OeprationEditerRead options,
  ) => this.watchQuery(options);

  void writeQuery$OeprationEditerRead({
    required Query$OeprationEditerRead data,
    required Variables$Query$OeprationEditerRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOeprationEditerRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OeprationEditerRead? readQuery$OeprationEditerRead({
    required Variables$Query$OeprationEditerRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOeprationEditerRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OeprationEditerRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OeprationEditerRead>
useQuery$OeprationEditerRead(Options$Query$OeprationEditerRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OeprationEditerRead>
useWatchQuery$OeprationEditerRead(
  WatchOptions$Query$OeprationEditerRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$OeprationEditerRead$Widget
    extends graphql_flutter.Query<Query$OeprationEditerRead> {
  Query$OeprationEditerRead$Widget({
    widgets.Key? key,
    required Options$Query$OeprationEditerRead options,
    required graphql_flutter.QueryBuilder<Query$OeprationEditerRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OeprationEditerRead$allMstrOperations {
  Query$OeprationEditerRead$allMstrOperations({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrOperationsConnection',
  });

  factory Query$OeprationEditerRead$allMstrOperations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations(
      totalCount: (l$totalCount as int),
      pageInfo: Query$OeprationEditerRead$allMstrOperations$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OeprationEditerRead$allMstrOperations$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$OeprationEditerRead$allMstrOperations$pageInfo pageInfo;

  final List<Query$OeprationEditerRead$allMstrOperations$nodes?> nodes;

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
    if (other is! Query$OeprationEditerRead$allMstrOperations ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations
    on Query$OeprationEditerRead$allMstrOperations {
  CopyWith$Query$OeprationEditerRead$allMstrOperations<
    Query$OeprationEditerRead$allMstrOperations
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations(this, (i) => i);
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations(
    Query$OeprationEditerRead$allMstrOperations instance,
    TRes Function(Query$OeprationEditerRead$allMstrOperations) then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations.stub(TRes res) =
      _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations;

  TRes call({
    int? totalCount,
    Query$OeprationEditerRead$allMstrOperations$pageInfo? pageInfo,
    List<Query$OeprationEditerRead$allMstrOperations$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$OeprationEditerRead$allMstrOperations$nodes?> Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations<TRes>
    implements CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes> {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations _instance;

  final TRes Function(Query$OeprationEditerRead$allMstrOperations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OeprationEditerRead$allMstrOperations$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$OeprationEditerRead$allMstrOperations$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$OeprationEditerRead$allMstrOperations$nodes?> Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations<TRes>
    implements CopyWith$Query$OeprationEditerRead$allMstrOperations<TRes> {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$OeprationEditerRead$allMstrOperations$pageInfo? pageInfo,
    List<Query$OeprationEditerRead$allMstrOperations$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$pageInfo {
  Query$OeprationEditerRead$allMstrOperations$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$OeprationEditerRead$allMstrOperations$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$pageInfo(
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
    if (other is! Query$OeprationEditerRead$allMstrOperations$pageInfo ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$pageInfo
    on Query$OeprationEditerRead$allMstrOperations$pageInfo {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<
    Query$OeprationEditerRead$allMstrOperations$pageInfo
  >
  get copyWith => CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo(
    Query$OeprationEditerRead$allMstrOperations$pageInfo instance,
    TRes Function(Query$OeprationEditerRead$allMstrOperations$pageInfo) then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes> {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$pageInfo _instance;

  final TRes Function(Query$OeprationEditerRead$allMstrOperations$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$pageInfo(
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

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$nodes {
  Query$OeprationEditerRead$allMstrOperations$nodes({
    required this.mstrOperationId,
    this.controlCode,
    this.detail,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    required this.mstrOperationTasksByMstrOperationId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrOperation',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrOperationId = json['mstrOperationId'];
    final l$controlCode = json['controlCode'];
    final l$detail = json['detail'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrOperationTasksByMstrOperationId =
        json['mstrOperationTasksByMstrOperationId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes(
      mstrOperationId: (l$mstrOperationId as String),
      controlCode: (l$controlCode as String?),
      detail: (l$detail as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrOperationTasksByMstrOperationId:
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId.fromJson(
            (l$mstrOperationTasksByMstrOperationId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrOperationId;

  final String? controlCode;

  final String? detail;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId
  mstrOperationTasksByMstrOperationId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrOperationId = mstrOperationId;
    _resultData['mstrOperationId'] = l$mstrOperationId;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
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
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    _resultData['mstrOperationTasksByMstrOperationId'] =
        l$mstrOperationTasksByMstrOperationId.toJson();
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
    final l$mstrOperationId = mstrOperationId;
    final l$controlCode = controlCode;
    final l$detail = detail;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrOperationId,
      l$controlCode,
      l$detail,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrOperationTasksByMstrOperationId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OeprationEditerRead$allMstrOperations$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperationId = mstrOperationId;
    final lOther$mstrOperationId = other.mstrOperationId;
    if (l$mstrOperationId != lOther$mstrOperationId) {
      return false;
    }
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
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
    final l$mstrOperationTasksByMstrOperationId =
        mstrOperationTasksByMstrOperationId;
    final lOther$mstrOperationTasksByMstrOperationId =
        other.mstrOperationTasksByMstrOperationId;
    if (l$mstrOperationTasksByMstrOperationId !=
        lOther$mstrOperationTasksByMstrOperationId) {
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes
    on Query$OeprationEditerRead$allMstrOperations$nodes {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<
    Query$OeprationEditerRead$allMstrOperations$nodes
  >
  get copyWith => CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes(
    Query$OeprationEditerRead$allMstrOperations$nodes instance,
    TRes Function(Query$OeprationEditerRead$allMstrOperations$nodes) then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes;

  TRes call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId?
    mstrOperationTasksByMstrOperationId,
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId;
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes<TRes>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<TRes> {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes _instance;

  final TRes Function(Query$OeprationEditerRead$allMstrOperations$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperationId = _undefined,
    Object? controlCode = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrOperationTasksByMstrOperationId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes(
      mstrOperationId: mstrOperationId == _undefined || mstrOperationId == null
          ? _instance.mstrOperationId
          : (mstrOperationId as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId?),
      mstrOperationTasksByMstrOperationId:
          mstrOperationTasksByMstrOperationId == _undefined ||
              mstrOperationTasksByMstrOperationId == null
          ? _instance.mstrOperationTasksByMstrOperationId
          : (mstrOperationTasksByMstrOperationId
                as Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId {
    final local$mstrOperationTasksByMstrOperationId =
        _instance.mstrOperationTasksByMstrOperationId;
    return CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
      local$mstrOperationTasksByMstrOperationId,
      (e) => call(mstrOperationTasksByMstrOperationId: e),
    );
  }

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes<TRes>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes<TRes> {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrOperationId,
    String? controlCode,
    String? detail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId?
    mstrOperationTasksByMstrOperationId,
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
    TRes
  >
  get mstrOperationTasksByMstrOperationId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId {
  Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId({
    required this.nodes,
    this.$__typename = 'MstrOperationTasksConnection',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId;

  TRes call({
    List<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes({
    required this.mstrOperationTaskId,
    required this.mstrTaskId,
    this.sequence,
    this.sharedAppellationBySharedAppellationsId,
    required this.mstrItemOperationTasksByMstrOperationTaskId,
    this.$__typename = 'MstrOperationTask',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrOperationTaskId = json['mstrOperationTaskId'];
    final l$mstrTaskId = json['mstrTaskId'];
    final l$sequence = json['sequence'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        json['mstrItemOperationTasksByMstrOperationTaskId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
      mstrOperationTaskId: (l$mstrOperationTaskId as String),
      mstrTaskId: (l$mstrTaskId as String),
      sequence: (l$sequence as int?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrItemOperationTasksByMstrOperationTaskId:
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.fromJson(
            (l$mstrItemOperationTasksByMstrOperationTaskId
                as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrOperationTaskId;

  final String mstrTaskId;

  final int? sequence;

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  mstrItemOperationTasksByMstrOperationTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrOperationTaskId = mstrOperationTaskId;
    _resultData['mstrOperationTaskId'] = l$mstrOperationTaskId;
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    _resultData['mstrItemOperationTasksByMstrOperationTaskId'] =
        l$mstrItemOperationTasksByMstrOperationTaskId.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrOperationTaskId = mstrOperationTaskId;
    final l$mstrTaskId = mstrTaskId;
    final l$sequence = sequence;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrOperationTaskId,
      l$mstrTaskId,
      l$sequence,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrItemOperationTasksByMstrOperationTaskId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrOperationTaskId = mstrOperationTaskId;
    final lOther$mstrOperationTaskId = other.mstrOperationTaskId;
    if (l$mstrOperationTaskId != lOther$mstrOperationTaskId) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
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
    final l$mstrItemOperationTasksByMstrOperationTaskId =
        mstrItemOperationTasksByMstrOperationTaskId;
    final lOther$mstrItemOperationTasksByMstrOperationTaskId =
        other.mstrItemOperationTasksByMstrOperationTaskId;
    if (l$mstrItemOperationTasksByMstrOperationTaskId !=
        lOther$mstrItemOperationTasksByMstrOperationTaskId) {
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes;

  TRes call({
    String? mstrOperationTaskId,
    String? mstrTaskId,
    int? sequence,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId?
    mstrItemOperationTasksByMstrOperationTaskId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId;
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrOperationTaskId = _undefined,
    Object? mstrTaskId = _undefined,
    Object? sequence = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrItemOperationTasksByMstrOperationTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
      mstrOperationTaskId:
          mstrOperationTaskId == _undefined || mstrOperationTaskId == null
          ? _instance.mstrOperationTaskId
          : (mstrOperationTaskId as String),
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId?),
      mstrItemOperationTasksByMstrOperationTaskId:
          mstrItemOperationTasksByMstrOperationTaskId == _undefined ||
              mstrItemOperationTasksByMstrOperationTaskId == null
          ? _instance.mstrItemOperationTasksByMstrOperationTaskId
          : (mstrItemOperationTasksByMstrOperationTaskId
                as Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId {
    final local$mstrItemOperationTasksByMstrOperationTaskId =
        _instance.mstrItemOperationTasksByMstrOperationTaskId;
    return CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      local$mstrItemOperationTasksByMstrOperationTaskId,
      (e) => call(mstrItemOperationTasksByMstrOperationTaskId: e),
    );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrOperationTaskId,
    String? mstrTaskId,
    int? sequence,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId?
    mstrItemOperationTasksByMstrOperationTaskId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    TRes
  >
  get mstrItemOperationTasksByMstrOperationTaskId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.stub(
        _res,
      );
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId({
    required this.nodes,
    this.$__typename = 'MstrItemOperationTasksConnection',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId;

  TRes call({
    List<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes({
    required this.mstrItemOperationTaskId,
    this.mstrItemId,
    this.sequence,
    this.defaultInterval,
    this.$__typename = 'MstrItemOperationTask',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemOperationTaskId = json['mstrItemOperationTaskId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$sequence = json['sequence'];
    final l$defaultInterval = json['defaultInterval'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
      mstrItemOperationTaskId: (l$mstrItemOperationTaskId as String),
      mstrItemId: (l$mstrItemId as String?),
      sequence: (l$sequence as int?),
      defaultInterval: l$defaultInterval == null
          ? null
          : Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval.fromJson(
              (l$defaultInterval as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemOperationTaskId;

  final String? mstrItemId;

  final int? sequence;

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval?
  defaultInterval;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    _resultData['mstrItemOperationTaskId'] = l$mstrItemOperationTaskId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$defaultInterval = defaultInterval;
    _resultData['defaultInterval'] = l$defaultInterval?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    final l$mstrItemId = mstrItemId;
    final l$sequence = sequence;
    final l$defaultInterval = defaultInterval;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemOperationTaskId,
      l$mstrItemId,
      l$sequence,
      l$defaultInterval,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemOperationTaskId = mstrItemOperationTaskId;
    final lOther$mstrItemOperationTaskId = other.mstrItemOperationTaskId;
    if (l$mstrItemOperationTaskId != lOther$mstrItemOperationTaskId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$defaultInterval = defaultInterval;
    final lOther$defaultInterval = other.defaultInterval;
    if (l$defaultInterval != lOther$defaultInterval) {
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes;

  TRes call({
    String? mstrItemOperationTaskId,
    String? mstrItemId,
    int? sequence,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval?
    defaultInterval,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
    TRes
  >
  get defaultInterval;
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemOperationTaskId = _undefined,
    Object? mstrItemId = _undefined,
    Object? sequence = _undefined,
    Object? defaultInterval = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
      mstrItemOperationTaskId:
          mstrItemOperationTaskId == _undefined ||
              mstrItemOperationTaskId == null
          ? _instance.mstrItemOperationTaskId
          : (mstrItemOperationTaskId as String),
      mstrItemId: mstrItemId == _undefined
          ? _instance.mstrItemId
          : (mstrItemId as String?),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      defaultInterval: defaultInterval == _undefined
          ? _instance.defaultInterval
          : (defaultInterval
                as Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
    TRes
  >
  get defaultInterval {
    final local$defaultInterval = _instance.defaultInterval;
    return local$defaultInterval == null
        ? CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
            local$defaultInterval,
            (e) => call(defaultInterval: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemOperationTaskId,
    String? mstrItemId,
    int? sequence,
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval?
    defaultInterval,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
    TRes
  >
  get defaultInterval =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval.stub(
        _res,
      );
}

class Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval {
  Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
      seconds: (l$seconds as num?)?.toDouble(),
      minutes: (l$minutes as int?),
      hours: (l$hours as int?),
      days: (l$days as int?),
      months: (l$months as int?),
      years: (l$years as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double? seconds;

  final int? minutes;

  final int? hours;

  final int? days;

  final int? months;

  final int? years;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$seconds = seconds;
    _resultData['seconds'] = l$seconds;
    final l$minutes = minutes;
    _resultData['minutes'] = l$minutes;
    final l$hours = hours;
    _resultData['hours'] = l$hours;
    final l$days = days;
    _resultData['days'] = l$days;
    final l$months = months;
    _resultData['months'] = l$months;
    final l$years = years;
    _resultData['years'] = l$years;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$seconds = seconds;
    final l$minutes = minutes;
    final l$hours = hours;
    final l$days = days;
    final l$months = months;
    final l$years = years;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$seconds,
      l$minutes,
      l$hours,
      l$days,
      l$months,
      l$years,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$seconds = seconds;
    final lOther$seconds = other.seconds;
    if (l$seconds != lOther$seconds) {
      return false;
    }
    final l$minutes = minutes;
    final lOther$minutes = other.minutes;
    if (l$minutes != lOther$minutes) {
      return false;
    }
    final l$hours = hours;
    final lOther$hours = other.hours;
    if (l$hours != lOther$hours) {
      return false;
    }
    final l$days = days;
    final lOther$days = other.days;
    if (l$days != lOther$days) {
      return false;
    }
    final l$months = months;
    final lOther$months = other.months;
    if (l$months != lOther$months) {
      return false;
    }
    final l$years = years;
    final lOther$years = other.years;
    if (l$years != lOther$years) {
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval;

  TRes call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? seconds = _undefined,
    Object? minutes = _undefined,
    Object? hours = _undefined,
    Object? days = _undefined,
    Object? months = _undefined,
    Object? years = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
      seconds: seconds == _undefined ? _instance.seconds : (seconds as double?),
      minutes: minutes == _undefined ? _instance.minutes : (minutes as int?),
      hours: hours == _undefined ? _instance.hours : (hours as int?),
      days: days == _undefined ? _instance.days : (days as int?),
      months: months == _undefined ? _instance.months : (months as int?),
      years: years == _undefined ? _instance.years : (years as int?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$mstrOperationTasksByMstrOperationId$nodes$mstrItemOperationTasksByMstrOperationTaskId$nodes$defaultInterval(
    this._res,
  );

  TRes _res;

  call({
    double? seconds,
    int? minutes,
    int? hours,
    int? days,
    int? months,
    int? years,
    String? $__typename,
  }) => _res;
}

class Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerRead$allMstrOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$OeprationEditerReadUpdaterAppellation {
  factory Variables$Query$OeprationEditerReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$OeprationEditerReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$OeprationEditerReadUpdaterAppellation._(this._$data);

  factory Variables$Query$OeprationEditerReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$OeprationEditerReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation<
    Variables$Query$OeprationEditerReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OeprationEditerReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation(
    Variables$Query$OeprationEditerReadUpdaterAppellation instance,
    TRes Function(Variables$Query$OeprationEditerReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$OeprationEditerReadUpdaterAppellation;

  factory CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$OeprationEditerReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$OeprationEditerReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$OeprationEditerReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$OeprationEditerReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$OeprationEditerReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$OeprationEditerReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OeprationEditerReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$OeprationEditerReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$OeprationEditerReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$OeprationEditerReadUpdaterAppellation {
  Query$OeprationEditerReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$OeprationEditerReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$OeprationEditerReadUpdaterAppellation ||
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

extension UtilityExtension$Query$OeprationEditerReadUpdaterAppellation
    on Query$OeprationEditerReadUpdaterAppellation {
  CopyWith$Query$OeprationEditerReadUpdaterAppellation<
    Query$OeprationEditerReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$OeprationEditerReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation(
    Query$OeprationEditerReadUpdaterAppellation instance,
    TRes Function(Query$OeprationEditerReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation;

  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation;

  TRes call({
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OeprationEditerReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerReadUpdaterAppellation _instance;

  final TRes Function(Query$OeprationEditerReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OeprationEditerReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryOeprationEditerReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OeprationEditerReadUpdaterAppellation'),
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
Query$OeprationEditerReadUpdaterAppellation
_parserFn$Query$OeprationEditerReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$OeprationEditerReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$OeprationEditerReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$OeprationEditerReadUpdaterAppellation?,
    );

class Options$Query$OeprationEditerReadUpdaterAppellation
    extends graphql.QueryOptions<Query$OeprationEditerReadUpdaterAppellation> {
  Options$Query$OeprationEditerReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OeprationEditerReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OeprationEditerReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OeprationEditerReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$OeprationEditerReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryOeprationEditerReadUpdaterAppellation,
         parserFn: _parserFn$Query$OeprationEditerReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$OeprationEditerReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OeprationEditerReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<Query$OeprationEditerReadUpdaterAppellation> {
  WatchOptions$Query$OeprationEditerReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OeprationEditerReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OeprationEditerReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryOeprationEditerReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OeprationEditerReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$OeprationEditerReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OeprationEditerReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OeprationEditerReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOeprationEditerReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$OeprationEditerReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OeprationEditerReadUpdaterAppellation>>
  query$OeprationEditerReadUpdaterAppellation(
    Options$Query$OeprationEditerReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OeprationEditerReadUpdaterAppellation>
  watchQuery$OeprationEditerReadUpdaterAppellation(
    WatchOptions$Query$OeprationEditerReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$OeprationEditerReadUpdaterAppellation({
    required Query$OeprationEditerReadUpdaterAppellation data,
    required Variables$Query$OeprationEditerReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOeprationEditerReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OeprationEditerReadUpdaterAppellation?
  readQuery$OeprationEditerReadUpdaterAppellation({
    required Variables$Query$OeprationEditerReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOeprationEditerReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OeprationEditerReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OeprationEditerReadUpdaterAppellation>
useQuery$OeprationEditerReadUpdaterAppellation(
  Options$Query$OeprationEditerReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OeprationEditerReadUpdaterAppellation>
useWatchQuery$OeprationEditerReadUpdaterAppellation(
  WatchOptions$Query$OeprationEditerReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$OeprationEditerReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$OeprationEditerReadUpdaterAppellation> {
  Query$OeprationEditerReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$OeprationEditerReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$OeprationEditerReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OeprationEditerReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
