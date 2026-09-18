import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$EquipmentInspectionOperationRead {
  factory Variables$Query$EquipmentInspectionOperationRead({
    required int first,
    int? offset,
    Input$MstrInspectionOperationCondition? condition,
    List<Enum$MstrInspectionOperationsOrderBy>? orderBy,
    required bool ja,
    required bool en,
    bool? removed,
  }) => Variables$Query$EquipmentInspectionOperationRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$EquipmentInspectionOperationRead._(this._$data);

  factory Variables$Query$EquipmentInspectionOperationRead.fromJson(
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
          : Input$MstrInspectionOperationCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
            (e) => fromJson$Enum$MstrInspectionOperationsOrderBy((e as String)),
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
    return Variables$Query$EquipmentInspectionOperationRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrInspectionOperationCondition? get condition =>
      (_$data['condition'] as Input$MstrInspectionOperationCondition?);

  List<Enum$MstrInspectionOperationsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrInspectionOperationsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrInspectionOperationsOrderBy(e))
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

  CopyWith$Variables$Query$EquipmentInspectionOperationRead<
    Variables$Query$EquipmentInspectionOperationRead
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentInspectionOperationRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$EquipmentInspectionOperationRead ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionOperationRead<TRes> {
  factory CopyWith$Variables$Query$EquipmentInspectionOperationRead(
    Variables$Query$EquipmentInspectionOperationRead instance,
    TRes Function(Variables$Query$EquipmentInspectionOperationRead) then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionOperationRead;

  factory CopyWith$Variables$Query$EquipmentInspectionOperationRead.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrInspectionOperationCondition? condition,
    List<Enum$MstrInspectionOperationsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionOperationRead<TRes>
    implements CopyWith$Variables$Query$EquipmentInspectionOperationRead<TRes> {
  _CopyWithImpl$Variables$Query$EquipmentInspectionOperationRead(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionOperationRead _instance;

  final TRes Function(Variables$Query$EquipmentInspectionOperationRead) _then;

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
    Variables$Query$EquipmentInspectionOperationRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrInspectionOperationCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrInspectionOperationsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationRead<TRes>
    implements CopyWith$Variables$Query$EquipmentInspectionOperationRead<TRes> {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrInspectionOperationCondition? condition,
    List<Enum$MstrInspectionOperationsOrderBy>? orderBy,
    bool? ja,
    bool? en,
    bool? removed,
  }) => _res;
}

class Query$EquipmentInspectionOperationRead {
  Query$EquipmentInspectionOperationRead({
    this.allMstrInspectionOperations,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionOperationRead.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$allMstrInspectionOperations = json['allMstrInspectionOperations'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead(
      allMstrInspectionOperations: l$allMstrInspectionOperations == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations.fromJson(
              (l$allMstrInspectionOperations as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations?
  allMstrInspectionOperations;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrInspectionOperations = allMstrInspectionOperations;
    _resultData['allMstrInspectionOperations'] = l$allMstrInspectionOperations
        ?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrInspectionOperations = allMstrInspectionOperations;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrInspectionOperations, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$EquipmentInspectionOperationRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrInspectionOperations = allMstrInspectionOperations;
    final lOther$allMstrInspectionOperations =
        other.allMstrInspectionOperations;
    if (l$allMstrInspectionOperations != lOther$allMstrInspectionOperations) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$EquipmentInspectionOperationRead
    on Query$EquipmentInspectionOperationRead {
  CopyWith$Query$EquipmentInspectionOperationRead<
    Query$EquipmentInspectionOperationRead
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead(this, (i) => i);
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead<TRes> {
  factory CopyWith$Query$EquipmentInspectionOperationRead(
    Query$EquipmentInspectionOperationRead instance,
    TRes Function(Query$EquipmentInspectionOperationRead) then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead;

  factory CopyWith$Query$EquipmentInspectionOperationRead.stub(TRes res) =
      _CopyWithStubImpl$Query$EquipmentInspectionOperationRead;

  TRes call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations?
    allMstrInspectionOperations,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
    TRes
  >
  get allMstrInspectionOperations;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead<TRes>
    implements CopyWith$Query$EquipmentInspectionOperationRead<TRes> {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead _instance;

  final TRes Function(Query$EquipmentInspectionOperationRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrInspectionOperations = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead(
      allMstrInspectionOperations: allMstrInspectionOperations == _undefined
          ? _instance.allMstrInspectionOperations
          : (allMstrInspectionOperations
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
    TRes
  >
  get allMstrInspectionOperations {
    final local$allMstrInspectionOperations =
        _instance.allMstrInspectionOperations;
    return local$allMstrInspectionOperations == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
            local$allMstrInspectionOperations,
            (e) => call(allMstrInspectionOperations: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead<TRes>
    implements CopyWith$Query$EquipmentInspectionOperationRead<TRes> {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead(this._res);

  TRes _res;

  call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations?
    allMstrInspectionOperations,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
    TRes
  >
  get allMstrInspectionOperations =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations.stub(
        _res,
      );
}

const documentNodeQueryEquipmentInspectionOperationRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EquipmentInspectionOperationRead'),
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
            name: NameNode(value: 'MstrInspectionOperationCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrInspectionOperationsOrderBy'),
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
            name: NameNode(value: 'allMstrInspectionOperations'),
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
                        name: NameNode(value: 'mstrInspectionOperationId'),
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
                        name: NameNode(value: 'mstrEquipmentId'),
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
                        name: NameNode(value: 'mstrEquipmentByMstrEquipmentId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrEquipmentId'),
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
                              'mstrInspectionOperationTasksByMstrInspectionOperationId',
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
Query$EquipmentInspectionOperationRead
_parserFn$Query$EquipmentInspectionOperationRead(Map<String, dynamic> data) =>
    Query$EquipmentInspectionOperationRead.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionOperationRead =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionOperationRead?,
    );

class Options$Query$EquipmentInspectionOperationRead
    extends graphql.QueryOptions<Query$EquipmentInspectionOperationRead> {
  Options$Query$EquipmentInspectionOperationRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionOperationRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionOperationRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionOperationRead? onComplete,
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
                     : _parserFn$Query$EquipmentInspectionOperationRead(data),
               ),
         onError: onError,
         document: documentNodeQueryEquipmentInspectionOperationRead,
         parserFn: _parserFn$Query$EquipmentInspectionOperationRead,
       );

  final OnQueryComplete$Query$EquipmentInspectionOperationRead?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionOperationRead
    extends graphql.WatchQueryOptions<Query$EquipmentInspectionOperationRead> {
  WatchOptions$Query$EquipmentInspectionOperationRead({
    String? operationName,
    required Variables$Query$EquipmentInspectionOperationRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionOperationRead? typedOptimisticResult,
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
         document: documentNodeQueryEquipmentInspectionOperationRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$EquipmentInspectionOperationRead,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionOperationRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionOperationRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionOperationRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryEquipmentInspectionOperationRead,
       );
}

extension ClientExtension$Query$EquipmentInspectionOperationRead
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$EquipmentInspectionOperationRead>>
  query$EquipmentInspectionOperationRead(
    Options$Query$EquipmentInspectionOperationRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$EquipmentInspectionOperationRead>
  watchQuery$EquipmentInspectionOperationRead(
    WatchOptions$Query$EquipmentInspectionOperationRead options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionOperationRead({
    required Query$EquipmentInspectionOperationRead data,
    required Variables$Query$EquipmentInspectionOperationRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryEquipmentInspectionOperationRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionOperationRead?
  readQuery$EquipmentInspectionOperationRead({
    required Variables$Query$EquipmentInspectionOperationRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryEquipmentInspectionOperationRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionOperationRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$EquipmentInspectionOperationRead>
useQuery$EquipmentInspectionOperationRead(
  Options$Query$EquipmentInspectionOperationRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$EquipmentInspectionOperationRead>
useWatchQuery$EquipmentInspectionOperationRead(
  WatchOptions$Query$EquipmentInspectionOperationRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionOperationRead$Widget
    extends graphql_flutter.Query<Query$EquipmentInspectionOperationRead> {
  Query$EquipmentInspectionOperationRead$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionOperationRead options,
    required graphql_flutter.QueryBuilder<
      Query$EquipmentInspectionOperationRead
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrInspectionOperationsConnection',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo
  pageInfo;

  final List<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations
    on Query$EquipmentInspectionOperationRead$allMstrInspectionOperations {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations;

  TRes call({
    int? totalCount,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo?
    pageInfo,
    List<
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
    >?
    nodes,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
    TRes
  >
  get pageInfo;
  TRes nodes(
    Iterable<
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
          Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
    TRes
  >
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
          Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations(
    this._res,
  );

  TRes _res;

  call({
    int? totalCount,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo?
    pageInfo,
    List<
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
    TRes
  >
  get pageInfo =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo
    on Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
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

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes({
    required this.mstrInspectionOperationId,
    required this.code,
    required this.mstrEquipmentId,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.sharedAppellationBySharedAppellationsId,
    this.mstrEquipmentByMstrEquipmentId,
    required this.mstrInspectionOperationTasksByMstrInspectionOperationId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrInspectionOperation',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrInspectionOperationId = json['mstrInspectionOperationId'];
    final l$code = json['code'];
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrEquipmentByMstrEquipmentId =
        json['mstrEquipmentByMstrEquipmentId'];
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        json['mstrInspectionOperationTasksByMstrInspectionOperationId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
      mstrInspectionOperationId: (l$mstrInspectionOperationId as String),
      code: (l$code as String),
      mstrEquipmentId: (l$mstrEquipmentId as String),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrEquipmentByMstrEquipmentId: l$mstrEquipmentByMstrEquipmentId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId.fromJson(
              (l$mstrEquipmentByMstrEquipmentId as Map<String, dynamic>),
            ),
      mstrInspectionOperationTasksByMstrInspectionOperationId:
          Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId.fromJson(
            (l$mstrInspectionOperationTasksByMstrInspectionOperationId
                as Map<String, dynamic>),
          ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrInspectionOperationId;

  final String code;

  final String mstrEquipmentId;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId?
  mstrEquipmentByMstrEquipmentId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId
  mstrInspectionOperationTasksByMstrInspectionOperationId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    _resultData['mstrInspectionOperationId'] = l$mstrInspectionOperationId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
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
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    _resultData['mstrEquipmentByMstrEquipmentId'] =
        l$mstrEquipmentByMstrEquipmentId?.toJson();
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    _resultData['mstrInspectionOperationTasksByMstrInspectionOperationId'] =
        l$mstrInspectionOperationTasksByMstrInspectionOperationId.toJson();
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
    final l$mstrInspectionOperationId = mstrInspectionOperationId;
    final l$code = code;
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrInspectionOperationId,
      l$code,
      l$mstrEquipmentId,
      l$symbol,
      l$remarks,
      l$updateAt,
      l$remove,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrEquipmentByMstrEquipmentId,
      l$mstrInspectionOperationTasksByMstrInspectionOperationId,
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes ||
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
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
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
    final l$mstrEquipmentByMstrEquipmentId = mstrEquipmentByMstrEquipmentId;
    final lOther$mstrEquipmentByMstrEquipmentId =
        other.mstrEquipmentByMstrEquipmentId;
    if (l$mstrEquipmentByMstrEquipmentId !=
        lOther$mstrEquipmentByMstrEquipmentId) {
      return false;
    }
    final l$mstrInspectionOperationTasksByMstrInspectionOperationId =
        mstrInspectionOperationTasksByMstrInspectionOperationId;
    final lOther$mstrInspectionOperationTasksByMstrInspectionOperationId =
        other.mstrInspectionOperationTasksByMstrInspectionOperationId;
    if (l$mstrInspectionOperationTasksByMstrInspectionOperationId !=
        lOther$mstrInspectionOperationTasksByMstrInspectionOperationId) {
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
    on Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes;

  TRes call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId?
    mstrEquipmentByMstrEquipmentId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId?
    mstrInspectionOperationTasksByMstrInspectionOperationId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId;
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId;
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrInspectionOperationId = _undefined,
    Object? code = _undefined,
    Object? mstrEquipmentId = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrEquipmentByMstrEquipmentId = _undefined,
    Object? mstrInspectionOperationTasksByMstrInspectionOperationId =
        _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
      mstrInspectionOperationId:
          mstrInspectionOperationId == _undefined ||
              mstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationId
          : (mstrInspectionOperationId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
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
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId?),
      mstrEquipmentByMstrEquipmentId:
          mstrEquipmentByMstrEquipmentId == _undefined
          ? _instance.mstrEquipmentByMstrEquipmentId
          : (mstrEquipmentByMstrEquipmentId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId?),
      mstrInspectionOperationTasksByMstrInspectionOperationId:
          mstrInspectionOperationTasksByMstrInspectionOperationId ==
                  _undefined ||
              mstrInspectionOperationTasksByMstrInspectionOperationId == null
          ? _instance.mstrInspectionOperationTasksByMstrInspectionOperationId
          : (mstrInspectionOperationTasksByMstrInspectionOperationId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId {
    final local$mstrEquipmentByMstrEquipmentId =
        _instance.mstrEquipmentByMstrEquipmentId;
    return local$mstrEquipmentByMstrEquipmentId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
            local$mstrEquipmentByMstrEquipmentId,
            (e) => call(mstrEquipmentByMstrEquipmentId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId {
    final local$mstrInspectionOperationTasksByMstrInspectionOperationId =
        _instance.mstrInspectionOperationTasksByMstrInspectionOperationId;
    return CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
      local$mstrInspectionOperationTasksByMstrInspectionOperationId,
      (e) => call(mstrInspectionOperationTasksByMstrInspectionOperationId: e),
    );
  }

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrInspectionOperationId,
    String? code,
    String? mstrEquipmentId,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId?
    mstrEquipmentByMstrEquipmentId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId?
    mstrInspectionOperationTasksByMstrInspectionOperationId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
    TRes
  >
  get mstrEquipmentByMstrEquipmentId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
    TRes
  >
  get mstrInspectionOperationTasksByMstrInspectionOperationId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId({
    required this.mstrEquipmentId,
    this.mstrItemByMstrItemId,
    this.$__typename = 'MstrEquipment',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
      mstrEquipmentId: (l$mstrEquipmentId as String),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentId;

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentId,
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentId = mstrEquipmentId;
    final lOther$mstrEquipmentId = other.mstrEquipmentId;
    if (l$mstrEquipmentId != lOther$mstrEquipmentId) {
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId;

  TRes call({
    String? mstrEquipmentId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentId = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentId,
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItem',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId;

  TRes call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrEquipmentByMstrEquipmentId$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId({
    required this.totalCount,
    this.$__typename = 'MstrInspectionOperationTasksConnection',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId;

  TRes call({int? totalCount, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$mstrInspectionOperationTasksByMstrInspectionOperationId(
    this._res,
  );

  TRes _res;

  call({int? totalCount, String? $__typename}) => _res;
}

class Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    required this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationRead$allMstrInspectionOperations$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation {
  factory Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation._(
    this._$data,
  );

  factory Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation._(
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

  CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
    Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation instance,
    TRes Function(
      Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation,
    )
    then,
  ) = _CopyWithImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation;

  factory CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
          TRes
        > {
  _CopyWithImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
  _instance;

  final TRes Function(
    Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation<
          TRes
        > {
  _CopyWithStubImpl$Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$EquipmentInspectionOperationReadUpdaterAppellation {
  Query$EquipmentInspectionOperationReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$EquipmentInspectionOperationReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$EquipmentInspectionOperationReadUpdaterAppellation ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationReadUpdaterAppellation
    on Query$EquipmentInspectionOperationReadUpdaterAppellation {
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation<
    Query$EquipmentInspectionOperationReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    Query$EquipmentInspectionOperationReadUpdaterAppellation instance,
    TRes Function(Query$EquipmentInspectionOperationReadUpdaterAppellation)
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation;

  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation;

  TRes call({
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationReadUpdaterAppellation _instance;

  final TRes Function(Query$EquipmentInspectionOperationReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation =
    DocumentNode(
      definitions: [
        OperationDefinitionNode(
          type: OperationType.query,
          name: NameNode(
            value: 'EquipmentInspectionOperationReadUpdaterAppellation',
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
Query$EquipmentInspectionOperationReadUpdaterAppellation
_parserFn$Query$EquipmentInspectionOperationReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$EquipmentInspectionOperationReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$EquipmentInspectionOperationReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$EquipmentInspectionOperationReadUpdaterAppellation?,
    );

class Options$Query$EquipmentInspectionOperationReadUpdaterAppellation
    extends
        graphql.QueryOptions<
          Query$EquipmentInspectionOperationReadUpdaterAppellation
        > {
  Options$Query$EquipmentInspectionOperationReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionOperationReadUpdaterAppellation?
    typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$EquipmentInspectionOperationReadUpdaterAppellation?
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
                     : _parserFn$Query$EquipmentInspectionOperationReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document:
             documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation,
         parserFn:
             _parserFn$Query$EquipmentInspectionOperationReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$EquipmentInspectionOperationReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<
          Query$EquipmentInspectionOperationReadUpdaterAppellation
        > {
  WatchOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
    variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$EquipmentInspectionOperationReadUpdaterAppellation?
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
             documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn:
             _parserFn$Query$EquipmentInspectionOperationReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
    variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document:
             documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$EquipmentInspectionOperationReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<
    graphql.QueryResult<
      Query$EquipmentInspectionOperationReadUpdaterAppellation
    >
  >
  query$EquipmentInspectionOperationReadUpdaterAppellation(
    Options$Query$EquipmentInspectionOperationReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<
    Query$EquipmentInspectionOperationReadUpdaterAppellation
  >
  watchQuery$EquipmentInspectionOperationReadUpdaterAppellation(
    WatchOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation
    options,
  ) => this.watchQuery(options);

  void writeQuery$EquipmentInspectionOperationReadUpdaterAppellation({
    required Query$EquipmentInspectionOperationReadUpdaterAppellation data,
    required Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
    variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document:
            documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$EquipmentInspectionOperationReadUpdaterAppellation?
  readQuery$EquipmentInspectionOperationReadUpdaterAppellation({
    required Variables$Query$EquipmentInspectionOperationReadUpdaterAppellation
    variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document:
              documentNodeQueryEquipmentInspectionOperationReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$EquipmentInspectionOperationReadUpdaterAppellation.fromJson(
            result,
          );
  }
}

graphql_flutter.QueryHookResult<
  Query$EquipmentInspectionOperationReadUpdaterAppellation
>
useQuery$EquipmentInspectionOperationReadUpdaterAppellation(
  Options$Query$EquipmentInspectionOperationReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<
  Query$EquipmentInspectionOperationReadUpdaterAppellation
>
useWatchQuery$EquipmentInspectionOperationReadUpdaterAppellation(
  WatchOptions$Query$EquipmentInspectionOperationReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$EquipmentInspectionOperationReadUpdaterAppellation$Widget
    extends
        graphql_flutter.Query<
          Query$EquipmentInspectionOperationReadUpdaterAppellation
        > {
  Query$EquipmentInspectionOperationReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$EquipmentInspectionOperationReadUpdaterAppellation
    options,
    required graphql_flutter.QueryBuilder<
      Query$EquipmentInspectionOperationReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$EquipmentInspectionOperationReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
