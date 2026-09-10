import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$OrgResEquipmentRead {
  factory Variables$Query$OrgResEquipmentRead({
    required int first,
    int? offset,
    Input$MstrEquipmentCondition? condition,
    List<Enum$MstrEquipmentsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$OrgResEquipmentRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$OrgResEquipmentRead._(this._$data);

  factory Variables$Query$OrgResEquipmentRead.fromJson(
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
          : Input$MstrEquipmentCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrEquipmentsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$OrgResEquipmentRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrEquipmentCondition? get condition =>
      (_$data['condition'] as Input$MstrEquipmentCondition?);

  List<Enum$MstrEquipmentsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrEquipmentsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrEquipmentsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$OrgResEquipmentRead<
    Variables$Query$OrgResEquipmentRead
  >
  get copyWith => CopyWith$Variables$Query$OrgResEquipmentRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrgResEquipmentRead ||
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

abstract class CopyWith$Variables$Query$OrgResEquipmentRead<TRes> {
  factory CopyWith$Variables$Query$OrgResEquipmentRead(
    Variables$Query$OrgResEquipmentRead instance,
    TRes Function(Variables$Query$OrgResEquipmentRead) then,
  ) = _CopyWithImpl$Variables$Query$OrgResEquipmentRead;

  factory CopyWith$Variables$Query$OrgResEquipmentRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrgResEquipmentRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrEquipmentCondition? condition,
    List<Enum$MstrEquipmentsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$OrgResEquipmentRead<TRes>
    implements CopyWith$Variables$Query$OrgResEquipmentRead<TRes> {
  _CopyWithImpl$Variables$Query$OrgResEquipmentRead(this._instance, this._then);

  final Variables$Query$OrgResEquipmentRead _instance;

  final TRes Function(Variables$Query$OrgResEquipmentRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$OrgResEquipmentRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrEquipmentCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrEquipmentsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrgResEquipmentRead<TRes>
    implements CopyWith$Variables$Query$OrgResEquipmentRead<TRes> {
  _CopyWithStubImpl$Variables$Query$OrgResEquipmentRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrEquipmentCondition? condition,
    List<Enum$MstrEquipmentsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$OrgResEquipmentRead {
  Query$OrgResEquipmentRead({
    this.allMstrEquipments,
    this.$__typename = 'Query',
  });

  factory Query$OrgResEquipmentRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrEquipments = json['allMstrEquipments'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead(
      allMstrEquipments: l$allMstrEquipments == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments.fromJson(
              (l$allMstrEquipments as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrgResEquipmentRead$allMstrEquipments? allMstrEquipments;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrEquipments = allMstrEquipments;
    _resultData['allMstrEquipments'] = l$allMstrEquipments?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrEquipments = allMstrEquipments;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrEquipments, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrgResEquipmentRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrEquipments = allMstrEquipments;
    final lOther$allMstrEquipments = other.allMstrEquipments;
    if (l$allMstrEquipments != lOther$allMstrEquipments) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OrgResEquipmentRead
    on Query$OrgResEquipmentRead {
  CopyWith$Query$OrgResEquipmentRead<Query$OrgResEquipmentRead> get copyWith =>
      CopyWith$Query$OrgResEquipmentRead(this, (i) => i);
}

abstract class CopyWith$Query$OrgResEquipmentRead<TRes> {
  factory CopyWith$Query$OrgResEquipmentRead(
    Query$OrgResEquipmentRead instance,
    TRes Function(Query$OrgResEquipmentRead) then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead;

  factory CopyWith$Query$OrgResEquipmentRead.stub(TRes res) =
      _CopyWithStubImpl$Query$OrgResEquipmentRead;

  TRes call({
    Query$OrgResEquipmentRead$allMstrEquipments? allMstrEquipments,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes>
  get allMstrEquipments;
}

class _CopyWithImpl$Query$OrgResEquipmentRead<TRes>
    implements CopyWith$Query$OrgResEquipmentRead<TRes> {
  _CopyWithImpl$Query$OrgResEquipmentRead(this._instance, this._then);

  final Query$OrgResEquipmentRead _instance;

  final TRes Function(Query$OrgResEquipmentRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrEquipments = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead(
      allMstrEquipments: allMstrEquipments == _undefined
          ? _instance.allMstrEquipments
          : (allMstrEquipments as Query$OrgResEquipmentRead$allMstrEquipments?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes>
  get allMstrEquipments {
    final local$allMstrEquipments = _instance.allMstrEquipments;
    return local$allMstrEquipments == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments(
            local$allMstrEquipments,
            (e) => call(allMstrEquipments: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead<TRes>
    implements CopyWith$Query$OrgResEquipmentRead<TRes> {
  _CopyWithStubImpl$Query$OrgResEquipmentRead(this._res);

  TRes _res;

  call({
    Query$OrgResEquipmentRead$allMstrEquipments? allMstrEquipments,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes>
  get allMstrEquipments =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments.stub(_res);
}

const documentNodeQueryOrgResEquipmentRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrgResEquipmentRead'),
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
            name: NameNode(value: 'MstrEquipmentCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrEquipmentsOrderBy'),
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
            name: NameNode(value: 'allMstrEquipments'),
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
                        name: NameNode(value: 'mstrEquipmentId'),
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
                        name: NameNode(value: 'labelCode'),
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
                          value: 'mstrEquipmentKindByMstrEquipmentCategoryId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrEquipmentKindId'),
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
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
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
                                          name: NameNode(
                                            value: 'sharedDictionaryId',
                                          ),
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
                                value: 'mstrItemSizesByMstrItemId',
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
                                            value: 'mstrItemSizeId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(value: 'sizeValue'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null,
                                        ),
                                        FieldNode(
                                          name: NameNode(
                                            value:
                                                'mstrItemSizeKindByMstrItemSizeKindId',
                                          ),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: SelectionSetNode(
                                            selections: [
                                              FieldNode(
                                                name: NameNode(
                                                  value: 'mstrItemSizeKindId',
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
                        name: NameNode(value: 'mstrLocationByMstrLocationId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrLocationId'),
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
Query$OrgResEquipmentRead _parserFn$Query$OrgResEquipmentRead(
  Map<String, dynamic> data,
) => Query$OrgResEquipmentRead.fromJson(data);
typedef OnQueryComplete$Query$OrgResEquipmentRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$OrgResEquipmentRead?);

class Options$Query$OrgResEquipmentRead
    extends graphql.QueryOptions<Query$OrgResEquipmentRead> {
  Options$Query$OrgResEquipmentRead({
    String? operationName,
    required Variables$Query$OrgResEquipmentRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrgResEquipmentRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrgResEquipmentRead? onComplete,
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
                     : _parserFn$Query$OrgResEquipmentRead(data),
               ),
         onError: onError,
         document: documentNodeQueryOrgResEquipmentRead,
         parserFn: _parserFn$Query$OrgResEquipmentRead,
       );

  final OnQueryComplete$Query$OrgResEquipmentRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrgResEquipmentRead
    extends graphql.WatchQueryOptions<Query$OrgResEquipmentRead> {
  WatchOptions$Query$OrgResEquipmentRead({
    String? operationName,
    required Variables$Query$OrgResEquipmentRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrgResEquipmentRead? typedOptimisticResult,
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
         document: documentNodeQueryOrgResEquipmentRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrgResEquipmentRead,
       );
}

class FetchMoreOptions$Query$OrgResEquipmentRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrgResEquipmentRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrgResEquipmentRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrgResEquipmentRead,
       );
}

extension ClientExtension$Query$OrgResEquipmentRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrgResEquipmentRead>>
  query$OrgResEquipmentRead(Options$Query$OrgResEquipmentRead options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$OrgResEquipmentRead>
  watchQuery$OrgResEquipmentRead(
    WatchOptions$Query$OrgResEquipmentRead options,
  ) => this.watchQuery(options);

  void writeQuery$OrgResEquipmentRead({
    required Query$OrgResEquipmentRead data,
    required Variables$Query$OrgResEquipmentRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOrgResEquipmentRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrgResEquipmentRead? readQuery$OrgResEquipmentRead({
    required Variables$Query$OrgResEquipmentRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrgResEquipmentRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrgResEquipmentRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrgResEquipmentRead>
useQuery$OrgResEquipmentRead(Options$Query$OrgResEquipmentRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrgResEquipmentRead>
useWatchQuery$OrgResEquipmentRead(
  WatchOptions$Query$OrgResEquipmentRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrgResEquipmentRead$Widget
    extends graphql_flutter.Query<Query$OrgResEquipmentRead> {
  Query$OrgResEquipmentRead$Widget({
    widgets.Key? key,
    required Options$Query$OrgResEquipmentRead options,
    required graphql_flutter.QueryBuilder<Query$OrgResEquipmentRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrgResEquipmentRead$allMstrEquipments {
  Query$OrgResEquipmentRead$allMstrEquipments({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrEquipmentsConnection',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments(
      totalCount: (l$totalCount as int),
      pageInfo: Query$OrgResEquipmentRead$allMstrEquipments$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OrgResEquipmentRead$allMstrEquipments$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$OrgResEquipmentRead$allMstrEquipments$pageInfo pageInfo;

  final List<Query$OrgResEquipmentRead$allMstrEquipments$nodes?> nodes;

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
    if (other is! Query$OrgResEquipmentRead$allMstrEquipments ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments
    on Query$OrgResEquipmentRead$allMstrEquipments {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<
    Query$OrgResEquipmentRead$allMstrEquipments
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments(this, (i) => i);
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments(
    Query$OrgResEquipmentRead$allMstrEquipments instance,
    TRes Function(Query$OrgResEquipmentRead$allMstrEquipments) then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments.stub(TRes res) =
      _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments;

  TRes call({
    int? totalCount,
    Query$OrgResEquipmentRead$allMstrEquipments$pageInfo? pageInfo,
    List<Query$OrgResEquipmentRead$allMstrEquipments$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$OrgResEquipmentRead$allMstrEquipments$nodes?> Function(
      Iterable<
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<
          Query$OrgResEquipmentRead$allMstrEquipments$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments<TRes>
    implements CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes> {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments _instance;

  final TRes Function(Query$OrgResEquipmentRead$allMstrEquipments) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$OrgResEquipmentRead$allMstrEquipments$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$OrgResEquipmentRead$allMstrEquipments$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$OrgResEquipmentRead$allMstrEquipments$nodes?> Function(
      Iterable<
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<
          Query$OrgResEquipmentRead$allMstrEquipments$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments<TRes>
    implements CopyWith$Query$OrgResEquipmentRead$allMstrEquipments<TRes> {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$OrgResEquipmentRead$allMstrEquipments$pageInfo? pageInfo,
    List<Query$OrgResEquipmentRead$allMstrEquipments$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$pageInfo {
  Query$OrgResEquipmentRead$allMstrEquipments$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
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
    if (other is! Query$OrgResEquipmentRead$allMstrEquipments$pageInfo ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo
    on Query$OrgResEquipmentRead$allMstrEquipments$pageInfo {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<
    Query$OrgResEquipmentRead$allMstrEquipments$pageInfo
  >
  get copyWith => CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
    Query$OrgResEquipmentRead$allMstrEquipments$pageInfo instance,
    TRes Function(Query$OrgResEquipmentRead$allMstrEquipments$pageInfo) then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes> {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$pageInfo _instance;

  final TRes Function(Query$OrgResEquipmentRead$allMstrEquipments$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
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

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes({
    required this.mstrEquipmentId,
    required this.code,
    this.controlCode,
    this.labelCode,
    this.remarks,
    this.updateAt,
    this.remove,
    this.mstrEquipmentKindByMstrEquipmentCategoryId,
    this.mstrItemByMstrItemId,
    this.mstrLocationByMstrLocationId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrEquipment',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentId = json['mstrEquipmentId'];
    final l$code = json['code'];
    final l$controlCode = json['controlCode'];
    final l$labelCode = json['labelCode'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrEquipmentKindByMstrEquipmentCategoryId =
        json['mstrEquipmentKindByMstrEquipmentCategoryId'];
    final l$mstrItemByMstrItemId = json['mstrItemByMstrItemId'];
    final l$mstrLocationByMstrLocationId = json['mstrLocationByMstrLocationId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes(
      mstrEquipmentId: (l$mstrEquipmentId as String),
      code: (l$code as String),
      controlCode: (l$controlCode as String?),
      labelCode: (l$labelCode as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrEquipmentKindByMstrEquipmentCategoryId:
          l$mstrEquipmentKindByMstrEquipmentCategoryId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId.fromJson(
              (l$mstrEquipmentKindByMstrEquipmentCategoryId
                  as Map<String, dynamic>),
            ),
      mstrItemByMstrItemId: l$mstrItemByMstrItemId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId.fromJson(
              (l$mstrItemByMstrItemId as Map<String, dynamic>),
            ),
      mstrLocationByMstrLocationId: l$mstrLocationByMstrLocationId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId.fromJson(
              (l$mstrLocationByMstrLocationId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentId;

  final String code;

  final String? controlCode;

  final String? labelCode;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId?
  mstrEquipmentKindByMstrEquipmentCategoryId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId?
  mstrItemByMstrItemId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId?
  mstrLocationByMstrLocationId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentId = mstrEquipmentId;
    _resultData['mstrEquipmentId'] = l$mstrEquipmentId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrEquipmentKindByMstrEquipmentCategoryId =
        mstrEquipmentKindByMstrEquipmentCategoryId;
    _resultData['mstrEquipmentKindByMstrEquipmentCategoryId'] =
        l$mstrEquipmentKindByMstrEquipmentCategoryId?.toJson();
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    _resultData['mstrItemByMstrItemId'] = l$mstrItemByMstrItemId?.toJson();
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    _resultData['mstrLocationByMstrLocationId'] = l$mstrLocationByMstrLocationId
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
    final l$mstrEquipmentId = mstrEquipmentId;
    final l$code = code;
    final l$controlCode = controlCode;
    final l$labelCode = labelCode;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrEquipmentKindByMstrEquipmentCategoryId =
        mstrEquipmentKindByMstrEquipmentCategoryId;
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentId,
      l$code,
      l$controlCode,
      l$labelCode,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrEquipmentKindByMstrEquipmentCategoryId,
      l$mstrItemByMstrItemId,
      l$mstrLocationByMstrLocationId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrgResEquipmentRead$allMstrEquipments$nodes ||
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
    final l$controlCode = controlCode;
    final lOther$controlCode = other.controlCode;
    if (l$controlCode != lOther$controlCode) {
      return false;
    }
    final l$labelCode = labelCode;
    final lOther$labelCode = other.labelCode;
    if (l$labelCode != lOther$labelCode) {
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
    final l$mstrEquipmentKindByMstrEquipmentCategoryId =
        mstrEquipmentKindByMstrEquipmentCategoryId;
    final lOther$mstrEquipmentKindByMstrEquipmentCategoryId =
        other.mstrEquipmentKindByMstrEquipmentCategoryId;
    if (l$mstrEquipmentKindByMstrEquipmentCategoryId !=
        lOther$mstrEquipmentKindByMstrEquipmentCategoryId) {
      return false;
    }
    final l$mstrItemByMstrItemId = mstrItemByMstrItemId;
    final lOther$mstrItemByMstrItemId = other.mstrItemByMstrItemId;
    if (l$mstrItemByMstrItemId != lOther$mstrItemByMstrItemId) {
      return false;
    }
    final l$mstrLocationByMstrLocationId = mstrLocationByMstrLocationId;
    final lOther$mstrLocationByMstrLocationId =
        other.mstrLocationByMstrLocationId;
    if (l$mstrLocationByMstrLocationId != lOther$mstrLocationByMstrLocationId) {
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes
    on Query$OrgResEquipmentRead$allMstrEquipments$nodes {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes
  >
  get copyWith => CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes instance,
    TRes Function(Query$OrgResEquipmentRead$allMstrEquipments$nodes) then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes;

  TRes call({
    String? mstrEquipmentId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId?
    mstrEquipmentKindByMstrEquipmentCategoryId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId?
    mstrLocationByMstrLocationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentCategoryId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes<TRes>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<TRes> {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes _instance;

  final TRes Function(Query$OrgResEquipmentRead$allMstrEquipments$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentId = _undefined,
    Object? code = _undefined,
    Object? controlCode = _undefined,
    Object? labelCode = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrEquipmentKindByMstrEquipmentCategoryId = _undefined,
    Object? mstrItemByMstrItemId = _undefined,
    Object? mstrLocationByMstrLocationId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes(
      mstrEquipmentId: mstrEquipmentId == _undefined || mstrEquipmentId == null
          ? _instance.mstrEquipmentId
          : (mstrEquipmentId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrEquipmentKindByMstrEquipmentCategoryId:
          mstrEquipmentKindByMstrEquipmentCategoryId == _undefined
          ? _instance.mstrEquipmentKindByMstrEquipmentCategoryId
          : (mstrEquipmentKindByMstrEquipmentCategoryId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId?),
      mstrItemByMstrItemId: mstrItemByMstrItemId == _undefined
          ? _instance.mstrItemByMstrItemId
          : (mstrItemByMstrItemId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId?),
      mstrLocationByMstrLocationId: mstrLocationByMstrLocationId == _undefined
          ? _instance.mstrLocationByMstrLocationId
          : (mstrLocationByMstrLocationId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentCategoryId {
    final local$mstrEquipmentKindByMstrEquipmentCategoryId =
        _instance.mstrEquipmentKindByMstrEquipmentCategoryId;
    return local$mstrEquipmentKindByMstrEquipmentCategoryId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
            local$mstrEquipmentKindByMstrEquipmentCategoryId,
            (e) => call(mstrEquipmentKindByMstrEquipmentCategoryId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId {
    final local$mstrItemByMstrItemId = _instance.mstrItemByMstrItemId;
    return local$mstrItemByMstrItemId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
            local$mstrItemByMstrItemId,
            (e) => call(mstrItemByMstrItemId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId {
    final local$mstrLocationByMstrLocationId =
        _instance.mstrLocationByMstrLocationId;
    return local$mstrLocationByMstrLocationId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
            local$mstrLocationByMstrLocationId,
            (e) => call(mstrLocationByMstrLocationId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes<TRes>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes<TRes> {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentId,
    String? code,
    String? controlCode,
    String? labelCode,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId?
    mstrEquipmentKindByMstrEquipmentCategoryId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId?
    mstrItemByMstrItemId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId?
    mstrLocationByMstrLocationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
    TRes
  >
  get mstrEquipmentKindByMstrEquipmentCategoryId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
    TRes
  >
  get mstrItemByMstrItemId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
    TRes
  >
  get mstrLocationByMstrLocationId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId({
    required this.mstrEquipmentKindId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrEquipmentKind',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrEquipmentKindId = json['mstrEquipmentKindId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
      mstrEquipmentKindId: (l$mstrEquipmentKindId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrEquipmentKindId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    _resultData['mstrEquipmentKindId'] = l$mstrEquipmentKindId;
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
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrEquipmentKindId,
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrEquipmentKindId = mstrEquipmentKindId;
    final lOther$mstrEquipmentKindId = other.mstrEquipmentKindId;
    if (l$mstrEquipmentKindId != lOther$mstrEquipmentKindId) {
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId;

  TRes call({
    String? mstrEquipmentKindId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrEquipmentKindId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
      mstrEquipmentKindId:
          mstrEquipmentKindId == _undefined || mstrEquipmentKindId == null
          ? _instance.mstrEquipmentKindId
          : (mstrEquipmentKindId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrEquipmentKindId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrEquipmentKindByMstrEquipmentCategoryId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId({
    required this.mstrItemId,
    this.sharedAppellationBySharedAppellationsId,
    required this.mstrItemSizesByMstrItemId,
    this.$__typename = 'MstrItem',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$mstrItemSizesByMstrItemId = json['mstrItemSizesByMstrItemId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
      mstrItemId: (l$mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      mstrItemSizesByMstrItemId:
          Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId.fromJson(
            (l$mstrItemSizesByMstrItemId as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId
  mstrItemSizesByMstrItemId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$mstrItemSizesByMstrItemId = mstrItemSizesByMstrItemId;
    _resultData['mstrItemSizesByMstrItemId'] = l$mstrItemSizesByMstrItemId
        .toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemId = mstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$mstrItemSizesByMstrItemId = mstrItemSizesByMstrItemId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$sharedAppellationBySharedAppellationsId,
      l$mstrItemSizesByMstrItemId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$mstrItemSizesByMstrItemId = mstrItemSizesByMstrItemId;
    final lOther$mstrItemSizesByMstrItemId = other.mstrItemSizesByMstrItemId;
    if (l$mstrItemSizesByMstrItemId != lOther$mstrItemSizesByMstrItemId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId
    on Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId;

  TRes call({
    String? mstrItemId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId?
    mstrItemSizesByMstrItemId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
    TRes
  >
  get mstrItemSizesByMstrItemId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? mstrItemSizesByMstrItemId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?),
      mstrItemSizesByMstrItemId:
          mstrItemSizesByMstrItemId == _undefined ||
              mstrItemSizesByMstrItemId == null
          ? _instance.mstrItemSizesByMstrItemId
          : (mstrItemSizesByMstrItemId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
    TRes
  >
  get mstrItemSizesByMstrItemId {
    final local$mstrItemSizesByMstrItemId = _instance.mstrItemSizesByMstrItemId;
    return CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
      local$mstrItemSizesByMstrItemId,
      (e) => call(mstrItemSizesByMstrItemId: e),
    );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId?
    mstrItemSizesByMstrItemId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
    TRes
  >
  get mstrItemSizesByMstrItemId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId,
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
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId({
    required this.nodes,
    this.$__typename = 'MstrItemSizesConnection',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId;

  TRes call({
    List<
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
          Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
          Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes({
    required this.mstrItemSizeId,
    this.sizeValue,
    this.mstrItemSizeKindByMstrItemSizeKindId,
    this.$__typename = 'MstrItemSize',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeId = json['mstrItemSizeId'];
    final l$sizeValue = json['sizeValue'];
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        json['mstrItemSizeKindByMstrItemSizeKindId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
      mstrItemSizeId: (l$mstrItemSizeId as String),
      sizeValue: (l$sizeValue as String?),
      mstrItemSizeKindByMstrItemSizeKindId:
          l$mstrItemSizeKindByMstrItemSizeKindId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
              (l$mstrItemSizeKindByMstrItemSizeKindId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeId;

  final String? sizeValue;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId?
  mstrItemSizeKindByMstrItemSizeKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeId = mstrItemSizeId;
    _resultData['mstrItemSizeId'] = l$mstrItemSizeId;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    _resultData['mstrItemSizeKindByMstrItemSizeKindId'] =
        l$mstrItemSizeKindByMstrItemSizeKindId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeId = mstrItemSizeId;
    final l$sizeValue = sizeValue;
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeId,
      l$sizeValue,
      l$mstrItemSizeKindByMstrItemSizeKindId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeId = mstrItemSizeId;
    final lOther$mstrItemSizeId = other.mstrItemSizeId;
    if (l$mstrItemSizeId != lOther$mstrItemSizeId) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
      return false;
    }
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final lOther$mstrItemSizeKindByMstrItemSizeKindId =
        other.mstrItemSizeKindByMstrItemSizeKindId;
    if (l$mstrItemSizeKindByMstrItemSizeKindId !=
        lOther$mstrItemSizeKindByMstrItemSizeKindId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes;

  TRes call({
    String? mstrItemSizeId,
    String? sizeValue,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeId = _undefined,
    Object? sizeValue = _undefined,
    Object? mstrItemSizeKindByMstrItemSizeKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
      mstrItemSizeId: mstrItemSizeId == _undefined || mstrItemSizeId == null
          ? _instance.mstrItemSizeId
          : (mstrItemSizeId as String),
      sizeValue: sizeValue == _undefined
          ? _instance.sizeValue
          : (sizeValue as String?),
      mstrItemSizeKindByMstrItemSizeKindId:
          mstrItemSizeKindByMstrItemSizeKindId == _undefined
          ? _instance.mstrItemSizeKindByMstrItemSizeKindId
          : (mstrItemSizeKindByMstrItemSizeKindId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId {
    final local$mstrItemSizeKindByMstrItemSizeKindId =
        _instance.mstrItemSizeKindByMstrItemSizeKindId;
    return local$mstrItemSizeKindByMstrItemSizeKindId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
            local$mstrItemSizeKindByMstrItemSizeKindId,
            (e) => call(mstrItemSizeKindByMstrItemSizeKindId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeId,
    String? sizeValue,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId({
    required this.mstrItemSizeKindId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId;

  TRes call({
    String? mstrItemSizeKindId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrItemByMstrItemId$mstrItemSizesByMstrItemId$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId({
    required this.mstrLocationId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrLocation',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrLocationId = json['mstrLocationId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
      mstrLocationId: (l$mstrLocationId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrLocationId;

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrLocationId = mstrLocationId;
    _resultData['mstrLocationId'] = l$mstrLocationId;
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
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrLocationId,
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrLocationId = mstrLocationId;
    final lOther$mstrLocationId = other.mstrLocationId;
    if (l$mstrLocationId != lOther$mstrLocationId) {
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId
    on Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId;

  TRes call({
    String? mstrLocationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrLocationId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
      mstrLocationId: mstrLocationId == _undefined || mstrLocationId == null
          ? _instance.mstrLocationId
          : (mstrLocationId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrLocationId,
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$mstrLocationByMstrLocationId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentRead$allMstrEquipments$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$OrgResEquipmentReadUpdaterAppellation {
  factory Variables$Query$OrgResEquipmentReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$OrgResEquipmentReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$OrgResEquipmentReadUpdaterAppellation._(this._$data);

  factory Variables$Query$OrgResEquipmentReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$OrgResEquipmentReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation<
    Variables$Query$OrgResEquipmentReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$OrgResEquipmentReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation(
    Variables$Query$OrgResEquipmentReadUpdaterAppellation instance,
    TRes Function(Variables$Query$OrgResEquipmentReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation;

  factory CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$OrgResEquipmentReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$OrgResEquipmentReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$OrgResEquipmentReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$OrgResEquipmentReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$OrgResEquipmentReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$OrgResEquipmentReadUpdaterAppellation {
  Query$OrgResEquipmentReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$OrgResEquipmentReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$OrgResEquipmentReadUpdaterAppellation ||
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

extension UtilityExtension$Query$OrgResEquipmentReadUpdaterAppellation
    on Query$OrgResEquipmentReadUpdaterAppellation {
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation<
    Query$OrgResEquipmentReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$OrgResEquipmentReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation(
    Query$OrgResEquipmentReadUpdaterAppellation instance,
    TRes Function(Query$OrgResEquipmentReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation;

  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation;

  TRes call({
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OrgResEquipmentReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentReadUpdaterAppellation _instance;

  final TRes Function(Query$OrgResEquipmentReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation<TRes>
    implements CopyWith$Query$OrgResEquipmentReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryOrgResEquipmentReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'OrgResEquipmentReadUpdaterAppellation'),
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
Query$OrgResEquipmentReadUpdaterAppellation
_parserFn$Query$OrgResEquipmentReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$OrgResEquipmentReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$OrgResEquipmentReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$OrgResEquipmentReadUpdaterAppellation?,
    );

class Options$Query$OrgResEquipmentReadUpdaterAppellation
    extends graphql.QueryOptions<Query$OrgResEquipmentReadUpdaterAppellation> {
  Options$Query$OrgResEquipmentReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OrgResEquipmentReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrgResEquipmentReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrgResEquipmentReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$OrgResEquipmentReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryOrgResEquipmentReadUpdaterAppellation,
         parserFn: _parserFn$Query$OrgResEquipmentReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$OrgResEquipmentReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$OrgResEquipmentReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<Query$OrgResEquipmentReadUpdaterAppellation> {
  WatchOptions$Query$OrgResEquipmentReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$OrgResEquipmentReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrgResEquipmentReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryOrgResEquipmentReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$OrgResEquipmentReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$OrgResEquipmentReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrgResEquipmentReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrgResEquipmentReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryOrgResEquipmentReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$OrgResEquipmentReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrgResEquipmentReadUpdaterAppellation>>
  query$OrgResEquipmentReadUpdaterAppellation(
    Options$Query$OrgResEquipmentReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$OrgResEquipmentReadUpdaterAppellation>
  watchQuery$OrgResEquipmentReadUpdaterAppellation(
    WatchOptions$Query$OrgResEquipmentReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$OrgResEquipmentReadUpdaterAppellation({
    required Query$OrgResEquipmentReadUpdaterAppellation data,
    required Variables$Query$OrgResEquipmentReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryOrgResEquipmentReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$OrgResEquipmentReadUpdaterAppellation?
  readQuery$OrgResEquipmentReadUpdaterAppellation({
    required Variables$Query$OrgResEquipmentReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryOrgResEquipmentReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OrgResEquipmentReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrgResEquipmentReadUpdaterAppellation>
useQuery$OrgResEquipmentReadUpdaterAppellation(
  Options$Query$OrgResEquipmentReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrgResEquipmentReadUpdaterAppellation>
useWatchQuery$OrgResEquipmentReadUpdaterAppellation(
  WatchOptions$Query$OrgResEquipmentReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$OrgResEquipmentReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$OrgResEquipmentReadUpdaterAppellation> {
  Query$OrgResEquipmentReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$OrgResEquipmentReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$OrgResEquipmentReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$OrgResEquipmentReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
