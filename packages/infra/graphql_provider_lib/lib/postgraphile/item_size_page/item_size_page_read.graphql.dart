import '../schema.graphql.dart';

import 'dart:async';

import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$ItemSizePageRead {
  factory Variables$Query$ItemSizePageRead({
    required int first,
    int? offset,
    Input$MstrItemActualSizeFilter? filter,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    required String mstrItemId,
    required String languageCodeId,
    bool? removed,
  }) => Variables$Query$ItemSizePageRead._({
    r'first': first,
    if (offset != null) r'offset': offset,
    if (filter != null) r'filter': filter,
    if (orderBy != null) r'orderBy': orderBy,
    r'mstrItemId': mstrItemId,
    r'languageCodeId': languageCodeId,
    if (removed != null) r'removed': removed,
  });

  Variables$Query$ItemSizePageRead._(this._$data);

  factory Variables$Query$ItemSizePageRead.fromJson(Map<String, dynamic> data) {
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
          : Input$MstrItemActualSizeFilter.fromJson(
              (l$filter as Map<String, dynamic>),
            );
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => fromJson$Enum$MstrItemActualSizesOrderBy((e as String)))
          .toList();
    }
    final l$mstrItemId = data['mstrItemId'];
    result$data['mstrItemId'] = (l$mstrItemId as String);
    final l$languageCodeId = data['languageCodeId'];
    result$data['languageCodeId'] = (l$languageCodeId as String);
    if (data.containsKey('removed')) {
      final l$removed = data['removed'];
      result$data['removed'] = (l$removed as bool?);
    }
    return Variables$Query$ItemSizePageRead._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  int? get offset => (_$data['offset'] as int?);

  Input$MstrItemActualSizeFilter? get filter =>
      (_$data['filter'] as Input$MstrItemActualSizeFilter?);

  List<Enum$MstrItemActualSizesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Enum$MstrItemActualSizesOrderBy>?);

  String get mstrItemId => (_$data['mstrItemId'] as String);

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
          ?.map((e) => toJson$Enum$MstrItemActualSizesOrderBy(e))
          .toList();
    }
    final l$mstrItemId = mstrItemId;
    result$data['mstrItemId'] = l$mstrItemId;
    final l$languageCodeId = languageCodeId;
    result$data['languageCodeId'] = l$languageCodeId;
    if (_$data.containsKey('removed')) {
      final l$removed = removed;
      result$data['removed'] = l$removed;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ItemSizePageRead<Variables$Query$ItemSizePageRead>
  get copyWith => CopyWith$Variables$Query$ItemSizePageRead(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ItemSizePageRead ||
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
    final l$mstrItemId = mstrItemId;
    final lOther$mstrItemId = other.mstrItemId;
    if (l$mstrItemId != lOther$mstrItemId) {
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
    final l$mstrItemId = mstrItemId;
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
      l$mstrItemId,
      l$languageCodeId,
      _$data.containsKey('removed') ? l$removed : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ItemSizePageRead<TRes> {
  factory CopyWith$Variables$Query$ItemSizePageRead(
    Variables$Query$ItemSizePageRead instance,
    TRes Function(Variables$Query$ItemSizePageRead) then,
  ) = _CopyWithImpl$Variables$Query$ItemSizePageRead;

  factory CopyWith$Variables$Query$ItemSizePageRead.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ItemSizePageRead;

  TRes call({
    int? first,
    int? offset,
    Input$MstrItemActualSizeFilter? filter,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    String? mstrItemId,
    String? languageCodeId,
    bool? removed,
  });
}

class _CopyWithImpl$Variables$Query$ItemSizePageRead<TRes>
    implements CopyWith$Variables$Query$ItemSizePageRead<TRes> {
  _CopyWithImpl$Variables$Query$ItemSizePageRead(this._instance, this._then);

  final Variables$Query$ItemSizePageRead _instance;

  final TRes Function(Variables$Query$ItemSizePageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? mstrItemId = _undefined,
    Object? languageCodeId = _undefined,
    Object? removed = _undefined,
  }) => _then(
    Variables$Query$ItemSizePageRead._({
      ..._instance._$data,
      if (first != _undefined && first != null) 'first': (first as int),
      if (offset != _undefined) 'offset': (offset as int?),
      if (filter != _undefined)
        'filter': (filter as Input$MstrItemActualSizeFilter?),
      if (orderBy != _undefined)
        'orderBy': (orderBy as List<Enum$MstrItemActualSizesOrderBy>?),
      if (mstrItemId != _undefined && mstrItemId != null)
        'mstrItemId': (mstrItemId as String),
      if (languageCodeId != _undefined && languageCodeId != null)
        'languageCodeId': (languageCodeId as String),
      if (removed != _undefined) 'removed': (removed as bool?),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$ItemSizePageRead<TRes>
    implements CopyWith$Variables$Query$ItemSizePageRead<TRes> {
  _CopyWithStubImpl$Variables$Query$ItemSizePageRead(this._res);

  TRes _res;

  call({
    int? first,
    int? offset,
    Input$MstrItemActualSizeFilter? filter,
    List<Enum$MstrItemActualSizesOrderBy>? orderBy,
    String? mstrItemId,
    String? languageCodeId,
    bool? removed,
  }) => _res;
}

class Query$ItemSizePageRead {
  Query$ItemSizePageRead({
    this.allMstrItemActualSizes,
    this.$__typename = 'Query',
  });

  factory Query$ItemSizePageRead.fromJson(Map<String, dynamic> json) {
    final l$allMstrItemActualSizes = json['allMstrItemActualSizes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead(
      allMstrItemActualSizes: l$allMstrItemActualSizes == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes.fromJson(
              (l$allMstrItemActualSizes as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ItemSizePageRead$allMstrItemActualSizes? allMstrItemActualSizes;

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
    if (other is! Query$ItemSizePageRead || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$ItemSizePageRead on Query$ItemSizePageRead {
  CopyWith$Query$ItemSizePageRead<Query$ItemSizePageRead> get copyWith =>
      CopyWith$Query$ItemSizePageRead(this, (i) => i);
}

abstract class CopyWith$Query$ItemSizePageRead<TRes> {
  factory CopyWith$Query$ItemSizePageRead(
    Query$ItemSizePageRead instance,
    TRes Function(Query$ItemSizePageRead) then,
  ) = _CopyWithImpl$Query$ItemSizePageRead;

  factory CopyWith$Query$ItemSizePageRead.stub(TRes res) =
      _CopyWithStubImpl$Query$ItemSizePageRead;

  TRes call({
    Query$ItemSizePageRead$allMstrItemActualSizes? allMstrItemActualSizes,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes;
}

class _CopyWithImpl$Query$ItemSizePageRead<TRes>
    implements CopyWith$Query$ItemSizePageRead<TRes> {
  _CopyWithImpl$Query$ItemSizePageRead(this._instance, this._then);

  final Query$ItemSizePageRead _instance;

  final TRes Function(Query$ItemSizePageRead) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? allMstrItemActualSizes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead(
      allMstrItemActualSizes: allMstrItemActualSizes == _undefined
          ? _instance.allMstrItemActualSizes
          : (allMstrItemActualSizes
                as Query$ItemSizePageRead$allMstrItemActualSizes?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes {
    final local$allMstrItemActualSizes = _instance.allMstrItemActualSizes;
    return local$allMstrItemActualSizes == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes(
            local$allMstrItemActualSizes,
            (e) => call(allMstrItemActualSizes: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead<TRes>
    implements CopyWith$Query$ItemSizePageRead<TRes> {
  _CopyWithStubImpl$Query$ItemSizePageRead(this._res);

  TRes _res;

  call({
    Query$ItemSizePageRead$allMstrItemActualSizes? allMstrItemActualSizes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes>
  get allMstrItemActualSizes =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes.stub(_res);
}

const documentNodeQueryItemSizePageRead = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ItemSizePageRead'),
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
            name: NameNode(value: 'MstrItemActualSizeFilter'),
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
              name: NameNode(value: 'MstrItemActualSizesOrderBy'),
              isNonNull: true,
            ),
            isNonNull: false,
          ),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'mstrItemId')),
          type: NamedTypeNode(name: NameNode(value: 'UUID'), isNonNull: true),
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
                          ObjectValueNode(
                            fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'mstrItemId'),
                                value: ObjectValueNode(
                                  fields: [
                                    ObjectFieldNode(
                                      name: NameNode(value: 'equalTo'),
                                      value: VariableNode(
                                        name: NameNode(value: 'mstrItemId'),
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
                        name: NameNode(value: 'mstrItemSizeKindId'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(
                          value: 'mstrItemSizeKindByMstrItemSizeKindId',
                        ),
                        alias: NameNode(value: 'kinds'),
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
                              name: NameNode(value: 'names'),
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
                              name: NameNode(value: 'sharedUnitId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'sharedUnitBySharedUnitId'),
                              alias: NameNode(value: 'unit'),
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
                              name: NameNode(
                                value: 'vItemSizeKindItemActualSizeCountByMstrItemSizeKindId',
                              ),
                              alias: NameNode(value: 'item_actual_size_count'),
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
Query$ItemSizePageRead _parserFn$Query$ItemSizePageRead(
  Map<String, dynamic> data,
) => Query$ItemSizePageRead.fromJson(data);
typedef OnQueryComplete$Query$ItemSizePageRead = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ItemSizePageRead?,
);

class Options$Query$ItemSizePageRead
    extends graphql.QueryOptions<Query$ItemSizePageRead> {
  Options$Query$ItemSizePageRead({
    String? operationName,
    required Variables$Query$ItemSizePageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizePageRead? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ItemSizePageRead? onComplete,
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
                 data == null ? null : _parserFn$Query$ItemSizePageRead(data),
               ),
         onError: onError,
         document: documentNodeQueryItemSizePageRead,
         parserFn: _parserFn$Query$ItemSizePageRead,
       );

  final OnQueryComplete$Query$ItemSizePageRead? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
    ...super.onComplete == null
        ? super.properties
        : super.properties.where((property) => property != onComplete),
    onCompleteWithParsed,
  ];
}

class WatchOptions$Query$ItemSizePageRead
    extends graphql.WatchQueryOptions<Query$ItemSizePageRead> {
  WatchOptions$Query$ItemSizePageRead({
    String? operationName,
    required Variables$Query$ItemSizePageRead variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ItemSizePageRead? typedOptimisticResult,
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
         document: documentNodeQueryItemSizePageRead,
         pollInterval: pollInterval,
         eagerlyFetchResults: eagerlyFetchResults,
         carryForwardDataOnException: carryForwardDataOnException,
         fetchResults: fetchResults,
         parserFn: _parserFn$Query$ItemSizePageRead,
       );
}

class FetchMoreOptions$Query$ItemSizePageRead extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ItemSizePageRead({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ItemSizePageRead variables,
  }) : super(
         updateQuery: updateQuery,
         variables: variables.toJson(),
         document: documentNodeQueryItemSizePageRead,
       );
}

extension ClientExtension$Query$ItemSizePageRead on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ItemSizePageRead>> query$ItemSizePageRead(
    Options$Query$ItemSizePageRead options,
  ) async => await this.query(options);

  graphql.ObservableQuery<Query$ItemSizePageRead> watchQuery$ItemSizePageRead(
    WatchOptions$Query$ItemSizePageRead options,
  ) => this.watchQuery(options);

  void writeQuery$ItemSizePageRead({
    required Query$ItemSizePageRead data,
    required Variables$Query$ItemSizePageRead variables,
    bool broadcast = true,
  }) => this.writeQuery(
    graphql.Request(
      operation: graphql.Operation(document: documentNodeQueryItemSizePageRead),
      variables: variables.toJson(),
    ),
    data: data.toJson(),
    broadcast: broadcast,
  );

  Query$ItemSizePageRead? readQuery$ItemSizePageRead({
    required Variables$Query$ItemSizePageRead variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
          document: documentNodeQueryItemSizePageRead,
        ),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ItemSizePageRead.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ItemSizePageRead>
useQuery$ItemSizePageRead(Options$Query$ItemSizePageRead options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ItemSizePageRead> useWatchQuery$ItemSizePageRead(
  WatchOptions$Query$ItemSizePageRead options,
) => graphql_flutter.useWatchQuery(options);

class Query$ItemSizePageRead$Widget
    extends graphql_flutter.Query<Query$ItemSizePageRead> {
  Query$ItemSizePageRead$Widget({
    widgets.Key? key,
    required Options$Query$ItemSizePageRead options,
    required graphql_flutter.QueryBuilder<Query$ItemSizePageRead> builder,
  }) : super(key: key, options: options, builder: builder);
}

class Query$ItemSizePageRead$allMstrItemActualSizes {
  Query$ItemSizePageRead$allMstrItemActualSizes({
    required this.totalCount,
    required this.pageInfo,
    required this.nodes,
    this.$__typename = 'MstrItemActualSizesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$totalCount = json['totalCount'];
    final l$pageInfo = json['pageInfo'];
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes(
      totalCount: (l$totalCount as int),
      pageInfo: Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo.fromJson(
        (l$pageInfo as Map<String, dynamic>),
      ),
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int totalCount;

  final Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo pageInfo;

  final List<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?> nodes;

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
    if (other is! Query$ItemSizePageRead$allMstrItemActualSizes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes
    on Query$ItemSizePageRead$allMstrItemActualSizes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<
    Query$ItemSizePageRead$allMstrItemActualSizes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes(this, (i) => i);
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes(
    Query$ItemSizePageRead$allMstrItemActualSizes instance,
    TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes) then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes;

  TRes call({
    int? totalCount,
    Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo? pageInfo,
    List<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?>? nodes,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo;
  TRes nodes(
    Iterable<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes<TRes>
    implements CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes> {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes _instance;

  final TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? totalCount = _undefined,
    Object? pageInfo = _undefined,
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes(
      totalCount: totalCount == _undefined || totalCount == null
          ? _instance.totalCount
          : (totalCount as int),
      pageInfo: pageInfo == _undefined || pageInfo == null
          ? _instance.pageInfo
          : (pageInfo
                as Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo),
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
      local$pageInfo,
      (e) => call(pageInfo: e),
    );
  }

  TRes nodes(
    Iterable<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?> Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes<TRes>
    implements CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes<TRes> {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes(this._res);

  TRes _res;

  call({
    int? totalCount,
    Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo? pageInfo,
    List<Query$ItemSizePageRead$allMstrItemActualSizes$nodes?>? nodes,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes>
  get pageInfo =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo.stub(
        _res,
      );

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo {
  Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo({
    required this.hasNextPage,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$hasNextPage = json['hasNextPage'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
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
    if (other is! Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo
    on Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<
    Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
    Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo instance,
    TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo) then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo;

  TRes call({bool? hasNextPage, String? endCursor, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes> {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo _instance;

  final TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
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

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$pageInfo(
    this._res,
  );

  TRes _res;

  call({bool? hasNextPage, String? endCursor, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes({
    required this.mstrItemActualSizeId,
    required this.mstrItemId,
    required this.mstrItemSizeKindId,
    this.kinds,
    this.detailTexts,
    this.symbol,
    this.remarks,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrItemActualSize',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemActualSizeId = json['mstrItemActualSizeId'];
    final l$mstrItemId = json['mstrItemId'];
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$kinds = json['kinds'];
    final l$detailTexts = json['detailTexts'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
      mstrItemActualSizeId: (l$mstrItemActualSizeId as String),
      mstrItemId: (l$mstrItemId as String),
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      kinds: l$kinds == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds.fromJson(
              (l$kinds as Map<String, dynamic>),
            ),
      detailTexts: l$detailTexts == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts.fromJson(
              (l$detailTexts as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemActualSizeId;

  final String mstrItemId;

  final String mstrItemSizeKindId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds? kinds;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts?
  detailTexts;

  final String? symbol;

  final String? remarks;

  final String? updateAt;

  final bool? remove;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    _resultData['mstrItemActualSizeId'] = l$mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    _resultData['mstrItemId'] = l$mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$kinds = kinds;
    _resultData['kinds'] = l$kinds?.toJson();
    final l$detailTexts = detailTexts;
    _resultData['detailTexts'] = l$detailTexts?.toJson();
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
    final l$mstrItemActualSizeId = mstrItemActualSizeId;
    final l$mstrItemId = mstrItemId;
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$kinds = kinds;
    final l$detailTexts = detailTexts;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemActualSizeId,
      l$mstrItemId,
      l$mstrItemSizeKindId,
      l$kinds,
      l$detailTexts,
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
    if (other is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes ||
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$kinds = kinds;
    final lOther$kinds = other.kinds;
    if (l$kinds != lOther$kinds) {
      return false;
    }
    final l$detailTexts = detailTexts;
    final lOther$detailTexts = other.detailTexts;
    if (l$detailTexts != lOther$detailTexts) {
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes
  >
  get copyWith => CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
    this,
    (i) => i,
  );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes instance,
    TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$nodes) then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes;

  TRes call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds? kinds,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts?
    detailTexts,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<TRes>
  get kinds;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<TRes>
  get detailTexts;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<TRes>
  get update_user;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<TRes>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<TRes> {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes _instance;

  final TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$nodes)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemActualSizeId = _undefined,
    Object? mstrItemId = _undefined,
    Object? mstrItemSizeKindId = _undefined,
    Object? kinds = _undefined,
    Object? detailTexts = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
      mstrItemActualSizeId:
          mstrItemActualSizeId == _undefined || mstrItemActualSizeId == null
          ? _instance.mstrItemActualSizeId
          : (mstrItemActualSizeId as String),
      mstrItemId: mstrItemId == _undefined || mstrItemId == null
          ? _instance.mstrItemId
          : (mstrItemId as String),
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      kinds: kinds == _undefined
          ? _instance.kinds
          : (kinds
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds?),
      detailTexts: detailTexts == _undefined
          ? _instance.detailTexts
          : (detailTexts
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<TRes>
  get kinds {
    final local$kinds = _instance.kinds;
    return local$kinds == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
            local$kinds,
            (e) => call(kinds: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<TRes>
  get detailTexts {
    final local$detailTexts = _instance.detailTexts;
    return local$detailTexts == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
            local$detailTexts,
            (e) => call(detailTexts: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<TRes>
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes<TRes> {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemActualSizeId,
    String? mstrItemId,
    String? mstrItemSizeKindId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds? kinds,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts?
    detailTexts,
    String? symbol,
    String? remarks,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<TRes>
  get kinds =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<TRes>
  get detailTexts =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<TRes>
  get update_user =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds({
    required this.mstrItemSizeKindId,
    required this.code,
    required this.names,
    this.labels,
    required this.sharedUnitId,
    this.unit,
    this.symbol,
    this.remarks,
    this.item_actual_size_count,
    this.updateAt,
    this.remove,
    this.update_user,
    this.$__typename = 'MstrItemSizeKind',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$code = json['code'];
    final l$names = json['names'];
    final l$labels = json['labels'];
    final l$sharedUnitId = json['sharedUnitId'];
    final l$unit = json['unit'];
    final l$symbol = json['symbol'];
    final l$remarks = json['remarks'];
    final l$item_actual_size_count = json['item_actual_size_count'];
    final l$updateAt = json['updateAt'];
    final l$remove = json['remove'];
    final l$update_user = json['update_user'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String),
      code: (l$code as String),
      names: (l$names as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      sharedUnitId: (l$sharedUnitId as String),
      unit: l$unit == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit.fromJson(
              (l$unit as Map<String, dynamic>),
            ),
      symbol: (l$symbol as String?),
      remarks: (l$remarks as String?),
      item_actual_size_count: l$item_actual_size_count == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count.fromJson(
              (l$item_actual_size_count as Map<String, dynamic>),
            ),
      updateAt: (l$updateAt as String?),
      remove: (l$remove as bool?),
      update_user: l$update_user == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user.fromJson(
              (l$update_user as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String mstrItemSizeKindId;

  final String code;

  final String names;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels?
  labels;

  final String sharedUnitId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit? unit;

  final String? symbol;

  final String? remarks;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count?
  item_actual_size_count;

  final String? updateAt;

  final bool? remove;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user?
  update_user;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$names = names;
    _resultData['names'] = l$names;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$unit = unit;
    _resultData['unit'] = l$unit?.toJson();
    final l$symbol = symbol;
    _resultData['symbol'] = l$symbol;
    final l$remarks = remarks;
    _resultData['remarks'] = l$remarks;
    final l$item_actual_size_count = item_actual_size_count;
    _resultData['item_actual_size_count'] = l$item_actual_size_count?.toJson();
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
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$code = code;
    final l$names = names;
    final l$labels = labels;
    final l$sharedUnitId = sharedUnitId;
    final l$unit = unit;
    final l$symbol = symbol;
    final l$remarks = remarks;
    final l$item_actual_size_count = item_actual_size_count;
    final l$updateAt = updateAt;
    final l$remove = remove;
    final l$update_user = update_user;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mstrItemSizeKindId,
      l$code,
      l$names,
      l$labels,
      l$sharedUnitId,
      l$unit,
      l$symbol,
      l$remarks,
      l$item_actual_size_count,
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
    if (other is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds ||
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
    final l$names = names;
    final lOther$names = other.names;
    if (l$names != lOther$names) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
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
    final l$item_actual_size_count = item_actual_size_count;
    final lOther$item_actual_size_count = other.item_actual_size_count;
    if (l$item_actual_size_count != lOther$item_actual_size_count) {
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds instance,
    TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds)
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds;

  TRes call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels? labels,
    String? sharedUnitId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit? unit,
    String? symbol,
    String? remarks,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count?
    item_actual_size_count,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user?
    update_user,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
    TRes
  >
  get labels;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<TRes>
  get unit;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
    TRes
  >
  get update_user;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds _instance;

  final TRes Function(Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds)
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? code = _undefined,
    Object? names = _undefined,
    Object? labels = _undefined,
    Object? sharedUnitId = _undefined,
    Object? unit = _undefined,
    Object? symbol = _undefined,
    Object? remarks = _undefined,
    Object? item_actual_size_count = _undefined,
    Object? updateAt = _undefined,
    Object? remove = _undefined,
    Object? update_user = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
      mstrItemSizeKindId:
          mstrItemSizeKindId == _undefined || mstrItemSizeKindId == null
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String),
      code: code == _undefined || code == null
          ? _instance.code
          : (code as String),
      names: names == _undefined || names == null
          ? _instance.names
          : (names as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels?),
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      unit: unit == _undefined
          ? _instance.unit
          : (unit
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit?),
      symbol: symbol == _undefined ? _instance.symbol : (symbol as String?),
      remarks: remarks == _undefined ? _instance.remarks : (remarks as String?),
      item_actual_size_count: item_actual_size_count == _undefined
          ? _instance.item_actual_size_count
          : (item_actual_size_count
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count?),
      updateAt: updateAt == _undefined
          ? _instance.updateAt
          : (updateAt as String?),
      remove: remove == _undefined ? _instance.remove : (remove as bool?),
      update_user: update_user == _undefined
          ? _instance.update_user
          : (update_user
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<TRes>
  get unit {
    final local$unit = _instance.unit;
    return local$unit == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
            local$unit,
            (e) => call(unit: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count {
    final local$item_actual_size_count = _instance.item_actual_size_count;
    return local$item_actual_size_count == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
            local$item_actual_size_count,
            (e) => call(item_actual_size_count: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
    TRes
  >
  get update_user {
    final local$update_user = _instance.update_user;
    return local$update_user == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
            local$update_user,
            (e) => call(update_user: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds(
    this._res,
  );

  TRes _res;

  call({
    String? mstrItemSizeKindId,
    String? code,
    String? names,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels? labels,
    String? sharedUnitId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit? unit,
    String? symbol,
    String? remarks,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count?
    item_actual_size_count,
    String? updateAt,
    bool? remove,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user?
    update_user,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<TRes>
  get unit =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
    TRes
  >
  get item_actual_size_count =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
    TRes
  >
  get update_user =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit({
    required this.sharedUnitId,
    this.labels,
    this.$__typename = 'SharedUnit',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedUnitId = json['sharedUnitId'];
    final l$labels = json['labels'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
      sharedUnitId: (l$sharedUnitId as String),
      labels: l$labels == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels.fromJson(
              (l$labels as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedUnitId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels?
  labels;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sharedUnitId = sharedUnitId;
    _resultData['sharedUnitId'] = l$sharedUnitId;
    final l$labels = labels;
    _resultData['labels'] = l$labels?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sharedUnitId = sharedUnitId;
    final l$labels = labels;
    final l$$__typename = $__typename;
    return Object.hashAll([l$sharedUnitId, l$labels, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sharedUnitId = sharedUnitId;
    final lOther$sharedUnitId = other.sharedUnitId;
    if (l$sharedUnitId != lOther$sharedUnitId) {
      return false;
    }
    final l$labels = labels;
    final lOther$labels = other.labels;
    if (l$labels != lOther$labels) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit;

  TRes call({
    String? sharedUnitId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels?
    labels,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
    TRes
  >
  get labels;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedUnitId = _undefined,
    Object? labels = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
      sharedUnitId: sharedUnitId == _undefined || sharedUnitId == null
          ? _instance.sharedUnitId
          : (sharedUnitId as String),
      labels: labels == _undefined
          ? _instance.labels
          : (labels
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
    TRes
  >
  get labels {
    final local$labels = _instance.labels;
    return local$labels == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
            local$labels,
            (e) => call(labels: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit(
    this._res,
  );

  TRes _res;

  call({
    String? sharedUnitId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels?
    labels,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
    TRes
  >
  get labels =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$unit$labels$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count({
    this.mstrItemSizeKindId,
    this.$__typename = 'VItemSizeKindItemActualSizeCount',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$mstrItemSizeKindId = json['mstrItemSizeKindId'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
      mstrItemSizeKindId: (l$mstrItemSizeKindId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? mstrItemSizeKindId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    _resultData['mstrItemSizeKindId'] = l$mstrItemSizeKindId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final l$$__typename = $__typename;
    return Object.hashAll([l$mstrItemSizeKindId, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mstrItemSizeKindId = mstrItemSizeKindId;
    final lOther$mstrItemSizeKindId = other.mstrItemSizeKindId;
    if (l$mstrItemSizeKindId != lOther$mstrItemSizeKindId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count;

  TRes call({String? mstrItemSizeKindId, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mstrItemSizeKindId = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
      mstrItemSizeKindId: mstrItemSizeKindId == _undefined
          ? _instance.mstrItemSizeKindId
          : (mstrItemSizeKindId as String?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$item_actual_size_count(
    this._res,
  );

  TRes _res;

  call({String? mstrItemSizeKindId, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user({
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

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name.fromJson(
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

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
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
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name?),
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

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name?
    name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$kinds$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts({
    required this.sharedTextId,
    required this.value,
    this.$__typename = 'SharedText',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedTextId = json['sharedTextId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
      sharedTextId: (l$sharedTextId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedTextId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts;

  TRes call({
    String? sharedTextId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedTextId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
      sharedTextId: sharedTextId == _undefined || sharedTextId == null
          ? _instance.sharedTextId
          : (sharedTextId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts(
    this._res,
  );

  TRes _res;

  call({
    String? sharedTextId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value({
    required this.nodes,
    this.$__typename = 'SharedTextValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes({
    this.charCount,
    this.leadText,
    this.$__typename = 'SharedTextValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$charCount = json['charCount'];
    final l$leadText = json['leadText'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes;

  TRes call({int? charCount, String? leadText, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? charCount = _undefined,
    Object? leadText = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
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

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$detailTexts$value$nodes(
    this._res,
  );

  TRes _res;

  call({int? charCount, String? leadText, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user({
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

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
      historyId: (l$historyId as String),
      infoStaffId: (l$infoStaffId as String),
      infoCompanyId: (l$infoCompanyId as String),
      code: (l$code as String?),
      name: l$name == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name.fromJson(
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

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user;

  TRes call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
    TRes
  >
  get name;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
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
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name?),
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

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
    TRes
  >
  get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
            local$name,
            (e) => call(name: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user(
    this._res,
  );

  TRes _res;

  call({
    String? historyId,
    String? infoStaffId,
    String? infoCompanyId,
    String? code,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name? name,
    String? sex,
    String? phone,
    String? symbol,
    String? privatePhone,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
    TRes
  >
  get name =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name({
    required this.sharedAppellationsId,
    this.sharedDictionaryBySharedDictionaryNameId,
    this.sharedDictionaryBySharedDictionaryPronunciationId,
    this.sharedDictionaryBySharedDictionaryNicknameId,
    this.$__typename = 'SharedAppellation',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name.fromJson(
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
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
      sharedAppellationsId: (l$sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          l$sharedDictionaryBySharedDictionaryNameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNameId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryPronunciationId:
          l$sharedDictionaryBySharedDictionaryPronunciationId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
              (l$sharedDictionaryBySharedDictionaryPronunciationId
                  as Map<String, dynamic>),
            ),
      sharedDictionaryBySharedDictionaryNicknameId:
          l$sharedDictionaryBySharedDictionaryNicknameId == null
          ? null
          : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
              (l$sharedDictionaryBySharedDictionaryNicknameId
                  as Map<String, dynamic>),
            ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedAppellationsId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
  sharedDictionaryBySharedDictionaryNameId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
  sharedDictionaryBySharedDictionaryPronunciationId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name
    on Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name;

  TRes call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId;
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name,
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
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
      sharedAppellationsId:
          sharedAppellationsId == _undefined || sharedAppellationsId == null
          ? _instance.sharedAppellationsId
          : (sharedAppellationsId as String),
      sharedDictionaryBySharedDictionaryNameId:
          sharedDictionaryBySharedDictionaryNameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNameId
          : (sharedDictionaryBySharedDictionaryNameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?),
      sharedDictionaryBySharedDictionaryPronunciationId:
          sharedDictionaryBySharedDictionaryPronunciationId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryPronunciationId
          : (sharedDictionaryBySharedDictionaryPronunciationId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?),
      sharedDictionaryBySharedDictionaryNicknameId:
          sharedDictionaryBySharedDictionaryNicknameId == _undefined
          ? _instance.sharedDictionaryBySharedDictionaryNicknameId
          : (sharedDictionaryBySharedDictionaryNicknameId
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId {
    final local$sharedDictionaryBySharedDictionaryNameId =
        _instance.sharedDictionaryBySharedDictionaryNameId;
    return local$sharedDictionaryBySharedDictionaryNameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
            local$sharedDictionaryBySharedDictionaryNameId,
            (e) => call(sharedDictionaryBySharedDictionaryNameId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId {
    final local$sharedDictionaryBySharedDictionaryPronunciationId =
        _instance.sharedDictionaryBySharedDictionaryPronunciationId;
    return local$sharedDictionaryBySharedDictionaryPronunciationId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
            local$sharedDictionaryBySharedDictionaryPronunciationId,
            (e) => call(sharedDictionaryBySharedDictionaryPronunciationId: e),
          );
  }

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId {
    final local$sharedDictionaryBySharedDictionaryNicknameId =
        _instance.sharedDictionaryBySharedDictionaryNicknameId;
    return local$sharedDictionaryBySharedDictionaryNicknameId == null
        ? CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
            _then(_instance),
          )
        : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
            local$sharedDictionaryBySharedDictionaryNicknameId,
            (e) => call(sharedDictionaryBySharedDictionaryNicknameId: e),
          );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name(
    this._res,
  );

  TRes _res;

  call({
    String? sharedAppellationsId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId?
    sharedDictionaryBySharedDictionaryNameId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId?
    sharedDictionaryBySharedDictionaryPronunciationId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId?
    sharedDictionaryBySharedDictionaryNicknameId,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryPronunciationId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
        _res,
      );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    TRes
  >
  get sharedDictionaryBySharedDictionaryNicknameId =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryPronunciationId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId({
    required this.sharedDictionaryId,
    required this.value,
    this.$__typename = 'SharedDictionary',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$sharedDictionaryId = json['sharedDictionaryId'];
    final l$value = json['value'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId: (l$sharedDictionaryId as String),
      value:
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
            (l$value as Map<String, dynamic>),
          ),
      $__typename: (l$$__typename as String),
    );
  }

  final String sharedDictionaryId;

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId;

  TRes call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  });
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value;
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sharedDictionaryId = _undefined,
    Object? value = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
      sharedDictionaryId:
          sharedDictionaryId == _undefined || sharedDictionaryId == null
          ? _instance.sharedDictionaryId
          : (sharedDictionaryId as String),
      value: value == _undefined || value == null
          ? _instance.value
          : (value
                as Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value {
    final local$value = _instance.value;
    return CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      local$value,
      (e) => call(value: e),
    );
  }
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId(
    this._res,
  );

  TRes _res;

  call({
    String? sharedDictionaryId,
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value?
    value,
    String? $__typename,
  }) => _res;

  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    TRes
  >
  get value =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
        _res,
      );
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value({
    required this.nodes,
    this.$__typename = 'SharedDictionaryValuesConnection',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: (l$nodes as List<dynamic>)
          .map(
            (e) => e == null
                ? null
                : Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
                    (e as Map<String, dynamic>),
                  ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value;

  TRes call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  });
  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  );
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
      nodes: nodes == _undefined || nodes == null
          ? _instance.nodes
          : (nodes
                as List<
                  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
                >),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  TRes nodes(
    Iterable<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >
    Function(
      Iterable<
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
        >?
      >,
    )
    _fn,
  ) => call(
    nodes: _fn(
      _instance.nodes.map(
        (e) => e == null
            ? null
            : CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
                e,
                (i) => i,
              ),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value(
    this._res,
  );

  TRes _res;

  call({
    List<
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes?
    >?
    nodes,
    String? $__typename,
  }) => _res;

  nodes(_fn) => _res;
}

class Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes({
    required this.dictionaryValue,
    this.$__typename = 'SharedDictionaryValue',
  });

  factory Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$dictionaryValue = json['dictionaryValue'];
    final l$$__typename = json['__typename'];
    return Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
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
            is! Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes ||
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

extension UtilityExtension$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    on
        Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes {
  CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  >
  get copyWith =>
      CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
> {
  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
    instance,
    TRes Function(
      Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
    )
    then,
  ) = _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  factory CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes.stub(
    TRes res,
  ) = _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes;

  TRes call({String? dictionaryValue, String? $__typename});
}

class _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._instance,
    this._then,
  );

  final Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes
  _instance;

  final TRes Function(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes,
  )
  _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? dictionaryValue = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
      dictionaryValue: dictionaryValue == _undefined || dictionaryValue == null
          ? _instance.dictionaryValue
          : (dictionaryValue as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
  TRes
>
    implements
        CopyWith$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes<
          TRes
        > {
  _CopyWithStubImpl$Query$ItemSizePageRead$allMstrItemActualSizes$nodes$update_user$name$sharedDictionaryBySharedDictionaryNicknameId$value$nodes(
    this._res,
  );

  TRes _res;

  call({String? dictionaryValue, String? $__typename}) => _res;
}
