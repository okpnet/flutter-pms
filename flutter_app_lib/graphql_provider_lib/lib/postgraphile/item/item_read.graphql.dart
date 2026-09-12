import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemRead {
  factory Variables$Query$ItemRead({
    required int first,
    int? offset,
    Input$MstrItemCondition? condition,
    List<Enum$MstrItemsOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$ItemRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$ItemRead._(this._$data);

  factory Variables$Query$ItemRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrItemCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrItemsOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$ItemRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrItemCondition? get condition =>
      (_$data['condition'] as Input$MstrItemCondition?);

  List<Enum$MstrItemsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrItemsOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrItemsOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$ItemRead<Variables$Query$ItemRead> get copyWith =>
      CopyWith$Variables$Query$ItemRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemRead ||
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

abstract class CopyWith$Variables$Query$ItemRead<TRes> {
  factory CopyWith$Variables$Query$ItemRead(
    Variables$Query$ItemRead instance,
    TRes Function(Variables$Query$ItemRead) then,
  ) = _CopyWithImpl$Variables$Query$ItemRead;

  factory CopyWith$Variables$Query$ItemRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrItemCondition? condition,
    List<Enum$MstrItemsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$ItemRead<TRes>
    implements CopyWith$Variables$Query$ItemRead<TRes> {
  _CopyWithImpl$Variables$Query$ItemRead(this._instance, this._then);

  final Variables$Query$ItemRead _instance;

  final TRes Function(Variables$Query$ItemRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$ItemRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrItemCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrItemsOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemRead<TRes>
    implements CopyWith$Variables$Query$ItemRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrItemCondition? condition,
    List<Enum$MstrItemsOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$ItemRead {
  Query$ItemRead({this.allMstrItems, this.$__typename = 'Query'});

  factory Query$ItemRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrItems = json['allMstrItems'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead(
      allMstrItems: l$allMstrItems == null
          ? null
          : Query$ItemRead$allMstrItems.fromJson(
              (l$allMstrItems as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemRead$allMstrItems? allMstrItems;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrItems = allMstrItems;
    _resultData['allMstrItems'] = l$allMstrItems?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrItems = allMstrItems;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrItems, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemRead || runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrItems = allMstrItems;
    final lOther$allMstrItems = other.allMstrItems;
    if (l$allMstrItems != lOther$allMstrItems) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemRead on Query$ItemRead {
  CopyWith$Query$ItemRead<Query$ItemRead> get copyWith =>
      CopyWith$Query$ItemRead(this, (i) => i);
}

abstract class CopyWith$Query$ItemRead<TRes> {
  factory CopyWith$Query$ItemRead(
    Query$ItemRead instance,
    TRes Function(Query$ItemRead) then,
  ) = _CopyWithImpl$Query$ItemRead;

  factory CopyWith$Query$ItemRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemRead;

  TRes call({Query$ItemRead$allMstrItems? allMstrItems, String? $__typename});
  CopyWith$Query$ItemRead$allMstrItems<TRes> get allMstrItems;
}

class _CopyWithImpl$Query$ItemRead<TRes>
    implements CopyWith$Query$ItemRead<TRes> {
  _CopyWithImpl$Query$ItemRead(this._instance, this._then);

  final Query$ItemRead _instance;

  final TRes Function(Query$ItemRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrItems = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead(
      allMstrItems: allMstrItems == _undefined
          ? _instance.allMstrItems
          : (allMstrItems as Query$ItemRead$allMstrItems?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems<TRes> get allMstrItems {
    final local$allMstrItems = _instance.allMstrItems;
    return local$allMstrItems == null
        ? CopyWith$Query$ItemRead$allMstrItems.stub(_then(_instance))
        : CopyWith$Query$ItemRead$allMstrItems(
            local$allMstrItems,
            (e) => call(allMstrItems: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead<TRes>
    implements CopyWith$Query$ItemRead<TRes> {
  _CopyWithStubImpl$Query$ItemRead(this._res);

  TRes _res;

  call({Query$ItemRead$allMstrItems? allMstrItems, String? $__typename}) =>
      _res;

  CopyWith$Query$ItemRead$allMstrItems<TRes> get allMstrItems =>
      CopyWith$Query$ItemRead$allMstrItems.stub(_res);
}

const documentNodeQueryItemRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemRead'),
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
            name: NameNode(value: 'MstrItemCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrItemsOrderBy'),
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
            name: NameNode(value: 'allMstrItems'),
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
                        name: NameNode(value: 'mstrItemId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
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
                        name: NameNode(value: 'identification'),
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
                        name: NameNode(value: 'description'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'lot'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'stockQuantity'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'sharedUnitId'),
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
                        name: NameNode(value: 'mstrItemKindByMstrItemKindId'),
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
                          value: 'mstrManufacturerByMstrManufacturerId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrManufacturerId'),
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
                        name: NameNode(value: 'mstrItemProvisionsByMstrItemId'),
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
                                      value: 'mstrItemProvisionId',
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
                        name: NameNode(value: 'sharedUnitBySharedUnitId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'sharedUnitId'),
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
Query$ItemRead _parserFn$Query$ItemRead(Map<String, dynamic> data) =>
    Query$ItemRead.fromJson(data);
typedef OnQueryComplete$Query$ItemRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemRead?);

class Options$Query$ItemRead extends graphql.QueryOptions<Query$ItemRead> {
  Options$Query$ItemRead({
    String? operationName,
    required Variables$Query$ItemRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemRead? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemRead(data),
               ),
         onError: onError,
         document: documentNodeQueryItemRead,
         parserFn: _parserFn$Query$ItemRead,
       );

  final OnQueryComplete$Query$ItemRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemRead
    extends graphql.WatchQueryOptions<Query$ItemRead> {
  WatchOptions$Query$ItemRead({
    String? operationName,
    required Variables$Query$ItemRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemRead? typedOptimisticResult,
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
         document: documentNodeQueryItemRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemRead,
       );
}

class FetchMoreOptions$Query$ItemRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemRead,
       );
}

extension ClientExtension$Query$ItemRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemRead>> query$ItemRead(
    Options$Query$ItemRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemRead> watchQuery$ItemRead(
    WatchOptions$Query$ItemRead options,
  ) => this.watchQuery(options);

  void writeQuery$ItemRead({
    required Query$ItemRead data,
    required Variables$Query$ItemRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemRead? readQuery$ItemRead({
    required Variables$Query$ItemRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryItemRead),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemRead> useQuery$ItemRead(
  Options$Query$ItemRead options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemRead> useWatchQuery$ItemRead(
  WatchOptions$Query$ItemRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemRead$Widget extends graphql_flutter.Query<Query$ItemRead> {
  Query$ItemRead$Widget({
    widgets.Key? key,
    required Options$Query$ItemRead options,
    required graphql_flutter.QueryBuilder<Query$ItemRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemRead$allMstrItems {
  Query$ItemRead$allMstrItems({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrItemsConnection',
  });

  factory Query$ItemRead$allMstrItems.fromJson(Map<String, dynamic> json) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems(
      totalCount: (l$totalCount as int),
      pageInfo: Query$ItemRead$allMstrItems$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemRead$allMstrItems$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ItemRead$allMstrItems$pageInfo pageInfo;

  final List<Query$ItemRead$allMstrItems$nodes?> nodes;

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
    if (other is! Query$ItemRead$allMstrItems ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems
    on Query$ItemRead$allMstrItems {
  CopyWith$Query$ItemRead$allMstrItems<Query$ItemRead$allMstrItems>
  get copyWith => CopyWith$Query$ItemRead$allMstrItems(this, (i) => i);
}

abstract class CopyWith$Query$ItemRead$allMstrItems<TRes> {
  factory CopyWith$Query$ItemRead$allMstrItems(
    Query$ItemRead$allMstrItems instance,
    TRes Function(Query$ItemRead$allMstrItems) then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems;

  factory CopyWith$Query$ItemRead$allMstrItems.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemRead$allMstrItems;

  TRes call({
    int? totalCount,
    Query$ItemRead$allMstrItems$pageInfo? pageInfo,
    List<Query$ItemRead$allMstrItems$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> get pageInfo;
  TRes nodes(
    Iterable<Query$ItemRead$allMstrItems$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemRead$allMstrItems$nodes<
          Query$ItemRead$allMstrItems$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemRead$allMstrItems<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems<TRes> {
  _CopyWithImpl$Query$ItemRead$allMstrItems(this._instance, this._then);

  final Query$ItemRead$allMstrItems _instance;

  final TRes Function(Query$ItemRead$allMstrItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo as Query$ItemRead$allMstrItems$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes as List<Query$ItemRead$allMstrItems$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ItemRead$allMstrItems$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ItemRead$allMstrItems$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemRead$allMstrItems$nodes<
          Query$ItemRead$allMstrItems$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemRead$allMstrItems$nodes(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems<TRes> {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$ItemRead$allMstrItems$pageInfo? pageInfo,
    List<Query$ItemRead$allMstrItems$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ItemRead$allMstrItems$pageInfo.stub(_res);

  nodes(_fn) => _res;
}

class Query$ItemRead$allMstrItems$pageInfo {
  Query$ItemRead$allMstrItems$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ItemRead$allMstrItems$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$pageInfo(
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
    if (other is! Query$ItemRead$allMstrItems$pageInfo ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$pageInfo
    on Query$ItemRead$allMstrItems$pageInfo {
  CopyWith$Query$ItemRead$allMstrItems$pageInfo<
    Query$ItemRead$allMstrItems$pageInfo
  >
  get copyWith => CopyWith$Query$ItemRead$allMstrItems$pageInfo(this, (i) => i);
}

abstract class CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> {
  factory CopyWith$Query$ItemRead$allMstrItems$pageInfo(
    Query$ItemRead$allMstrItems$pageInfo instance,
    TRes Function(Query$ItemRead$allMstrItems$pageInfo) then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$pageInfo;

  factory CopyWith$Query$ItemRead$allMstrItems$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemRead$allMstrItems$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$pageInfo<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> {
  _CopyWithImpl$Query$ItemRead$allMstrItems$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$pageInfo _instance;

  final TRes Function(Query$ItemRead$allMstrItems$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$pageInfo(
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

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$pageInfo<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$pageInfo(this._res);

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ItemRead$allMstrItems$nodes {
  Query$ItemRead$allMstrItems$nodes({
    required this.mstrItemId,
    this.mstrItemKindId,
    required this.code,
    this.identification,
    this.controlCode,
    this.labelCode,
    this.description,
    this.lot,
    this.stockQuantity,
    this.sharedUnitId,
    this.remarks,
    this.updateAt,
    this.remove,
    this.mstrItemKindByMstrItemKindId,
    this.mstrManufacturerByMstrManufacturerId,
    required this.mstrItemProvisionsByMstrItemId,
    this.sharedAppellationBySharedAppellationsId,
    this.sharedUnitBySharedUnitId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrItem',
  });

  factory Query$ItemRead$allMstrItems$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$identification = json['identification'];
    final l$controlCode = json['controlCode'];
    final l$labelCode = json['labelCode'];
    final l$description = json['description'];
    final l$lot = json['lot'];
    final l$stockQuantity = json['stockQuantity'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrItemKindByMstrItemKindId = json['mstrItemKindByMstrItemKindId'];
    final l$mstrManufacturerByMstrManufacturerId =
        json['mstrManufacturerByMstrManufacturerId'];
    final l$mstrItemProvisionsByMstrItemId =
        json['mstrItemProvisionsByMstrItemId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$sharedUnitBySharedUnitId = json['sharedUnitBySharedUnitId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes(
      mstrItemId: (l$mstrItemId as String),
      mstrItemKindId: (l$mstrItemKindId as String?),
      code: (l$code as String),
      identification: (l$identification as String?),
      controlCode: (l$controlCode as String?),
      labelCode: (l$labelCode as String?),
      description: (l$description as String?),
      lot: (l$lot as bool?),
      stockQuantity: (l$stockQuantity as String?),
      sharedUnitId: (l$sharedUnitId as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrItemKindByMstrItemKindId: l$mstrItemKindByMstrItemKindId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId.fromJson(
              (l$mstrItemKindByMstrItemKindId as Map<String, dynamic>),
            ),
      mstrManufacturerByMstrManufacturerId:
          l$mstrManufacturerByMstrManufacturerId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId.fromJson(
              (l$mstrManufacturerByMstrManufacturerId as Map<String, dynamic>),
            ),
      mstrItemProvisionsByMstrItemId:
          Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId.fromJson(
            (l$mstrItemProvisionsByMstrItemId as Map<String, dynamic>),
          ),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      sharedUnitBySharedUnitId: l$sharedUnitBySharedUnitId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId.fromJson(
              (l$sharedUnitBySharedUnitId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemId;

  final String? mstrItemKindId;

  final String code;

  final String? identification;

  final String? controlCode;

  final String? labelCode;

  final String? description;

  final bool? lot;

  final String? stockQuantity;

  final String? sharedUnitId;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId?
  mstrItemKindByMstrItemKindId;

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId?
  mstrManufacturerByMstrManufacturerId;

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId
  mstrItemProvisionsByMstrItemId;

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId?
  sharedUnitBySharedUnitId;

  final Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$identification = identification;
    _resultData['identification'] = l$identification;
    final l$controlCode = controlCode;
    _resultData['controlCode'] = l$controlCode;
    final l$labelCode = labelCode;
    _resultData['labelCode'] = l$labelCode;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$lot = lot;
    _resultData['lot'] = l$lot;
    final l$stockQuantity = stockQuantity;
    _resultData['stockQuantity'] = l$stockQuantity;
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrItemKindByMstrItemKindId = mstrItemKindByMstrItemKindId;
    _resultData['mstrItemKindByMstrItemKindId'] = l$mstrItemKindByMstrItemKindId
        ?.toJson();
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    _resultData['mstrManufacturerByMstrManufacturerId'] =
        l$mstrManufacturerByMstrManufacturerId?.toJson();
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    _resultData['mstrItemProvisionsByMstrItemId'] =
        l$mstrItemProvisionsByMstrItemId.toJson();
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    _resultData['sharedAppellationBySharedAppellationsId'] =
        l$sharedAppellationBySharedAppellationsId?.toJson();
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    _resultData['sharedUnitBySharedUnitId'] = l$sharedUnitBySharedUnitId
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
    final l$mstrItemId = mstrItemId;
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$identification = identification;
    final l$controlCode = controlCode;
    final l$labelCode = labelCode;
    final l$description = description;
    final l$lot = lot;
    final l$stockQuantity = stockQuantity;
    final l$sharedUnitId = sharedUnitId;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrItemKindByMstrItemKindId = mstrItemKindByMstrItemKindId;
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemId,
      l$mstrItemKindId,
      l$code,
      l$identification,
      l$controlCode,
      l$labelCode,
      l$description,
      l$lot,
      l$stockQuantity,
      l$sharedUnitId,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrItemKindByMstrItemKindId,
      l$mstrManufacturerByMstrManufacturerId,
      l$mstrItemProvisionsByMstrItemId,
      l$sharedAppellationBySharedAppellationsId,
      l$sharedUnitBySharedUnitId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemRead$allMstrItems$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$identification = identification;
    final lOther$identification = other.identification;
    if (l$identification != lOther$identification) {
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$lot = lot;
    final lOther$lot = other.lot;
    if (l$lot != lOther$lot) {
      return false;
    }
    final l$stockQuantity = stockQuantity;
    final lOther$stockQuantity = other.stockQuantity;
    if (l$stockQuantity != lOther$stockQuantity) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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
    final l$mstrItemKindByMstrItemKindId = mstrItemKindByMstrItemKindId;
    final lOther$mstrItemKindByMstrItemKindId =
        other.mstrItemKindByMstrItemKindId;
    if (l$mstrItemKindByMstrItemKindId != lOther$mstrItemKindByMstrItemKindId) {
      return false;
    }
    final l$mstrManufacturerByMstrManufacturerId =
        mstrManufacturerByMstrManufacturerId;
    final lOther$mstrManufacturerByMstrManufacturerId =
        other.mstrManufacturerByMstrManufacturerId;
    if (l$mstrManufacturerByMstrManufacturerId !=
        lOther$mstrManufacturerByMstrManufacturerId) {
      return false;
    }
    final l$mstrItemProvisionsByMstrItemId = mstrItemProvisionsByMstrItemId;
    final lOther$mstrItemProvisionsByMstrItemId =
        other.mstrItemProvisionsByMstrItemId;
    if (l$mstrItemProvisionsByMstrItemId !=
        lOther$mstrItemProvisionsByMstrItemId) {
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
    final l$sharedUnitBySharedUnitId = sharedUnitBySharedUnitId;
    final lOther$sharedUnitBySharedUnitId = other.sharedUnitBySharedUnitId;
    if (l$sharedUnitBySharedUnitId != lOther$sharedUnitBySharedUnitId) {
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes
    on Query$ItemRead$allMstrItems$nodes {
  CopyWith$Query$ItemRead$allMstrItems$nodes<Query$ItemRead$allMstrItems$nodes>
  get copyWith => CopyWith$Query$ItemRead$allMstrItems$nodes(this, (i) => i);
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes<TRes> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes(
    Query$ItemRead$allMstrItems$nodes instance,
    TRes Function(Query$ItemRead$allMstrItems$nodes) then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes;

  TRes call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId?
    mstrItemKindByMstrItemKindId,
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId?
    mstrItemProvisionsByMstrItemId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId?
    sharedUnitBySharedUnitId,
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<TRes>
  get mstrItemKindByMstrItemKindId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems$nodes<TRes> {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes(this._instance, this._then);

  final Query$ItemRead$allMstrItems$nodes _instance;

  final TRes Function(Query$ItemRead$allMstrItems$nodes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemId = _undefined,
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? identification = _undefined,
    Object? controlCode = _undefined,
    Object? labelCode = _undefined,
    Object? description = _undefined,
    Object? lot = _undefined,
    Object? stockQuantity = _undefined,
    Object? sharedUnitId = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrItemKindByMstrItemKindId = _undefined,
    Object? mstrManufacturerByMstrManufacturerId = _undefined,
    Object? mstrItemProvisionsByMstrItemId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? sharedUnitBySharedUnitId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes(
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemKindId: mstrItemKindId == _undefined
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String?),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      identification: identification == _undefined
          ? _instance.identification
          : (identification as String?),
      controlCode: controlCode == _undefined
          ? _instance.controlCode
          : (controlCode as String?),
      labelCode: labelCode == _undefined
          ? _instance.labelCode
          : (labelCode as String?),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      lot: lot == _undefined ? _instance.lot : (lot as bool?),
      stockQuantity: stockQuantity == _undefined
          ? _instance.stockQuantity
          : (stockQuantity as String?),
      sharedUnitId: sharedUnitId == _undefined
          ? _instance.sharedUnitId
          : (sharedUnitId as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrItemKindByMstrItemKindId: mstrItemKindByMstrItemKindId == _undefined
          ? _instance.mstrItemKindByMstrItemKindId
          : (mstrItemKindByMstrItemKindId
                as Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId?),
      mstrManufacturerByMstrManufacturerId:
          mstrManufacturerByMstrManufacturerId == _undefined
          ? _instance.mstrManufacturerByMstrManufacturerId
          : (mstrManufacturerByMstrManufacturerId
                as Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId?),
      mstrItemProvisionsByMstrItemId:
          mstrItemProvisionsByMstrItemId == _undefined ||
              mstrItemProvisionsByMstrItemId == null
          ? _instance.mstrItemProvisionsByMstrItemId
          : (mstrItemProvisionsByMstrItemId
                as Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId?),
      sharedUnitBySharedUnitId: sharedUnitBySharedUnitId == _undefined
          ? _instance.sharedUnitBySharedUnitId
          : (sharedUnitBySharedUnitId
                as Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<TRes>
  get mstrItemKindByMstrItemKindId {
    final local$mstrItemKindByMstrItemKindId =
        _instance.mstrItemKindByMstrItemKindId;
    return local$mstrItemKindByMstrItemKindId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
            local$mstrItemKindByMstrItemKindId,
            (e) => call(mstrItemKindByMstrItemKindId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId {
    final local$mstrManufacturerByMstrManufacturerId =
        _instance.mstrManufacturerByMstrManufacturerId;
    return local$mstrManufacturerByMstrManufacturerId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
            local$mstrManufacturerByMstrManufacturerId,
            (e) => call(mstrManufacturerByMstrManufacturerId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId {
    final local$mstrItemProvisionsByMstrItemId =
        _instance.mstrItemProvisionsByMstrItemId;
    return CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
      local$mstrItemProvisionsByMstrItemId,
      (e) => call(mstrItemProvisionsByMstrItemId: e),
    );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId {
    final local$sharedUnitBySharedUnitId = _instance.sharedUnitBySharedUnitId;
    return local$sharedUnitBySharedUnitId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
            local$sharedUnitBySharedUnitId,
            (e) => call(sharedUnitBySharedUnitId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes<TRes>
    implements CopyWith$Query$ItemRead$allMstrItems$nodes<TRes> {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes(this._res);

  TRes _res;

  call({
    String? mstrItemId,
    String? mstrItemKindId,
    String? code,
    String? identification,
    String? controlCode,
    String? labelCode,
    String? description,
    bool? lot,
    String? stockQuantity,
    String? sharedUnitId,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId?
    mstrItemKindByMstrItemKindId,
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId?
    mstrManufacturerByMstrManufacturerId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId?
    mstrItemProvisionsByMstrItemId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId?
    sharedUnitBySharedUnitId,
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<TRes>
  get mstrItemKindByMstrItemKindId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
    TRes
  >
  get mstrManufacturerByMstrManufacturerId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
    TRes
  >
  get mstrItemProvisionsByMstrItemId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<TRes>
  get sharedUnitBySharedUnitId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId {
  Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId({
    required this.mstrItemKindId,
    this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItemKind',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemKindId = json['mstrItemKindId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
      mstrItemKindId: (l$mstrItemKindId as String),
      code: (l$code as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemKindId;

  final String? code;

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemKindId = mstrItemKindId;
    _resultData['mstrItemKindId'] = l$mstrItemKindId;
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
    final l$mstrItemKindId = mstrItemKindId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemKindId,
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId
    on Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId;

  TRes call({
    String? mstrItemKindId,
    String? code,
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemKindId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
      mstrItemKindId: mstrItemKindId == _undefined || mstrItemKindId == null
          ? _instance.mstrItemKindId
          : (mstrItemKindId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemKindId,
    String? code,
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId {
  Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId
    on
        Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemKindByMstrItemKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId {
  Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId({
    required this.mstrManufacturerId,
    this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrManufacturer',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrManufacturerId = json['mstrManufacturerId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId: (l$mstrManufacturerId as String),
      code: (l$code as String?),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrManufacturerId;

  final String? code;

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrManufacturerId = mstrManufacturerId;
    _resultData['mstrManufacturerId'] = l$mstrManufacturerId;
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
    final l$mstrManufacturerId = mstrManufacturerId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrManufacturerId,
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
            is! Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrManufacturerId = mstrManufacturerId;
    final lOther$mstrManufacturerId = other.mstrManufacturerId;
    if (l$mstrManufacturerId != lOther$mstrManufacturerId) {
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId
    on Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId;

  TRes call({
    String? mstrManufacturerId,
    String? code,
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrManufacturerId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
      mstrManufacturerId:
          mstrManufacturerId == _undefined || mstrManufacturerId == null
          ? _instance.mstrManufacturerId
          : (mstrManufacturerId as String),
      code: code == _undefined ? _instance.code : (code as String?),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrManufacturerId,
    String? code,
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    on
        Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrManufacturerByMstrManufacturerId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId {
  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId({
    required this.nodes,
    this.$__typename = 'MstrItemProvisionsConnection',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId
    on Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId;

  TRes call({
    List<
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
          Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
          Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes {
  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes({
    required this.mstrItemProvisionId,
    this.infoProvisionByInfoProvisionId,
    this.$__typename = 'MstrItemProvision',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemProvisionId = json['mstrItemProvisionId'];
    final l$infoProvisionByInfoProvisionId =
        json['infoProvisionByInfoProvisionId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
      mstrItemProvisionId: (l$mstrItemProvisionId as String),
      infoProvisionByInfoProvisionId: l$infoProvisionByInfoProvisionId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId.fromJson(
              (l$infoProvisionByInfoProvisionId as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemProvisionId;

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId?
  infoProvisionByInfoProvisionId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemProvisionId = mstrItemProvisionId;
    _resultData['mstrItemProvisionId'] = l$mstrItemProvisionId;
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    _resultData['infoProvisionByInfoProvisionId'] =
        l$infoProvisionByInfoProvisionId?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemProvisionId = mstrItemProvisionId;
    final l$infoProvisionByInfoProvisionId = infoProvisionByInfoProvisionId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemProvisionId,
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemProvisionId = mstrItemProvisionId;
    final lOther$mstrItemProvisionId = other.mstrItemProvisionId;
    if (l$mstrItemProvisionId != lOther$mstrItemProvisionId) {
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
    on Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes;

  TRes call({
    String? mstrItemProvisionId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemProvisionId = _undefined,
    Object? infoProvisionByInfoProvisionId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
      mstrItemProvisionId:
          mstrItemProvisionId == _undefined || mstrItemProvisionId == null
          ? _instance.mstrItemProvisionId
          : (mstrItemProvisionId as String),
      infoProvisionByInfoProvisionId:
          infoProvisionByInfoProvisionId == _undefined
          ? _instance.infoProvisionByInfoProvisionId
          : (infoProvisionByInfoProvisionId
                as Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId {
    final local$infoProvisionByInfoProvisionId =
        _instance.infoProvisionByInfoProvisionId;
    return local$infoProvisionByInfoProvisionId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
            local$infoProvisionByInfoProvisionId,
            (e) => call(infoProvisionByInfoProvisionId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemProvisionId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId?
    infoProvisionByInfoProvisionId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
    TRes
  >
  get infoProvisionByInfoProvisionId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId {
  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId({
    required this.infoProvisionId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'InfoProvision',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$infoProvisionId = json['infoProvisionId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
      infoProvisionId: (l$infoProvisionId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String infoProvisionId;

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId
    on
        Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId;

  TRes call({
    String? infoProvisionId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? infoProvisionId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
      infoProvisionId: infoProvisionId == _undefined || infoProvisionId == null
          ? _instance.infoProvisionId
          : (infoProvisionId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId(
    this._res,
  );

  TRes _res;

  call({
    String? infoProvisionId,
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId {
  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
    on
        Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$mstrItemProvisionsByMstrItemId$nodes$infoProvisionByInfoProvisionId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId {
  Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId
    on Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId,
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
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId {
  Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId({
    required this.sharedUnitId,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'SharedUnit',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
      sharedUnitId: (l$sharedUnitId as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
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
    final l$sharedUnitId = sharedUnitId;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sharedUnitId,
      l$sharedAppellationBySharedAppellationsId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId
    on Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId instance,
    TRes Function(Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId)
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId;

  TRes call({
    String? sharedUnitId,
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId {
  Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId({
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        json['sharedDictionaryBySharedDictionaryNicknameId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
  sharedDictionaryBySharedDictionaryNicknameId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
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
    final l$sharedDictionaryBySharedDictionaryNicknameId =
        sharedDictionaryBySharedDictionaryNicknameId;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId
    on
        Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId;

  TRes call({
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryBySharedDictionaryNicknameId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$sharedUnitBySharedUnitId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemRead$allMstrItems$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$ItemReadUpdaterAppellation {
  factory Variables$Query$ItemReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$ItemReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$ItemReadUpdaterAppellation._(this._$data);

  factory Variables$Query$ItemReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$ItemReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemReadUpdaterAppellation<
    Variables$Query$ItemReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Variables$Query$ItemReadUpdaterAppellation(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$ItemReadUpdaterAppellation<TRes> {
  factory CopyWith$Variables$Query$ItemReadUpdaterAppellation(
    Variables$Query$ItemReadUpdaterAppellation instance,
    TRes Function(Variables$Query$ItemReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$ItemReadUpdaterAppellation;

  factory CopyWith$Variables$Query$ItemReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$ItemReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$ItemReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$ItemReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$ItemReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$ItemReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$ItemReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemReadUpdaterAppellation<TRes>
    implements CopyWith$Variables$Query$ItemReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemReadUpdaterAppellation(this._res);

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$ItemReadUpdaterAppellation {
  Query$ItemReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$ItemReadUpdaterAppellation.fromJson(Map<String, dynamic> json) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$ItemReadUpdaterAppellation ||
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

extension UtilityExtension$Query$ItemReadUpdaterAppellation
    on Query$ItemReadUpdaterAppellation {
  CopyWith$Query$ItemReadUpdaterAppellation<Query$ItemReadUpdaterAppellation>
  get copyWith => CopyWith$Query$ItemReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$ItemReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$ItemReadUpdaterAppellation(
    Query$ItemReadUpdaterAppellation instance,
    TRes Function(Query$ItemReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$ItemReadUpdaterAppellation;

  factory CopyWith$Query$ItemReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemReadUpdaterAppellation;

  TRes call({
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$ItemReadUpdaterAppellation(this._instance, this._then);

  final Query$ItemReadUpdaterAppellation _instance;

  final TRes Function(Query$ItemReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$ItemReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryItemReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemReadUpdaterAppellation'),
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
Query$ItemReadUpdaterAppellation _parserFn$Query$ItemReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$ItemReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$ItemReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ItemReadUpdaterAppellation?,
    );

class Options$Query$ItemReadUpdaterAppellation
    extends graphql.QueryOptions<Query$ItemReadUpdaterAppellation> {
  Options$Query$ItemReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$ItemReadUpdaterAppellation(data),
               ),
         onError: onError,
         document: documentNodeQueryItemReadUpdaterAppellation,
         parserFn: _parserFn$Query$ItemReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$ItemReadUpdaterAppellation? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemReadUpdaterAppellation
    extends graphql.WatchQueryOptions<Query$ItemReadUpdaterAppellation> {
  WatchOptions$Query$ItemReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryItemReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$ItemReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$ItemReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemReadUpdaterAppellation>>
  query$ItemReadUpdaterAppellation(
    Options$Query$ItemReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemReadUpdaterAppellation>
  watchQuery$ItemReadUpdaterAppellation(
    WatchOptions$Query$ItemReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$ItemReadUpdaterAppellation({
    required Query$ItemReadUpdaterAppellation data,
    required Variables$Query$ItemReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryItemReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemReadUpdaterAppellation? readQuery$ItemReadUpdaterAppellation({
    required Variables$Query$ItemReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ItemReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemReadUpdaterAppellation>
useQuery$ItemReadUpdaterAppellation(
  Options$Query$ItemReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemReadUpdaterAppellation>
useWatchQuery$ItemReadUpdaterAppellation(
  WatchOptions$Query$ItemReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$ItemReadUpdaterAppellation> {
  Query$ItemReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$ItemReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<Query$ItemReadUpdaterAppellation>
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
