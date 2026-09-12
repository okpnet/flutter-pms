import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemKindRead {
  factory Variables$Query$ItemKindRead({
    required int first,
    int? offset,
    Input$MstrItemKindCondition? condition,
    List<Enum$MstrItemKindsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$ItemKindRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$ItemKindRead._(this._$data);

  factory Variables$Query$ItemKindRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrItemKindCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrItemKindsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$ItemKindRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrItemKindCondition? get condition =>
      (_$data['condition'] as Input$MstrItemKindCondition?);

  List<Enum$MstrItemKindsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrItemKindsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrItemKindsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$ItemKindRead<Variables$Query$ItemKindRead>
  get copyWith => CopyWith$Variables$Query$ItemKindRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemKindRead ||
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

abstract class CopyWith$Variables$Query$ItemKindRead<TRes> {
  factory CopyWith$Variables$Query$ItemKindRead(
    Variables$Query$ItemKindRead instance,
    TRes Function(Variables$Query$ItemKindRead) then,
  ) = _CopyWithImpl$Variables$Query$ItemKindRead;

  factory CopyWith$Variables$Query$ItemKindRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemKindRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrItemKindCondition? condition,
    List<Enum$MstrItemKindsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$ItemKindRead<TRes>
    implements CopyWith$Variables$Query$ItemKindRead<TRes> {
  _CopyWithImpl$Variables$Query$ItemKindRead(this._instance, this._then);

  final Variables$Query$ItemKindRead _instance;

  final TRes Function(Variables$Query$ItemKindRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$ItemKindRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrItemKindCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrItemKindsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemKindRead<TRes>
    implements CopyWith$Variables$Query$ItemKindRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemKindRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrItemKindCondition? condition,
    List<Enum$MstrItemKindsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$ItemKindRead {
  Query$ItemKindRead({this.allMstrItemKinds, this.$__typename = 'Query'});

  factory Query$ItemKindRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrItemKinds = json['allMstrItemKinds'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead(
      allMstrItemKinds: l$allMstrItemKinds == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds.fromJson(
              (l$allMstrItemKinds as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemKindRead$allMstrItemKinds? allMstrItemKinds;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrItemKinds = allMstrItemKinds;
    _resultData['allMstrItemKinds'] = l$allMstrItemKinds?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrItemKinds = allMstrItemKinds;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrItemKinds, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemKindRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrItemKinds = allMstrItemKinds;
    final lOther$allMstrItemKinds = other.allMstrItemKinds;
    if (l$allMstrItemKinds != lOther$allMstrItemKinds) {
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

extension UtilityExtension$Query$ItemKindRead on Query$ItemKindRead {
  CopyWith$Query$ItemKindRead<Query$ItemKindRead> get copyWith =>
      CopyWith$Query$ItemKindRead(this, (i) => i);
}

abstract class CopyWith$Query$ItemKindRead<TRes> {
  factory CopyWith$Query$ItemKindRead(
    Query$ItemKindRead instance,
    TRes Function(Query$ItemKindRead) then,
  ) = _CopyWithImpl$Query$ItemKindRead;

  factory CopyWith$Query$ItemKindRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemKindRead;

  TRes call({
    Query$ItemKindRead$allMstrItemKinds? allMstrItemKinds,
    String? $__typename,
  });
  CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> get allMstrItemKinds;
}

class _CopyWithImpl$Query$ItemKindRead<TRes>
    implements CopyWith$Query$ItemKindRead<TRes> {
  _CopyWithImpl$Query$ItemKindRead(this._instance, this._then);

  final Query$ItemKindRead _instance;

  final TRes Function(Query$ItemKindRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrItemKinds = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead(
      allMstrItemKinds: allMstrItemKinds == _undefined
          ? _instance.allMstrItemKinds
          : (allMstrItemKinds as Query$ItemKindRead$allMstrItemKinds?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> get allMstrItemKinds {
    final local$allMstrItemKinds = _instance.allMstrItemKinds;
    return local$allMstrItemKinds == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds.stub(_then(_instance))
        : CopyWith$Query$ItemKindRead$allMstrItemKinds(
            local$allMstrItemKinds,
            (e) => call(allMstrItemKinds: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemKindRead<TRes>
    implements CopyWith$Query$ItemKindRead<TRes> {
  _CopyWithStubImpl$Query$ItemKindRead(this._res);

  TRes _res;

  call({
    Query$ItemKindRead$allMstrItemKinds? allMstrItemKinds,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> get allMstrItemKinds =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds.stub(_res);
}

const documentNodeQueryItemKindRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemKindRead'),
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
            name: NameNode(value: 'MstrItemKindCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrItemKindsOrderBy'),
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
            name: NameNode(value: 'allMstrItemKinds'),
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
                        name: NameNode(value: 'mstrItemKindId'),
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
Query$ItemKindRead _parserFn$Query$ItemKindRead(Map<String, dynamic> data) =>
    Query$ItemKindRead.fromJson(data);
typedef OnQueryComplete$Query$ItemKindRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemKindRead?);

class Options$Query$ItemKindRead
    extends graphql.QueryOptions<Query$ItemKindRead> {
  Options$Query$ItemKindRead({
    String? operationName,
    required Variables$Query$ItemKindRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemKindRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemKindRead? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemKindRead(data),
               ),
         onError: onError,
         document: documentNodeQueryItemKindRead,
         parserFn: _parserFn$Query$ItemKindRead,
       );

  final OnQueryComplete$Query$ItemKindRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemKindRead
    extends graphql.WatchQueryOptions<Query$ItemKindRead> {
  WatchOptions$Query$ItemKindRead({
    String? operationName,
    required Variables$Query$ItemKindRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemKindRead? typedOptimisticResult,
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
         document: documentNodeQueryItemKindRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemKindRead,
       );
}

class FetchMoreOptions$Query$ItemKindRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemKindRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemKindRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemKindRead,
       );
}

extension ClientExtension$Query$ItemKindRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemKindRead>> query$ItemKindRead(
    Options$Query$ItemKindRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemKindRead> watchQuery$ItemKindRead(
    WatchOptions$Query$ItemKindRead options,
  ) => this.watchQuery(options);

  void writeQuery$ItemKindRead({
    required Query$ItemKindRead data,
    required Variables$Query$ItemKindRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemKindRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemKindRead? readQuery$ItemKindRead({
    required Variables$Query$ItemKindRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryItemKindRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemKindRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemKindRead> useQuery$ItemKindRead(
  Options$Query$ItemKindRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemKindRead> useWatchQuery$ItemKindRead(
  WatchOptions$Query$ItemKindRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemKindRead$Widget
    extends graphql_flutter.Query<Query$ItemKindRead> {
  Query$ItemKindRead$Widget({
    widgets.Key? key,
    required Options$Query$ItemKindRead options,
    required graphql_flutter.QueryBuilder<Query$ItemKindRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemKindRead$allMstrItemKinds {
  Query$ItemKindRead$allMstrItemKinds({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrItemKindsConnection',
  });

  factory Query$ItemKindRead$allMstrItemKinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds(
      totalCount: (l$totalCount as int),
      pageInfo: Query$ItemKindRead$allMstrItemKinds$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemKindRead$allMstrItemKinds$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ItemKindRead$allMstrItemKinds$pageInfo pageInfo;

  final List<Query$ItemKindRead$allMstrItemKinds$nodes?> nodes;

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
    if (other is! Query$ItemKindRead$allMstrItemKinds ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds
    on Query$ItemKindRead$allMstrItemKinds {
  CopyWith$Query$ItemKindRead$allMstrItemKinds<
    Query$ItemKindRead$allMstrItemKinds
  >
  get copyWith => CopyWith$Query$ItemKindRead$allMstrItemKinds(this, (i) => i);
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds(
    Query$ItemKindRead$allMstrItemKinds instance,
    TRes Function(Query$ItemKindRead$allMstrItemKinds) then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds;

  TRes call({
    int? totalCount,
    Query$ItemKindRead$allMstrItemKinds$pageInfo? pageInfo,
    List<Query$ItemKindRead$allMstrItemKinds$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$ItemKindRead$allMstrItemKinds$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<
          Query$ItemKindRead$allMstrItemKinds$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds(this._instance, this._then);

  final Query$ItemKindRead$allMstrItemKinds _instance;

  final TRes Function(Query$ItemKindRead$allMstrItemKinds) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$ItemKindRead$allMstrItemKinds$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$ItemKindRead$allMstrItemKinds$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ItemKindRead$allMstrItemKinds$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<
          Query$ItemKindRead$allMstrItemKinds$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds<TRes> {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$ItemKindRead$allMstrItemKinds$pageInfo? pageInfo,
    List<Query$ItemKindRead$allMstrItemKinds$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$ItemKindRead$allMstrItemKinds$pageInfo {
  Query$ItemKindRead$allMstrItemKinds$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ItemKindRead$allMstrItemKinds$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$pageInfo(
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
    if (other is! Query$ItemKindRead$allMstrItemKinds$pageInfo ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$pageInfo
    on Query$ItemKindRead$allMstrItemKinds$pageInfo {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<
    Query$ItemKindRead$allMstrItemKinds$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo(
    Query$ItemKindRead$allMstrItemKinds$pageInfo instance,
    TRes Function(Query$ItemKindRead$allMstrItemKinds$pageInfo) then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$pageInfo _instance;

  final TRes Function(Query$ItemKindRead$allMstrItemKinds$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$pageInfo(
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

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ItemKindRead$allMstrItemKinds$nodes {
  Query$ItemKindRead$allMstrItemKinds$nodes({
    required this.mstrItemKindId,
    this.code,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrItemKind',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$nodes(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemKindId,
      l$code,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemKindRead$allMstrItemKinds$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemKindId = mstrItemKindId;
    final lOther$mstrItemKindId = other.mstrItemKindId;
    if (l$mstrItemKindId != lOther$mstrItemKindId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes
    on Query$ItemKindRead$allMstrItemKinds$nodes {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<
    Query$ItemKindRead$allMstrItemKinds$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes(this, (i) => i);
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<TRes> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes(
    Query$ItemKindRead$allMstrItemKinds$nodes instance,
    TRes Function(Query$ItemKindRead$allMstrItemKinds$nodes) then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes;

  TRes call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<TRes> {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes _instance;

  final TRes Function(Query$ItemKindRead$allMstrItemKinds$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$nodes(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes<TRes>
    implements CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes<TRes> {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes(this._res);

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId {
  Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindRead$allMstrItemKinds$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$ItemKindReadUpdaterAppellation {
  factory Variables$Query$ItemKindReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$ItemKindReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$ItemKindReadUpdaterAppellation._(this._$data);

  factory Variables$Query$ItemKindReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$ItemKindReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemKindReadUpdaterAppellation<
    Variables$Query$ItemKindReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$ItemKindReadUpdaterAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemKindReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$ItemKindReadUpdaterAppellation<TRes> {
  factory CopyWith$Variables$Query$ItemKindReadUpdaterAppellation(
    Variables$Query$ItemKindReadUpdaterAppellation instance,
    TRes Function(Variables$Query$ItemKindReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$ItemKindReadUpdaterAppellation;

  factory CopyWith$Variables$Query$ItemKindReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ItemKindReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$ItemKindReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$ItemKindReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$ItemKindReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$ItemKindReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$ItemKindReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$ItemKindReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemKindReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$ItemKindReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemKindReadUpdaterAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$ItemKindReadUpdaterAppellation {
  Query$ItemKindReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$ItemKindReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$ItemKindReadUpdaterAppellation ||
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

extension UtilityExtension$Query$ItemKindReadUpdaterAppellation
    on Query$ItemKindReadUpdaterAppellation {
  CopyWith$Query$ItemKindReadUpdaterAppellation<
    Query$ItemKindReadUpdaterAppellation
  >
  get copyWith => CopyWith$Query$ItemKindReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$ItemKindReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$ItemKindReadUpdaterAppellation(
    Query$ItemKindReadUpdaterAppellation instance,
    TRes Function(Query$ItemKindReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$ItemKindReadUpdaterAppellation;

  factory CopyWith$Query$ItemKindReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation;

  TRes call({
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemKindReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemKindReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$ItemKindReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$ItemKindReadUpdaterAppellation _instance;

  final TRes Function(Query$ItemKindReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemKindReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryItemKindReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemKindReadUpdaterAppellation'),
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
Query$ItemKindReadUpdaterAppellation
_parserFn$Query$ItemKindReadUpdaterAppellation(Map<String, dynamic> data) =>
    Query$ItemKindReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$ItemKindReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ItemKindReadUpdaterAppellation?,
    );

class Options$Query$ItemKindReadUpdaterAppellation
    extends graphql.QueryOptions<Query$ItemKindReadUpdaterAppellation> {
  Options$Query$ItemKindReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemKindReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemKindReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemKindReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$ItemKindReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryItemKindReadUpdaterAppellation,
         parserFn: _parserFn$Query$ItemKindReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$ItemKindReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemKindReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$ItemKindReadUpdaterAppellation> {
  WatchOptions$Query$ItemKindReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemKindReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemKindReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryItemKindReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemKindReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$ItemKindReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemKindReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemKindReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemKindReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$ItemKindReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemKindReadUpdaterAppellation>>
  query$ItemKindReadUpdaterAppellation(
    Options$Query$ItemKindReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemKindReadUpdaterAppellation>
  watchQuery$ItemKindReadUpdaterAppellation(
    WatchOptions$Query$ItemKindReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$ItemKindReadUpdaterAppellation({
    required Query$ItemKindReadUpdaterAppellation data,
    required Variables$Query$ItemKindReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryItemKindReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemKindReadUpdaterAppellation?
  readQuery$ItemKindReadUpdaterAppellation({
    required Variables$Query$ItemKindReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemKindReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ItemKindReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemKindReadUpdaterAppellation>
useQuery$ItemKindReadUpdaterAppellation(
  Options$Query$ItemKindReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemKindReadUpdaterAppellation>
useWatchQuery$ItemKindReadUpdaterAppellation(
  WatchOptions$Query$ItemKindReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemKindReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$ItemKindReadUpdaterAppellation> {
  Query$ItemKindReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$ItemKindReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<Query$ItemKindReadUpdaterAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemKindReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
