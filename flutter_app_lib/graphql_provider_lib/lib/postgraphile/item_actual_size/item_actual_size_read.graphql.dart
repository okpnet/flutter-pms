import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemActualSizeRead {
  factory Variables$Query$ItemActualSizeRead({
    required int first,
    int? offset,
    Input$MstrItemActualSizeCondition? condition,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    required bool ja,
    required bool en,
  }) => Variables$Query$ItemActualSizeRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (condition != null) r'condition': condition,
    if (orderBy != null) r'orderBy': orderBy,
    r'ja': ja,
    r'en': en,
  });

  Variables$Query$ItemActualSizeRead._(this._$data);

  factory Variables$Query$ItemActualSizeRead.fromJson(
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
          : Input$MstrItemActualSizeCondition.fromJson(
              (l$condition as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrItemActualSizesOrderBy((e as String)))
          .toList();
    }
    final l$ja = data['ja'];
    result$data['ja'] = (l$ja as bool);
    final l$en = data['en'];
    result$data['en'] = (l$en as bool);
    return Variables$Query$ItemActualSizeRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrItemActualSizeCondition? get condition =>
      (_$data['condition'] as Input$MstrItemActualSizeCondition?);

  List<Enum$MstrItemActualSizesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrItemActualSizesOrderBy>?);

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
          ?.map((e) => toJson$Enum$MstrItemActualSizesOrderBy(e))
          .toList();
    }
    final l$ja = ja;
    result$data['ja'] = l$ja;
    final l$en = en;
    result$data['en'] = l$en;
    return result$data;
  }

  CopyWith$Variables$Query$ItemActualSizeRead<
    Variables$Query$ItemActualSizeRead
  >
  get copyWith => CopyWith$Variables$Query$ItemActualSizeRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemActualSizeRead ||
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

abstract class CopyWith$Variables$Query$ItemActualSizeRead<TRes> {
  factory CopyWith$Variables$Query$ItemActualSizeRead(
    Variables$Query$ItemActualSizeRead instance,
    TRes Function(Variables$Query$ItemActualSizeRead) then,
  ) = _CopyWithImpl$Variables$Query$ItemActualSizeRead;

  factory CopyWith$Variables$Query$ItemActualSizeRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemActualSizeRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrItemActualSizeCondition? condition,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    bool? ja,
    bool? en,
  });
}

class _CopyWithImpl$Variables$Query$ItemActualSizeRead<TRes>
    implements CopyWith$Variables$Query$ItemActualSizeRead<TRes> {
  _CopyWithImpl$Variables$Query$ItemActualSizeRead(this._instance, this._then);

  final Variables$Query$ItemActualSizeRead _instance;

  final TRes Function(Variables$Query$ItemActualSizeRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? condition = _undefined,
    Object? orderBy = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
  }) => _then(
    Variables$Query$ItemActualSizeRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (condition != _undefined)
        'condition': (condition as Input$MstrItemActualSizeCondition?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrItemActualSizesOrderBy>?),
      if (ja != _undefined && ja != null) 'ja': (ja as bool),
      if (en != _undefined && en != null) 'en': (en as bool),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemActualSizeRead<TRes>
    implements CopyWith$Variables$Query$ItemActualSizeRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemActualSizeRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrItemActualSizeCondition? condition,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    bool? ja,
    bool? en,
  }) => _res;
}

class Query$ItemActualSizeRead {
  Query$ItemActualSizeRead({
    this.allMstrItemActualSizes,
    this.$__typename = 'Query',
  });

  factory Query$ItemActualSizeRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrItemActualSizes = json['allMstrItemActualSizes'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead(
      allMstrItemActualSizes: l$allMstrItemActualSizes == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes.fromJson(
              (l$allMstrItemActualSizes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemActualSizeRead$allMstrItemActualSizes? allMstrItemActualSizes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$allMstrItemActualSizes = allMstrItemActualSizes;
    _resultData['allMstrItemActualSizes'] = l$allMstrItemActualSizes?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$allMstrItemActualSizes = allMstrItemActualSizes;
    final l$$__typename = $__typename;
    return Object.hashAll([l$allMstrItemActualSizes, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemActualSizeRead ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$allMstrItemActualSizes = allMstrItemActualSizes;
    final lOther$allMstrItemActualSizes = other.allMstrItemActualSizes;
    if (l$allMstrItemActualSizes != lOther$allMstrItemActualSizes) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemActualSizeRead
    on Query$ItemActualSizeRead {
  CopyWith$Query$ItemActualSizeRead<Query$ItemActualSizeRead> get copyWith =>
      CopyWith$Query$ItemActualSizeRead(this, (i) => i);
}

abstract class CopyWith$Query$ItemActualSizeRead<TRes> {
  factory CopyWith$Query$ItemActualSizeRead(
    Query$ItemActualSizeRead instance,
    TRes Function(Query$ItemActualSizeRead) then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead;

  factory CopyWith$Query$ItemActualSizeRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemActualSizeRead;

  TRes call({
    Query$ItemActualSizeRead$allMstrItemActualSizes? allMstrItemActualSizes,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes;
}

class _CopyWithImpl$Query$ItemActualSizeRead<TRes>
    implements CopyWith$Query$ItemActualSizeRead<TRes> {
  _CopyWithImpl$Query$ItemActualSizeRead(this._instance, this._then);

  final Query$ItemActualSizeRead _instance;

  final TRes Function(Query$ItemActualSizeRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrItemActualSizes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead(
      allMstrItemActualSizes: allMstrItemActualSizes == _undefined
          ? _instance.allMstrItemActualSizes
          : (allMstrItemActualSizes
                as Query$ItemActualSizeRead$allMstrItemActualSizes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes {
    final local$allMstrItemActualSizes = _instance.allMstrItemActualSizes;
    return local$allMstrItemActualSizes == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes(
            local$allMstrItemActualSizes,
            (e) => call(allMstrItemActualSizes: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeRead<TRes>
    implements CopyWith$Query$ItemActualSizeRead<TRes> {
  _CopyWithStubImpl$Query$ItemActualSizeRead(this._res);

  TRes _res;

  call({
    Query$ItemActualSizeRead$allMstrItemActualSizes? allMstrItemActualSizes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes.stub(_res);
}

const documentNodeQueryItemActualSizeRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemActualSizeRead'),
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
            name: NameNode(value: 'MstrItemActualSizeCondition'),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'orderBy')),
          type: ListTypeNode(
            type: NamedTypeNode(
              name: NameNode(value: 'MstrItemActualSizesOrderBy'),
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
            name: NameNode(value: 'allMstrItemActualSizes'),
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
                        name: NameNode(value: 'mstrItemActualSizeId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'mstrItemId'),
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
                          value: 'mstrItemSizeKindByMstrItemSizeKindId',
                        ),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(
                          selections: [
                            FieldNode(
                              name: NameNode(value: 'mstrItemSizeKindId'),
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
Query$ItemActualSizeRead _parserFn$Query$ItemActualSizeRead(
  Map<String, dynamic> data,
) => Query$ItemActualSizeRead.fromJson(data);
typedef OnQueryComplete$Query$ItemActualSizeRead =
    FutureOr<void> Function(Map<String, dynamic>?, Query$ItemActualSizeRead?);

class Options$Query$ItemActualSizeRead
    extends graphql.QueryOptions<Query$ItemActualSizeRead> {
  Options$Query$ItemActualSizeRead({
    String? operationName,
    required Variables$Query$ItemActualSizeRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemActualSizeRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemActualSizeRead? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemActualSizeRead(data),
               ),
         onError: onError,
         document: documentNodeQueryItemActualSizeRead,
         parserFn: _parserFn$Query$ItemActualSizeRead,
       );

  final OnQueryComplete$Query$ItemActualSizeRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemActualSizeRead
    extends graphql.WatchQueryOptions<Query$ItemActualSizeRead> {
  WatchOptions$Query$ItemActualSizeRead({
    String? operationName,
    required Variables$Query$ItemActualSizeRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemActualSizeRead? typedOptimisticResult,
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
         document: documentNodeQueryItemActualSizeRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemActualSizeRead,
       );
}

class FetchMoreOptions$Query$ItemActualSizeRead
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemActualSizeRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemActualSizeRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemActualSizeRead,
       );
}

extension ClientExtension$Query$ItemActualSizeRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemActualSizeRead>>
  query$ItemActualSizeRead(Options$Query$ItemActualSizeRead options) async =>
      await this.query(options);

  graphql.ObservableQuery<Query$ItemActualSizeRead>
  watchQuery$ItemActualSizeRead(
    WatchOptions$Query$ItemActualSizeRead options,
  ) => this.watchQuery(options);

  void writeQuery$ItemActualSizeRead({
    required Query$ItemActualSizeRead data,
    required Variables$Query$ItemActualSizeRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryItemActualSizeRead,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemActualSizeRead? readQuery$ItemActualSizeRead({
    required Variables$Query$ItemActualSizeRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemActualSizeRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemActualSizeRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemActualSizeRead>
useQuery$ItemActualSizeRead(Options$Query$ItemActualSizeRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemActualSizeRead>
useWatchQuery$ItemActualSizeRead(
  WatchOptions$Query$ItemActualSizeRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemActualSizeRead$Widget
    extends graphql_flutter.Query<Query$ItemActualSizeRead> {
  Query$ItemActualSizeRead$Widget({
    widgets.Key? key,
    required Options$Query$ItemActualSizeRead options,
    required graphql_flutter.QueryBuilder<Query$ItemActualSizeRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemActualSizeRead$allMstrItemActualSizes {
  Query$ItemActualSizeRead$allMstrItemActualSizes({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrItemActualSizesConnection',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes(
      totalCount: (l$totalCount as int),
      pageInfo:
          Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo.fromJson(
            (l$pageInfo as Map<String, dynamic>),
          ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo pageInfo;

  final List<Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?> nodes;

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
    if (other is! Query$ItemActualSizeRead$allMstrItemActualSizes ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes
    on Query$ItemActualSizeRead$allMstrItemActualSizes {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<
    Query$ItemActualSizeRead$allMstrItemActualSizes
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes(this, (i) => i);
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes(
    Query$ItemActualSizeRead$allMstrItemActualSizes instance,
    TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes) then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes;

  TRes call({
    int? totalCount,
    Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo? pageInfo,
    List<Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<
          Query$ItemActualSizeRead$allMstrItemActualSizes$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes>
    implements CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes> {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes _instance;

  final TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<
          Query$ItemActualSizeRead$allMstrItemActualSizes$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes>
    implements CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes<TRes> {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo? pageInfo,
    List<Query$ItemActualSizeRead$allMstrItemActualSizes$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo {
  Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
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
    if (other is! Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo
    on Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
    Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
    Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo instance,
    TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo)
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo _instance;

  final TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
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

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes({
    required this.mstrItemActualSizeId,
    required this.mstrItemId,
    this.sizeValue,
    this.detail,
    this.remarks,
    this.updateAt,
    this.remove,
    this.mstrItemSizeKindByMstrItemSizeKindId,
    this.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    this.$__typename = 'MstrItemActualSize',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemActualSizeId = json['mstrItemActualSizeId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$sizeValue = json['sizeValue'];
    final l$detail = json['detail'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        json['mstrItemSizeKindByMstrItemSizeKindId'];
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        json['historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
      mstrItemActualSizeId: (l$mstrItemActualSizeId as String),
      mstrItemId: (l$mstrItemId as String),
      sizeValue: (l$sizeValue as String?),
      detail: (l$detail as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      mstrItemSizeKindByMstrItemSizeKindId:
          l$mstrItemSizeKindByMstrItemSizeKindId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
              (l$mstrItemSizeKindByMstrItemSizeKindId as Map<String, dynamic>),
            ),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
              (l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemActualSizeId;

  final String mstrItemId;

  final String? sizeValue;

  final String? detail;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId?
  mstrItemSizeKindByMstrItemSizeKindId;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
  historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    _resultData['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$sizeValue = sizeValue;
    _resultData['sizeValue'] = l$sizeValue;
    final l$detail = detail;
    _resultData['detail'] = l$detail;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$updateAt = updateAt;
    _resultData['updateAt'] = l$updateAt;
    final l$remove = remove;
    _resultData['remove'] = l$remove;
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    _resultData['mstrItemSizeKindByMstrItemSizeKindId'] =
        l$mstrItemSizeKindByMstrItemSizeKindId?.toJson();
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
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    final l$sizeValue = sizeValue;
    final l$detail = detail;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      l$mstrItemId,
      l$sizeValue,
      l$detail,
      l$remarks,
      l$updateAt,
      l$remove,
      l$mstrItemSizeKindByMstrItemSizeKindId,
      l$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final lOther$mstrItemActualSizeId = other.mstrItemActualSizeId;
    if (l$mstrItemActualSizeId != lOther$mstrItemActualSizeId) {
      return false;
    }
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
      return false;
    }
    final l$sizeValue = sizeValue;
    final lOther$sizeValue = other.sizeValue;
    if (l$sizeValue != lOther$sizeValue) {
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
    final l$mstrItemSizeKindByMstrItemSizeKindId =
        mstrItemSizeKindByMstrItemSizeKindId;
    final lOther$mstrItemSizeKindByMstrItemSizeKindId =
        other.mstrItemSizeKindByMstrItemSizeKindId;
    if (l$mstrItemSizeKindByMstrItemSizeKindId !=
        lOther$mstrItemSizeKindByMstrItemSizeKindId) {
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes
    on Query$ItemActualSizeRead$allMstrItemActualSizes$nodes {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes instance,
    TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes$nodes) then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes;

  TRes call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? sizeValue,
    String? detail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId;
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<TRes>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<TRes> {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes _instance;

  final TRes Function(Query$ItemActualSizeRead$allMstrItemActualSizes$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? sizeValue = _undefined,
    Object? detail = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? mstrItemSizeKindByMstrItemSizeKindId = _undefined,
    Object? historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
      mstrItemActualSizeId:
          mstrItemActualSizeId == _undefined || mstrItemActualSizeId == null
          ? _instance.mstrItemActualSizeId
          : (mstrItemActualSizeId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      sizeValue: sizeValue == _undefined
          ? _instance.sizeValue
          : (sizeValue as String?),
      detail: detail == _undefined ? _instance.detail : (detail as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      mstrItemSizeKindByMstrItemSizeKindId:
          mstrItemSizeKindByMstrItemSizeKindId == _undefined
          ? _instance.mstrItemSizeKindByMstrItemSizeKindId
          : (mstrItemSizeKindByMstrItemSizeKindId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId?),
      historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId:
          historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == _undefined
          ? _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
          : (historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId {
    final local$mstrItemSizeKindByMstrItemSizeKindId =
        _instance.mstrItemSizeKindByMstrItemSizeKindId;
    return local$mstrItemSizeKindByMstrItemSizeKindId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
            local$mstrItemSizeKindByMstrItemSizeKindId,
            (e) => call(mstrItemSizeKindByMstrItemSizeKindId: e),
          );
  }

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
    final local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =
        _instance.historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;
    return local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
            local$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
            (e) =>
                call(historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes<TRes> {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? sizeValue,
    String? detail,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId?
    mstrItemSizeKindByMstrItemSizeKindId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId?
    historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    TRes
  >
  get mstrItemSizeKindByMstrItemSizeKindId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
        _res,
      );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    TRes
  >
  get historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
        _res,
      );
}

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId({
    required this.mstrItemSizeKindId,
    required this.code,
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
  sharedAppellationBySharedAppellationsId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$sharedAppellationBySharedAppellationsId =
        sharedAppellationBySharedAppellationsId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.fromJson(
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
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId,
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
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    String? ja,
    String? en,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$mstrItemSizeKindByMstrItemSizeKindId$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNicknameId(
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

class Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId({
    required this.historyId,
    required this.infoStaffId,
    this.sharedAppellationsId,
    this.$__typename = 'HistoryInfoStaff',
  });

  factory Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$historyId = json['historyId'];
    final l$infoStaffId = json['infoStaffId'];
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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
            is! Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId ||
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

extension UtilityExtension$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    on
        Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId {
  CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
    instance,
    TRes Function(
      Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  factory CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? sharedAppellationsId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId
  _instance;

  final TRes Function(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyId = _undefined,
    Object? infoStaffId = _undefined,
    Object? sharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeRead$allMstrItemActualSizes$nodes$historyInfoStaffByUpdateUserHistoryIdAndUpdateUserId(
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

class Variables$Query$ItemActualSizeReadUpdaterAppellation {
  factory Variables$Query$ItemActualSizeReadUpdaterAppellation({
    required String sharedAppellationsId,
  }) => Variables$Query$ItemActualSizeReadUpdaterAppellation._({
    r'sharedAppellationsId': sharedAppellationsId,
  });

  Variables$Query$ItemActualSizeReadUpdaterAppellation._(this._$data);

  factory Variables$Query$ItemActualSizeReadUpdaterAppellation.fromJson(
    Map<String, dynamic> data,
  ) {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = data['sharedAppellationsId'];
    result$data['sharedAppellationsId'] = (l$sharedAppellationsId as String);
    return Variables$Query$ItemActualSizeReadUpdaterAppellation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get sharedAppellationsId => (_$data['sharedAppellationsId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$sharedAppellationsId = sharedAppellationsId;
    result$data['sharedAppellationsId'] = l$sharedAppellationsId;
    return result$data;
  }

  CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation<
    Variables$Query$ItemActualSizeReadUpdaterAppellation
  >
  get copyWith => CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation(
    this,
    (i) => i,
  );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemActualSizeReadUpdaterAppellation ||
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

abstract class CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation<
  TRes
> {
  factory CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation(
    Variables$Query$ItemActualSizeReadUpdaterAppellation instance,
    TRes Function(Variables$Query$ItemActualSizeReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation;

  factory CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation.stub(
    TRes res,
  ) = _CopyWithStubImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation;

  TRes call({String? sharedAppellationsId});
}

class _CopyWithImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation<TRes>
    implements
        CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Variables$Query$ItemActualSizeReadUpdaterAppellation _instance;

  final TRes Function(Variables$Query$ItemActualSizeReadUpdaterAppellation)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? sharedAppellationsId = _undefined}) => _then(
    Variables$Query$ItemActualSizeReadUpdaterAppellation._({
      ..._instance._$data,
      if (sharedAppellationsId != _undefined && sharedAppellationsId != null)
        'sharedAppellationsId': (sharedAppellationsId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation<
  TRes
>
    implements
        CopyWith$Variables$Query$ItemActualSizeReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemActualSizeReadUpdaterAppellation(
    this._res,
  );

  TRes _res;

  call({String? sharedAppellationsId}) => _res;
}

class Query$ItemActualSizeReadUpdaterAppellation {
  Query$ItemActualSizeReadUpdaterAppellation({
    this.sharedAppellationBySharedAppellationsId,
    this.$__typename = 'Query',
  });

  factory Query$ItemActualSizeReadUpdaterAppellation.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationBySharedAppellationsId =
        json['sharedAppellationBySharedAppellationsId'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          l$sharedAppellationBySharedAppellationsId == null
          ? null
          : Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
              (l$sharedAppellationBySharedAppellationsId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
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
    if (other is! Query$ItemActualSizeReadUpdaterAppellation ||
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

extension UtilityExtension$Query$ItemActualSizeReadUpdaterAppellation
    on Query$ItemActualSizeReadUpdaterAppellation {
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation<
    Query$ItemActualSizeReadUpdaterAppellation
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation(this, (i) => i);
}

abstract class CopyWith$Query$ItemActualSizeReadUpdaterAppellation<TRes> {
  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation(
    Query$ItemActualSizeReadUpdaterAppellation instance,
    TRes Function(Query$ItemActualSizeReadUpdaterAppellation) then,
  ) = _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation;

  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation;

  TRes call({
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId;
}

class _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemActualSizeReadUpdaterAppellation<TRes> {
  _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeReadUpdaterAppellation _instance;

  final TRes Function(Query$ItemActualSizeReadUpdaterAppellation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationBySharedAppellationsId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeReadUpdaterAppellation(
      sharedAppellationBySharedAppellationsId:
          sharedAppellationBySharedAppellationsId == _undefined
          ? _instance.sharedAppellationBySharedAppellationsId
          : (sharedAppellationBySharedAppellationsId
                as Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId {
    final local$sharedAppellationBySharedAppellationsId =
        _instance.sharedAppellationBySharedAppellationsId;
    return local$sharedAppellationBySharedAppellationsId == null
        ? CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
            local$sharedAppellationBySharedAppellationsId,
            (e) => call(sharedAppellationBySharedAppellationsId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation<TRes>
    implements CopyWith$Query$ItemActualSizeReadUpdaterAppellation<TRes> {
  _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation(this._res);

  TRes _res;

  call({
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId?
    sharedAppellationBySharedAppellationsId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    TRes
  >
  get sharedAppellationBySharedAppellationsId =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
        _res,
      );
}

const documentNodeQueryItemActualSizeReadUpdaterAppellation = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemActualSizeReadUpdaterAppellation'),
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
Query$ItemActualSizeReadUpdaterAppellation
_parserFn$Query$ItemActualSizeReadUpdaterAppellation(
  Map<String, dynamic> data,
) => Query$ItemActualSizeReadUpdaterAppellation.fromJson(data);
typedef OnQueryComplete$Query$ItemActualSizeReadUpdaterAppellation =
    FutureOr<void> Function(
      Map<String, dynamic>?,
      Query$ItemActualSizeReadUpdaterAppellation?,
    );

class Options$Query$ItemActualSizeReadUpdaterAppellation
    extends graphql.QueryOptions<Query$ItemActualSizeReadUpdaterAppellation> {
  Options$Query$ItemActualSizeReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemActualSizeReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemActualSizeReadUpdaterAppellation? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemActualSizeReadUpdaterAppellation? onComplete,
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
                     : _parserFn$Query$ItemActualSizeReadUpdaterAppellation(
                         data,
                       ),
               ),
         onError: onError,
         document: documentNodeQueryItemActualSizeReadUpdaterAppellation,
         parserFn: _parserFn$Query$ItemActualSizeReadUpdaterAppellation,
       );

  final OnQueryComplete$Query$ItemActualSizeReadUpdaterAppellation?
  onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemActualSizeReadUpdaterAppellation
    extends
        graphql.WatchQueryOptions<Query$ItemActualSizeReadUpdaterAppellation> {
  WatchOptions$Query$ItemActualSizeReadUpdaterAppellation({
    String? operationName,
    required Variables$Query$ItemActualSizeReadUpdaterAppellation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemActualSizeReadUpdaterAppellation? typedOptimisticResult,
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
         document: documentNodeQueryItemActualSizeReadUpdaterAppellation,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemActualSizeReadUpdaterAppellation,
       );
}

class FetchMoreOptions$Query$ItemActualSizeReadUpdaterAppellation
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemActualSizeReadUpdaterAppellation({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemActualSizeReadUpdaterAppellation variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemActualSizeReadUpdaterAppellation,
       );
}

extension ClientExtension$Query$ItemActualSizeReadUpdaterAppellation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemActualSizeReadUpdaterAppellation>>
  query$ItemActualSizeReadUpdaterAppellation(
    Options$Query$ItemActualSizeReadUpdaterAppellation options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemActualSizeReadUpdaterAppellation>
  watchQuery$ItemActualSizeReadUpdaterAppellation(
    WatchOptions$Query$ItemActualSizeReadUpdaterAppellation options,
  ) => this.watchQuery(options);

  void writeQuery$ItemActualSizeReadUpdaterAppellation({
    required Query$ItemActualSizeReadUpdaterAppellation data,
    required Variables$Query$ItemActualSizeReadUpdaterAppellation variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(
        document: documentNodeQueryItemActualSizeReadUpdaterAppellation,
      ),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemActualSizeReadUpdaterAppellation?
  readQuery$ItemActualSizeReadUpdaterAppellation({
    required Variables$Query$ItemActualSizeReadUpdaterAppellation variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemActualSizeReadUpdaterAppellation,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ItemActualSizeReadUpdaterAppellation.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemActualSizeReadUpdaterAppellation>
useQuery$ItemActualSizeReadUpdaterAppellation(
  Options$Query$ItemActualSizeReadUpdaterAppellation options,
) => graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemActualSizeReadUpdaterAppellation>
useWatchQuery$ItemActualSizeReadUpdaterAppellation(
  WatchOptions$Query$ItemActualSizeReadUpdaterAppellation options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemActualSizeReadUpdaterAppellation$Widget
    extends graphql_flutter.Query<Query$ItemActualSizeReadUpdaterAppellation> {
  Query$ItemActualSizeReadUpdaterAppellation$Widget({
    widgets.Key? key,
    required Options$Query$ItemActualSizeReadUpdaterAppellation options,
    required graphql_flutter.QueryBuilder<
      Query$ItemActualSizeReadUpdaterAppellation
    >
    builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedAppellationsId = json['sharedAppellationsId'];
    final l$sharedDictionaryBySharedDictionaryNameId =
        json['sharedDictionaryBySharedDictionaryNameId'];
    final l$sharedDictionaryBySharedDictionaryPronunciationId =
        json['sharedDictionaryBySharedDictionaryPronunciationId'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
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
            is! Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId ||
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

extension UtilityExtension$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    on
        Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId {
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
    instance,
    TRes Function(
      Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  });
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
}

class _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId
  _instance;

  final TRes Function(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedAppellationsId = _undefined,
    Object? sharedDictionaryBySharedDictionaryNameId = _undefined,
    Object? sharedDictionaryBySharedDictionaryPronunciationId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );
}

class Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
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
            is! Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}

class Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId({
    this.ja,
    this.en,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$ja = json['ja'];
    final l$en = json['en'];
    final l$$__typename = json['__typename'];
    return Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
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
            is! Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({String? ja, String? en, String? $__typename});
}

class _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? ja = _undefined,
    Object? en = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
      ja: ja == _undefined ? _instance.ja : (ja as String?),
      en: en == _undefined ? _instance.en : (en as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemActualSizeReadUpdaterAppellation$sharedAppellationBySharedAppellationsId$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({String? ja, String? en, String? $__typename}) => _res;
}
