import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TaskRead {
  factory Variables$Query$TaskRead({
    required int first,
    int? offset,
    Input$MstrTaskCondition? condition,
    List<Enum$MstrTasksOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$TaskRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$TaskRead._(this._$data);

  factory Variables$Query$TaskRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrTaskCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrTasksOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$TaskRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrTaskCondition? get condition =>
      (_$data['condition'] as Input$MstrTaskCondition?);

  List<Enum$MstrTasksOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrTasksOrderBy>?);

  bool get ja => (_$data['ja'] as bool);

  bool get en => (_$data['en'] as bool);

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
          ?.map((e) => toJson$Enum$MstrTasksOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TaskRead<Variables$Query$TaskRead> get copyWith =>
      CopyWith$Variables$Query$TaskRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TaskRead ||
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
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TaskRead<TRes> {
  factory CopyWith$Variables$Query$TaskRead(
    Variables$Query$TaskRead instance,
    TRes Function(Variables$Query$TaskRead) then,
  ) = _CopyWithImpl$Variables$Query$TaskRead;

  factory CopyWith$Variables$Query$TaskRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TaskRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrTaskCondition? condition,
    List<Enum$MstrTasksOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$TaskRead<TRes>
    implements CopyWith$Variables$Query$TaskRead<TRes> {
  _CopyWithImpl$Variables$Query$TaskRead(this._instance, this._then);

  final Variables$Query$TaskRead _instance;

  final TRes Function(Variables$Query$TaskRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$TaskRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrTaskCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrTasksOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TaskRead<TRes>
    implements CopyWith$Variables$Query$TaskRead<TRes> {
  _CopyWithStubImpl$Variables$Query$TaskRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrTaskCondition? condition,
    List<Enum$MstrTasksOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$TaskRead {
  Query$TaskRead({this.allMstrTasks, this.$__typename = 'Query'});

  factory Query$TaskRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrTasks = json['allMstrTasks'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead(
      allMstrTasks: l$allMstrTasks == null
          ? null
          : Query$TaskRead$allMstrTasks.fromJson(
              (l$allMstrTasks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks? allMstrTasks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrTasks = allMstrTasks;
    _resultData['allMstrTasks'] = l$allMstrTasks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrTasks = allMstrTasks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrTasks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrTasks = allMstrTasks;
    final lOther$allMstrTasks = other.allMstrTasks;
    if (l$allMstrTasks != lOther$allMstrTasks) {
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

extension UtilityExtension$Query$TaskRead on Query$TaskRead {
  CopyWith$Query$TaskRead<Query$TaskRead> get copyWith =>
      CopyWith$Query$TaskRead(this, (i) => i);
}

abstract class CopyWith$Query$TaskRead<TRes> {
  factory CopyWith$Query$TaskRead(
    Query$TaskRead instance,
    TRes Function(Query$TaskRead) then,
  ) = _CopyWithImpl$Query$TaskRead;

  factory CopyWith$Query$TaskRead.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskRead;

  TRes call({Query$TaskRead$allMstrTasks? allMstrTasks, String? $__typename});
  CopyWith$Query$TaskRead$allMstrTasks<TRes> get allMstrTasks;
}

class _CopyWithImpl$Query$TaskRead<TRes>
    implements CopyWith$Query$TaskRead<TRes> {
  _CopyWithImpl$Query$TaskRead(this._instance, this._then);

  final Query$TaskRead _instance;

  final TRes Function(Query$TaskRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrTasks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead(
      allMstrTasks: allMstrTasks == _undefined
          ? _instance.allMstrTasks
          : (allMstrTasks as Query$TaskRead$allMstrTasks?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks<TRes> get allMstrTasks {
    final local$allMstrTasks = _instance.allMstrTasks;
    return local$allMstrTasks == null
        ? CopyWith$Query$TaskRead$allMstrTasks.stub(_then(_instance))
        : CopyWith$Query$TaskRead$allMstrTasks(
            local$allMstrTasks,
            (e) => call(allMstrTasks: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead<TRes>
    implements CopyWith$Query$TaskRead<TRes> {
  _CopyWithStubImpl$Query$TaskRead(this._res);

  TRes _res;

  call({Query$TaskRead$allMstrTasks? allMstrTasks, String? $__typename}) =>
      _res;

  CopyWith$Query$TaskRead$allMstrTasks<TRes> get allMstrTasks =>
      CopyWith$Query$TaskRead$allMstrTasks.stub(_res);
}

const documentNodeQueryTaskRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TaskRead'),
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
            name: NameNode(value: 'MstrTaskCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrTasksOrderBy'),
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
            name: NameNode(value: 'allMstrTasks'),
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
                        name: NameNode(value: 'mstrTaskId'),
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
                        name: NameNode(value: 'mstrTaskGroupId'),
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
                        name: NameNode(value: 'class'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'defaultTime'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'seconds'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'minutes'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'hours'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'days'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'months'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'years'),
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
                        name: NameNode(value: 'mstrTaskTreesByMstrTaskId'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'first'),
                            value: IntValueNode(value: '1'),
                          ),
                        ],
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
                                    name: NameNode(value: 'mstrTaskTreeId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'parentMstrTaskId'),
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
                        name: NameNode(
                          value: 'mstrTaskTreesByParentMstrTaskId',
                        ),
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
                        name: NameNode(value: 'mstrTaskGroupByMstrTaskGroupId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrTaskGroupId'),
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
                        name: NameNode(value: 'mstrTaskLocationsByMstrTaskId'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'first'),
                            value: IntValueNode(value: '1'),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'orderBy'),
                            value: ListValueNode(
                              values: [
                                EnumValueNode(
                                  name: NameNode(value: 'UPDATE_AT_DESC'),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                                    name: NameNode(value: 'mstrTaskLocationId'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(
                                      value: 'mstrLocationByMstrLocationId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrLocationId',
                                          ),
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNicknameId',
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
                                    name: NameNode(
                                      value: 'mstrEquipmentByMstrEquipmentId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrEquipmentId',
                                          ),
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
                                          name: NameNode(
                                            value: 'mstrItemByMstrItemId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'ja',
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'en',
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
                                                        value:
                                                            'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'ja',
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'en',
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
                                                        value:
                                                            'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'ja',
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
                                                                  value:
                                                                      'include',
                                                                ),
                                                                arguments: [
                                                                  ArgumentNode(
                                                                    name: NameNode(
                                                                      value:
                                                                          'if',
                                                                    ),
                                                                    value: VariableNode(
                                                                      name: NameNode(
                                                                        value:
                                                                            'en',
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
                                    name: NameNode(
                                      value:
                                          'mstrStakeholderByMstrStakeholderId',
                                    ),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(
                                            value: 'mstrStakeholderId',
                                          ),
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value:
                                                      'sharedDictionaryBySharedDictionaryNicknameId',
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
Query$TaskRead _parserFn$Query$TaskRead(Map<String, dynamic> data) =>
    Query$TaskRead.fromJson(data);
typedef OnQueryComplete$Query$TaskRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TaskRead?);

class Options$Query$TaskRead extends graphql.QueryOptions<Query$TaskRead> {
  Options$Query$TaskRead({
    String? operationName,
    required Variables$Query$TaskRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TaskRead? onComplete,
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
                 data == null ? null : _parserFn$Query$TaskRead(data),
               ),
         onError: onError,
         document: documentNodeQueryTaskRead,
         parserFn: _parserFn$Query$TaskRead,
       );

  final OnQueryComplete$Query$TaskRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TaskRead
    extends graphql.WatchQueryOptions<Query$TaskRead> {
  WatchOptions$Query$TaskRead({
    String? operationName,
    required Variables$Query$TaskRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskRead? typedOptimisticResult,
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
         document: documentNodeQueryTaskRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TaskRead,
       );
}

class FetchMoreOptions$Query$TaskRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TaskRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TaskRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTaskRead,
       );
}

extension ClientExtension$Query$TaskRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TaskRead>> query$TaskRead(
    Options$Query$TaskRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TaskRead> watchQuery$TaskRead(
    WatchOptions$Query$TaskRead options,
  ) => this.watchQuery(options);

  void writeQuery$TaskRead({
    required Query$TaskRead data,
    required Variables$Query$TaskRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTaskRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TaskRead? readQuery$TaskRead({
    required Variables$Query$TaskRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTaskRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TaskRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TaskRead> useQuery$TaskRead(
  Options$Query$TaskRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TaskRead> useWatchQuery$TaskRead(
  WatchOptions$Query$TaskRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$TaskRead$Widget extends graphql_flutter.Query<Query$TaskRead> {
  Query$TaskRead$Widget({
    widgets.Key? key,
    required Options$Query$TaskRead options,
    required graphql_flutter.QueryBuilder<Query$TaskRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TaskRead$allMstrTasks {
  Query$TaskRead$allMstrTasks({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrTasksConnection',
  });

  factory Query$TaskRead$allMstrTasks.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks(
      totalCount: (l$totalCount as int),
      pageInfo: Query$TaskRead$allMstrTasks$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskRead$allMstrTasks$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$TaskRead$allMstrTasks$pageInfo pageInfo;

  final List<Query$TaskRead$allMstrTasks$nodes?> nodes;

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
    if (other is! Query$TaskRead$allMstrTasks ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks
    on Query$TaskRead$allMstrTasks {
  CopyWith$Query$TaskRead$allMstrTasks<Query$TaskRead$allMstrTasks>
  get copyWith => CopyWith$Query$TaskRead$allMstrTasks(this, (i) => i);
}

abstract class CopyWith$Query$TaskRead$allMstrTasks<TRes> {
  factory CopyWith$Query$TaskRead$allMstrTasks(
    Query$TaskRead$allMstrTasks instance,
    TRes Function(Query$TaskRead$allMstrTasks) then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks;

  factory CopyWith$Query$TaskRead$allMstrTasks.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskRead$allMstrTasks;

  TRes call({
    int? totalCount,
    Query$TaskRead$allMstrTasks$pageInfo? pageInfo,
    List<Query$TaskRead$allMstrTasks$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$TaskRead$allMstrTasks$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes<
          Query$TaskRead$allMstrTasks$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks<TRes> {
  _CopyWithImpl$Query$TaskRead$allMstrTasks(this._instance, this._then);

  final Query$TaskRead$allMstrTasks _instance;

  final TRes Function(Query$TaskRead$allMstrTasks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$TaskRead$allMstrTasks$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$TaskRead$allMstrTasks$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TaskRead$allMstrTasks$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$TaskRead$allMstrTasks$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes<
          Query$TaskRead$allMstrTasks$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskRead$allMstrTasks$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks<TRes> {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$TaskRead$allMstrTasks$pageInfo? pageInfo,
    List<Query$TaskRead$allMstrTasks$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$TaskRead$allMstrTasks$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$TaskRead$allMstrTasks$pageInfo {
  Query$TaskRead$allMstrTasks$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$TaskRead$allMstrTasks$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$pageInfo(
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
    if (other is! Query$TaskRead$allMstrTasks$pageInfo ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$pageInfo
    on Query$TaskRead$allMstrTasks$pageInfo {
  CopyWith$Query$TaskRead$allMstrTasks$pageInfo<
    Query$TaskRead$allMstrTasks$pageInfo
  >
  get copyWith => CopyWith$Query$TaskRead$allMstrTasks$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> {
  factory CopyWith$Query$TaskRead$allMstrTasks$pageInfo(
    Query$TaskRead$allMstrTasks$pageInfo instance,
    TRes Function(Query$TaskRead$allMstrTasks$pageInfo) then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$pageInfo;

  factory CopyWith$Query$TaskRead$allMstrTasks$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskRead$allMstrTasks$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$pageInfo<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$pageInfo _instance;

  final TRes Function(Query$TaskRead$allMstrTasks$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$pageInfo(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$pageInfo<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$pageInfo<TRes> {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes {
  Query$TaskRead$allMstrTasks$nodes({
    required this.mstrTaskId,
    required this.code,
    this.mstrTaskGroupId,
    this.detail,
    this.$class,
    this.defaultTime,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    required this.mstrTaskTreesByMstrTaskId,
    required this.mstrTaskTreesByParentMstrTaskId,
    this.sharedAppellationBySharedAppellationsId,
    this.mstrTaskGroupByMstrTaskGroupId,
    required this.mstrTaskLocationsByMstrTaskId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrTask',
  });

  factory Query$TaskRead$allMstrTasks$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$code = json['code'];
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$detail = json['detail'];
    final l$$class = json['class'];
    final l$defaultTime = json['defaultTime'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrTaskTreesByMstrTaskId = json['mstrTaskTreesByMstrTaskId'];
    final l$mstrTaskTreesByParentMstrTaskId =
        json['mstrTaskTreesByParentMstrTaskId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrTaskGroupByMstrTaskGroupId =
        json['mstrTaskGroupByMstrTaskGroupId'];
    final l$mstrTaskLocationsByMstrTaskId =
        json['mstrTaskLocationsByMstrTaskId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes(
      mstrTaskId: (l$mstrTaskId as String),
      code: (l$code as String),
      mstrTaskGroupId: (l$mstrTaskGroupId as String?),
      detail: (l$detail as String?),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrTaskTreesByMstrTaskId:
          Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId.fromJson(
            (l$mstrTaskTreesByMstrTaskId as Map<String, dynamic>),
          ),
      mstrTaskTreesByParentMstrTaskId:
          Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId.fromJson(
            (l$mstrTaskTreesByParentMstrTaskId as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrTaskGroupByMstrTaskGroupId: l$mstrTaskGroupByMstrTaskGroupId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId.fromJson(
              (l$mstrTaskGroupByMstrTaskGroupId as Map<String, dynamic>),
            ),
      mstrTaskLocationsByMstrTaskId:
          Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId.fromJson(
            (l$mstrTaskLocationsByMstrTaskId as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final String code;

  final String? mstrTaskGroupId;

  final String? detail;

  final int? $class;

  final Query$TaskRead$allMstrTasks$nodes$defaultTime? defaultTime;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId
  mstrTaskTreesByMstrTaskId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId
  mstrTaskTreesByParentMstrTaskId;

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId?
  mstrTaskGroupByMstrTaskGroupId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId
  mstrTaskLocationsByMstrTaskId;

  final Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$defaultTime = defaultTime;
    _resultData['defaultTime'] = l$defaultTime?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    _resultData['mstrTaskTreesByMstrTaskId'] = l$mstrTaskTreesByMstrTaskId
        .toJson();
    final l$mstrTaskTreesByParentMstrTaskId = mstrTaskTreesByParentMstrTaskId;
    _resultData['mstrTaskTreesByParentMstrTaskId'] =
        l$mstrTaskTreesByParentMstrTaskId.toJson();
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$mstrTaskGroupByMstrTaskGroupId = mstrTaskGroupByMstrTaskGroupId;
    _resultData['mstrTaskGroupByMstrTaskGroupId'] =
        l$mstrTaskGroupByMstrTaskGroupId?.toJson();
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    _resultData['mstrTaskLocationsByMstrTaskId'] =
        l$mstrTaskLocationsByMstrTaskId.toJson();
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
    final l$mstrTaskId = mstrTaskId;
    final l$code = code;
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$detail = detail;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    final l$mstrTaskTreesByParentMstrTaskId = mstrTaskTreesByParentMstrTaskId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrTaskGroupByMstrTaskGroupId = mstrTaskGroupByMstrTaskGroupId;
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskId,
      l$code,
      l$mstrTaskGroupId,
      l$detail,
      l$$class,
      l$defaultTime,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrTaskTreesByMstrTaskId,
      l$mstrTaskTreesByParentMstrTaskId,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrTaskGroupByMstrTaskGroupId,
      l$mstrTaskLocationsByMstrTaskId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskRead$allMstrTasks$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$detail = detail;
    final lOther$detail = other.detail;
    if (l$detail != lOther$detail) {
      return false;
    }
    final l$$class = $class;
    final lOther$$class = other.$class;
    if (l$$class != lOther$$class) {
      return false;
    }
    final l$defaultTime = defaultTime;
    final lOther$defaultTime = other.defaultTime;
    if (l$defaultTime != lOther$defaultTime) {
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
    final l$mstrTaskTreesByMstrTaskId = mstrTaskTreesByMstrTaskId;
    final lOther$mstrTaskTreesByMstrTaskId = other.mstrTaskTreesByMstrTaskId;
    if (l$mstrTaskTreesByMstrTaskId != lOther$mstrTaskTreesByMstrTaskId) {
      return false;
    }
    final l$mstrTaskTreesByParentMstrTaskId = mstrTaskTreesByParentMstrTaskId;
    final lOther$mstrTaskTreesByParentMstrTaskId =
        other.mstrTaskTreesByParentMstrTaskId;
    if (l$mstrTaskTreesByParentMstrTaskId !=
        lOther$mstrTaskTreesByParentMstrTaskId) {
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
    final l$mstrTaskGroupByMstrTaskGroupId = mstrTaskGroupByMstrTaskGroupId;
    final lOther$mstrTaskGroupByMstrTaskGroupId =
        other.mstrTaskGroupByMstrTaskGroupId;
    if (l$mstrTaskGroupByMstrTaskGroupId !=
        lOther$mstrTaskGroupByMstrTaskGroupId) {
      return false;
    }
    final l$mstrTaskLocationsByMstrTaskId = mstrTaskLocationsByMstrTaskId;
    final lOther$mstrTaskLocationsByMstrTaskId =
        other.mstrTaskLocationsByMstrTaskId;
    if (l$mstrTaskLocationsByMstrTaskId !=
        lOther$mstrTaskLocationsByMstrTaskId) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes
    on Query$TaskRead$allMstrTasks$nodes {
  CopyWith$Query$TaskRead$allMstrTasks$nodes<Query$TaskRead$allMstrTasks$nodes>
  get copyWith => CopyWith$Query$TaskRead$allMstrTasks$nodes(this, (i) => i);
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes<TRes> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes(
    Query$TaskRead$allMstrTasks$nodes instance,
    TRes Function(Query$TaskRead$allMstrTasks$nodes) then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes;

  TRes call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Query$TaskRead$allMstrTasks$nodes$defaultTime? defaultTime,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId?
    mstrTaskTreesByMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId?
    mstrTaskTreesByParentMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId?
    mstrTaskGroupByMstrTaskGroupId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId?
    mstrTaskLocationsByMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes> get defaultTime;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<TRes>
  get mstrTaskTreesByMstrTaskId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
    TRes
  >
  get mstrTaskTreesByParentMstrTaskId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
    TRes
  >
  get mstrTaskGroupByMstrTaskGroupId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<TRes>
  get mstrTaskLocationsByMstrTaskId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$nodes<TRes> {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes(this._instance, this._then);

  final Query$TaskRead$allMstrTasks$nodes _instance;

  final TRes Function(Query$TaskRead$allMstrTasks$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? code = _undefined,
    Object? mstrTaskGroupId = _undefined,
    Object? detail = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrTaskTreesByMstrTaskId = _undefined,
    Object? mstrTaskTreesByParentMstrTaskId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrTaskGroupByMstrTaskGroupId = _undefined,
    Object? mstrTaskLocationsByMstrTaskId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mstrTaskGroupId: mstrTaskGroupId == _undefined
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime as Query$TaskRead$allMstrTasks$nodes$defaultTime?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrTaskTreesByMstrTaskId:
          mstrTaskTreesByMstrTaskId == _undefined ||
              mstrTaskTreesByMstrTaskId == null
          ? _instance.mstrTaskTreesByMstrTaskId
          : (mstrTaskTreesByMstrTaskId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId),
      mstrTaskTreesByParentMstrTaskId:
          mstrTaskTreesByParentMstrTaskId == _undefined ||
              mstrTaskTreesByParentMstrTaskId == null
          ? _instance.mstrTaskTreesByParentMstrTaskId
          : (mstrTaskTreesByParentMstrTaskId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId?),
      mstrTaskGroupByMstrTaskGroupId:
          mstrTaskGroupByMstrTaskGroupId == _undefined
          ? _instance.mstrTaskGroupByMstrTaskGroupId
          : (mstrTaskGroupByMstrTaskGroupId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId?),
      mstrTaskLocationsByMstrTaskId:
          mstrTaskLocationsByMstrTaskId == _undefined ||
              mstrTaskLocationsByMstrTaskId == null
          ? _instance.mstrTaskLocationsByMstrTaskId
          : (mstrTaskLocationsByMstrTaskId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes> get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<TRes>
  get mstrTaskTreesByMstrTaskId {
    final local$mstrTaskTreesByMstrTaskId = _instance.mstrTaskTreesByMstrTaskId;
    return CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
      local$mstrTaskTreesByMstrTaskId,
      (e) => call(mstrTaskTreesByMstrTaskId: e),
    );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
    TRes
  >
  get mstrTaskTreesByParentMstrTaskId {
    final local$mstrTaskTreesByParentMstrTaskId =
        _instance.mstrTaskTreesByParentMstrTaskId;
    return CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
      local$mstrTaskTreesByParentMstrTaskId,
      (e) => call(mstrTaskTreesByParentMstrTaskId: e),
    );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
    TRes
  >
  get mstrTaskGroupByMstrTaskGroupId {
    final local$mstrTaskGroupByMstrTaskGroupId =
        _instance.mstrTaskGroupByMstrTaskGroupId;
    return local$mstrTaskGroupByMstrTaskGroupId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
            local$mstrTaskGroupByMstrTaskGroupId,
            (e) => call(mstrTaskGroupByMstrTaskGroupId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<TRes>
  get mstrTaskLocationsByMstrTaskId {
    final local$mstrTaskLocationsByMstrTaskId =
        _instance.mstrTaskLocationsByMstrTaskId;
    return CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
      local$mstrTaskLocationsByMstrTaskId,
      (e) => call(mstrTaskLocationsByMstrTaskId: e),
    );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$nodes<TRes> {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    String? code,
    String? mstrTaskGroupId,
    String? detail,
    int? $class,
    Query$TaskRead$allMstrTasks$nodes$defaultTime? defaultTime,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId?
    mstrTaskTreesByMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId?
    mstrTaskTreesByParentMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId?
    mstrTaskGroupByMstrTaskGroupId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId?
    mstrTaskLocationsByMstrTaskId,
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes>
  get defaultTime =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime.stub(_res);

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<TRes>
  get mstrTaskTreesByMstrTaskId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
    TRes
  >
  get mstrTaskTreesByParentMstrTaskId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
    TRes
  >
  get mstrTaskGroupByMstrTaskGroupId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<TRes>
  get mstrTaskLocationsByMstrTaskId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$defaultTime {
  Query$TaskRead$allMstrTasks$nodes$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$TaskRead$allMstrTasks$nodes$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$defaultTime(
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
    if (other is! Query$TaskRead$allMstrTasks$nodes$defaultTime ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$defaultTime
    on Query$TaskRead$allMstrTasks$nodes$defaultTime {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<
    Query$TaskRead$allMstrTasks$nodes$defaultTime
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime(this, (i) => i);
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime(
    Query$TaskRead$allMstrTasks$nodes$defaultTime instance,
    TRes Function(Query$TaskRead$allMstrTasks$nodes$defaultTime) then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime;

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

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes> {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$defaultTime _instance;

  final TRes Function(Query$TaskRead$allMstrTasks$nodes$defaultTime) _then;

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
    Query$TaskRead$allMstrTasks$nodes$defaultTime(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes>
    implements CopyWith$Query$TaskRead$allMstrTasks$nodes$defaultTime<TRes> {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$defaultTime(this._res);

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

class Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId({
    required this.nodes,
    this.$__typename = 'MstrTaskTreesConnection',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?>
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
    if (other is! Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId instance,
    TRes Function(Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId)
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId;

  TRes call({
    List<Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?>?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
          Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
          Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes?>?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes({
    required this.mstrTaskTreeId,
    this.parentMstrTaskId,
    this.$__typename = 'MstrTaskTree',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTreeId = json['mstrTaskTreeId'];
    final l$parentMstrTaskId = json['parentMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
      mstrTaskTreeId: (l$mstrTaskTreeId as String),
      parentMstrTaskId: (l$parentMstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskTreeId;

  final String? parentMstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskTreeId = mstrTaskTreeId;
    _resultData['mstrTaskTreeId'] = l$mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    _resultData['parentMstrTaskId'] = l$parentMstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final l$parentMstrTaskId = parentMstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskTreeId,
      l$parentMstrTaskId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskTreeId = mstrTaskTreeId;
    final lOther$mstrTaskTreeId = other.mstrTaskTreeId;
    if (l$mstrTaskTreeId != lOther$mstrTaskTreeId) {
      return false;
    }
    final l$parentMstrTaskId = parentMstrTaskId;
    final lOther$parentMstrTaskId = other.parentMstrTaskId;
    if (l$parentMstrTaskId != lOther$parentMstrTaskId) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
      mstrTaskTreeId: mstrTaskTreeId == _undefined || mstrTaskTreeId == null
          ? _instance.mstrTaskTreeId
          : (mstrTaskTreeId as String),
      parentMstrTaskId: parentMstrTaskId == _undefined
          ? _instance.parentMstrTaskId
          : (parentMstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByMstrTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  }) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId({
    required this.totalCount,
    this.$__typename = 'MstrTaskTreesConnection',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskTreesByParentMstrTaskId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId {
  Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId
    on Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId({
    required this.mstrTaskGroupId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrTaskGroup',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskGroupId,
      l$code,
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final lOther$mstrTaskGroupId = other.mstrTaskGroupId;
    if (l$mstrTaskGroupId != lOther$mstrTaskGroupId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskGroupByMstrTaskGroupId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId({
    required this.nodes,
    required this.totalCount,
    this.$__typename = 'MstrTaskLocationsConnection',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      totalCount: (l$totalCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
  >
  nodes;

  final int totalCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e?.toJson()).toList();
    final l$totalCount = totalCount;
    _resultData['totalCount'] = l$totalCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$totalCount = totalCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$totalCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId;

  TRes call({
    List<
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
    >?
    nodes,
    int? totalCount,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
          Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
                >),
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
          Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes?
    >?
    nodes,
    int? totalCount,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes({
    required this.mstrTaskLocationId,
    this.mstrLocationByMstrLocationId,
    this.mstrEquipmentByMstrEquipmentId,
    this.mstrStakeholderByMstrStakeholderId,
    this.$__typename = 'MstrTaskLocation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskLocationId = json['mstrTaskLocationId'];
    final l$mstrLocationByMstrLocationId = json['mstrLocationByMstrLocationId'];
    final l$mstrEquipmentByMstrEquipmentId =
        json['mstrEquipmentByMstrEquipmentId'];
    final l$mstrStakeholderByMstrStakeholderId =
        json['mstrStakeholderByMstrStakeholderId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
      mstrTaskLocationId: (l$mstrTaskLocationId as String),
      mstrLocationByMstrLocationId: l$mstrLocationByMstrLocationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId.fromJson(
              (l$mstrLocationByMstrLocationId as Map<String, dynamic>),
            ),
      mstrEquipmentByMstrEquipmentId: l$mstrEquipmentByMstrEquipmentId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId.fromJson(
              (l$mstrEquipmentByMstrEquipmentId as Map<String, dynamic>),
            ),
      mstrStakeholderByMstrStakeholderId:
          l$mstrStakeholderByMstrStakeholderId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId.fromJson(
              (l$mstrStakeholderByMstrStakeholderId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskLocationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId?
  mstrLocationByMstrLocationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId?
  mstrEquipmentByMstrEquipmentId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId?
  mstrStakeholderByMstrStakeholderId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskLocationId = mstrTaskLocationId;
    _resultData['mstrTaskLocationId'] = l$mstrTaskLocationId;
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    _resultData['mstrLocationByMstrLocationId'] = l$mstrLocationByMstrLocationId
        ?.toJson();
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    _resultData['mstrEquipmentByMstrEquipmentId'] =
        l$mstrEquipmentByMstrEquipmentId?.toJson();
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    _resultData['mstrStakeholderByMstrStakeholderId'] =
        l$mstrStakeholderByMstrStakeholderId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskLocationId = mstrTaskLocationId;
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskLocationId,
      l$mstrLocationByMstrLocationId,
      l$mstrEquipmentByMstrEquipmentId,
      l$mstrStakeholderByMstrStakeholderId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskLocationId = mstrTaskLocationId;
    final lOther$mstrTaskLocationId = other.mstrTaskLocationId;
    if (l$mstrTaskLocationId != lOther$mstrTaskLocationId) {
      return false;
    }
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    final lOther$mstrLocationByMstrLocationId =
        other.mstrLocationByMstrLocationId;
    if (l$mstrLocationByMstrLocationId != lOther$mstrLocationByMstrLocationId) {
      return false;
    }
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    final lOther$mstrEquipmentByMstrEquipmentId =
        other.mstrEquipmentByMstrEquipmentId;
    if (l$mstrEquipmentByMstrEquipmentId !=
        lOther$mstrEquipmentByMstrEquipmentId) {
      return false;
    }
    final l$mstrStakeholderByMstrStakeholderId =
        mstrStakeholderByMstrStakeholderId;
    final lOther$mstrStakeholderByMstrStakeholderId =
        other.mstrStakeholderByMstrStakeholderId;
    if (l$mstrStakeholderByMstrStakeholderId !=
        lOther$mstrStakeholderByMstrStakeholderId) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
    on Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes;

  TRes call({
    String? mstrTaskLocationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId?
    mstrLocationByMstrLocationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId?
    mstrEquipmentByMstrEquipmentId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId?
    mstrStakeholderByMstrStakeholderId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderByMstrStakeholderId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskLocationId = _undefined,
    Object? mstrLocationByMstrLocationId = _undefined,
    Object? mstrEquipmentByMstrEquipmentId = _undefined,
    Object? mstrStakeholderByMstrStakeholderId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
      mstrTaskLocationId:
          mstrTaskLocationId == _undefined || mstrTaskLocationId == null
          ? _instance.mstrTaskLocationId
          : (mstrTaskLocationId as String),
      mstrLocationByMstrLocationId: mstrLocationByMstrLocationId == _undefined
          ? _instance.mstrLocationByMstrLocationId
          : (mstrLocationByMstrLocationId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId?),
      mstrEquipmentByMstrEquipmentId:
          mstrEquipmentByMstrEquipmentId == _undefined
          ? _instance.mstrEquipmentByMstrEquipmentId
          : (mstrEquipmentByMstrEquipmentId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId?),
      mstrStakeholderByMstrStakeholderId:
          mstrStakeholderByMstrStakeholderId == _undefined
          ? _instance.mstrStakeholderByMstrStakeholderId
          : (mstrStakeholderByMstrStakeholderId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId {
    final local$mstrLocationByMstrLocationId =
        _instance.mstrLocationByMstrLocationId;
    return local$mstrLocationByMstrLocationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
            local$mstrLocationByMstrLocationId,
            (e) => call(mstrLocationByMstrLocationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId {
    final local$mstrEquipmentByMstrEquipmentId =
        _instance.mstrEquipmentByMstrEquipmentId;
    return local$mstrEquipmentByMstrEquipmentId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
            local$mstrEquipmentByMstrEquipmentId,
            (e) => call(mstrEquipmentByMstrEquipmentId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderByMstrStakeholderId {
    final local$mstrStakeholderByMstrStakeholderId =
        _instance.mstrStakeholderByMstrStakeholderId;
    return local$mstrStakeholderByMstrStakeholderId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
            local$mstrStakeholderByMstrStakeholderId,
            (e) => call(mstrStakeholderByMstrStakeholderId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskLocationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId?
    mstrLocationByMstrLocationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId?
    mstrEquipmentByMstrEquipmentId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId?
    mstrStakeholderByMstrStakeholderId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
    TRes
  >
  get mstrStakeholderByMstrStakeholderId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId({
    required this.mstrLocationId,
    this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrLocation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationId = json['mstrLocationId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
      mstrLocationId: (l$mstrLocationId as String),
      code: (l$code as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLocationId;

  final String? code;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationId = mstrLocationId;
    _resultData['mstrLocationId'] = l$mstrLocationId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrLocationId = mstrLocationId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationId,
      l$code,
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId;

  TRes call({
    String? mstrLocationId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
      mstrLocationId: mstrLocationId == _undefined || mstrLocationId == null
          ? _instance.mstrLocationId
          : (mstrLocationId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLocationId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId({
    required this.mstrEquipmentId,
    required this.code,
    this.mstrItemByMstrItemId,
    this.$__typename = 'MstrEquipment',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$code = json['code'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
      mstrEquipmentId: (l$mstrEquipmentId as String),
      code: (l$code as String),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentId;

  final String code;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$code = code;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentId,
      l$code,
      l$mstrItemByMstrItemId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final lOther$mstrItemByMstrItemId = other.mstrItemByMstrItemId;
    if (l$mstrItemByMstrItemId != lOther$mstrItemByMstrItemId) {
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId;

  TRes call({
    String? mstrEquipmentId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentId = _undefined,
    Object? code = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
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
    if (other
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId;

  TRes call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId({
    required this.mstrStakeholderId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final String code;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrStakeholderId = mstrStakeholderId;
    _resultData['mstrStakeholderId'] = l$mstrStakeholderId;
    final l$code = code;
    _resultData['code'] = l$code;
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
    final l$mstrStakeholderId = mstrStakeholderId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrStakeholderId,
      l$code,
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId;

  TRes call({
    String? mstrStakeholderId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
      mstrStakeholderId:
          mstrStakeholderId == _undefined || mstrStakeholderId == null
          ? _instance.mstrStakeholderId
          : (mstrStakeholderId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? code,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNameId =
        sharedDictionaryBySharedDictionaryNameId;
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        sharedDictionaryBySharedDictionaryPronunciationId;
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$mstrTaskLocationsByMstrTaskId$nodes$mstrStakeholderByMstrStakeholderId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskRead$allMstrTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$TaskReadUpdaterAppellation {
  factory Variables$Query$TaskReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$TaskReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$TaskReadUpdaterAppellation._(this._$data);

  factory Variables$Query$TaskReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$TaskReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$TaskReadUpdaterAppellation<
    Variables$Query$TaskReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$TaskReadUpdaterAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TaskReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$TaskReadUpdaterAppellation<TRes> {
  factory CopyWith$Variables$Query$TaskReadUpdaterAppellation(
    Variables$Query$TaskReadUpdaterAppellation instance,
    TRes Function(Variables$Query$TaskReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$TaskReadUpdaterAppellation;

  factory CopyWith$Variables$Query$TaskReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TaskReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$TaskReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$TaskReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$TaskReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$TaskReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$TaskReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$TaskReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TaskReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$TaskReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$TaskReadUpdaterAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$TaskReadUpdaterAppellation {
  Query$TaskReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$TaskReadUpdaterAppellation.fromJson(Map<String, dynamic> json) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$TaskReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$TaskReadUpdaterAppellation ||
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

extension UtilityExtension$Query$TaskReadUpdaterAppellation
    on Query$TaskReadUpdaterAppellation {
  CopyWith$Query$TaskReadUpdaterAppellation<Query$TaskReadUpdaterAppellation>
  get copyWith => CopyWith$Query$TaskReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$TaskReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$TaskReadUpdaterAppellation(
    Query$TaskReadUpdaterAppellation instance,
    TRes Function(Query$TaskReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$TaskReadUpdaterAppellation;

  factory CopyWith$Query$TaskReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskReadUpdaterAppellation;

  TRes call({
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$TaskReadUpdaterAppellation<TRes>
    implements CopyWith$Query$TaskReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$TaskReadUpdaterAppellation(this._instance, this._then);

  final Query$TaskReadUpdaterAppellation _instance;

  final TRes Function(Query$TaskReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskReadUpdaterAppellation<TRes>
    implements CopyWith$Query$TaskReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$TaskReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryTaskReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TaskReadUpdaterAppellation'),
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
Query$TaskReadUpdaterAppellation _parserFn$Query$TaskReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$TaskReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$TaskReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$TaskReadUpdaterAppellation?,
    );

class Options$Query$TaskReadUpdaterAppellation
    extends graphql.QueryOptions<Query$TaskReadUpdaterAppellation> {
  Options$Query$TaskReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$TaskReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TaskReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$TaskReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryTaskReadUpdaterAppellation,
         parserFn: _parserFn$Query$TaskReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$TaskReadUpdaterAppellation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TaskReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$TaskReadUpdaterAppellation> {
  WatchOptions$Query$TaskReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$TaskReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryTaskReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TaskReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$TaskReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TaskReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TaskReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTaskReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$TaskReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TaskReadUpdaterAppellation>>
  query$TaskReadUpdaterAppellation(
    Options$Query$TaskReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TaskReadUpdaterAppellation>
  watchQuery$TaskReadUpdaterAppellation(
    WatchOptions$Query$TaskReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$TaskReadUpdaterAppellation({
    required Query$TaskReadUpdaterAppellation data,
    required Variables$Query$TaskReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryTaskReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TaskReadUpdaterAppellation? readQuery$TaskReadUpdaterAppellation({
    required Variables$Query$TaskReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryTaskReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$TaskReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TaskReadUpdaterAppellation>
useQuery$TaskReadUpdaterAppellation(
  Options$Query$TaskReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TaskReadUpdaterAppellation>
useWatchQuery$TaskReadUpdaterAppellation(
  WatchOptions$Query$TaskReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$TaskReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$TaskReadUpdaterAppellation> {
  Query$TaskReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$TaskReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<Query$TaskReadUpdaterAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
