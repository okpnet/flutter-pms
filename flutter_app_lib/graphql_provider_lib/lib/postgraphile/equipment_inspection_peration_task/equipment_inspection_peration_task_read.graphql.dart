import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$EquipmentInspectionPerationTaskRead {
  factory Variables$Query$EquipmentInspectionPerationTaskRead({
    required int first,
    int? offset,
    Input$MstrInspectionOperationTaskCondition? condition,
    List<Enum$MstrInspectionOperationTasksOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$EquipmentInspectionPerationTaskRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$EquipmentInspectionPerationTaskRead._(this._$data);

  factory Variables$Query$EquipmentInspectionPerationTaskRead.fromJson(
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
          : Input$MstrInspectionOperationTaskCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => fromJson$Enum$MstrInspectionOperationTasksOrderBy(
              (e as String),
            ),
          )
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
    return Variables$Query$EquipmentInspectionPerationTaskRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrInspectionOperationTaskCondition? get condition =>
      (_$data['condition'] as Input$MstrInspectionOperationTaskCondition?);

  List<Enum$MstrInspectionOperationTasksOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrInspectionOperationTasksOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrInspectionOperationTasksOrderBy(e))
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

  CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead<
    Variables$Query$EquipmentInspectionPerationTaskRead
  >
  get copyWith => CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EquipmentInspectionPerationTaskRead ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead<
  TRes
> {
  factory CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead(
    Variables$Query$EquipmentInspectionPerationTaskRead instance,
    TRes Function(Variables$Query$EquipmentInspectionPerationTaskRead) then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskRead;

  factory CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrInspectionOperationTaskCondition? condition,
    List<Enum$MstrInspectionOperationTasksOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskRead<TRes>
    implements
        CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead<TRes> {
  _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskRead(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionPerationTaskRead _instance;

  final TRes Function(Variables$Query$EquipmentInspectionPerationTaskRead)
  _then;

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
    Variables$Query$EquipmentInspectionPerationTaskRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrInspectionOperationTaskCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrInspectionOperationTasksOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskRead<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionPerationTaskRead<TRes> {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskRead(
    this._res,
  );

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrInspectionOperationTaskCondition? condition,
    List<Enum$MstrInspectionOperationTasksOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$EquipmentInspectionPerationTaskRead {
  Query$EquipmentInspectionPerationTaskRead({
    this.allMstrInspectionOperationTasks,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionPerationTaskRead.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$allMstrInspectionOperationTasks =
        json['allMstrInspectionOperationTasks'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead(
      allMstrInspectionOperationTasks: l$allMstrInspectionOperationTasks == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks.fromJson(
              (l$allMstrInspectionOperationTasks as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks?
  allMstrInspectionOperationTasks;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrInspectionOperationTasks = allMstrInspectionOperationTasks;
    _resultData['allMstrInspectionOperationTasks'] =
        l$allMstrInspectionOperationTasks?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrInspectionOperationTasks = allMstrInspectionOperationTasks;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrInspectionOperationTasks, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EquipmentInspectionPerationTaskRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrInspectionOperationTasks = allMstrInspectionOperationTasks;
    final lOther$allMstrInspectionOperationTasks =
        other.allMstrInspectionOperationTasks;
    if (l$allMstrInspectionOperationTasks !=
        lOther$allMstrInspectionOperationTasks) {
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead
    on Query$EquipmentInspectionPerationTaskRead {
  CopyWith$Query$EquipmentInspectionPerationTaskRead<
    Query$EquipmentInspectionPerationTaskRead
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead<TRes> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead(
    Query$EquipmentInspectionPerationTaskRead instance,
    TRes Function(Query$EquipmentInspectionPerationTaskRead) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead.stub(TRes res) =
      _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead;

  TRes call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks?
    allMstrInspectionOperationTasks,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
    TRes
  >
  get allMstrInspectionOperationTasks;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead<TRes>
    implements CopyWith$Query$EquipmentInspectionPerationTaskRead<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead _instance;

  final TRes Function(Query$EquipmentInspectionPerationTaskRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrInspectionOperationTasks = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead(
      allMstrInspectionOperationTasks:
          allMstrInspectionOperationTasks == _undefined
          ? _instance.allMstrInspectionOperationTasks
          : (allMstrInspectionOperationTasks
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
    TRes
  >
  get allMstrInspectionOperationTasks {
    final local$allMstrInspectionOperationTasks =
        _instance.allMstrInspectionOperationTasks;
    return local$allMstrInspectionOperationTasks == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
            local$allMstrInspectionOperationTasks,
            (e) => call(allMstrInspectionOperationTasks: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead<TRes>
    implements CopyWith$Query$EquipmentInspectionPerationTaskRead<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead(this._res);

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks?
    allMstrInspectionOperationTasks,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
    TRes
  >
  get allMstrInspectionOperationTasks =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks.stub(
        _res,
      );
}

const documentNodeQueryEquipmentInspectionPerationTaskRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EquipmentInspectionPerationTaskRead'),
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
            name: NameNode(value: 'MstrInspectionOperationTaskCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrInspectionOperationTasksOrderBy'),
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
            name: NameNode(value: 'allMstrInspectionOperationTasks'),
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
                        name: NameNode(value: 'mstrInspectionOperationTaskId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrInspectionOperationId'),
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
                        name: NameNode(value: 'mstrInspectionId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'commencementDate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'timeInterval'),
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
                              'mstrInspectionOperationByMstrInspectionOperationId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(
                                value: 'mstrInspectionOperationId',
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
                        name: NameNode(
                          value: 'mstrInspectionByMstrInspectionId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrInspectionId'),
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
                              name: NameNode(value: 'externalInspection'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(
                                value: 'mstrStakeholderByExternalInspection',
                              ),
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
                              name: NameNode(value: 'mstrItemId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'mstrItemByMstrItemId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(
                                selections: [
                                  FieldNode(
                                    name: NameNode(value: 'mstrItemId'),
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
Query$EquipmentInspectionPerationTaskRead
_parserFn$Query$EquipmentInspectionPerationTaskRead(
  Map<String, dynamic> data,
) => Query$EquipmentInspectionPerationTaskRead.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionPerationTaskRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionPerationTaskRead?,
    );

class Options$Query$EquipmentInspectionPerationTaskRead
    extends graphql.QueryOptions<Query$EquipmentInspectionPerationTaskRead> {
  Options$Query$EquipmentInspectionPerationTaskRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionPerationTaskRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionPerationTaskRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionPerationTaskRead? onComplete,
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
                     : _parserFn$Query$EquipmentInspectionPerationTaskRead(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryEquipmentInspectionPerationTaskRead,
         parserFn: _parserFn$Query$EquipmentInspectionPerationTaskRead,
       );

  final OnQueryComplete$Query$EquipmentInspectionPerationTaskRead?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionPerationTaskRead
    extends
        graphql.WatchQueryOptions<Query$EquipmentInspectionPerationTaskRead> {
  WatchOptions$Query$EquipmentInspectionPerationTaskRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionPerationTaskRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionPerationTaskRead? typedOptimisticResult,
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
         document: documentNodeQueryEquipmentInspectionPerationTaskRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$EquipmentInspectionPerationTaskRead,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionPerationTaskRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionPerationTaskRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionPerationTaskRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryEquipmentInspectionPerationTaskRead,
       );
}

extension ClientExtension$Query$EquipmentInspectionPerationTaskRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$EquipmentInspectionPerationTaskRead>>
  query$EquipmentInspectionPerationTaskRead(
    Options$Query$EquipmentInspectionPerationTaskRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$EquipmentInspectionPerationTaskRead>
  watchQuery$EquipmentInspectionPerationTaskRead(
    WatchOptions$Query$EquipmentInspectionPerationTaskRead options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionPerationTaskRead({
    required Query$EquipmentInspectionPerationTaskRead data,
    required Variables$Query$EquipmentInspectionPerationTaskRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryEquipmentInspectionPerationTaskRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionPerationTaskRead?
  readQuery$EquipmentInspectionPerationTaskRead({
    required Variables$Query$EquipmentInspectionPerationTaskRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryEquipmentInspectionPerationTaskRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionPerationTaskRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$EquipmentInspectionPerationTaskRead>
useQuery$EquipmentInspectionPerationTaskRead(
  Options$Query$EquipmentInspectionPerationTaskRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$EquipmentInspectionPerationTaskRead>
useWatchQuery$EquipmentInspectionPerationTaskRead(
  WatchOptions$Query$EquipmentInspectionPerationTaskRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionPerationTaskRead$Widget
    extends graphql_flutter.Query<Query$EquipmentInspectionPerationTaskRead> {
  Query$EquipmentInspectionPerationTaskRead$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionPerationTaskRead options,
    required graphql_flutter.QueryBuilder<
      Query$EquipmentInspectionPerationTaskRead
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrInspectionOperationTasksConnection',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo
  pageInfo;

  final List<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks
    on Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks;

  TRes call({
    int? totalCount,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo?
    pageInfo,
    List<
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
          Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
          Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo?
    pageInfo,
    List<
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
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

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes({
    required this.mstrInspectionOperationTaskId,
    required this.mstrInspectionOperationId,
    this.sequence,
    required this.mstrInspectionId,
    this.commencementDate,
    required this.timeInterval,
    this.remarks,
    this.updateAt,
    this.remove,
    this.mstrInspectionOperationByMstrInspectionOperationId,
    this.mstrInspectionByMstrInspectionId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrInspectionOperationTask',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationTaskId =
        json['mstrInspectionOperationTaskId'];
    final l$mstrInspectionOperationId = json['mstrInspectionOperationId'];
    final l$sequence = json['sequence'];
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$commencementDate = json['commencementDate'];
    final l$timeInterval = json['timeInterval'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrInspectionOperationByMstrInspectionOperationId =
        json['mstrInspectionOperationByMstrInspectionOperationId'];
    final l$mstrInspectionByMstrInspectionId =
        json['mstrInspectionByMstrInspectionId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
      mstrInspectionOperationTaskId:
          (l$mstrInspectionOperationTaskId as String),
      mstrInspectionOperationId: (l$mstrInspectionOperationId as String),
      sequence: (l$sequence as int?),
      mstrInspectionId: (l$mstrInspectionId as String),
      commencementDate: (l$commencementDate as String?),
      timeInterval:
          Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval.fromJson(
            (l$timeInterval as Map<String, dynamic>),
          ),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrInspectionOperationByMstrInspectionOperationId:
          l$mstrInspectionOperationByMstrInspectionOperationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId.fromJson(
              (l$mstrInspectionOperationByMstrInspectionOperationId
                  as Map<String, dynamic>),
            ),
      mstrInspectionByMstrInspectionId:
          l$mstrInspectionByMstrInspectionId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId.fromJson(
              (l$mstrInspectionByMstrInspectionId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationTaskId;

  final String mstrInspectionOperationId;

  final int? sequence;

  final String mstrInspectionId;

  final String? commencementDate;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval
  timeInterval;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId?
  mstrInspectionOperationByMstrInspectionOperationId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId?
  mstrInspectionByMstrInspectionId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    _resultData['mstrInspectionOperationTaskId'] =
        l$mstrInspectionOperationTaskId;
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    _resultData['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    final l$sequence = sequence;
    _resultData['sequence'] = l$sequence;
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$commencementDate = commencementDate;
    _resultData['commencementDate'] = l$commencementDate;
    final l$timeInterval = timeInterval;
    _resultData['timeInterval'] = l$timeInterval.toJson();
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrInspectionOperationByMstrInspectionOperationId =
        mstrInspectionOperationByMstrInspectionOperationId;
    _resultData['mstrInspectionOperationByMstrInspectionOperationId'] =
        l$mstrInspectionOperationByMstrInspectionOperationId?.toJson();
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    _resultData['mstrInspectionByMstrInspectionId'] =
        l$mstrInspectionByMstrInspectionId?.toJson();
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
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$sequence = sequence;
    final l$mstrInspectionId = mstrInspectionId;
    final l$commencementDate = commencementDate;
    final l$timeInterval = timeInterval;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrInspectionOperationByMstrInspectionOperationId =
        mstrInspectionOperationByMstrInspectionOperationId;
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationTaskId,
      l$mstrInspectionOperationId,
      l$sequence,
      l$mstrInspectionId,
      l$commencementDate,
      l$timeInterval,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrInspectionOperationByMstrInspectionOperationId,
      l$mstrInspectionByMstrInspectionId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationTaskId = mstrInspectionOperationTaskId;
    final lOther$mstrInspectionOperationTaskId =
        other.mstrInspectionOperationTaskId;
    if (l$mstrInspectionOperationTaskId !=
        lOther$mstrInspectionOperationTaskId) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
      return false;
    }
    final l$sequence = sequence;
    final lOther$sequence = other.sequence;
    if (l$sequence != lOther$sequence) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
      return false;
    }
    final l$commencementDate = commencementDate;
    final lOther$commencementDate = other.commencementDate;
    if (l$commencementDate != lOther$commencementDate) {
      return false;
    }
    final l$timeInterval = timeInterval;
    final lOther$timeInterval = other.timeInterval;
    if (l$timeInterval != lOther$timeInterval) {
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
    final l$mstrInspectionOperationByMstrInspectionOperationId =
        mstrInspectionOperationByMstrInspectionOperationId;
    final lOther$mstrInspectionOperationByMstrInspectionOperationId =
        other.mstrInspectionOperationByMstrInspectionOperationId;
    if (l$mstrInspectionOperationByMstrInspectionOperationId !=
        lOther$mstrInspectionOperationByMstrInspectionOperationId) {
      return false;
    }
    final l$mstrInspectionByMstrInspectionId = mstrInspectionByMstrInspectionId;
    final lOther$mstrInspectionByMstrInspectionId =
        other.mstrInspectionByMstrInspectionId;
    if (l$mstrInspectionByMstrInspectionId !=
        lOther$mstrInspectionByMstrInspectionId) {
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes;

  TRes call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    int? sequence,
    String? mstrInspectionId,
    String? commencementDate,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval?
    timeInterval,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId?
    mstrInspectionOperationByMstrInspectionOperationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId?
    mstrInspectionByMstrInspectionId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
    TRes
  >
  get timeInterval;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationByMstrInspectionOperationId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationTaskId = _undefined,
    Object? mstrInspectionOperationId = _undefined,
    Object? sequence = _undefined,
    Object? mstrInspectionId = _undefined,
    Object? commencementDate = _undefined,
    Object? timeInterval = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrInspectionOperationByMstrInspectionOperationId = _undefined,
    Object? mstrInspectionByMstrInspectionId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
      mstrInspectionOperationTaskId:
          mstrInspectionOperationTaskId == _undefined ||
              mstrInspectionOperationTaskId == null
          ? _instance.mstrInspectionOperationTaskId
          : (mstrInspectionOperationTaskId as String),
      mstrInspectionOperationId:
          mstrInspectionOperationId == _undefined ||
              mstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationId
          : (mstrInspectionOperationId as String),
      sequence: sequence == _undefined
          ? _instance.sequence
          : (sequence as int?),
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      commencementDate: commencementDate == _undefined
          ? _instance.commencementDate
          : (commencementDate as String?),
      timeInterval: timeInterval == _undefined || timeInterval == null
          ? _instance.timeInterval
          : (timeInterval
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrInspectionOperationByMstrInspectionOperationId:
          mstrInspectionOperationByMstrInspectionOperationId == _undefined
          ? _instance.mstrInspectionOperationByMstrInspectionOperationId
          : (mstrInspectionOperationByMstrInspectionOperationId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId?),
      mstrInspectionByMstrInspectionId:
          mstrInspectionByMstrInspectionId == _undefined
          ? _instance.mstrInspectionByMstrInspectionId
          : (mstrInspectionByMstrInspectionId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
    TRes
  >
  get timeInterval {
    final local$timeInterval = _instance.timeInterval;
    return CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
      local$timeInterval,
      (e) => call(timeInterval: e),
    );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationByMstrInspectionOperationId {
    final local$mstrInspectionOperationByMstrInspectionOperationId =
        _instance.mstrInspectionOperationByMstrInspectionOperationId;
    return local$mstrInspectionOperationByMstrInspectionOperationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
            local$mstrInspectionOperationByMstrInspectionOperationId,
            (e) => call(mstrInspectionOperationByMstrInspectionOperationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId {
    final local$mstrInspectionByMstrInspectionId =
        _instance.mstrInspectionByMstrInspectionId;
    return local$mstrInspectionByMstrInspectionId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
            local$mstrInspectionByMstrInspectionId,
            (e) => call(mstrInspectionByMstrInspectionId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationTaskId,
    String? mstrInspectionOperationId,
    int? sequence,
    String? mstrInspectionId,
    String? commencementDate,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval?
    timeInterval,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId?
    mstrInspectionOperationByMstrInspectionOperationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId?
    mstrInspectionByMstrInspectionId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
    TRes
  >
  get timeInterval =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationByMstrInspectionOperationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
    TRes
  >
  get mstrInspectionByMstrInspectionId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval({
    this.seconds,
    this.minutes,
    this.hours,
    this.days,
    this.months,
    this.years,
    this.$__typename = 'Interval',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$seconds = json['seconds'];
    final l$minutes = json['minutes'];
    final l$hours = json['hours'];
    final l$days = json['days'];
    final l$months = json['months'];
    final l$years = json['years'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval;

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

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval,
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
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
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

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$timeInterval(
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

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId({
    required this.mstrInspectionOperationId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrInspectionOperation',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationId = json['mstrInspectionOperationId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
      mstrInspectionOperationId: (l$mstrInspectionOperationId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationId;

  final String code;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    _resultData['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
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
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationId,
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final lOther$mstrInspectionOperationId = other.mstrInspectionOperationId;
    if (l$mstrInspectionOperationId != lOther$mstrInspectionOperationId) {
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId;

  TRes call({
    String? mstrInspectionOperationId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
      mstrInspectionOperationId:
          mstrInspectionOperationId == _undefined ||
              mstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationId
          : (mstrInspectionOperationId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionOperationByMstrInspectionOperationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId({
    required this.mstrInspectionId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.externalInspection,
    this.mstrStakeholderByExternalInspection,
    required this.mstrItemId,
    this.mstrItemByMstrItemId,
    this.$__typename = 'MstrInspection',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionId = json['mstrInspectionId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$externalInspection = json['externalInspection'];
    final l$mstrStakeholderByExternalInspection =
        json['mstrStakeholderByExternalInspection'];
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
      mstrInspectionId: (l$mstrInspectionId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      externalInspection: (l$externalInspection as String?),
      mstrStakeholderByExternalInspection:
          l$mstrStakeholderByExternalInspection == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection.fromJson(
              (l$mstrStakeholderByExternalInspection as Map<String, dynamic>),
            ),
      mstrItemId: (l$mstrItemId as String),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionId;

  final String code;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String? externalInspection;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection?
  mstrStakeholderByExternalInspection;

  final String mstrItemId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionId = mstrInspectionId;
    _resultData['mstrInspectionId'] = l$mstrInspectionId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$externalInspection = externalInspection;
    _resultData['externalInspection'] = l$externalInspection;
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    _resultData['mstrStakeholderByExternalInspection'] =
        l$mstrStakeholderByExternalInspection?.toJson();
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrInspectionId = mstrInspectionId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$externalInspection = externalInspection;
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    final l$mstrItemId = mstrItemId;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionId,
      l$code,
      l$sharedAppellationBySharedAppellationsId,
      l$externalInspection,
      l$mstrStakeholderByExternalInspection,
      l$mstrItemId,
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrInspectionId = mstrInspectionId;
    final lOther$mstrInspectionId = other.mstrInspectionId;
    if (l$mstrInspectionId != lOther$mstrInspectionId) {
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
    final l$externalInspection = externalInspection;
    final lOther$externalInspection = other.externalInspection;
    if (l$externalInspection != lOther$externalInspection) {
      return false;
    }
    final l$mstrStakeholderByExternalInspection =
        mstrStakeholderByExternalInspection;
    final lOther$mstrStakeholderByExternalInspection =
        other.mstrStakeholderByExternalInspection;
    if (l$mstrStakeholderByExternalInspection !=
        lOther$mstrStakeholderByExternalInspection) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId;

  TRes call({
    String? mstrInspectionId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? externalInspection,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection?
    mstrStakeholderByExternalInspection,
    String? mstrItemId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? externalInspection = _undefined,
    Object? mstrStakeholderByExternalInspection = _undefined,
    Object? mstrItemId = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
      mstrInspectionId:
          mstrInspectionId == _undefined || mstrInspectionId == null
          ? _instance.mstrInspectionId
          : (mstrInspectionId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId?),
      externalInspection: externalInspection == _undefined
          ? _instance.externalInspection
          : (externalInspection as String?),
      mstrStakeholderByExternalInspection:
          mstrStakeholderByExternalInspection == _undefined
          ? _instance.mstrStakeholderByExternalInspection
          : (mstrStakeholderByExternalInspection
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection?),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection {
    final local$mstrStakeholderByExternalInspection =
        _instance.mstrStakeholderByExternalInspection;
    return local$mstrStakeholderByExternalInspection == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
            local$mstrStakeholderByExternalInspection,
            (e) => call(mstrStakeholderByExternalInspection: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? externalInspection,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection?
    mstrStakeholderByExternalInspection,
    String? mstrItemId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
    TRes
  >
  get mstrStakeholderByExternalInspection =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection({
    required this.mstrStakeholderId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrStakeholder',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrStakeholderId = json['mstrStakeholderId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
      mstrStakeholderId: (l$mstrStakeholderId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrStakeholderId;

  final String code;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection;

  TRes call({
    String? mstrStakeholderId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrStakeholderId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
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
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection(
    this._res,
  );

  TRes _res;

  call({
    String? mstrStakeholderId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrStakeholderByExternalInspection$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId({
    required this.mstrItemId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
      mstrItemId: (l$mstrItemId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String code;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
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
    final l$mstrItemId = mstrItemId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId;

  TRes call({
    String? mstrItemId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    String? code,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$mstrInspectionByMstrInspectionId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskRead$allMstrInspectionOperationTasks$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation {
  factory Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation._(
    {r'sharedAppellationsId': sharedAppellationsId},
  );

  Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation._(
    this._$data,
  );

  factory Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation._(
      result$data,
    );
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
    Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    instance,
    TRes Function(
      Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation,
    )
    then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation;

  factory CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
          TRes
        > {
  _CopyWithImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
  _instance;

  final TRes Function(
    Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
          TRes
        > {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$EquipmentInspectionPerationTaskReadUpdaterAppellation {
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$EquipmentInspectionPerationTaskReadUpdaterAppellation ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    on Query$EquipmentInspectionPerationTaskReadUpdaterAppellation {
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation instance,
    TRes Function(Query$EquipmentInspectionPerationTaskReadUpdaterAppellation)
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation;

  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation;

  TRes call({
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation =
    DocumentNode(
      definitions: [
        OperationDefinitionNode(
          type: OperationType.query,
          name: NameNode(
            value: 'EquipmentInspectionPerationTaskReadUpdaterAppellation',
          ),
          variableDefinitions: [
            VariableDefinitionNode(
              variable: VariableNode(
                name: NameNode(value: 'sharedAppellationsId'),
              ),
              type: NamedTypeNode(
                name: NameNode(value: 'UUID'),
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
                name: NameNode(
                  value: 'sharedAppellationBySharedAppellationsId',
                ),
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
Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
_parserFn$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?,
    );

class Options$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    extends
        graphql.QueryOptions<
          Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
        > {
  Options$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?
    typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?
    onComplete,
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
                     : _parserFn$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document:
             documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation,
         parserFn:
             _parserFn$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<
          Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
        > {
  WatchOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?
    typedOptimisticResult,
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
         document:
             documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn:
             _parserFn$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document:
             documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<
    graphql.QueryResult<
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    >
  >
  query$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    Options$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
  >
  watchQuery$EquipmentInspectionPerationTaskReadUpdaterAppellation(
    WatchOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    required Query$EquipmentInspectionPerationTaskReadUpdaterAppellation data,
    required Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document:
            documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation?
  readQuery$EquipmentInspectionPerationTaskReadUpdaterAppellation({
    required Variables$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document:
              documentNodeQueryEquipmentInspectionPerationTaskReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionPerationTaskReadUpdaterAppellation.fromJson(
            result,
          );
  }
}

graphql_flutter.QueryHookResult<
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
>
useQuery$EquipmentInspectionPerationTaskReadUpdaterAppellation(
  Options$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
>
useWatchQuery$EquipmentInspectionPerationTaskReadUpdaterAppellation(
  WatchOptions$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
  options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$Widget
    extends
        graphql_flutter.Query<
          Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
        > {
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    options,
    required graphql_flutter.QueryBuilder<
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionPerationTaskReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
