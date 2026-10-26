import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$TaskPageRead {
  factory Variables$Query$TaskPageRead({
    required int first,
    int? offset,
    Input$MstrTaskFilter? filter,
    List<Enum$MstrTasksOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$TaskPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$TaskPageRead._(this._$data);

  factory Variables$Query$TaskPageRead.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$MstrTaskFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrTasksOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$TaskPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrTaskFilter? get filter =>
      (_$data['filter'] as Input$MstrTaskFilter?);

  List<Enum$MstrTasksOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrTasksOrderBy>?);

  String get languageCodeId => (_$data['languageCodeId'] as String);

  bool? get removed => (_$data['removed'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy
          ?.map((e) => toJson$Enum$MstrTasksOrderBy(e))
          .toList();
    }
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TaskPageRead<Variables$Query$TaskPageRead>
  get copyWith => CopyWith$Variables$Query$TaskPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$TaskPageRead ||
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
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
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
    final l$languageCodeId = languageCodeId;
    final lOther$languageCodeId = other.languageCodeId;
    if (l$languageCodeId != lOther$languageCodeId) {
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
    final l$filter = filter;
    final l$orderBy = orderBy;
    final l$languageCodeId = languageCodeId;
    final l$removed = removed;
    return Object.hashAll([
      l$first,
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
                ? null
                : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      l$languageCodeId,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TaskPageRead<TRes> {
  factory CopyWith$Variables$Query$TaskPageRead(
    Variables$Query$TaskPageRead instance,
    TRes Function(Variables$Query$TaskPageRead) then,
  ) = _CopyWithImpl$Variables$Query$TaskPageRead;

  factory CopyWith$Variables$Query$TaskPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TaskPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrTaskFilter? filter,
    List<Enum$MstrTasksOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$TaskPageRead<TRes>
    implements CopyWith$Variables$Query$TaskPageRead<TRes> {
  _CopyWithImpl$Variables$Query$TaskPageRead(this._instance, this._then);

  final Variables$Query$TaskPageRead _instance;

  final TRes Function(Variables$Query$TaskPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$TaskPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined) 'filter': (filter as Input$MstrTaskFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrTasksOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$TaskPageRead<TRes>
    implements CopyWith$Variables$Query$TaskPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$TaskPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrTaskFilter? filter,
    List<Enum$MstrTasksOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$TaskPageRead {
  Query$TaskPageRead({this.allMstrTasks, this.$__typename = 'Query'});

  factory Query$TaskPageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrTasks = json['allMstrTasks'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead(
      allMstrTasks: l$allMstrTasks == null
          ? null
          : Query$TaskPageRead$allMstrTasks.fromJson(
              (l$allMstrTasks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TaskPageRead$allMstrTasks? allMstrTasks;

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
    if (other is! Query$TaskPageRead || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$TaskPageRead on Query$TaskPageRead {
  CopyWith$Query$TaskPageRead<Query$TaskPageRead> get copyWith =>
      CopyWith$Query$TaskPageRead(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead<TRes> {
  factory CopyWith$Query$TaskPageRead(
    Query$TaskPageRead instance,
    TRes Function(Query$TaskPageRead) then,
  ) = _CopyWithImpl$Query$TaskPageRead;

  factory CopyWith$Query$TaskPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead;

  TRes call({
    Query$TaskPageRead$allMstrTasks? allMstrTasks,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks<TRes> get allMstrTasks;
}

class _CopyWithImpl$Query$TaskPageRead<TRes>
    implements CopyWith$Query$TaskPageRead<TRes> {
  _CopyWithImpl$Query$TaskPageRead(this._instance, this._then);

  final Query$TaskPageRead _instance;

  final TRes Function(Query$TaskPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrTasks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead(
      allMstrTasks: allMstrTasks == _undefined
          ? _instance.allMstrTasks
          : (allMstrTasks as Query$TaskPageRead$allMstrTasks?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks<TRes> get allMstrTasks {
    final local$allMstrTasks = _instance.allMstrTasks;
    return local$allMstrTasks == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks.stub(_then(_instance))
        : CopyWith$Query$TaskPageRead$allMstrTasks(
            local$allMstrTasks,
            (e) => call(allMstrTasks: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead<TRes>
    implements CopyWith$Query$TaskPageRead<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead(this._res);

  TRes _res;

  call({Query$TaskPageRead$allMstrTasks? allMstrTasks, String? $__typename}) =>
      _res;

  CopyWith$Query$TaskPageRead$allMstrTasks<TRes> get allMstrTasks =>
      CopyWith$Query$TaskPageRead$allMstrTasks.stub(_res);
}

const documentNodeQueryTaskPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'TaskPageRead'),
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
          variable: VariableNode(name: NameNode(value: 'filter')),
          type: NamedTypeNode(
            name: NameNode(value: 'MstrTaskFilter'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ObjectValueNode(
              fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'and'),
                  value: ListValueNode(values: []),
                ),
              ],
            ),
          ),
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
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'languageCodeId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
                name: NameNode(value: 'orderBy'),
                value: VariableNode(name: NameNode(value: 'orderBy')),
              ),
              ArgumentNode(
                name: NameNode(value: 'filter'),
                value: ObjectValueNode(
                  fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'and'),
                      value: ListValueNode(
                        values: [
                          ObjectValueNode(
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
                          VariableNode(name: NameNode(value: 'filter')),
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
                        name: NameNode(value: 'mstrTaskTreesByMstrTaskId'),
                        alias: NameNode(value: 'parent'),
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
                          value: 'vTaskDescendantByAncestorMstrTaskId',
                        ),
                        alias: NameNode(value: 'descendants'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'ancestorMstrTaskId'),
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
                        name: NameNode(value: 'mstrTaskGroupByMstrTaskGroupId'),
                        alias: NameNode(value: 'groups'),
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
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'labels'),
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryNicknameId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                              name: NameNode(value: 'details'),
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
                                value:
                                    'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                              ),
                              alias: NameNode(value: 'update_user'),
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
                                    name: NameNode(
                                      value: 'sharedAppellationByNames',
                                    ),
                                    alias: NameNode(value: 'name'),
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
                                                alias: NameNode(value: 'value'),
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
                                                                  'languageCodeId',
                                                            ),
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
                                                alias: NameNode(value: 'value'),
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
                                                                  'languageCodeId',
                                                            ),
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
                                                alias: NameNode(value: 'value'),
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
                                                                  'languageCodeId',
                                                            ),
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
                                    name: NameNode(value: 'sex'),
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
                                    name: NameNode(value: 'symbol'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: null,
                                  ),
                                  FieldNode(
                                    name: NameNode(value: 'privatePhone'),
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
                        name: NameNode(value: 'code'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedAppellationByNames'),
                        alias: NameNode(value: 'labels'),
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
                                                ),
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
                                                ),
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
                                    alias: NameNode(value: 'value'),
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
                                                  value: 'languageCodeId',
                                                ),
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
                        name: NameNode(value: 'sharedTextByDetails'),
                        alias: NameNode(value: 'detailTexts'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedTextId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'sharedTextValuesBySharedTextId',
                              ),
                              alias: NameNode(value: 'value'),
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
                                            value: 'languageCodeId',
                                          ),
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
                                    name: NameNode(value: 'nodes'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(
                                      selections: [
                                        FieldNode(
                                          name: NameNode(value: 'charCount'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'leadText'),
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
                        name: NameNode(value: 'vTaskWorkPlanCountByMstrTaskId'),
                        alias: NameNode(value: 'work_plan_count'),
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
                        name: NameNode(value: 'vTaskTaskRiskCountByMstrTaskId'),
                        alias: NameNode(value: 'task_risk_count'),
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
                          value: 'vTaskComplaintProcessCountByMstrTaskId',
                        ),
                        alias: NameNode(value: 'complaint_process_count'),
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
                          value: 'vTaskTaskLocationCountByMstrTaskId',
                        ),
                        alias: NameNode(value: 'task_location_count'),
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
                          value: 'vTaskOperationTaskCountByMstrTaskId',
                        ),
                        alias: NameNode(value: 'operation_task_count'),
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
                          value:
                              'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
                        ),
                        alias: NameNode(value: 'update_user'),
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
                              name: NameNode(value: 'sharedAppellationByNames'),
                              alias: NameNode(value: 'name'),
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                                          'sharedDictionaryBySharedDictionaryNicknameId',
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
                                          alias: NameNode(value: 'value'),
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
                                                        value: 'languageCodeId',
                                                      ),
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
                                                name: NameNode(value: 'nodes'),
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
                              name: NameNode(value: 'sex'),
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
                              name: NameNode(value: 'symbol'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'privatePhone'),
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
Query$TaskPageRead _parserFn$Query$TaskPageRead(Map<String, dynamic> data) =>
    Query$TaskPageRead.fromJson(data);
typedef OnQueryComplete$Query$TaskPageRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$TaskPageRead?);

class Options$Query$TaskPageRead
    extends graphql.QueryOptions<Query$TaskPageRead> {
  Options$Query$TaskPageRead({
    String? operationName,
    required Variables$Query$TaskPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TaskPageRead? onComplete,
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
                 data == null ? null : _parserFn$Query$TaskPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryTaskPageRead,
         parserFn: _parserFn$Query$TaskPageRead,
       );

  final OnQueryComplete$Query$TaskPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$TaskPageRead
    extends graphql.WatchQueryOptions<Query$TaskPageRead> {
  WatchOptions$Query$TaskPageRead({
    String? operationName,
    required Variables$Query$TaskPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TaskPageRead? typedOptimisticResult,
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
         document: documentNodeQueryTaskPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$TaskPageRead,
       );
}

class FetchMoreOptions$Query$TaskPageRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TaskPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TaskPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryTaskPageRead,
       );
}

extension ClientExtension$Query$TaskPageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TaskPageRead>> query$TaskPageRead(
    Options$Query$TaskPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$TaskPageRead> watchQuery$TaskPageRead(
    WatchOptions$Query$TaskPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$TaskPageRead({
    required Query$TaskPageRead data,
    required Variables$Query$TaskPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryTaskPageRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$TaskPageRead? readQuery$TaskPageRead({
    required Variables$Query$TaskPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTaskPageRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TaskPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TaskPageRead> useQuery$TaskPageRead(
  Options$Query$TaskPageRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TaskPageRead> useWatchQuery$TaskPageRead(
  WatchOptions$Query$TaskPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$TaskPageRead$Widget
    extends graphql_flutter.Query<Query$TaskPageRead> {
  Query$TaskPageRead$Widget({
    widgets.Key? key,
    required Options$Query$TaskPageRead options,
    required graphql_flutter.QueryBuilder<Query$TaskPageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$TaskPageRead$allMstrTasks {
  Query$TaskPageRead$allMstrTasks({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrTasksConnection',
  });

  factory Query$TaskPageRead$allMstrTasks.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks(
      totalCount: (l$totalCount as int),
      pageInfo: Query$TaskPageRead$allMstrTasks$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$TaskPageRead$allMstrTasks$pageInfo pageInfo;

  final List<Query$TaskPageRead$allMstrTasks$nodes?> nodes;

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
    if (other is! Query$TaskPageRead$allMstrTasks ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks
    on Query$TaskPageRead$allMstrTasks {
  CopyWith$Query$TaskPageRead$allMstrTasks<Query$TaskPageRead$allMstrTasks>
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks(
    Query$TaskPageRead$allMstrTasks instance,
    TRes Function(Query$TaskPageRead$allMstrTasks) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks;

  factory CopyWith$Query$TaskPageRead$allMstrTasks.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks;

  TRes call({
    int? totalCount,
    Query$TaskPageRead$allMstrTasks$pageInfo? pageInfo,
    List<Query$TaskPageRead$allMstrTasks$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes<
          Query$TaskPageRead$allMstrTasks$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks(this._instance, this._then);

  final Query$TaskPageRead$allMstrTasks _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$TaskPageRead$allMstrTasks$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$TaskPageRead$allMstrTasks$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes<
          Query$TaskPageRead$allMstrTasks$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$TaskPageRead$allMstrTasks$pageInfo? pageInfo,
    List<Query$TaskPageRead$allMstrTasks$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$pageInfo {
  Query$TaskPageRead$allMstrTasks$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$TaskPageRead$allMstrTasks$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$pageInfo(
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
    if (other is! Query$TaskPageRead$allMstrTasks$pageInfo ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$pageInfo
    on Query$TaskPageRead$allMstrTasks$pageInfo {
  CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<
    Query$TaskPageRead$allMstrTasks$pageInfo
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo(
    Query$TaskPageRead$allMstrTasks$pageInfo instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$pageInfo) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$pageInfo;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$pageInfo<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$pageInfo _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$pageInfo(
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

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$pageInfo<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$pageInfo<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes {
  Query$TaskPageRead$allMstrTasks$nodes({
    required this.mstrTaskId,
    required this.parent,
    this.descendants,
    this.groups,
    required this.code,
    this.labels,
    this.detailTexts,
    this.$class,
    this.defaultTime,
    this.symbol,
    this.remarks,
    this.work_plan_count,
    this.task_risk_count,
    this.complaint_process_count,
    this.task_location_count,
    this.operation_task_count,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrTask',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$parent = json['parent'];
    final l$descendants = json['descendants'];
    final l$groups = json['groups'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$detailTexts = json['detailTexts'];
    final l$$class = json['class'];
    final l$defaultTime = json['defaultTime'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$work_plan_count = json['work_plan_count'];
    final l$task_risk_count = json['task_risk_count'];
    final l$complaint_process_count = json['complaint_process_count'];
    final l$task_location_count = json['task_location_count'];
    final l$operation_task_count = json['operation_task_count'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes(
      mstrTaskId: (l$mstrTaskId as String),
      parent: Query$TaskPageRead$allMstrTasks$nodes$parent.fromJson(
        (l$parent as Map<String, dynamic>),
      ),
      descendants: l$descendants == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$descendants.fromJson(
              (l$descendants as Map<String, dynamic>),
            ),
      groups: l$groups == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups.fromJson(
              (l$groups as Map<String, dynamic>),
            ),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      work_plan_count: l$work_plan_count == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$work_plan_count.fromJson(
              (l$work_plan_count as Map<String, dynamic>),
            ),
      task_risk_count: l$task_risk_count == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$task_risk_count.fromJson(
              (l$task_risk_count as Map<String, dynamic>),
            ),
      complaint_process_count: l$complaint_process_count == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count.fromJson(
              (l$complaint_process_count as Map<String, dynamic>),
            ),
      task_location_count: l$task_location_count == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$task_location_count.fromJson(
              (l$task_location_count as Map<String, dynamic>),
            ),
      operation_task_count: l$operation_task_count == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$operation_task_count.fromJson(
              (l$operation_task_count as Map<String, dynamic>),
            ),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final Query$TaskPageRead$allMstrTasks$nodes$parent parent;

  final Query$TaskPageRead$allMstrTasks$nodes$descendants? descendants;

  final Query$TaskPageRead$allMstrTasks$nodes$groups? groups;

  final String code;

  final Query$TaskPageRead$allMstrTasks$nodes$labels? labels;

  final Query$TaskPageRead$allMstrTasks$nodes$detailTexts? detailTexts;

  final int? $class;

  final Query$TaskPageRead$allMstrTasks$nodes$defaultTime? defaultTime;

  final String? symbol;

  final String? remarks;

  final Query$TaskPageRead$allMstrTasks$nodes$work_plan_count? work_plan_count;

  final Query$TaskPageRead$allMstrTasks$nodes$task_risk_count? task_risk_count;

  final Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count?
  complaint_process_count;

  final Query$TaskPageRead$allMstrTasks$nodes$task_location_count?
  task_location_count;

  final Query$TaskPageRead$allMstrTasks$nodes$operation_task_count?
  operation_task_count;

  final String? updateAt;

  final bool? remove;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user? update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$parent = parent;
    _resultData['parent'] = l$parent.toJson();
    final l$descendants = descendants;
    _resultData['descendants'] = l$descendants?.toJson();
    final l$groups = groups;
    _resultData['groups'] = l$groups?.toJson();
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
    final l$$class = $class;
    _resultData['class'] = l$$class;
    final l$defaultTime = defaultTime;
    _resultData['defaultTime'] = l$defaultTime?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$work_plan_count = work_plan_count;
    _resultData['work_plan_count'] = l$work_plan_count?.toJson();
    final l$task_risk_count = task_risk_count;
    _resultData['task_risk_count'] = l$task_risk_count?.toJson();
    final l$complaint_process_count = complaint_process_count;
    _resultData['complaint_process_count'] = l$complaint_process_count
        ?.toJson();
    final l$task_location_count = task_location_count;
    _resultData['task_location_count'] = l$task_location_count?.toJson();
    final l$operation_task_count = operation_task_count;
    _resultData['operation_task_count'] = l$operation_task_count?.toJson();
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$parent = parent;
    final l$descendants = descendants;
    final l$groups = groups;
    final l$code = code;
    final l$labels = labels;
    final l$detailTexts = detailTexts;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$work_plan_count = work_plan_count;
    final l$task_risk_count = task_risk_count;
    final l$complaint_process_count = complaint_process_count;
    final l$task_location_count = task_location_count;
    final l$operation_task_count = operation_task_count;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskId,
      l$parent,
      l$descendants,
      l$groups,
      l$code,
      l$labels,
      l$detailTexts,
      l$$class,
      l$defaultTime,
      l$symbol,
      l$remarks,
      l$work_plan_count,
      l$task_risk_count,
      l$complaint_process_count,
      l$task_location_count,
      l$operation_task_count,
      l$updateAt,
      l$remove,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$parent = parent;
    final lOther$parent = other.parent;
    if (l$parent != lOther$parent) {
      return false;
    }
    final l$descendants = descendants;
    final lOther$descendants = other.descendants;
    if (l$descendants != lOther$descendants) {
      return false;
    }
    final l$groups = groups;
    final lOther$groups = other.groups;
    if (l$groups != lOther$groups) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
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
    final l$work_plan_count = work_plan_count;
    final lOther$work_plan_count = other.work_plan_count;
    if (l$work_plan_count != lOther$work_plan_count) {
      return false;
    }
    final l$task_risk_count = task_risk_count;
    final lOther$task_risk_count = other.task_risk_count;
    if (l$task_risk_count != lOther$task_risk_count) {
      return false;
    }
    final l$complaint_process_count = complaint_process_count;
    final lOther$complaint_process_count = other.complaint_process_count;
    if (l$complaint_process_count != lOther$complaint_process_count) {
      return false;
    }
    final l$task_location_count = task_location_count;
    final lOther$task_location_count = other.task_location_count;
    if (l$task_location_count != lOther$task_location_count) {
      return false;
    }
    final l$operation_task_count = operation_task_count;
    final lOther$operation_task_count = other.operation_task_count;
    if (l$operation_task_count != lOther$operation_task_count) {
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
    final l$update_user = update_user;
    final lOther$update_user = other.update_user;
    if (l$update_user != lOther$update_user) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes
    on Query$TaskPageRead$allMstrTasks$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes<
    Query$TaskPageRead$allMstrTasks$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes(
    Query$TaskPageRead$allMstrTasks$nodes instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes;

  TRes call({
    String? mstrTaskId,
    Query$TaskPageRead$allMstrTasks$nodes$parent? parent,
    Query$TaskPageRead$allMstrTasks$nodes$descendants? descendants,
    Query$TaskPageRead$allMstrTasks$nodes$groups? groups,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$labels? labels,
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts? detailTexts,
    int? $class,
    Query$TaskPageRead$allMstrTasks$nodes$defaultTime? defaultTime,
    String? symbol,
    String? remarks,
    Query$TaskPageRead$allMstrTasks$nodes$work_plan_count? work_plan_count,
    Query$TaskPageRead$allMstrTasks$nodes$task_risk_count? task_risk_count,
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count?
    complaint_process_count,
    Query$TaskPageRead$allMstrTasks$nodes$task_location_count?
    task_location_count,
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count?
    operation_task_count,
    String? updateAt,
    bool? remove,
    Query$TaskPageRead$allMstrTasks$nodes$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> get parent;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes>
  get descendants;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> get groups;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> get labels;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes>
  get detailTexts;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes>
  get defaultTime;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes>
  get work_plan_count;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes>
  get task_risk_count;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<TRes>
  get complaint_process_count;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<TRes>
  get task_location_count;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<TRes>
  get operation_task_count;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? parent = _undefined,
    Object? descendants = _undefined,
    Object? groups = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? detailTexts = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? work_plan_count = _undefined,
    Object? task_risk_count = _undefined,
    Object? complaint_process_count = _undefined,
    Object? task_location_count = _undefined,
    Object? operation_task_count = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      parent: parent == _undefined || parent == null
          ? _instance.parent
          : (parent as Query$TaskPageRead$allMstrTasks$nodes$parent),
      descendants: descendants == _undefined
          ? _instance.descendants
          : (descendants as Query$TaskPageRead$allMstrTasks$nodes$descendants?),
      groups: groups == _undefined
          ? _instance.groups
          : (groups as Query$TaskPageRead$allMstrTasks$nodes$groups?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$TaskPageRead$allMstrTasks$nodes$labels?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts as Query$TaskPageRead$allMstrTasks$nodes$detailTexts?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime as Query$TaskPageRead$allMstrTasks$nodes$defaultTime?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      work_plan_count: work_plan_count == _undefined
          ? _instance.work_plan_count
          : (work_plan_count
                as Query$TaskPageRead$allMstrTasks$nodes$work_plan_count?),
      task_risk_count: task_risk_count == _undefined
          ? _instance.task_risk_count
          : (task_risk_count
                as Query$TaskPageRead$allMstrTasks$nodes$task_risk_count?),
      complaint_process_count: complaint_process_count == _undefined
          ? _instance.complaint_process_count
          : (complaint_process_count
                as Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count?),
      task_location_count: task_location_count == _undefined
          ? _instance.task_location_count
          : (task_location_count
                as Query$TaskPageRead$allMstrTasks$nodes$task_location_count?),
      operation_task_count: operation_task_count == _undefined
          ? _instance.operation_task_count
          : (operation_task_count
                as Query$TaskPageRead$allMstrTasks$nodes$operation_task_count?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user as Query$TaskPageRead$allMstrTasks$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> get parent {
    final local$parent = _instance.parent;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent(
      local$parent,
      (e) => call(parent: e),
    );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes>
  get descendants {
    final local$descendants = _instance.descendants;
    return local$descendants == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants(
            local$descendants,
            (e) => call(descendants: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes>
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes>
  get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes>
  get work_plan_count {
    final local$work_plan_count = _instance.work_plan_count;
    return local$work_plan_count == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
            local$work_plan_count,
            (e) => call(work_plan_count: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes>
  get task_risk_count {
    final local$task_risk_count = _instance.task_risk_count;
    return local$task_risk_count == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
            local$task_risk_count,
            (e) => call(task_risk_count: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<TRes>
  get complaint_process_count {
    final local$complaint_process_count = _instance.complaint_process_count;
    return local$complaint_process_count == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
            local$complaint_process_count,
            (e) => call(complaint_process_count: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<TRes>
  get task_location_count {
    final local$task_location_count = _instance.task_location_count;
    return local$task_location_count == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
            local$task_location_count,
            (e) => call(task_location_count: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<TRes>
  get operation_task_count {
    final local$operation_task_count = _instance.operation_task_count;
    return local$operation_task_count == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
            local$operation_task_count,
            (e) => call(operation_task_count: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes(this._res);

  TRes _res;

  call({
    String? mstrTaskId,
    Query$TaskPageRead$allMstrTasks$nodes$parent? parent,
    Query$TaskPageRead$allMstrTasks$nodes$descendants? descendants,
    Query$TaskPageRead$allMstrTasks$nodes$groups? groups,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$labels? labels,
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts? detailTexts,
    int? $class,
    Query$TaskPageRead$allMstrTasks$nodes$defaultTime? defaultTime,
    String? symbol,
    String? remarks,
    Query$TaskPageRead$allMstrTasks$nodes$work_plan_count? work_plan_count,
    Query$TaskPageRead$allMstrTasks$nodes$task_risk_count? task_risk_count,
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count?
    complaint_process_count,
    Query$TaskPageRead$allMstrTasks$nodes$task_location_count?
    task_location_count,
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count?
    operation_task_count,
    String? updateAt,
    bool? remove,
    Query$TaskPageRead$allMstrTasks$nodes$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> get parent =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes>
  get descendants =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> get groups =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> get labels =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes>
  get detailTexts =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes>
  get defaultTime =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes>
  get work_plan_count =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes>
  get task_risk_count =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<TRes>
  get complaint_process_count =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<TRes>
  get task_location_count =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<TRes>
  get operation_task_count =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user.stub(_res);
}

class Query$TaskPageRead$allMstrTasks$nodes$parent {
  Query$TaskPageRead$allMstrTasks$nodes$parent({
    required this.nodes,
    this.$__typename = 'MstrTaskTreesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$parent.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$parent(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$parent$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?> nodes;

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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$parent ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$parent
    on Query$TaskPageRead$allMstrTasks$nodes$parent {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<
    Query$TaskPageRead$allMstrTasks$nodes$parent
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent(
    Query$TaskPageRead$allMstrTasks$nodes$parent instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$parent) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent;

  TRes call({
    List<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$parent$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$parent _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$parent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$parent(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?> Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$parent$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent(this._res);

  TRes _res;

  call({
    List<Query$TaskPageRead$allMstrTasks$nodes$parent$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$parent$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$parent$nodes({
    required this.mstrTaskTreeId,
    this.parentMstrTaskId,
    this.$__typename = 'MstrTaskTree',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$parent$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskTreeId = json['mstrTaskTreeId'];
    final l$parentMstrTaskId = json['parentMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$parent$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes
    on Query$TaskPageRead$allMstrTasks$nodes$parent$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$parent$nodes
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$parent$nodes instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$parent$nodes) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes;

  TRes call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$parent$nodes _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$parent$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskTreeId = _undefined,
    Object? parentMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
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

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$parent$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskTreeId,
    String? parentMstrTaskId,
    String? $__typename,
  }) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$descendants {
  Query$TaskPageRead$allMstrTasks$nodes$descendants({
    this.ancestorMstrTaskId,
    this.$__typename = 'VTaskDescendant',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$descendants.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ancestorMstrTaskId = json['ancestorMstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$descendants(
      ancestorMstrTaskId: (l$ancestorMstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? ancestorMstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ancestorMstrTaskId = ancestorMstrTaskId;
    _resultData['ancestorMstrTaskId'] = l$ancestorMstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ancestorMstrTaskId = ancestorMstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$ancestorMstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$descendants ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$ancestorMstrTaskId = ancestorMstrTaskId;
    final lOther$ancestorMstrTaskId = other.ancestorMstrTaskId;
    if (l$ancestorMstrTaskId != lOther$ancestorMstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$descendants
    on Query$TaskPageRead$allMstrTasks$nodes$descendants {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<
    Query$TaskPageRead$allMstrTasks$nodes$descendants
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants(
    Query$TaskPageRead$allMstrTasks$nodes$descendants instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$descendants) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants;

  TRes call({String? ancestorMstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$descendants _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$descendants) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ancestorMstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$descendants(
      ancestorMstrTaskId: ancestorMstrTaskId == _undefined
          ? _instance.ancestorMstrTaskId
          : (ancestorMstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$descendants<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$descendants(
    this._res,
  );

  TRes _res;

  call({String? ancestorMstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups {
  Query$TaskPageRead$allMstrTasks$nodes$groups({
    required this.mstrTaskGroupId,
    required this.code,
    this.labels,
    this.details,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrTaskGroup',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskGroupId = json['mstrTaskGroupId'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$details = json['details'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      details: (l$details as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels? labels;

  final String? details;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user? update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskGroupId = mstrTaskGroupId;
    _resultData['mstrTaskGroupId'] = l$mstrTaskGroupId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$details = details;
    _resultData['details'] = l$details;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$update_user = update_user;
    _resultData['update_user'] = l$update_user?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskGroupId = mstrTaskGroupId;
    final l$code = code;
    final l$labels = labels;
    final l$details = details;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskGroupId,
      l$code,
      l$labels,
      l$details,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$update_user,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$groups ||
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
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
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
    final l$update_user = update_user;
    final lOther$update_user = other.update_user;
    if (l$update_user != lOther$update_user) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups
    on Query$TaskPageRead$allMstrTasks$nodes$groups {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<
    Query$TaskPageRead$allMstrTasks$nodes$groups
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups(
    Query$TaskPageRead$allMstrTasks$nodes$groups instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels? labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user? update_user,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes> get labels;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskGroupId = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? details = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels as Query$TaskPageRead$allMstrTasks$nodes$groups$labels?),
      details: details == _undefined ? _instance.details : (details as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups(this._res);

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels? labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user? update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes>
  get labels =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels.stub(_res);

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<TRes>
  get update_user =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels.fromJson(
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
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels
    on Query$TaskPageRead$allMstrTasks$nodes$groups$labels {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups$labels) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups$labels)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user({
    required this.historyId,
    required this.infoStaffId,
    required this.infoCompanyId,
    this.code,
    this.name,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String infoCompanyId;

  final String? code;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name? name;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$name = name;
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$name,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user
    on Query$TaskPageRead$allMstrTasks$nodes$groups$update_user {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups$update_user)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<TRes>
  get name;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups$update_user)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      name: name == _undefined
          ? _instance.name
          : (name
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<TRes>
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<TRes>
  get name =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name.fromJson(
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
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name
    on Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name,
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
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels {
  Query$TaskPageRead$allMstrTasks$nodes$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels.fromJson(
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
    return Query$TaskPageRead$allMstrTasks$nodes$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$labels ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels
    on Query$TaskPageRead$allMstrTasks$nodes$labels {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<
    Query$TaskPageRead$allMstrTasks$nodes$labels
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels(this, (i) => i);
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels(
    Query$TaskPageRead$allMstrTasks$nodes$labels instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$labels) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels.stub(TRes res) =
      _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$labels) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes>
    implements CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels(this._res);

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$detailTexts {
  Query$TaskPageRead$allMstrTasks$nodes$detailTexts({
    required this.sharedTextId,
    required this.value,
    this.$__typename = 'SharedText',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      value: Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value.fromJson(
        (l$value as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedTextId = sharedTextId;
    _resultData['sharedTextId'] = l$sharedTextId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedTextId = sharedTextId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedTextId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$detailTexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedTextId = sharedTextId;
    final lOther$sharedTextId = other.sharedTextId;
    if (l$sharedTextId != lOther$sharedTextId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$detailTexts
    on Query$TaskPageRead$allMstrTasks$nodes$detailTexts {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$detailTexts) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value? value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<TRes>
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$detailTexts _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$detailTexts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value as Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<TRes>
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value? value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<TRes>
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value {
  Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?>
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value
    on Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value;

  TRes call({
    List<Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?>? nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?>
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value(
    this._res,
  );

  TRes _res;

  call({
    List<Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes({
    this.charCount,
    this.leadText,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$charCount = json['charCount'];
    final l$leadText = json['leadText'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
      charCount: (l$charCount as int?),
      leadText: (l$leadText as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? charCount;

  final String? leadText;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$charCount = charCount;
    _resultData['charCount'] = l$charCount;
    final l$leadText = leadText;
    _resultData['leadText'] = l$leadText;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$charCount = charCount;
    final l$leadText = leadText;
    final l$$__typename = $__typename;
    return Object.hashAll([l$charCount, l$leadText, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$charCount = charCount;
    final lOther$charCount = other.charCount;
    if (l$charCount != lOther$charCount) {
      return false;
    }
    final l$leadText = leadText;
    final lOther$leadText = other.leadText;
    if (l$leadText != lOther$leadText) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes
    on Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes;

  TRes call({int? charCount, String? leadText, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? charCount = _undefined,
    Object? leadText = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
      charCount: charCount == _undefined
          ? _instance.charCount
          : (charCount as int?),
      leadText: leadText == _undefined
          ? _instance.leadText
          : (leadText as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$detailTexts$value$nodes(
    this._res,
  );

  TRes _res;

  call({int? charCount, String? leadText, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$defaultTime {
  Query$TaskPageRead$allMstrTasks$nodes$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$defaultTime ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$defaultTime
    on Query$TaskPageRead$allMstrTasks$nodes$defaultTime {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<
    Query$TaskPageRead$allMstrTasks$nodes$defaultTime
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
    Query$TaskPageRead$allMstrTasks$nodes$defaultTime instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$defaultTime) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime;

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

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$defaultTime _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$defaultTime) _then;

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
    Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
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

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$defaultTime<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$defaultTime(
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

class Query$TaskPageRead$allMstrTasks$nodes$work_plan_count {
  Query$TaskPageRead$allMstrTasks$nodes$work_plan_count({
    this.mstrTaskId,
    this.$__typename = 'VTaskWorkPlanCount',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$work_plan_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
      mstrTaskId: (l$mstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$work_plan_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count
    on Query$TaskPageRead$allMstrTasks$nodes$work_plan_count {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<
    Query$TaskPageRead$allMstrTasks$nodes$work_plan_count
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
    Query$TaskPageRead$allMstrTasks$nodes$work_plan_count instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$work_plan_count) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count;

  TRes call({String? mstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$work_plan_count _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$work_plan_count)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
      mstrTaskId: mstrTaskId == _undefined
          ? _instance.mstrTaskId
          : (mstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$work_plan_count(
    this._res,
  );

  TRes _res;

  call({String? mstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$task_risk_count {
  Query$TaskPageRead$allMstrTasks$nodes$task_risk_count({
    this.mstrTaskId,
    this.$__typename = 'VTaskTaskRiskCount',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$task_risk_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
      mstrTaskId: (l$mstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$task_risk_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count
    on Query$TaskPageRead$allMstrTasks$nodes$task_risk_count {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<
    Query$TaskPageRead$allMstrTasks$nodes$task_risk_count
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
    Query$TaskPageRead$allMstrTasks$nodes$task_risk_count instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$task_risk_count) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count;

  TRes call({String? mstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$task_risk_count _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$task_risk_count)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
      mstrTaskId: mstrTaskId == _undefined
          ? _instance.mstrTaskId
          : (mstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_risk_count(
    this._res,
  );

  TRes _res;

  call({String? mstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count {
  Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count({
    this.mstrTaskId,
    this.$__typename = 'VTaskComplaintProcessCount',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
      mstrTaskId: (l$mstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count
    on Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count;

  TRes call({String? mstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
      mstrTaskId: mstrTaskId == _undefined
          ? _instance.mstrTaskId
          : (mstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$complaint_process_count(
    this._res,
  );

  TRes _res;

  call({String? mstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$task_location_count {
  Query$TaskPageRead$allMstrTasks$nodes$task_location_count({
    this.mstrTaskId,
    this.$__typename = 'VTaskTaskLocationCount',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$task_location_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
      mstrTaskId: (l$mstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$task_location_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$task_location_count
    on Query$TaskPageRead$allMstrTasks$nodes$task_location_count {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
    Query$TaskPageRead$allMstrTasks$nodes$task_location_count
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
    Query$TaskPageRead$allMstrTasks$nodes$task_location_count instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$task_location_count)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count;

  TRes call({String? mstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$task_location_count _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$task_location_count)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
      mstrTaskId: mstrTaskId == _undefined
          ? _instance.mstrTaskId
          : (mstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$task_location_count<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$task_location_count(
    this._res,
  );

  TRes _res;

  call({String? mstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$operation_task_count {
  Query$TaskPageRead$allMstrTasks$nodes$operation_task_count({
    this.mstrTaskId,
    this.$__typename = 'VTaskOperationTaskCount',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$operation_task_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
      mstrTaskId: (l$mstrTaskId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrTaskId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrTaskId = mstrTaskId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrTaskId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$operation_task_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count
    on Query$TaskPageRead$allMstrTasks$nodes$operation_task_count {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$operation_task_count)
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count;

  TRes call({String? mstrTaskId, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$operation_task_count _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
      mstrTaskId: mstrTaskId == _undefined
          ? _instance.mstrTaskId
          : (mstrTaskId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$operation_task_count(
    this._res,
  );

  TRes _res;

  call({String? mstrTaskId, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user {
  Query$TaskPageRead$allMstrTasks$nodes$update_user({
    required this.historyId,
    required this.infoStaffId,
    required this.infoCompanyId,
    this.code,
    this.name,
    this.sex,
    this.phone,
    this.symbol,
    this.privatePhone,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$infoCompanyId = json['infoCompanyId'];
    final l$code = json['code'];
    final l$name = json['name'];
    final l$sex = json['sex'];
    final l$phone = json['phone'];
    final l$symbol = json['symbol'];
    final l$privatePhone = json['privatePhone'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$update_user$name.fromJson(
              (l$name as Map<String, dynamic>),
            ),
      sex: (l$sex as String?),
      phone: (l$phone as String?),
      symbol: (l$symbol as String?),
      privatePhone: (l$privatePhone as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String historyId;

  final String infoStaffId;

  final String infoCompanyId;

  final String? code;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name? name;

  final String? sex;

  final String? phone;

  final String? symbol;

  final String? privatePhone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyId = historyId;
    _resultData['historyId'] = l$historyId;
    final l$infoStaffId = infoStaffId;
    _resultData['infoStaffId'] = l$infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    _resultData['infoCompanyId'] = l$infoCompanyId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$name = name;
    _resultData['name'] = l$name?.toJson();
    final l$sex = sex;
    _resultData['sex'] = l$sex;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$privatePhone = privatePhone;
    _resultData['privatePhone'] = l$privatePhone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyId = historyId;
    final l$infoStaffId = infoStaffId;
    final l$infoCompanyId = infoCompanyId;
    final l$code = code;
    final l$name = name;
    final l$sex = sex;
    final l$phone = phone;
    final l$symbol = symbol;
    final l$privatePhone = privatePhone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$historyId,
      l$infoStaffId,
      l$infoCompanyId,
      l$code,
      l$name,
      l$sex,
      l$phone,
      l$symbol,
      l$privatePhone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$update_user ||
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
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$sex = sex;
    final lOther$sex = other.sex;
    if (l$sex != lOther$sex) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
      return false;
    }
    final l$symbol = symbol;
    final lOther$symbol = other.symbol;
    if (l$symbol != lOther$symbol) {
      return false;
    }
    final l$privatePhone = privatePhone;
    final lOther$privatePhone = other.privatePhone;
    if (l$privatePhone != lOther$privatePhone) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user
    on Query$TaskPageRead$allMstrTasks$nodes$update_user {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<
    Query$TaskPageRead$allMstrTasks$nodes$update_user
  >
  get copyWith => CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user(
    Query$TaskPageRead$allMstrTasks$nodes$update_user instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$update_user) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes>
  get name;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$update_user) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? infoCompanyId = _undefined,
    Object? code = _undefined,
    Object? name = _undefined,
    Object? sex = _undefined,
    Object? phone = _undefined,
    Object? symbol = _undefined,
    Object? privatePhone = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user(
      historyId: historyId == _undefined || historyId == null
          ? _instance.historyId
          : (historyId as String),
      infoStaffId: infoStaffId == _undefined || infoStaffId == null
          ? _instance.infoStaffId
          : (infoStaffId as String),
      infoCompanyId: infoCompanyId == _undefined || infoCompanyId == null
          ? _instance.infoCompanyId
          : (infoCompanyId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      name: name == _undefined
          ? _instance.name
          : (name as Query$TaskPageRead$allMstrTasks$nodes$update_user$name?),
      sex: sex == _undefined ? _instance.sex : (sex as String?),
      phone: phone == _undefined ? _instance.phone : (phone as String?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      privatePhone: privatePhone == _undefined
          ? _instance.privatePhone
          : (privatePhone as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes>
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes>
  get name =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name.fromJson(
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
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
    if (other is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name
    on Query$TaskPageRead$allMstrTasks$nodes$update_user$name {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name instance,
    TRes Function(Query$TaskPageRead$allMstrTasks$nodes$update_user$name) then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes> {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name _instance;

  final TRes Function(Query$TaskPageRead$allMstrTasks$nodes$update_user$name)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name<TRes> {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  value;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedDictionaryId = sharedDictionaryId;
    _resultData['sharedDictionaryId'] = l$sharedDictionaryId;
    final l$value = value;
    _resultData['value'] = l$value.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedDictionaryId = sharedDictionaryId;
    final l$value = value;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedDictionaryId, l$value, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedDictionaryId = sharedDictionaryId;
    final lOther$sharedDictionaryId = other.sharedDictionaryId;
    if (l$sharedDictionaryId != lOther$sharedDictionaryId) {
      return false;
    }
    final l$value = value;
    final lOther$value = other.value;
    if (l$value != lOther$value) {
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$TaskPageRead$allMstrTasks$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
