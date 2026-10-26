import '../schema.graphql.dart';

import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$WorkPlanDelayPageRead {
  factory Variables$Query$WorkPlanDelayPageRead({
    required int first,
    int? offset,
    Input$TransWorkPlanFilter? filter,
    List<Enum$TransWorkPlansOrderBy>? orderBy,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$WorkPlanDelayPageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$WorkPlanDelayPageRead._(this._$data);

  factory Variables$Query$WorkPlanDelayPageRead.fromJson(
    Map<String, dynamic> data,
  ) {
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
          : Input$TransWorkPlanFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$TransWorkPlansOrderBy((e as String)))
          .toList();
    }
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$WorkPlanDelayPageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$TransWorkPlanFilter? get filter =>
      (_$data['filter'] as Input$TransWorkPlanFilter?);

  List<Enum$TransWorkPlansOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$TransWorkPlansOrderBy>?);

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
          ?.map((e) => toJson$Enum$TransWorkPlansOrderBy(e))
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

  CopyWith$Variables$Query$WorkPlanDelayPageRead<
    Variables$Query$WorkPlanDelayPageRead
  >
  get copyWith =>
      CopyWith$Variables$Query$WorkPlanDelayPageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$WorkPlanDelayPageRead ||
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

abstract class CopyWith$Variables$Query$WorkPlanDelayPageRead<TRes> {
  factory CopyWith$Variables$Query$WorkPlanDelayPageRead(
    Variables$Query$WorkPlanDelayPageRead instance,
    TRes Function(Variables$Query$WorkPlanDelayPageRead) then,
  ) = _CopyWithImpl$Variables$Query$WorkPlanDelayPageRead;

  factory CopyWith$Variables$Query$WorkPlanDelayPageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$WorkPlanDelayPageRead;

  TRes call({
    int? first,
    int? offset,
    Input$TransWorkPlanFilter? filter,
    List<Enum$TransWorkPlansOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$WorkPlanDelayPageRead<TRes>
    implements CopyWith$Variables$Query$WorkPlanDelayPageRead<TRes> {
  _CopyWithImpl$Variables$Query$WorkPlanDelayPageRead(
    this._instance,
    this._then,
  );

  final Variables$Query$WorkPlanDelayPageRead _instance;

  final TRes Function(Variables$Query$WorkPlanDelayPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$WorkPlanDelayPageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined)
        'filter': (filter as Input$TransWorkPlanFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$TransWorkPlansOrderBy>?),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$WorkPlanDelayPageRead<TRes>
    implements CopyWith$Variables$Query$WorkPlanDelayPageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$WorkPlanDelayPageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$TransWorkPlanFilter? filter,
    List<Enum$TransWorkPlansOrderBy>? orderBy,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$WorkPlanDelayPageRead {
  Query$WorkPlanDelayPageRead({
    this.allTransWorkPlans,
    this.$__typename = 'Query',
  });

  factory Query$WorkPlanDelayPageRead.fromJson(Map<String, dynamic> json) {
    final l$allTransWorkPlans = json['allTransWorkPlans'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead(
      allTransWorkPlans: l$allTransWorkPlans == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans.fromJson(
              (l$allTransWorkPlans as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$WorkPlanDelayPageRead$allTransWorkPlans? allTransWorkPlans;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allTransWorkPlans = allTransWorkPlans;
    _resultData['allTransWorkPlans'] = l$allTransWorkPlans?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allTransWorkPlans = allTransWorkPlans;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allTransWorkPlans, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$WorkPlanDelayPageRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allTransWorkPlans = allTransWorkPlans;
    final lOther$allTransWorkPlans = other.allTransWorkPlans;
    if (l$allTransWorkPlans != lOther$allTransWorkPlans) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead
    on Query$WorkPlanDelayPageRead {
  CopyWith$Query$WorkPlanDelayPageRead<Query$WorkPlanDelayPageRead>
  get copyWith => CopyWith$Query$WorkPlanDelayPageRead(this, (i) => i);
}

abstract class CopyWith$Query$WorkPlanDelayPageRead<TRes> {
  factory CopyWith$Query$WorkPlanDelayPageRead(
    Query$WorkPlanDelayPageRead instance,
    TRes Function(Query$WorkPlanDelayPageRead) then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead;

  factory CopyWith$Query$WorkPlanDelayPageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$WorkPlanDelayPageRead;

  TRes call({
    Query$WorkPlanDelayPageRead$allTransWorkPlans? allTransWorkPlans,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes>
  get allTransWorkPlans;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead<TRes>
    implements CopyWith$Query$WorkPlanDelayPageRead<TRes> {
  _CopyWithImpl$Query$WorkPlanDelayPageRead(this._instance, this._then);

  final Query$WorkPlanDelayPageRead _instance;

  final TRes Function(Query$WorkPlanDelayPageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allTransWorkPlans = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead(
      allTransWorkPlans: allTransWorkPlans == _undefined
          ? _instance.allTransWorkPlans
          : (allTransWorkPlans
                as Query$WorkPlanDelayPageRead$allTransWorkPlans?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes>
  get allTransWorkPlans {
    final local$allTransWorkPlans = _instance.allTransWorkPlans;
    return local$allTransWorkPlans == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans(
            local$allTransWorkPlans,
            (e) => call(allTransWorkPlans: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead<TRes>
    implements CopyWith$Query$WorkPlanDelayPageRead<TRes> {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead(this._res);

  TRes _res;

  call({
    Query$WorkPlanDelayPageRead$allTransWorkPlans? allTransWorkPlans,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes>
  get allTransWorkPlans =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans.stub(_res);
}

const documentNodeQueryWorkPlanDelayPageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'WorkPlanDelayPageRead'),
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
            name: NameNode(value: 'TransWorkPlanFilter'),
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
              name: NameNode(value: 'TransWorkPlansOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(
            value: ListValueNode(
              values: [
                EnumValueNode(name: NameNode(value: 'COMPLETION_AT_ASC')),
              ],
            ),
          ),
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
            name: NameNode(value: 'allTransWorkPlans'),
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
                        name: NameNode(value: 'transWorkPlanId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'transOperationsPlanId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'transOperationsPlanByTransOperationsPlanId',
                        ),
                        alias: NameNode(value: 'operations_plan'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'transOperationsPlanId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'transResourcePlanId'),
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
                        name: NameNode(value: 'mstrTaskId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrTaskByMstrTaskId'),
                        alias: NameNode(value: 'task'),
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
                              name: NameNode(
                                value: 'mstrTaskGroupByMstrTaskGroupId',
                              ),
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
                                    name: NameNode(
                                      value: 'sharedAppellationByNames',
                                    ),
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
                                            value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                      value: 'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
                                          name: NameNode(
                                            value: 'infoCompanyId',
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
                                                  value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                                        value: 'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name:
                                                                      NameNode(
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: 'dictionaryValue',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: '__typename',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
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
                                                  value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                        value: 'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name:
                                                                      NameNode(
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: 'dictionaryValue',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: '__typename',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
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
                                                  value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                        value: 'sharedDictionaryValuesBySharedDictionaryId',
                                                      ),
                                                      alias: NameNode(
                                                        value: 'value',
                                                      ),
                                                      arguments: [
                                                        ArgumentNode(
                                                          name: NameNode(
                                                            value: 'condition',
                                                          ),
                                                          value: ObjectValueNode(
                                                            fields: [
                                                              ObjectFieldNode(
                                                                name: NameNode(
                                                                  value: 'sharedLanguageCodeId',
                                                                ),
                                                                value: VariableNode(
                                                                  name:
                                                                      NameNode(
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
                                                            name: NameNode(
                                                              value: 'nodes',
                                                            ),
                                                            alias: null,
                                                            arguments: [],
                                                            directives: [],
                                                            selectionSet: SelectionSetNode(
                                                              selections: [
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: 'dictionaryValue',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                                FieldNode(
                                                                  name:
                                                                      NameNode(
                                                                        value: '__typename',
                                                                      ),
                                                                  alias: null,
                                                                  arguments: [],
                                                                  directives:
                                                                      [],
                                                                  selectionSet:
                                                                      null,
                                                                ),
                                                              ],
                                                            ),
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
                                      value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                      value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                            value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                name: NameNode(
                                                  value: 'charCount',
                                                ),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null,
                                              ),
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'leadText',
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
                              name: NameNode(
                                value: 'historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId',
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
                                            value: 'sharedDictionaryBySharedDictionaryNameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryPronunciationId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                                            value: 'sharedDictionaryBySharedDictionaryNicknameId',
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
                                                  value: 'sharedDictionaryValuesBySharedDictionaryId',
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
                                                      name: NameNode(
                                                        value: 'nodes',
                                                      ),
                                                      alias: null,
                                                      arguments: [],
                                                      directives: [],
                                                      selectionSet:
                                                          SelectionSetNode(
                                                            selections: [
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: 'dictionaryValue',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
                                                              ),
                                                              FieldNode(
                                                                name: NameNode(
                                                                  value: '__typename',
                                                                ),
                                                                alias: null,
                                                                arguments: [],
                                                                directives: [],
                                                                selectionSet:
                                                                    null,
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
                        name: NameNode(value: 'intervalPlan'),
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
                        name: NameNode(value: 'startAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'completionAt'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'vWorkPlanWorkRecordCountByTransWorkPlanId',
                        ),
                        alias: NameNode(value: 'work_record_count'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'transWorkPlanId'),
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
                          value: 'vWorkPlanProductRezCountByTransWorkPlanId',
                        ),
                        alias: NameNode(value: 'product_rez_count'),
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'transWorkPlanId'),
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
Query$WorkPlanDelayPageRead _parserFn$Query$WorkPlanDelayPageRead(
  Map<String, dynamic> data,
) => Query$WorkPlanDelayPageRead.fromJson(data);
typedef OnQueryComplete$Query$WorkPlanDelayPageRead = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$WorkPlanDelayPageRead?,
);

class Options$Query$WorkPlanDelayPageRead
    extends graphql.QueryOptions<Query$WorkPlanDelayPageRead> {
  Options$Query$WorkPlanDelayPageRead({
    String? operationName,
    required Variables$Query$WorkPlanDelayPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WorkPlanDelayPageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$WorkPlanDelayPageRead? onComplete,
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
                     : _parserFn$Query$WorkPlanDelayPageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryWorkPlanDelayPageRead,
         parserFn: _parserFn$Query$WorkPlanDelayPageRead,
       );

  final OnQueryComplete$Query$WorkPlanDelayPageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$WorkPlanDelayPageRead
    extends graphql.WatchQueryOptions<Query$WorkPlanDelayPageRead> {
  WatchOptions$Query$WorkPlanDelayPageRead({
    String? operationName,
    required Variables$Query$WorkPlanDelayPageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$WorkPlanDelayPageRead? typedOptimisticResult,
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
         document: documentNodeQueryWorkPlanDelayPageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$WorkPlanDelayPageRead,
       );
}

class FetchMoreOptions$Query$WorkPlanDelayPageRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$WorkPlanDelayPageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$WorkPlanDelayPageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryWorkPlanDelayPageRead,
       );
}

extension ClientExtension$Query$WorkPlanDelayPageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$WorkPlanDelayPageRead>>
  query$WorkPlanDelayPageRead(
    Options$Query$WorkPlanDelayPageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$WorkPlanDelayPageRead>
  watchQuery$WorkPlanDelayPageRead(
    WatchOptions$Query$WorkPlanDelayPageRead options,
  ) => this.watchQuery(options);

  void writeQuery$WorkPlanDelayPageRead({
    required Query$WorkPlanDelayPageRead data,
    required Variables$Query$WorkPlanDelayPageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryWorkPlanDelayPageRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$WorkPlanDelayPageRead? readQuery$WorkPlanDelayPageRead({
    required Variables$Query$WorkPlanDelayPageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryWorkPlanDelayPageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$WorkPlanDelayPageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$WorkPlanDelayPageRead>
useQuery$WorkPlanDelayPageRead(Options$Query$WorkPlanDelayPageRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$WorkPlanDelayPageRead>
useWatchQuery$WorkPlanDelayPageRead(
  WatchOptions$Query$WorkPlanDelayPageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$WorkPlanDelayPageRead$Widget
    extends graphql_flutter.Query<Query$WorkPlanDelayPageRead> {
  Query$WorkPlanDelayPageRead$Widget({
    widgets.Key? key,
    required Options$Query$WorkPlanDelayPageRead options,
    required graphql_flutter.QueryBuilder<Query$WorkPlanDelayPageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans {
  Query$WorkPlanDelayPageRead$allTransWorkPlans({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'TransWorkPlansConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans(
      totalCount: (l$totalCount as int),
      pageInfo: Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo pageInfo;

  final List<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?> nodes;

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
    if (other is! Query$WorkPlanDelayPageRead$allTransWorkPlans ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans
    on Query$WorkPlanDelayPageRead$allTransWorkPlans {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<
    Query$WorkPlanDelayPageRead$allTransWorkPlans
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans(this, (i) => i);
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans(
    Query$WorkPlanDelayPageRead$allTransWorkPlans instance,
    TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans) then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans;

  TRes call({
    int? totalCount,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo? pageInfo,
    List<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?> Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes>
    implements CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes> {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans _instance;

  final TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?> Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes>
    implements CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans<TRes> {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo? pageInfo,
    List<Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
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
    if (other is! Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo instance,
    TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo) then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes> {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo _instance;

  final TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
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

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo<TRes> {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes({
    required this.transWorkPlanId,
    required this.transOperationsPlanId,
    this.operations_plan,
    required this.mstrTaskId,
    this.task,
    this.intervalPlan,
    this.startAt,
    this.completionAt,
    this.work_record_count,
    this.product_rez_count,
    this.updateAt,
    this.remove,
    this.$__typename = 'TransWorkPlan',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transWorkPlanId = json['transWorkPlanId'];
    final l$transOperationsPlanId = json['transOperationsPlanId'];
    final l$operations_plan = json['operations_plan'];
    final l$mstrTaskId = json['mstrTaskId'];
    final l$task = json['task'];
    final l$intervalPlan = json['intervalPlan'];
    final l$startAt = json['startAt'];
    final l$completionAt = json['completionAt'];
    final l$work_record_count = json['work_record_count'];
    final l$product_rez_count = json['product_rez_count'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
      transWorkPlanId: (l$transWorkPlanId as String),
      transOperationsPlanId: (l$transOperationsPlanId as String),
      operations_plan: l$operations_plan == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan.fromJson(
              (l$operations_plan as Map<String, dynamic>),
            ),
      mstrTaskId: (l$mstrTaskId as String),
      task: l$task == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task.fromJson(
              (l$task as Map<String, dynamic>),
            ),
      intervalPlan: l$intervalPlan == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan.fromJson(
              (l$intervalPlan as Map<String, dynamic>),
            ),
      startAt: (l$startAt as String?),
      completionAt: (l$completionAt as String?),
      work_record_count: l$work_record_count == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count.fromJson(
              (l$work_record_count as Map<String, dynamic>),
            ),
      product_rez_count: l$product_rez_count == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count.fromJson(
              (l$product_rez_count as Map<String, dynamic>),
            ),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transWorkPlanId;

  final String transOperationsPlanId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan?
  operations_plan;

  final String mstrTaskId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task? task;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan?
  intervalPlan;

  final String? startAt;

  final String? completionAt;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count?
  work_record_count;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count?
  product_rez_count;

  final String? updateAt;

  final bool? remove;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transWorkPlanId = transWorkPlanId;
    _resultData['transWorkPlanId'] = l$transWorkPlanId;
    final l$transOperationsPlanId = transOperationsPlanId;
    _resultData['transOperationsPlanId'] = l$transOperationsPlanId;
    final l$operations_plan = operations_plan;
    _resultData['operations_plan'] = l$operations_plan?.toJson();
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
    final l$task = task;
    _resultData['task'] = l$task?.toJson();
    final l$intervalPlan = intervalPlan;
    _resultData['intervalPlan'] = l$intervalPlan?.toJson();
    final l$startAt = startAt;
    _resultData['startAt'] = l$startAt;
    final l$completionAt = completionAt;
    _resultData['completionAt'] = l$completionAt;
    final l$work_record_count = work_record_count;
    _resultData['work_record_count'] = l$work_record_count?.toJson();
    final l$product_rez_count = product_rez_count;
    _resultData['product_rez_count'] = l$product_rez_count?.toJson();
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
    final l$transWorkPlanId = transWorkPlanId;
    final l$transOperationsPlanId = transOperationsPlanId;
    final l$operations_plan = operations_plan;
    final l$mstrTaskId = mstrTaskId;
    final l$task = task;
    final l$intervalPlan = intervalPlan;
    final l$startAt = startAt;
    final l$completionAt = completionAt;
    final l$work_record_count = work_record_count;
    final l$product_rez_count = product_rez_count;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transWorkPlanId,
      l$transOperationsPlanId,
      l$operations_plan,
      l$mstrTaskId,
      l$task,
      l$intervalPlan,
      l$startAt,
      l$completionAt,
      l$work_record_count,
      l$product_rez_count,
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
    if (other is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transWorkPlanId = transWorkPlanId;
    final lOther$transWorkPlanId = other.transWorkPlanId;
    if (l$transWorkPlanId != lOther$transWorkPlanId) {
      return false;
    }
    final l$transOperationsPlanId = transOperationsPlanId;
    final lOther$transOperationsPlanId = other.transOperationsPlanId;
    if (l$transOperationsPlanId != lOther$transOperationsPlanId) {
      return false;
    }
    final l$operations_plan = operations_plan;
    final lOther$operations_plan = other.operations_plan;
    if (l$operations_plan != lOther$operations_plan) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
      return false;
    }
    final l$task = task;
    final lOther$task = other.task;
    if (l$task != lOther$task) {
      return false;
    }
    final l$intervalPlan = intervalPlan;
    final lOther$intervalPlan = other.intervalPlan;
    if (l$intervalPlan != lOther$intervalPlan) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$completionAt = completionAt;
    final lOther$completionAt = other.completionAt;
    if (l$completionAt != lOther$completionAt) {
      return false;
    }
    final l$work_record_count = work_record_count;
    final lOther$work_record_count = other.work_record_count;
    if (l$work_record_count != lOther$work_record_count) {
      return false;
    }
    final l$product_rez_count = product_rez_count;
    final lOther$product_rez_count = other.product_rez_count;
    if (l$product_rez_count != lOther$product_rez_count) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes
  >
  get copyWith => CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes instance,
    TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes) then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes;

  TRes call({
    String? transWorkPlanId,
    String? transOperationsPlanId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan?
    operations_plan,
    String? mstrTaskId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task? task,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan?
    intervalPlan,
    String? startAt,
    String? completionAt,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count?
    work_record_count,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count?
    product_rez_count,
    String? updateAt,
    bool? remove,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
    TRes
  >
  get operations_plan;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<TRes>
  get task;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
    TRes
  >
  get intervalPlan;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
    TRes
  >
  get work_record_count;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
    TRes
  >
  get product_rez_count;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<TRes>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<TRes> {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes _instance;

  final TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transWorkPlanId = _undefined,
    Object? transOperationsPlanId = _undefined,
    Object? operations_plan = _undefined,
    Object? mstrTaskId = _undefined,
    Object? task = _undefined,
    Object? intervalPlan = _undefined,
    Object? startAt = _undefined,
    Object? completionAt = _undefined,
    Object? work_record_count = _undefined,
    Object? product_rez_count = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
      transWorkPlanId: transWorkPlanId == _undefined || transWorkPlanId == null
          ? _instance.transWorkPlanId
          : (transWorkPlanId as String),
      transOperationsPlanId:
          transOperationsPlanId == _undefined || transOperationsPlanId == null
          ? _instance.transOperationsPlanId
          : (transOperationsPlanId as String),
      operations_plan: operations_plan == _undefined
          ? _instance.operations_plan
          : (operations_plan
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan?),
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      task: task == _undefined
          ? _instance.task
          : (task as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task?),
      intervalPlan: intervalPlan == _undefined
          ? _instance.intervalPlan
          : (intervalPlan
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan?),
      startAt: startAt == _undefined ? _instance.startAt : (startAt as String?),
      completionAt: completionAt == _undefined
          ? _instance.completionAt
          : (completionAt as String?),
      work_record_count: work_record_count == _undefined
          ? _instance.work_record_count
          : (work_record_count
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count?),
      product_rez_count: product_rez_count == _undefined
          ? _instance.product_rez_count
          : (product_rez_count
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
    TRes
  >
  get operations_plan {
    final local$operations_plan = _instance.operations_plan;
    return local$operations_plan == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
            local$operations_plan,
            (e) => call(operations_plan: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<TRes>
  get task {
    final local$task = _instance.task;
    return local$task == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
            local$task,
            (e) => call(task: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
    TRes
  >
  get intervalPlan {
    final local$intervalPlan = _instance.intervalPlan;
    return local$intervalPlan == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
            local$intervalPlan,
            (e) => call(intervalPlan: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
    TRes
  >
  get work_record_count {
    final local$work_record_count = _instance.work_record_count;
    return local$work_record_count == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
            local$work_record_count,
            (e) => call(work_record_count: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
    TRes
  >
  get product_rez_count {
    final local$product_rez_count = _instance.product_rez_count;
    return local$product_rez_count == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
            local$product_rez_count,
            (e) => call(product_rez_count: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes<TRes> {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? transWorkPlanId,
    String? transOperationsPlanId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan?
    operations_plan,
    String? mstrTaskId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task? task,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan?
    intervalPlan,
    String? startAt,
    String? completionAt,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count?
    work_record_count,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count?
    product_rez_count,
    String? updateAt,
    bool? remove,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
    TRes
  >
  get operations_plan =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<TRes>
  get task =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
    TRes
  >
  get intervalPlan =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
    TRes
  >
  get work_record_count =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
    TRes
  >
  get product_rez_count =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan({
    required this.transOperationsPlanId,
    this.transResourcePlanId,
    this.deadline,
    this.$__typename = 'TransOperationsPlan',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transOperationsPlanId = json['transOperationsPlanId'];
    final l$transResourcePlanId = json['transResourcePlanId'];
    final l$deadline = json['deadline'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
      transOperationsPlanId: (l$transOperationsPlanId as String),
      transResourcePlanId: (l$transResourcePlanId as String?),
      deadline: (l$deadline as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String transOperationsPlanId;

  final String? transResourcePlanId;

  final String? deadline;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transOperationsPlanId = transOperationsPlanId;
    _resultData['transOperationsPlanId'] = l$transOperationsPlanId;
    final l$transResourcePlanId = transResourcePlanId;
    _resultData['transResourcePlanId'] = l$transResourcePlanId;
    final l$deadline = deadline;
    _resultData['deadline'] = l$deadline;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transOperationsPlanId = transOperationsPlanId;
    final l$transResourcePlanId = transResourcePlanId;
    final l$deadline = deadline;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$transOperationsPlanId,
      l$transResourcePlanId,
      l$deadline,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transOperationsPlanId = transOperationsPlanId;
    final lOther$transOperationsPlanId = other.transOperationsPlanId;
    if (l$transOperationsPlanId != lOther$transOperationsPlanId) {
      return false;
    }
    final l$transResourcePlanId = transResourcePlanId;
    final lOther$transResourcePlanId = other.transResourcePlanId;
    if (l$transResourcePlanId != lOther$transResourcePlanId) {
      return false;
    }
    final l$deadline = deadline;
    final lOther$deadline = other.deadline;
    if (l$deadline != lOther$deadline) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan;

  TRes call({
    String? transOperationsPlanId,
    String? transResourcePlanId,
    String? deadline,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transOperationsPlanId = _undefined,
    Object? transResourcePlanId = _undefined,
    Object? deadline = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
      transOperationsPlanId:
          transOperationsPlanId == _undefined || transOperationsPlanId == null
          ? _instance.transOperationsPlanId
          : (transOperationsPlanId as String),
      transResourcePlanId: transResourcePlanId == _undefined
          ? _instance.transResourcePlanId
          : (transResourcePlanId as String?),
      deadline: deadline == _undefined
          ? _instance.deadline
          : (deadline as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$operations_plan(
    this._res,
  );

  TRes _res;

  call({
    String? transOperationsPlanId,
    String? transResourcePlanId,
    String? deadline,
    String? $__typename,
  }) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task({
    required this.mstrTaskId,
    this.groups,
    required this.code,
    this.labels,
    this.detailTexts,
    this.$class,
    this.defaultTime,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrTask',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrTaskId = json['mstrTaskId'];
    final l$groups = json['groups'];
    final l$code = json['code'];
    final l$labels = json['labels'];
    final l$detailTexts = json['detailTexts'];
    final l$$class = json['class'];
    final l$defaultTime = json['defaultTime'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
      mstrTaskId: (l$mstrTaskId as String),
      groups: l$groups == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups.fromJson(
              (l$groups as Map<String, dynamic>),
            ),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      $class: (l$$class as int?),
      defaultTime: l$defaultTime == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime.fromJson(
              (l$defaultTime as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups? groups;

  final String code;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels? labels;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts?
  detailTexts;

  final int? $class;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime?
  defaultTime;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrTaskId = mstrTaskId;
    _resultData['mstrTaskId'] = l$mstrTaskId;
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
    final l$groups = groups;
    final l$code = code;
    final l$labels = labels;
    final l$detailTexts = detailTexts;
    final l$$class = $class;
    final l$defaultTime = defaultTime;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrTaskId,
      l$groups,
      l$code,
      l$labels,
      l$detailTexts,
      l$$class,
      l$defaultTime,
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
    if (other is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrTaskId = mstrTaskId;
    final lOther$mstrTaskId = other.mstrTaskId;
    if (l$mstrTaskId != lOther$mstrTaskId) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task instance,
    TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task)
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task;

  TRes call({
    String? mstrTaskId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups? groups,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels? labels,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts?
    detailTexts,
    int? $class,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime?
    defaultTime,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<TRes>
  get groups;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<TRes>
  get labels;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
    TRes
  >
  get detailTexts;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
    TRes
  >
  get defaultTime;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task _instance;

  final TRes Function(Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrTaskId = _undefined,
    Object? groups = _undefined,
    Object? code = _undefined,
    Object? labels = _undefined,
    Object? detailTexts = _undefined,
    Object? $class = _undefined,
    Object? defaultTime = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
      mstrTaskId: mstrTaskId == _undefined || mstrTaskId == null
          ? _instance.mstrTaskId
          : (mstrTaskId as String),
      groups: groups == _undefined
          ? _instance.groups
          : (groups
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts?),
      $class: $class == _undefined ? _instance.$class : ($class as int?),
      defaultTime: defaultTime == _undefined
          ? _instance.defaultTime
          : (defaultTime
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<TRes>
  get groups {
    final local$groups = _instance.groups;
    return local$groups == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
            local$groups,
            (e) => call(groups: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<TRes>
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
    TRes
  >
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
    TRes
  >
  get defaultTime {
    final local$defaultTime = _instance.defaultTime;
    return local$defaultTime == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
            local$defaultTime,
            (e) => call(defaultTime: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups? groups,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels? labels,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts?
    detailTexts,
    int? $class,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime?
    defaultTime,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<TRes>
  get groups =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<TRes>
  get labels =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
    TRes
  >
  get detailTexts =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
    TRes
  >
  get defaultTime =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups({
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

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
      mstrTaskGroupId: (l$mstrTaskGroupId as String),
      code: (l$code as String),
      labels: l$labels == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      details: (l$details as String?),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrTaskGroupId;

  final String code;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels?
  labels;

  final String? details;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user?
  update_user;

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
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups;

  TRes call({
    String? mstrTaskGroupId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels?
    labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
    TRes
  >
  get labels;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups,
  )
  _then;

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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
      mstrTaskGroupId: mstrTaskGroupId == _undefined || mstrTaskGroupId == null
          ? _instance.mstrTaskGroupId
          : (mstrTaskGroupId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels?),
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
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups(
    this._res,
  );

  TRes _res;

  call({
    String? mstrTaskGroupId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels?
    labels,
    String? details,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user({
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

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name.fromJson(
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

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name?
  name;

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
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user,
  )
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
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
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name?),
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

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$groups$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts({
    required this.sharedTextId,
    required this.value,
    this.$__typename = 'SharedText',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value
  value;

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
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes({
    this.charCount,
    this.leadText,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$charCount = json['charCount'];
    final l$leadText = json['leadText'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes;

  TRes call({int? charCount, String? leadText, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? charCount = _undefined,
    Object? leadText = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
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

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$detailTexts$value$nodes(
    this._res,
  );

  TRes _res;

  call({int? charCount, String? leadText, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime;

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

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
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

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$defaultTime(
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

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user({
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

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name.fromJson(
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

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name?
  name;

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
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user,
  )
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
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
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name?),
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

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name.fromJson(
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
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$task$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
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
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan ||
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan;

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

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan,
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
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
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

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$intervalPlan(
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

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count({
    this.transWorkPlanId,
    this.$__typename = 'VWorkPlanWorkRecordCount',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transWorkPlanId = json['transWorkPlanId'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
      transWorkPlanId: (l$transWorkPlanId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? transWorkPlanId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transWorkPlanId = transWorkPlanId;
    _resultData['transWorkPlanId'] = l$transWorkPlanId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transWorkPlanId = transWorkPlanId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transWorkPlanId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transWorkPlanId = transWorkPlanId;
    final lOther$transWorkPlanId = other.transWorkPlanId;
    if (l$transWorkPlanId != lOther$transWorkPlanId) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count;

  TRes call({String? transWorkPlanId, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transWorkPlanId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
      transWorkPlanId: transWorkPlanId == _undefined
          ? _instance.transWorkPlanId
          : (transWorkPlanId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$work_record_count(
    this._res,
  );

  TRes _res;

  call({String? transWorkPlanId, String? $__typename}) => _res;
}

class Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count {
  Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count({
    this.transWorkPlanId,
    this.$__typename = 'VWorkPlanProductRezCount',
  });

  factory Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$transWorkPlanId = json['transWorkPlanId'];
    final l$$__typename = json['__typename'];
    return Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
      transWorkPlanId: (l$transWorkPlanId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? transWorkPlanId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$transWorkPlanId = transWorkPlanId;
    _resultData['transWorkPlanId'] = l$transWorkPlanId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$transWorkPlanId = transWorkPlanId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$transWorkPlanId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$transWorkPlanId = transWorkPlanId;
    final lOther$transWorkPlanId = other.transWorkPlanId;
    if (l$transWorkPlanId != lOther$transWorkPlanId) {
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

extension UtilityExtension$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count
    on Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count {
  CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count
  >
  get copyWith =>
      CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
  TRes
> {
  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count
    instance,
    TRes Function(
      Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count,
    )
    then,
  ) = _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count;

  factory CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count;

  TRes call({String? transWorkPlanId, String? $__typename});
}

class _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
          TRes
        > {
  _CopyWithImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
    this._instance,
    this._then,
  );

  final Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count
  _instance;

  final TRes Function(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? transWorkPlanId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
      transWorkPlanId: transWorkPlanId == _undefined
          ? _instance.transWorkPlanId
          : (transWorkPlanId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
  TRes
>
    implements
        CopyWith$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count<
          TRes
        > {
  _CopyWithStubImpl$Query$WorkPlanDelayPageRead$allTransWorkPlans$nodes$product_rez_count(
    this._res,
  );

  TRes _res;

  call({String? transWorkPlanId, String? $__typename}) => _res;
}
